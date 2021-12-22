with Ada.Wide_Text_IO, Charaktere, SortierenInventar, Ausgeruestet, Ada.Strings.Wide_Unbounded, EinWort, GesamterBesitz, Gegenstanddatenbank, Ada.Strings.Wide_Maps.Wide_Constants, MengenAngabe;
use Ada.Wide_Text_IO, Ada.Strings.Wide_Unbounded;

package Wegwerfen is

   Prüfung : Boolean := True;
   
   Anzahl : Integer;
   Anzahl2 : Integer;
   IDIntern : Integer := 0;
   MengeIntern : Integer := 0;

   GegenstandName : Unbounded_Wide_String;

   procedure Aufteilung;
   procedure WegwerfenSonstiges;
   procedure WegwerfenHeil;
   procedure WegwerfenWaffen;
   procedure WegwerfenRüstungen;
   procedure WegwerfenKampf;
   procedure WegwerfenHelm;
   procedure WegwerfenHand;
   procedure WegwerfenSchuh;
   procedure WegwerfenQuest; -- Geht nur automatisch
   procedure Text (Auswahl : in Integer);
   
   function WegwerfenAutomatisch (ID, Menge : in Integer) return Boolean;

end Wegwerfen;
