with Ada.Wide_Text_IO, Schlafsaal, Verbindungsgang, VomSpielerWeggeworfen;
use Ada.Wide_Text_IO;

package LokalerHubStuetzpunkt is

   Läuft : Boolean := True;

   OrteAuswahlLokal : Integer := 100;

   function VerteilungLokalStützpunkt return Integer;

end LokalerHubStuetzpunkt;
