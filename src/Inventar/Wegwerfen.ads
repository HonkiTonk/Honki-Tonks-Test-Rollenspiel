with Ada.Strings.Wide_Unbounded; use Ada.Strings.Wide_Unbounded;

package Wegwerfen is
   
   procedure Aufteilung;
   
private
   
   Prüfung : Boolean := True;
   
   Anzahl : Integer;
   Anzahl2 : Integer;
   IDIntern : Integer := 0;
   MengeIntern : Integer := 0;

   GegenstandName : Unbounded_Wide_String;

   procedure WegwerfenSonstiges;
   procedure WegwerfenHeil;
   procedure WegwerfenWaffen;
   procedure WegwerfenRüstungen;
   procedure WegwerfenKampf;
   procedure WegwerfenHelm;
   procedure WegwerfenHand;
   procedure WegwerfenSchuh;
   procedure WegwerfenQuest; -- Geht nur automatisch
   
   procedure Text
     (Auswahl : in Integer);
   
   
   
   function WegwerfenAutomatisch
     (ID : in Integer;
      Menge : in Integer)
      return Boolean;
   
end Wegwerfen;
