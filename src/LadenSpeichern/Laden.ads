with Ada.Wide_Text_IO; use Ada.Wide_Text_IO;
with Ada.Strings.Wide_Unbounded; use Ada.Strings.Wide_Unbounded;

package Laden is

   function Laden
     (Hauptmenü : in Boolean)
      return Boolean;

private

   Buffer : Wide_Character;

   Namen : Unbounded_Wide_String;

   Slot : Integer;

   JaNeinAbfrage : Boolean;

   AuswahlArray : array (1 .. 3, 1 .. 3) of Unbounded_Wide_String;

   Datei : File_Type;

   function Sicherheitsabfrage
     (Slotnummer : in Integer)
      return Boolean;

   procedure Lädt;

end Laden;
