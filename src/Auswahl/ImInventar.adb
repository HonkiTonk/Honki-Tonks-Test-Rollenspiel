with Ada.Wide_Text_IO; use Ada.Wide_Text_IO;

with EinWort;
with GesamterBesitz;
with Benutzen;
with Ausruesten;
with Ablegen;
with Wegwerfen;
with InventarInfo;
with Falsch;
with InventarBefehle;

package body ImInventar is

   function ImInventar
     return Integer
   is begin

      Text := EinWort.EinWort;
      
      if
        Text = "übersicht"
      then
         GesamterBesitz.GesamterBesitz;
         return -10;
         
         -- Nach Wegwerfen da hier darauf verwiesen werden muss.
      elsif
        Text = "benutzen"
        or
          Text = "benutze"
      then
         WiederverwendbarkeitVonBenutzenBeimKämpfen := Benutzen.Benutzen;
         return -10;
         
         -- Nach Wegwerfen da hier darauf verwiesen werden muss.
      elsif
        Text = "ausrüsten"
        or
          Text = "anlegen"
      then
         Ausruesten.Ausrüsten;
         return -10;
         
      elsif
        Text = "ablegen"
      then
         Ablegen.Ablegen;
         return -10;
         
      elsif
        Text = "weg"
        or
          Text = "wegwerfen"
          or
            Text = "müll"
      then
         Wegwerfen.Aufteilung;
         return -10;
         
      elsif
        Text = "schließen"
      then
         Put_Line ("Sie schließen ihr Inventar.");
         return 1;
         
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
         
      elsif
        Text = "information"
        or
          Text = "informationen"
          or
            Text = "infos"
            or
              Text = "info"
      then
         GesamterBesitz.GesamterBesitz;
         Put_Line ("Über welchen Gegenstand möchten sie Informationen haben?");
         InventarInfo.Verteilung;
         return -10;
         
      elsif
        Text = "befehle"
      then
         InventarBefehle.InventarBefehle;
         return -10;
         
      else
         Falsch.Falsch;
         return -10;
      end if;

   end ImInventar;

end ImInventar;
