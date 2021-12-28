with Ada.Wide_Text_IO; use Ada.Wide_Text_IO;
with Ada.Strings.Wide_Unbounded; use Ada.Strings.Wide_Unbounded;

package Speichern is

   type SpeicherständeListeArray is array (0 .. 10) of Unbounded_Wide_String;
   SpeicherständeListe : SpeicherständeListeArray := (To_Unbounded_Wide_String ("Auto"), others => To_Unbounded_Wide_String ("")); -- Bei Aufruf von Speichern/Laden, Laden.

   procedure Speichern;

private

   Überschreiben : Boolean;

   Slot : Integer;

   Speicherdateien : String := "Speicherdateien";

   Namen : Unbounded_Wide_String;

   Datei : File_Type;

   procedure Sicherheitsabfrage
     (Slotnummer : in Integer);

   procedure Schreiben
     (Slotnummer : in Integer);

end Speichern;
