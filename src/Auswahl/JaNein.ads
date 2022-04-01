pragma Warnings (Off, "*array aggregate*");

with Ada.Strings.Wide_Wide_Unbounded; use Ada.Strings.Wide_Wide_Unbounded;

package JaNein is

   function JaNein
     return Integer;

   function JaNeinEinfach
     return Boolean;

private

   Laden : Boolean := False;

   Text : Unbounded_Wide_Wide_String;

end JaNein;
