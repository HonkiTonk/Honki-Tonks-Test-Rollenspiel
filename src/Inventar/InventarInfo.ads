with Ada.Wide_Text_IO, Ada.Strings.Wide_Unbounded, Charaktere, EinWort, Gegenstanddatenbank, Ada.Strings.Wide_Maps.Wide_Constants, Zustaende;
use Ada.Wide_Text_IO, Ada.Strings.Wide_Unbounded;

package InventarInfo is

   GegenstandAuswahl : Unbounded_Wide_String;

   procedure Verteilung;
   procedure SonstigesInventar;
   procedure HeilInventar;
   procedure WaffenInventar;
   procedure RüstungsInventar;
   procedure QuestInventar;

end InventarInfo;
