pragma Warnings (Off, "*array aggregate*");

with Ada.Wide_Wide_Text_IO; use Ada.Wide_Wide_Text_IO;

with EinWort;
with Falsch;
with KampfBefehle;

package body ImKampf is

   function ImKampf
     return Integer
   is begin

      Text := EinWort.EinWort;

      if
        Text = "angriff"
        or
          Text = "angreifen"
          or
            Text = "attacke"
      then
         return 10;

      elsif
        Text = "verteidigung"
        or
          Text = "abwehren"
          or
            Text = "verteidigen"
      then
         return 11;

      elsif
        Text = "gegenstand"
        or
          Text = "item"
          or
            Text = "objekt"
      then
         return 12;

      elsif
        Text = "flucht"
        or
          Text = "fliehen"
      then
         return 13;

      elsif
        Text = "befehle"
        or
          Text = "befehl"
          or
            Text ="standardbefehl"
            or
              Text = "standardbefehle"
      then
         KampfBefehle.KampfBefehle;
         return 20;

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
         -- Speichern auch während eines Kampfes?
         Put_Line (Item => "Während eines Kampfes kann nicht gespeichert werden?");
         return 20;

      else
         Falsch.Falsch;
         return -10;
      end if;

   end ImKampf;

end ImKampf;
