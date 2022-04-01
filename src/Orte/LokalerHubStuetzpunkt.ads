pragma Warnings (Off, "*array aggregate*");

package LokalerHubStuetzpunkt is

   OrteAuswahlLokal : Integer := 100;

   function VerteilungLokalStützpunkt
     return Integer;

private

   Läuft : Boolean;

end LokalerHubStuetzpunkt;
