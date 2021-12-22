package body HauptwerteAendern is

   function HauptwerteÄndern (Wert : in Integer) return Integer is
   begin

      Erhöhen := True;
      CharakterÄnderung := EinWort.EinWort;

      if CharakterÄnderung = "stärke" then
         Hauptwerte.Hauptwerte (1);
         return 5;
      elsif CharakterÄnderung = "wahrnehmung" then
         Hauptwerte.Hauptwerte (2);
         return 5;
      elsif CharakterÄnderung = "ausdauer" then
         Hauptwerte.Hauptwerte (3);
         return 5;
      elsif CharakterÄnderung = "charisma" then
         Hauptwerte.Hauptwerte (4);
         return 5;
      elsif CharakterÄnderung = "intelligenz" then
         Hauptwerte.Hauptwerte (5);
         return 5;
      elsif CharakterÄnderung = "beweglichkeit" then
         Hauptwerte.Hauptwerte (6);
         return 5;
      elsif CharakterÄnderung = "glück" then
         Hauptwerte.Hauptwerte (7);
         return 5;
      elsif CharakterÄnderung = "stärke+" or CharakterÄnderung = "stärke +" then
         HauptwerteVerteilung.HauptwerteVerteilung (True, 1);
         return 5;
      elsif CharakterÄnderung = "wahrnehmung+" or CharakterÄnderung = "wahrnehmung +" then
         HauptwerteVerteilung.HauptwerteVerteilung (True, 2);
         return 5;
      elsif CharakterÄnderung = "ausdauer+" or CharakterÄnderung = "ausdauer +" then
         HauptwerteVerteilung.HauptwerteVerteilung (True, 3);
         return 5;
      elsif CharakterÄnderung = "charisma+" or CharakterÄnderung = "charisma +" then
         HauptwerteVerteilung.HauptwerteVerteilung (True, 4);
         return 5;
      elsif CharakterÄnderung = "intelligenz+" or CharakterÄnderung = "intelligenz +" then
         HauptwerteVerteilung.HauptwerteVerteilung (True, 5);
         return 5;
      elsif CharakterÄnderung = "beweglichkeit+" or CharakterÄnderung = "beweglichkeit +" then
         HauptwerteVerteilung.HauptwerteVerteilung (True, 6);
         return 5;
      elsif CharakterÄnderung = "glück+" or CharakterÄnderung = "glück +" then
         HauptwerteVerteilung.HauptwerteVerteilung (True, 7);
         return 5;
      elsif (CharakterÄnderung = "stärke-" or CharakterÄnderung = "stärke -") and Wert = 1 then
         Erhöhen := False;
         HauptwerteVerteilung.HauptwerteVerteilung (False, 1);
         return 5;
      elsif (CharakterÄnderung = "wahrnehmung-" or CharakterÄnderung = "wahrnehmung -") and Wert = 1 then
         Erhöhen := False;
         HauptwerteVerteilung.HauptwerteVerteilung (False, 2);
         return 5;
      elsif (CharakterÄnderung = "ausdauer-" or CharakterÄnderung = "ausdauer -") and Wert = 1 then
         Erhöhen := False;
         HauptwerteVerteilung.HauptwerteVerteilung (False, 3);
         return 5;
      elsif (CharakterÄnderung = "charisma-" or CharakterÄnderung = "charisma -") and Wert = 1 then
         Erhöhen := False;
         HauptwerteVerteilung.HauptwerteVerteilung (False, 4);
         return 5;
      elsif (CharakterÄnderung = "intelligenz-" or CharakterÄnderung = "intelligenz -") and Wert = 1 then
         Erhöhen := False;
         HauptwerteVerteilung.HauptwerteVerteilung (False, 5);
         return 5;
      elsif (CharakterÄnderung = "beweglichkeit-" or CharakterÄnderung = "beweglichkeit -") and Wert = 1 then
         Erhöhen := False;
         HauptwerteVerteilung.HauptwerteVerteilung (False, 6);
         return 5;
      elsif (CharakterÄnderung = "glück-" or CharakterÄnderung = "glück -") and Wert = 1 then
         Erhöhen := False;
         HauptwerteVerteilung.HauptwerteVerteilung (False, 7);
         return 5;
      elsif CharakterÄnderung = "fertig" then
         return 6;
      elsif CharakterÄnderung = "beenden" or CharakterÄnderung = "ende" then
         return -1;
      elsif CharakterÄnderung = "lade" or CharakterÄnderung = "laden" then
         return 2;
      elsif CharakterÄnderung = "speichern" or CharakterÄnderung = "speichere" or CharakterÄnderung = "speicher" then
         return 3;
      elsif CharakterÄnderung = "information" or CharakterÄnderung = "informationen" or CharakterÄnderung = "infos" or CharakterÄnderung = "info" then
         return 4;
      elsif CharakterÄnderung = "hauptmenü" then
         return 0;
      elsif CharakterÄnderung = "äöüß#" then
         Charaktere.Hauptcharakter.Hauptwerte := (others => 10);
         return 6;
      else
         return -10;
      end if;

   end HauptwerteÄndern;

end HauptwerteAendern;
