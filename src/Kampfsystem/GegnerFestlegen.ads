with Ada.Wide_Text_IO, Kampfsystem, Schwierigkeitsgrad, Ada.Numerics.Discrete_Random, Gegnerdatenbank;
use Ada.Wide_Text_IO;

package GegnerFestlegen is

   subtype GegnerImStützpunkt is Integer range Gegnerdatenbank.GegnerListe'First .. Gegnerdatenbank.GegnerListe'Last;
   package Zufall is new Ada.Numerics.Discrete_Random (GegnerImStützpunkt);
   use Zufall;

   Wert : Integer;
   
   GegnerGenerator : Generator;

   Gegner : Kampfsystem.GegnerArray;

   function GegnerZufall (Ort : in Integer) return Integer;
   function GegnerFest (Ort : in Integer) return Integer;

end GegnerFestlegen;
