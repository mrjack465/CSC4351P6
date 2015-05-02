package Mips;
import Temp.Temp;
import Temp.TempList;
import Temp.Label;
import Temp.LabelList;
import Tree.Exp;

import java.util.HashMap;
import java.util.Hashtable;

import java_cup.internal_error;

/*
 * TODO:
 * 
 * Optimize adding when using MOVE (TEMP, BIN)
 */

public class Codegen {
	
  MipsFrame frame;
  public Codegen(MipsFrame f) {frame = f;}

  private Assem.InstrList ilist = null, last = null;

  private void emit(Assem.Instr inst) {
    if (last != null)
      last = last.tail = new Assem.InstrList(inst, null);
    else {
      if (ilist != null)
	throw new Error("Codegen.emit");
      last = ilist = new Assem.InstrList(inst, null);
    }
  }

  Assem.InstrList codegen(Tree.Stm s) {
    munchStm(s);
    Assem.InstrList l = ilist;
    ilist = last = null;
    return l;
  }

  static Assem.Instr OPER(String a, TempList d, TempList s, LabelList j) {
    return new Assem.OPER("\t" + a, d, s, j);
  }
  static Assem.Instr OPER(String a, TempList d, TempList s) {
    return new Assem.OPER("\t" + a, d, s);
  }
  static Assem.Instr MOVE(String a, Temp d, Temp s) {
    return new Assem.MOVE("\t" + a, d, s);
  }

  static TempList L(Temp h) {
    return new TempList(h, null);
  }
  static TempList L(Temp h, TempList t) {
    return new TempList(h, t);
  }

  void munchStm(Tree.Stm s) {
    if (s instanceof Tree.MOVE) 
      munchStm((Tree.MOVE)s);
    else if (s instanceof Tree.UEXP)
      munchStm((Tree.UEXP)s);
    else if (s instanceof Tree.JUMP)
      munchStm((Tree.JUMP)s);
    else if (s instanceof Tree.CJUMP)
      munchStm((Tree.CJUMP)s);
    else if (s instanceof Tree.LABEL)
      munchStm((Tree.LABEL)s);
    else
      throw new Error("Codegen.munchStm");
  }

  
  void munchStm(Tree.MOVE s){
	  Temp t = null; 
	  if(s.dst instanceof Tree.MEM && s.src instanceof Tree.MEM){
		  t = munchExp(((Tree.MEM)s.dst), munchExp(s.src));
		  return;
	  }
	  if(s.src instanceof Tree.MEM){
		  munchExp((Tree.MEM)s.src);
		  return;
	  }
	  t = munchExp(s.src);
	  if(s.dst instanceof Tree.MEM){
		  t = munchExp((Tree.MEM)s.dst, t);
		  return;
	  }
	  emit(new Assem.MOVE("  move `d0 `s0 ", munchExp(s.dst), t));
  }
  
	  Temp munchExp(Tree.MEM e) {
		if(e.exp instanceof Tree.BINOP){
			Tree.BINOP b = (Tree.BINOP)e.exp;
			// Load Word
			if(b.left instanceof Tree.TEMP && b.right instanceof Tree.CONST && BINOP[b.binop].equals("add")){
				Tree.TEMP left = ((Tree.TEMP)b.left);
				Tree.CONST right = ((Tree.CONST)b.right);
				if(left.temp == frame.FP){
					Temp t = new Temp();
					emit(OPER("lw `d0 "+right.value+"+"+frame.name.toString()+"_framesize(`s0)", L(t), L(frame.SP)));
					return t;
				}
			}
			if(b.right instanceof Tree.CONST){
				int rightVal = ((Tree.CONST)b.right).value;
				Temp t = new Temp();
				emit(OPER("lw `d0 "+rightVal+"(`s0)", L(t), L(munchExp(b.left))));
				return t; 
			}
			if(b.right instanceof Tree.BINOP){
				Temp t = new Temp();
				emit(OPER("lw `d0 (`s0)", L(t), L(munchExp((Tree.BINOP)b))));
				return t; 
			}
		}
		System.out.println("MEM Error");
    	return frame.ZERO;
  	}
  
