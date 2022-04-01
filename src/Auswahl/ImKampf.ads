pragma Warnings (Off, "*array aggregate*");

with Ada.Strings.Wide_Wide_Unbounded; use Ada.Strings.Wide_Wide_Unbounded;

package ImKampf is

   function ImKampf
     return Integer;

private

   Text : Unbounded_Wide_Wide_String;

end ImKampf;
