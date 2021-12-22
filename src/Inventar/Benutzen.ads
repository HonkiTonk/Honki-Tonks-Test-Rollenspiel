with Ada.Wide_Text_IO, Ada.Strings.Wide_Unbounded, SortierenInventar, Charaktere, EinWort, Gegenstanddatenbank, Ada.Strings.Wide_Maps.Wide_Constants, Zustaende, GesamterBesitz;
use Ada.Wide_Text_IO, Ada.Strings.Wide_Unbounded;

package Benutzen is

   GegenstandName : Unbounded_Wide_String;

   function Benutzen (Kämpfen : in Boolean) return Boolean;
   procedure HeilGegenstandBenutzen (IDPosition : in Integer);

end Benutzen;