	Temp munchExp(Tree.MEM e, Temp temp){
	  System.out.println("STORE-MEM:");
	  if(e.exp instanceof Tree.BINOP){
			Tree.BINOP b = (Tree.BINOP)e.exp;
			// Store Word
			if(b.left instanceof Tree.TEMP && b.right instanceof Tree.CONST && BINOP[b.binop].equals("add")){
				Tree.TEMP left = ((Tree.TEMP)b.left);
				Tree.CONST right = ((Tree.CONST)b.right);
				if(left.temp == frame.FP){
					emit(OPER("sw `d0 "+right.value+"+"+frame.name.toString()+"_framesize(`s0)", L(temp), L(frame.SP)));
					return temp;
				}
			}
			if(b.right instanceof Tree.CONST){
				int rightVal = ((Tree.CONST)b.right).value;
				emit(OPER("sw `d0 "+rightVal+"(`s0)", L(temp), L(munchExp(b.left))));
				return temp; 
			}
			if(b.right instanceof Tree.BINOP){
				Temp t = munchExp(b);
				emit(OPER("sw `d0 (`s0)", L(temp), L(t)));
				return t; 
			}
		}
	  if(e.exp instanceof Tree.NAME){
		  Temp t = new Temp();
		  Tree.NAME n = (Tree.NAME)e.exp;
		  emit(OPER("sw `d0 (`s0)", L(t), L(munchExp(n))));
		  return t;  
	  }
	  if(e.exp instanceof Tree.TEMP){
		  Tree.TEMP t = (Tree.TEMP)e.exp;
		  emit(OPER("sw `d0 (`s0)", L(temp), L(munchExp(t)) ));
		  return t.temp;
	  }
	  // Error
	  System.out.println("MEM-STORE ERROR"+ e.exp.toString());
	  return frame.ZERO;
	}

  void munchStm(Tree.UEXP s) {
	System.out.println("UEXP");
    munchExp(s.exp);
  }

  void munchStm(Tree.JUMP s) {
	  System.out.println("JUMP");
	  Tree.Exp t = s.exp;
	  if (t instanceof Tree.NAME){
		  emit(new Assem.OPER("  b  `j0" , null, null, s.targets));
	  }
	  
  }

  private static String[] CJUMP = new String[10];
  static {
    CJUMP[Tree.CJUMP.EQ ] = "beq";
    CJUMP[Tree.CJUMP.NE ] = "bne";
    CJUMP[Tree.CJUMP.LT ] = "blt";
    CJUMP[Tree.CJUMP.GT ] = "bgt";
    CJUMP[Tree.CJUMP.LE ] = "ble";
    CJUMP[Tree.CJUMP.GE ] = "bge";
    CJUMP[Tree.CJUMP.ULT] = "bltu";
    CJUMP[Tree.CJUMP.ULE] = "bleu";
    CJUMP[Tree.CJUMP.UGT] = "bgtu";
    CJUMP[Tree.CJUMP.UGE] = "bgeu";
  }

