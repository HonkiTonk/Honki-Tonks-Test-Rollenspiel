with Ada.Wide_Text_IO use Ada.Wide_Text_IO;
with Ada.Strings.Wide_Unbounded; use Ada.Strings.Wide_Unbounded;

package Hinzufuegen is

   function Hinzufügen
     (ID : in Integer;
      Menge : in Integer)
      return Boolean;

end Hinzufuegen;
