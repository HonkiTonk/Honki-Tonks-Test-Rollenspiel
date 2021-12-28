with EinWort;
with Falsch;

package body Bewegungsrichtung is

   function Bewegungsrichtung
     return Integer
   is begin

      Text := EinWort.EinWort;

      if
        Text = "norden"
        or
          Text = "nach norden"
          or
            Text = "nord"
            or
              Text = "nördlich"
              or
                Text = "n"
      then
         return 10;

      elsif
        Text = "nordosten"
        or
          Text = "nach nordosten"
          or
            Text = "nordost"
            or
              Text = "nordöstlich"
              or
                Text = "no"
      then
         return 11;

      elsif
        Text = "osten"
        or
          Text = "nach osten"
          or
            Text = "ost"
            or
              Text = "östlich"
              or
                Text = "o"
      then
         return 12;

      elsif
        Text = "südosten"
        or
          Text = "nach südosten"
          or
            Text = "südost"
            or
              Text = "südöstlich"
              or
                Text = "so"
      then
         return 13;

      elsif
        Text = "süden"
        or
          Text = "nach süden"
          or
            Text = "süd"
            or
              Text = "südlich"
              or
                Text = "s"
      then
         return 14;

      elsif
        Text = "südwesten"
        or
          Text = "nach südwesten"
          or
            Text = "südwest"
            or
              Text = "südwestlich"
              or
                Text = "sw"
      then
         return 15;

      elsif
        Text = "westen"
        or
          Text = "nach westen"
          or
            Text = "west"
            or
              Text = "westlich"
              or
                Text = "w"
      then
         return 16;

      elsif
        Text = "nordwesten"
        or
          Text = "nach nordwesten"
          or
            Text = "nordwest"
            or
              Text = "nordwestlich"
              or
                Text = "nw"
      then
         return 17;

      elsif
        Text = "beenden"
        or
          Text = "ende"
      then
         return -1;

      elsif
        Text = "hauptmenue"
        or
          Text = "hauptmenü"
          or
            Text = "hauptmenu"
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

   end Bewegungsrichtung;

end Bewegungsrichtung;
