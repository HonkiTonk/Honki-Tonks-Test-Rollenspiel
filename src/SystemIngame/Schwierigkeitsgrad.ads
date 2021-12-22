with Ada.Wide_Text_IO, SchwierigkeitAuswaehlen;
use Ada.Wide_Text_IO;

package Schwierigkeitsgrad is

   Läuft : Boolean;

   Schwierigkeit : Integer;
   Wert : Integer;
   
   function SchwierigkeitAuswählen return Integer;

end Schwierigkeitsgrad;
