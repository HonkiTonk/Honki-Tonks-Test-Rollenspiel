pragma Warnings (Off, "*array aggregate*");

with Ada.Wide_Wide_Text_IO; use Ada.Wide_Wide_Text_IO;
with Ada.Strings.Wide_Wide_Unbounded; use Ada.Strings.Wide_Wide_Unbounded;

package Laden is

   function Laden
     (HauptmenüExtern : in Boolean)
      return Boolean;

private

   Buffer : Wide_Wide_Character;

   Namen : Unbounded_Wide_Wide_String;

   Slot : Integer;

   JaNeinAbfrage : Boolean;

   AuswahlArray : array (1 .. 3, 1 .. 3) of Unbounded_Wide_Wide_String;

   Datei : File_Type;

   procedure Lädt;



   function Sicherheitsabfrage
     (SlotnummerExtern : in Integer)
      return Boolean;

end Laden;