  void munchStm(Tree.CJUMP s) {
	  if (CJUMP[s.relop] == "beq" || CJUMP[s.relop] == "bne"){
		  if (s.right instanceof Tree.CONST){
			  int val = ((Tree.CONST) s.right).value;
			  emit(new Assem.OPER("  beq `d0 "+val+" `j0  ",L(munchExp(s.left)), null, new LabelList(s.iftrue, null)));
			  return;
		  }
		  if (s.left instanceof Tree.CONST){
			  int val = ((Tree.CONST) s.left).value;
			  emit(new Assem.OPER("  beq `d0 "+val+" `j0  ", L(munchExp(s.right)), null, new LabelList(s.iftrue, null)));
			  return;
		  }
		  emit(new Assem.OPER("  beq `d0 `s0 `j0  ", L(munchExp(s.left)), L(munchExp(s.right)), new LabelList(s.iftrue, null)));
	  }
	  if(CJUMP[s.relop] == "blt"){
		  if (s.right instanceof Tree.CONST && !(s.left instanceof Tree.CONST)){
			  int val = ((Tree.CONST) s.right).value;
			  emit(new Assem.OPER("\tblt `d0 "+val+" `j0  ",L(munchExp(s.left)), null, new LabelList(s.iftrue, new LabelList(s.iffalse, null))));
			  return;
		  }
		  if (s.left instanceof Tree.CONST){
			  int val = ((Tree.CONST) s.left).value;
			  emit(new Assem.OPER("\tblt `d0 "+val+" `j0  ", L(munchExp(s.right)), null, new LabelList(s.iftrue, null)));
			  return;
		  }
		  emit(new Assem.OPER("\tblt `d0 `s0 `j0  ", L(munchExp(s.left)), L(munchExp(s.right)), new LabelList(s.iftrue, new LabelList(s.iffalse, null))));
	  }
	  if(CJUMP[s.relop] == "bgt"){
		  if (s.left instanceof Tree.CONST && !(s.right instanceof Tree.CONST)){
			  int val = ((Tree.CONST) s.left).value;
			  emit(new Assem.OPER("\tbgt `d0 "+val+" `j0",L(munchExp(s.left)), null, new LabelList(s.iftrue, new LabelList(s.iffalse, null))));
			  return;
		  }
		  if (s.right instanceof Tree.CONST){
			  int val = ((Tree.CONST) s.right).value;
			  emit(new Assem.OPER("\tbgt `d0 "+val+" `j0  ", L(munchExp(s.left)), null, new LabelList(s.iftrue, null)));
			  return;
		  }
		  emit(new Assem.OPER("\t"+CJUMP[s.relop]+" `d0 `s0 `j0  ", L(munchExp(s.left)), L(munchExp(s.right)), new LabelList(s.iftrue, new LabelList(s.iffalse, null))));
	  }
	  if(CJUMP[s.relop] == "ble" || CJUMP[s.relop] == "bge"){
		  if (s.right instanceof Tree.CONST && !(s.left instanceof Tree.CONST)){
			  int val = ((Tree.CONST) s.right).value;
			  emit(new Assem.OPER("\tbgt `d0 "+val+" `j0",L(munchExp(s.left)), null, new LabelList(s.iftrue, new LabelList(s.iffalse, null))));
			  return;
		  }
		  if (s.left instanceof Tree.CONST){
			  int val = ((Tree.CONST) s.left).value;
			  emit(new Assem.OPER("\tbgt `d0 "+val+" `j0  ", L(munchExp(s.right)), null, new LabelList(s.iftrue, null)));
			  return;
		  }
		  emit(new Assem.OPER("\t"+CJUMP[s.relop]+" `d0 `s0 `j0  ", L(munchExp(s.left)), L(munchExp(s.right)), new LabelList(s.iftrue, new LabelList(s.iffalse, null))));
	  }
  }
  void munchStm(Tree.LABEL l) {
	  emit(new Assem.LABEL(l.label.toString() + ":", l.label));
  }

  Temp munchExp(Tree.Exp s) {
    if (s instanceof Tree.CONST)
      return munchExp((Tree.CONST)s);
    else if (s instanceof Tree.NAME)
      return munchExp((Tree.NAME)s);
    else if (s instanceof Tree.TEMP)
      return munchExp((Tree.TEMP)s);
    else if (s instanceof Tree.BINOP)
      return munchExp((Tree.BINOP)s);
    else if (s instanceof Tree.MEM)
      return munchExp((Tree.MEM)s);
    else if (s instanceof Tree.CALL)
      return munchExp((Tree.CALL)s);
    else
      throw new Error("Codegen.munchExp");
  }

  Temp munchExp(Tree.CONST e) {
	  System.out.println("CONST:"+e.value);
	  // Use zero register instead of creating new temp
	  if(e.value == 0)
		  return frame.ZERO;
	  Temp t = new Temp();
	  emit(new Assem.OPER("  li `d0 " + e.value, L(t), null));
	  return t;
  }

  Temp munchExp(Tree.NAME e) {
	 System.out.println("NAME");
	 Temp t = new Temp();
	 emit(OPER("la `d0 `j0",L(t), null ,new LabelList(e.label, null)));
	 return t;
  }

  Temp munchExp(Tree.TEMP e) {
	System.out.println("TEMP:"+e.temp.toString());
	// if temp equals the RV register, just return the register; don't create new temp
	if(e.temp == frame.RV()){
		return frame.RV();
	}
    if (e.temp == frame.FP) {
      Temp t = new Temp();
      emit(OPER("addu `d0 `s0 " + frame.name + "_framesize", L(t), L(frame.SP)));
      return t;
    }
    return e.temp;
  }

  private static String[] BINOP = new String[10];
  static {
    BINOP[Tree.BINOP.PLUS   ] = "add";
    BINOP[Tree.BINOP.MINUS  ] = "sub";
    BINOP[Tree.BINOP.MUL    ] = "mulo";
    BINOP[Tree.BINOP.DIV    ] = "div";
    BINOP[Tree.BINOP.AND    ] = "and";
    BINOP[Tree.BINOP.OR     ] = "or";
    BINOP[Tree.BINOP.LSHIFT ] = "sll";
    BINOP[Tree.BINOP.RSHIFT ] = "srl";
    BINOP[Tree.BINOP.ARSHIFT] = "sra";
    BINOP[Tree.BINOP.XOR    ] = "xor";
  }

