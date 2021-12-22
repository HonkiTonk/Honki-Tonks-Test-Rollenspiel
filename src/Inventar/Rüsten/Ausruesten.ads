with Ada.Wide_Text_IO, Ada.Strings.Wide_Unbounded, Charaktere, EinWort, Gegenstanddatenbank, Ada.Strings.Wide_Maps.Wide_Constants, WortZuGanzeZahl, GesamterBesitz, AusruestenWaffen, AusruestenRuestungen;
use Ada.Wide_Text_IO, Ada.Strings.Wide_Unbounded;

package Ausruesten is
   
   Platznummer : Integer;

   GegenstandName : Unbounded_Wide_String;
   Auswahl : Unbounded_Wide_String;
   
   procedure Ausrüsten;
   
end Ausruesten;
