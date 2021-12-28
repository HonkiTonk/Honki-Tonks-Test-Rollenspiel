with Falsch;
with EinWort;

package body StandardAuswahl is

   function StandardAuswahl
     return Integer
   is begin

      Text := EinWort.EinWort;

      if
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
        Text = "start"
        or
          Text = "starten"
          or
            Text = "starte"
      then
         return 1;

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

      elsif
        Text = "m"
        or
          Text = "männlich"
          or
            Text = "mann"
      then
         return 5;

      elsif
        Text = "w"
        or
          Text = "weiblich"
          or
            Text = "frau"
      then
         return 6;

      elsif
        Text = "1337"
      then
         return 1337;

      else
         Falsch.Falsch;
         return -10;
      end if;

   end StandardAuswahl;

end StandardAuswahl;
