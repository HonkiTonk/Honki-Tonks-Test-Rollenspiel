pragma Warnings (Off, "*array aggregate*");

with Ada.Wide_Wide_Text_IO; use Ada.Wide_Wide_Text_IO;
with Ada.Strings.Wide_Wide_Unbounded; use Ada.Strings.Wide_Wide_Unbounded;

package Speichern is

   type SpeicherständeListeArray is array (0 .. 10) of Unbounded_Wide_Wide_String;
   SpeicherständeListe : SpeicherständeListeArray := (
                                                        0 => To_Unbounded_Wide_Wide_String (Source => "Auto"),
                                                        others => To_Unbounded_Wide_Wide_String (Source => "")
                                                       ); -- Bei Aufruf von Speichern/Laden, Laden.

   procedure Speichern;

private

   Überschreiben : Boolean;

   Slot : Integer;

   Speicherdateien : constant String := "Speicherdateien";

   Namen : Unbounded_Wide_Wide_String;

   Datei : File_Type;

   procedure Sicherheitsabfrage
     (SlotnummerExtern : in Integer);

   procedure Schreiben
     (SlotnummerExtern : in Integer);

end Speichern;
