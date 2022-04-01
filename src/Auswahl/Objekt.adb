pragma Warnings (Off, "*array aggregate*");

with EinWort;
with Falsch;

package body Objekt is

   function Objekt
     (AktuellerOrtExtern : in Float)
      return Integer
   is begin

      Text := EinWort.EinWort;

      -- 100 = Stützpunkt.Schlafsaal
      if
        (AktuellerOrtExtern = 100.0
         or
           AktuellerOrtExtern = 100.1
         or
           AktuellerOrtExtern = 100.2
         or
           AktuellerOrtExtern = 100.3)
        and
          (Text = "spinde"
           or
             Text = "spind")
      then
         return 10;

      elsif
        (AktuellerOrtExtern = 100.0
         or
           AktuellerOrtExtern = 100.1
         or
           AktuellerOrtExtern = 100.2
         or
           AktuellerOrtExtern = 100.3)
        and
          (Text = "betten"
           or
             Text = "bett")
      then
         return 11;

      elsif
        (AktuellerOrtExtern = 100.0
         or
           AktuellerOrtExtern = 100.1
         or
           AktuellerOrtExtern = 100.2
         or
           AktuellerOrtExtern = 100.3)
        and
          Text = "fenster"
      then
         return 12;

      elsif
        (AktuellerOrtExtern = 100.0
         or
           AktuellerOrtExtern = 100.1
         or
           AktuellerOrtExtern = 100.2
         or
           AktuellerOrtExtern = 100.3)
        and
          Text = "tür"
      then
         return 13;

      elsif
        (AktuellerOrtExtern = 100.1
         or
           AktuellerOrtExtern = 100.2)
        and
          (Text = "spindinhalt"
           or
             Text = "spind inhalt")
      then
         return 14;

      elsif
        (AktuellerOrtExtern = 100.2
         or
           AktuellerOrtExtern = 100.3)
        and
          Text = "draußen"
      then
         return 15;

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
         return 2;

      elsif
        Text = "speichern"
        or
          Text = "speichere"
          or
            Text = "speicher"
      then
         return 3;

      else
         Falsch.Falsch;
         return -10;
      end if;

   end Objekt;

end Objekt;
