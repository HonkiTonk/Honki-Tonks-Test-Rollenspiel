pragma Warnings (Off, "*array aggregate*");

with Ada.Wide_Wide_Text_IO; use Ada.Wide_Wide_Text_IO;

with ImSpiel;
with GegnerFestlegen;
with Nicht;

package body Verbindungsgang is

   function Gang
     return Integer
   is begin

      Info;

      SchlafsaalSchleife:
      while Läuft loop

         Wert := ImSpiel.ImSpiel;

         case
           Wert
         is
            when -1 | 0 | 2 =>
               return Wert;

            when 3 =>
               Nicht.Nicht;

            when 4 =>
               Info;

            when 10 .. 15 =>
               Wert := 0; -- Auswählen (Wert);
               if
                 Wert = -1
                 or
                   Wert = 0
                   or
                     Wert = 2
               then
                  return Wert;

               elsif
                 Wert = 3
               then
                  Nicht.Nicht;

               else
                  null;
               end if;

            when 16 =>
               Bewegung := 0; -- Gehen;
               if
                 Bewegung = -1
                 or
                   Bewegung = 0
                   or
                     Bewegung = 2
               then
                  return Bewegung;

               elsif
                 Bewegung = 3
               then
                  Nicht.Nicht; -- return 3?

               elsif
                 Bewegung = 101
               then
                  return 101;

               else
                  null;
               end if;

            when 17 =>
               Wert := GegnerFestlegen.GegnerZufall (OrtExtern => 101);

            when others =>
               null;
         end case;

      end loop SchlafsaalSchleife;

      raise Program_Error;

   end Gang;



   procedure Info
   is begin

      Put_Line (Item => "Sie befinden sich im Schlafsaal ihres Stützpunktes.");
      New_Line;
      Put_Line (Item => "Was möchten sie tun?");
      New_Line;

   end Info;

end Verbindungsgang;
