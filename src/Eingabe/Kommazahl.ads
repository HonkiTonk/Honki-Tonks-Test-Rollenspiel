pragma Warnings (Off, "*array aggregate*");

with Ada.Wide_Wide_Text_IO; use Ada.Wide_Wide_Text_IO;
with Ada.Strings.Wide_Wide_Unbounded; use Ada.Strings.Wide_Wide_Unbounded;;
with Ada.Strings.Wide_Wide_Maps.Wide_Wide_Constants;
with Ada.Integer_Wide_Text_IO;
with Ada.Float_Wide_Text_IO;
with Ada.Strings.Wide_Fixed;

package Kommazahl is

   function Kommazahl
     return Unbounded_Wide_Wide_String;

private

   EinWortEingabeString : Unbounded_Wide_Wide_String;

end Kommazahl;
