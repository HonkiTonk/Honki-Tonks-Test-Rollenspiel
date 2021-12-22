with Ada.Wide_Text_IO, Charaktere, Gegnerdatenbank, Ada.Strings.Wide_Unbounded, Zustaende, WortZuGanzeZahl, EinWort, Benutzen, ImKampf, Nicht, KampfBefehle;
use Ada.Wide_Text_IO, Ada.Strings.Wide_Unbounded;

package Kampfsystem is

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

   Text : Unbounded_Wide_String;

   type GegnerArray is array (1 .. 5) of Integer;
   Reihenfolge : GegnerArray;
   Gegner : GegnerArray;

   procedure KampfBerechnung;
   procedure Angreifen;
   procedure Verteidigen;
   procedure Gegenstand;
   procedure GegnerBesiegtPrüfung;
   procedure SpielerBesiegtPrüfung;
   procedure WelcherGegner;

   function Kampf (Gegner : in GegnerArray) return Integer;
   function Fliehen return Integer;

end Kampfsystem;
