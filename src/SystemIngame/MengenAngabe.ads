with Ada.Wide_Text_IO, Ada.Strings.Wide_Unbounded, Ada.Strings.Wide_Maps.Wide_Constants, GanzeZahl;
use Ada.Wide_Text_IO, Ada.Strings.Wide_Unbounded;

package MengenAngabe is

   Prüfung : Boolean;

   Zahl : Integer;

   Menge : Unbounded_Wide_String;

   procedure ZahlKleinerNeun;

   function Anzahl (InventarHandel : in Integer) return Integer;

end MengenAngabe;