  private static int shift(int i) {
    int shift = 0;
    if ((i >= 2) && ((i & (i - 1)) == 0)) {
      while (i > 1) {
	shift += 1;
	i >>= 1;
      }
    }
    return shift;
  }

  public int powerOfTwo(int num){
	  //result = 0, 2
	  double num2 = (double) num;
	  int count = 0;
	  double results = 0;
	  for (double i = 2; i <= num2; i = i * 2){
		  count++;
		  results = num2 / i;
	  }
	  
	  if (results != 1)
	  {
		  return -1;
	  }
	  
	  return count ;
  }
  
  
  Temp munchExp(Tree.BINOP e) {
	  Temp t = new Temp();
	  String b = BINOP[e.binop];
	  if (b.equals("mulo")){
		  
		  if (e.left instanceof Tree.CONST && powerOfTwo(((Tree.CONST) e.left).value) != -1){
			  // left shift
			  emit(OPER("sll `d0 `s0 " + powerOfTwo(((Tree.CONST) e.left).value), L(t), L(munchExp(e.right))));
			  return t;
		  }
		  if (e.right instanceof Tree.CONST && powerOfTwo(((Tree.CONST) e.right).value) != -1){
			  // left shift
			  emit(OPER("sll" + " `d0 `s0 " + powerOfTwo(((Tree.CONST) e.right).value) , L(t), L(munchExp(e.left))));
			  return t;
		  }  
	  }
	  if (b.equals("div")){
		  if (e.right instanceof Tree.CONST && ((Tree.CONST) e.right).value == 2){
			  // left shift
			  emit(OPER("sra `d0 `s0 " + 1, L(t), L(munchExp(e.right))));
			  return t;
		  }
	  }
	  if (b.equals("add") || b.equals("sub") || b.equals("mulo") || b.equals("div")){
		  if(b.equals("add") && e.left instanceof Tree.TEMP && e.right instanceof Tree.CONST){
			  Tree.CONST right = (Tree.CONST)e.right;
			  if(((Tree.TEMP)e.left).temp == frame.FP())
				  emit(OPER("add `d0 `s0 "+right.value +"+" + frame.name + "_framesize", L(t), L(frame.SP)));
			  return t;
		  }
		  if (e.right instanceof Tree.CONST) {
              emit(OPER(b+" `d0 `s0 " + ((Tree.CONST) e.right).value, L(t), L(munchExp(e.left))));
              return t;
		  }
		  if (e.left instanceof Tree.CONST) {
              emit(OPER(b+" `d0 `s0 " + ((Tree.CONST) e.left).value, L(t), L(munchExp(e.right))));
              return t;
		  }
		  emit(OPER(b+" `s1 `d0 `s0 ", L(munchExp(e.left)), L(munchExp(e.right), L(t))));
          return t;
	  }
	  System.out.println("BINOP ERROR");
	  return frame.ZERO;
  }
  
  Temp munchExp(Tree.CALL s) {
	if(s.func instanceof Tree.NAME){
		emit(OPER("jal "+((Tree.NAME)s.func).label.toString(), frame.calldefs, munchArgs(0, s.args)));
	}
	// Will RV() choose appropriate $V0/$V1 
    return frame.RV();
  }

  private TempList munchArgs(int i, Tree.ExpList args) {
    if (args == null)
      return null;
    Temp src = munchExp(args.head);
    if (i > frame.maxArgs)
      frame.maxArgs = i;
    switch (i) {
    case 0:
      emit(MOVE("move `d0 `s0", frame.A0, src));
      break;
    case 1:
      emit(MOVE("move `d0 `s0", frame.A1, src));
      break;
    case 2:
      emit(MOVE("move `d0 `s0", frame.A2, src));
      break;
    case 3:
      emit(MOVE("move `d0 `s0", frame.A3, src));
      break;
    default:
      emit(OPER("sw `s0 " + (i-1)*frame.wordSize() + "(`s1)",
		null, L(src, L(frame.SP))));
      break;
    }
    return L(src, munchArgs(i+1, args.tail));
  }
}