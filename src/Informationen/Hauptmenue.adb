pragma Warnings (Off, "*array aggregate*");

with Ada.Wide_Wide_Text_IO; use Ada.Wide_Wide_Text_IO;

package body Hauptmenue is

   procedure Hauptmenü
   is begin

      Put_Line (Item => "Texti, das kleine Textadventure.");
      Put_Line (Item => "Entwicklung und Idee: Honki Tonk");
      Put_Line (Item => "Version: 0.00.0060");
      Put_Line (Item => "Durch das Eingeben von Befehle ist es im Spiel möglich");
      Put_Line (Item => "eine Liste der gerade verfügbaren Befehle zu bekommen.");
      Put_Line (Item => "Wird nicht mehr weiterentwickelt.");
      Put_Line (Item => "Aber manchmal wird es überarbeitet.");
      New_Line;

   end Hauptmenü;

end Hauptmenue;
