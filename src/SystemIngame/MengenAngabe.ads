with Ada.Strings.Wide_Unbounded; use Ada.Strings.Wide_Unbounded;

package MengenAngabe is

   function Anzahl
     (InventarHandel : in Integer)
      return Integer;

private

   Prüfung : Boolean;

   Zahl : Integer;

   Menge : Unbounded_Wide_String;

   procedure ZahlKleinerNeun;

end MengenAngabe;
