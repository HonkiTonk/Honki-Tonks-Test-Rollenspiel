with Ada.Strings.Wide_Unbounded; use Ada.Strings.Wide_Unbounded;

package ImSpiel is

   function ImSpiel
     return Integer;

private

   Text : Unbounded_Wide_String;

   Laden : Boolean;

end ImSpiel;
