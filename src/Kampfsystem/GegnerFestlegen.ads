with Ada.Numerics.Discrete_Random;

with Kampfsystem;
with Gegnerdatenbank;

package GegnerFestlegen is

   function GegnerZufall
     (Ort : in Integer)
      return Integer;
   
private

   subtype GegnerImStützpunkt is Integer range Gegnerdatenbank.GegnerListe'First .. Gegnerdatenbank.GegnerListe'Last;
   package Zufall is new Ada.Numerics.Discrete_Random (GegnerImStützpunkt);
   use Zufall;
   
   Wert : Integer;
   
   GegnerGenerator : Generator;

   Gegner : Kampfsystem.GegnerArray;
   
   function GegnerFest
     return Integer;

end GegnerFestlegen;
