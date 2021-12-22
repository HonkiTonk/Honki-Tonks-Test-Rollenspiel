with Ada.Wide_Text_IO, Ada.Strings.Wide_Unbounded, Gegenstanddatenbank, Charaktere, SortierenInventar, EinWort, Wegwerfen;
use Ada.Wide_Text_IO, Ada.Strings.Wide_Unbounded;

package AusruestenWaffen is

   AusrüstenLäuft : Boolean := True;

   FreierPlatz : Integer := 0;
   ZwischenspeicherID1 : Integer;
   ZwischenspeicherID2 : Integer;

   Auswahl : Unbounded_Wide_String;

   procedure AusrüstenWaffen (IDPosition : in Integer);

end AusruestenWaffen;
