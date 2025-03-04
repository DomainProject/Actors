package QueryLanguage.structure;

/*Generated by MPS */

import jetbrains.mps.smodel.runtime.EnumerationDescriptorBase;
import jetbrains.mps.smodel.runtime.EnumerationDescriptor;
import jetbrains.mps.lang.smodel.EnumerationLiteralsIndex;
import java.util.List;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.annotations.NotNull;

public class EnumerationDescriptor_Type extends EnumerationDescriptorBase {

  public EnumerationDescriptor_Type() {
    super(0x26d1395b1ee643adL, 0xb522c0cdd699ded3L, 0x11100ee737443b39L, "Type", "r:e2175f5d-85fc-4bdd-8ae1-8b72b7f266cc(QueryLanguage.structure)/1229499084499598137");
  }

  private final EnumerationDescriptor.MemberDescriptor myMember_Integer_0 = new EnumerationDescriptor.MemberDescriptor("Integer", "Integer", 0x11100ee737443b3aL, "r:e2175f5d-85fc-4bdd-8ae1-8b72b7f266cc(QueryLanguage.structure)/1229499084499598138");
  private final EnumerationDescriptor.MemberDescriptor myMember_String_0 = new EnumerationDescriptor.MemberDescriptor("String", "String", 0x11100ee737443b3bL, "r:e2175f5d-85fc-4bdd-8ae1-8b72b7f266cc(QueryLanguage.structure)/1229499084499598139");
  private final EnumerationDescriptor.MemberDescriptor myMember_Date_0 = new EnumerationDescriptor.MemberDescriptor("Date", "Date", 0x11100ee737443b3fL, "r:e2175f5d-85fc-4bdd-8ae1-8b72b7f266cc(QueryLanguage.structure)/1229499084499598143");
  private final EnumerationDescriptor.MemberDescriptor myMember_Float_0 = new EnumerationDescriptor.MemberDescriptor("Float", "Float", 0x11100ee737443b43L, "r:e2175f5d-85fc-4bdd-8ae1-8b72b7f266cc(QueryLanguage.structure)/1229499084499598147");
  private final EnumerationDescriptor.MemberDescriptor myMember_DateTime_0 = new EnumerationDescriptor.MemberDescriptor("DateTime", "DateTime", 0x70944e8a10e1451L, "r:e2175f5d-85fc-4bdd-8ae1-8b72b7f266cc(QueryLanguage.structure)/507012198981047377");

  private final EnumerationLiteralsIndex myIndex = EnumerationLiteralsIndex.build(0x26d1395b1ee643adL, 0xb522c0cdd699ded3L, 0x11100ee737443b39L, 0x11100ee737443b3aL, 0x11100ee737443b3bL, 0x11100ee737443b3fL, 0x11100ee737443b43L, 0x70944e8a10e1451L);
  private final List<EnumerationDescriptor.MemberDescriptor> myMembers = new EnumerationDescriptorBase.MembersList(myIndex, myMember_Integer_0, myMember_String_0, myMember_Date_0, myMember_Float_0, myMember_DateTime_0);

  @Nullable
  @Override
  public EnumerationDescriptor.MemberDescriptor getDefault() {
    return null;
  }

  @NotNull
  @Override
  public List<EnumerationDescriptor.MemberDescriptor> getMembers() {
    return myMembers;
  }

  @Nullable
  @Override
  public EnumerationDescriptor.MemberDescriptor getMember(@Nullable String memberName) {
    if (memberName == null) {
      return null;
    }
    switch (memberName) {
      case "Integer":
        return myMember_Integer_0;
      case "String":
        return myMember_String_0;
      case "Date":
        return myMember_Date_0;
      case "Float":
        return myMember_Float_0;
      case "DateTime":
        return myMember_DateTime_0;
    }
    return null;
  }

  @Nullable
  @Override
  public EnumerationDescriptor.MemberDescriptor getMember(long idValue) {
    int index = myIndex.index(idValue);
    if (index == -1) {
      return null;
    }
    return myMembers.get(index);
  }
}
