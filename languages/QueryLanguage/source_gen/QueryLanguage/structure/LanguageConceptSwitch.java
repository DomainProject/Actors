package QueryLanguage.structure;

/*Generated by MPS */

import jetbrains.mps.lang.smodel.LanguageConceptIndex;
import jetbrains.mps.lang.smodel.LanguageConceptIndexBuilder;
import jetbrains.mps.smodel.adapter.ids.SConceptId;
import org.jetbrains.mps.openapi.language.SAbstractConcept;

public final class LanguageConceptSwitch {
  private final LanguageConceptIndex myIndex;
  public static final int Column = 0;
  public static final int ColumnRef = 1;
  public static final int Condition = 2;
  public static final int ConditionSet = 3;
  public static final int ConditionsSequence = 4;
  public static final int CreateTable = 5;
  public static final int DBOperation = 6;
  public static final int Delete = 7;
  public static final int GroupBy = 8;
  public static final int InsertInto = 9;
  public static final int OrderBy = 10;
  public static final int Script = 11;
  public static final int Select = 12;
  public static final int Statement = 13;
  public static final int Update = 14;
  public static final int Value = 15;
  public static final int Where = 16;

  public LanguageConceptSwitch() {
    LanguageConceptIndexBuilder builder = new LanguageConceptIndexBuilder(0x26d1395b1ee643adL, 0xb522c0cdd699ded3L);
    builder.put(0x11100ee737443b33L, Column);
    builder.put(0x11100ee7375157f4L, ColumnRef);
    builder.put(0x11100ee737470ff3L, Condition);
    builder.put(0x23d860ebbb86c06cL, ConditionSet);
    builder.put(0x23d860ebbb7c2695L, ConditionsSequence);
    builder.put(0x11100ee737443b2eL, CreateTable);
    builder.put(0x2b087ec3aa655164L, DBOperation);
    builder.put(0x2b087ec3aa642699L, Delete);
    builder.put(0x2b087ec3aa6a16ceL, GroupBy);
    builder.put(0x625a3ba00f1c72c8L, InsertInto);
    builder.put(0x2b087ec3aa61e251L, OrderBy);
    builder.put(0x11100ee737443bcdL, Script);
    builder.put(0x619ceb902420e379L, Select);
    builder.put(0x11100ee737443b30L, Statement);
    builder.put(0x625a3ba00f23853fL, Update);
    builder.put(0x625a3ba00f1cc88bL, Value);
    builder.put(0x619ceb902420e37bL, Where);
    myIndex = builder.seal();
  }

  /*package*/ int index(SConceptId cid) {
    return myIndex.index(cid);
  }

  public int index(SAbstractConcept concept) {
    return myIndex.index(concept);
  }
}
