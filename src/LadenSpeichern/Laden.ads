with Ada.Wide_Text_IO, Ada.Strings.Wide_Unbounded, GlobaleVariablen, JaNein, WortZuGanzeZahl, Speichern, EinWort, Falsch;
use Ada.Wide_Text_IO, Ada.Strings.Wide_Unbounded;

package Laden is

   Buffer : Wide_Character;

   Name : Unbounded_Wide_String;

   Slot : Integer;

   JaNeinAbfrage : Boolean;

   AuswahlArray : array (1 .. 3, 1 .. 3) of Unbounded_Wide_String;

   Datei : File_Type;

   function Laden (Hauptmenü : in Boolean) return Boolean;
   function Sicherheitsabfrage (Slotnummer : in Integer) return Boolean;
   procedure Lädt;

end Laden;
