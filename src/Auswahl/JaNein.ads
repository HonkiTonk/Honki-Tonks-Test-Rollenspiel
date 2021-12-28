with Ada.Strings.Wide_Unbounded; use Ada.Strings.Wide_Unbounded;

package JaNein is

   function JaNein
     return Integer;

   function JaNeinEinfach
     return Boolean;

private

   Text : Unbounded_Wide_String;

   Laden : Boolean;

end JaNein;
