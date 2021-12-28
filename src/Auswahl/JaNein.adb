with Ada.Wide_Text_IO; use Ada.Wide_Text_IO;

with EinWort;
with Falsch;

package body JaNein is

   function JaNein
     return Integer
   is begin

      Text := EinWort.EinWort;

      if
        Text = "j"
        or
          Text = "ja"
          or
            Text = "ok"
      then
         return 5;

      elsif
        Text = "n"
        or
          Text = "nein"
          or
            Text = "nö"
      then
         return 6;

      elsif
        Text = "beenden"
        or
          Text = "ende"
      then
         return -1;

      elsif
        Text = "hauptmenü"
      then
         return 0;

      elsif
        Text = "lade"
        or
          Text = "laden"
      then
         -- Laden := Speicherstaende.Speicherstände;
         case
           Laden
         is
            when True =>
               return 2;

            when False =>
               return -10;
         end case;

      elsif
        Text = "speichern"
        or
          Text = "speichere"
          or
            Text = "speicher"
      then
         return 3;

      elsif
        Text = "information"
        or
          Text = "informationen"
          or
            Text = "infos"
            or
              Text = "info"
      then
         return 4;

      else
         Falsch.Falsch;
         return -10;
      end if;

   end JaNein;



   function JaNeinEinfach
     return Boolean
   is begin

      Put_Line ("Ja");
      Put_Line ("Nein");

      Text := EinWort.EinWort;

      if
        Text = "ja"
      then
         return True;

      else
         return False;
      end if;

   end JaNeinEinfach;

end JaNein;
