with Ada.Wide_Text_IO, Ada.Strings.Wide_Unbounded, Ada.Directories, Ada.Streams.Stream_IO, EinWort, JaNein, WortZuGanzeZahl, Falsch;
use Ada.Wide_Text_IO, Ada.Strings.Wide_Unbounded, Ada.Directories;

package Speichern is

   type SpeicherständeListeArray is array (0 .. 10) of Unbounded_Wide_String;
   SpeicherständeListe : SpeicherständeListeArray := (To_Unbounded_Wide_String ("Auto"), others => To_Unbounded_Wide_String ("")); -- Bei Aufruf von Speichern/Laden, Laden.

   Überschreiben : Boolean;

   Slot : Integer;

   Speicherdateien : String := "Speicherdateien";

   Name : Unbounded_Wide_String;

   Datei : File_Type;

   procedure Speichern;
   procedure Sicherheitsabfrage (Slotnummer : in Integer);
   procedure Schreiben (Slotnummer : in Integer);

end Speichern;
