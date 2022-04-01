pragma Warnings (Off, "*array aggregate*");

with Ada.Strings.Wide_Wide_Unbounded; use Ada.Strings.Wide_Wide_Unbounded;

package MengenAngabe is

   function Anzahl
     (InventarHandelExtern : in Integer)
      return Integer;

private

   Prüfung : Boolean;

   Zahl : Integer;

   Menge : Unbounded_Wide_Wide_String;

   procedure ZahlKleinerNeun;

end MengenAngabe;
