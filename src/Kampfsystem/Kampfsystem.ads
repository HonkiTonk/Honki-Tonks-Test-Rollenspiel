pragma Warnings (Off, "*array aggregate*");

with Ada.Strings.Wide_Wide_Unbounded; use Ada.Strings.Wide_Wide_Unbounded;

package Kampfsystem is

   type GegnerArray is array (1 .. 5) of Integer;

   function Kampf
     (GegnerExtern : in GegnerArray)
      return Integer;

private

   Läuft : Boolean;
   SpielerBesiegt : Boolean;
   GegnerBesiegt : Boolean;
   Angegriffen : Boolean;
   Verteidigt : Boolean;

   Flucht : Integer;
   GegnerPlatz : Integer;
   Wert : Integer;
   WenAngreifenGegnerPlatz : Integer;
   WenAngreifen : Integer;
   IDZwischenspeicher1 : Integer;
   IDZwischenspeicher2 : Integer;

   Text : Unbounded_Wide_Wide_String;

   Reihenfolge : GegnerArray;
   Gegner : GegnerArray;

   procedure KampfBerechnung;
   procedure Angreifen;
   procedure Verteidigen;
   procedure Gegenstand;
   procedure GegnerBesiegtPrüfung;
   procedure SpielerBesiegtPrüfung;
   procedure WelcherGegner;

   function Fliehen
     return Integer;

end Kampfsystem;
