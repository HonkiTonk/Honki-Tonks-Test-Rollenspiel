with Ada.Wide_Text_IO; use Ada.Wide_Text_IO;

with EinWort;
with Falsch;
with Schlafen;
with Warten;
with CharakterDatenblatt;
with LevelUp;
with Inventar;
with Zeit;
with Quest;
with StandardBefehle;

package body ImSpiel is

   function ImSpiel
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
        Text = "befehle"
        or
          Text = "befehl"
          or
            Text ="standardbefehl"
            or
              Text = "standardbefehle"
      then
         StandardBefehle.StandardBefehle;
         return 20;

      elsif
        Text = "nimm"
        or
          Text = "nehme"
      then
         Put_Line ("Was möchten sie nehmen?");
         return 10;

      elsif
        Text = "anschauen"
        or
          Text = "schau an"
      then
         Put_Line ("Was möchten sie anschauen?");
         return 11;

      elsif
        Text = "benutze"
        or
          Text = "benutzen"
          or
            Text = "nutze"
      then
         Put_Line ("Was möchten sie benutzen?");
         return 12;

      elsif
        Text = "sprechen"
        or
          Text = "ansprechen"
          or
            Text = "sprich"
            or
              Text = "rede"
              or
                Text = "reden"
                or
                  Text = "unterhalten"
      then
         Put_Line ("Mit wem wollen sie sprechen?");
         return 13;

      elsif
        Text = "öffnen"
        or
          Text = "öffne"
      then
         Put_Line ("Was möchten sie öffnen?");
         return 14;

      elsif
        Text = "schließen"
        or
          Text = "schließe"
      then
         Put_Line ("Was möchten sie schließen?");
         return 15;

      elsif
        Text = "gehe"
        or
          Text = "gehen"
          or
            Text = "laufe"
            or
              Text = "laufen"
      then
         Put_Line ("Wohin wollen sie gehen?");
         return 16;

      elsif
        Text = "angreifen"
        or
          Text = "angriff"
      then
         Put_Line ("Wen wollen sie angreifen?");
         return 17;

      elsif
        Text = "schlafen"
        or
          Text = "schlafe"
          or
            Text = "ausruhen"
      then
         Schlafen.Schlafen;
         return 20;

      elsif
        Text = "warte"
        or
          Text = "warten"
      then
         Warten.Warten;
         return 20;

      elsif
        Text = "werte"
        or
          Text = "charakter"
      then
         CharakterDatenblatt.AktuelleCharakterwerte;
         return 20;

      elsif
        Text = "verteilung"
        or
          Text = "levelup"
          or
            Text = "level up"
            or
              Text = "aufstieg"
              or
                Text = "aufsteigen"
      then
         LevelUp.Leer;
         return 20;

      elsif
        Text = "inventar"
        or
          Text = "ausrüstung"
          or
            Text = "gegenstände"
      then
         Put_Line ("Sie öffnen ihr Inventar.");
         return Inventar.Inventar;

      elsif
        Text = "zeit"
        or
          Text = "uhrzeit"
          or
            Text = "uhr"
      then
         Zeit.UhrzeitNutzer (0, 0);
         return 20;

      elsif
        Text = "quest"
        or
          Text = "tagebuch"
          or
            Text = "questlog"
      then
         return Quest.Quest;

      else
         Falsch.Falsch;
         return -10;
      end if;

   end ImSpiel;

end ImSpiel;
