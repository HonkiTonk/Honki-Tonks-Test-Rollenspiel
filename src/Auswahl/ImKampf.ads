with Ada.Strings.Wide_Unbounded; use Ada.Strings.Wide_Unbounded;

package ImKampf is

   function ImKampf
     return Integer;

private

   Text : Unbounded_Wide_String;

   Laden : Boolean;

end ImKampf;
