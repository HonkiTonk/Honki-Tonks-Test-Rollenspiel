with Ada.Wide_Text_IO; use Ada.Wide_Text_IO;

with Schwierigkeitsgrad;
with Hauptmenue;
with GlobalerHub;
with Charaktererstellung;
with StandardAuswahl;
-- with Laden;
with AllesAufStandardSetzen;
with Nicht;

procedure Start is

   SchonMalImSpielGewesen : Boolean := False;
   HauptmenüAuswahl : Boolean := True;

   Wert : Integer := 0;
   Hauptmenü : Integer := 0;

begin

   HauptmenüSchleife:
   while HauptmenüAuswahl loop

      case
        Wert
      is
         when 2 =>
            null;

         when others =>
            Put_Line ("Willkommen bei Texti, dem kleinen Textrollenspiel!");
            New_Line;
            Put_Line ("Es stehen folgende Möglichkeiten zur Verfügung:");
            Put_Line ("Start - Startet das Spiel.");
            Put_Line ("Laden - Lädt einen gespeicherten Spielstand.");
            Put_Line ("Informationen - Mehr Informationen über das Spiel.");
            Put_Line ("Beenden - Beendet das Spiel.");
            Put_Line ("Bitte die gewünschte Möglichkeit eingeben.");
            New_Line;

            Wert := StandardAuswahl.StandardAuswahl;

            New_Line;
      end case;

      case
        Wert
      is
         when -1 =>
            HauptmenüAuswahl := False;

         when 0 =>
            Put_Line ("Sie befinden sich bereits im Hauptmenü.");

         when 1 =>
            case
              Charaktererstellung.Erstellung
            is
               when 0 =>
                  null;

               when 1 =>
                  case
                    Schwierigkeitsgrad.SchwierigkeitAuswählen
                  is
                     when 0 =>
                        null;

                     when 1 =>
                        case
                          SchonMalImSpielGewesen
                        is
                           when False =>
                              Hauptmenü := GlobalerHub.VerteilungGlobal;
                              SchonMalImSpielGewesen := True;

                           when True =>
                              AllesAufStandardSetzen.AufStandardSetzen;
                              Hauptmenü := GlobalerHub.VerteilungGlobal;
                        end case;

                        case
                          Hauptmenü
                        is
                           when -1 =>
                              HauptmenüAuswahl := False;

                           when 2 =>
                              -- Laden.Laden;
                              null;

                           when others =>
                              null;
                        end case;

                     when others =>
                        HauptmenüAuswahl := False;
                  end case;

               when 2 =>
                  -- Laden.Laden;
                  null;

               when others =>
                  HauptmenüAuswahl := False;
            end case;

         when 2 =>
            -- Laden.Laden;
            null;

         when 3 =>
            -- Speichern
            Nicht.Nicht;

         when 4 =>
            Hauptmenue.Hauptmenü;

         when 1337 =>
            Wert := GlobalerHub.VerteilungGlobal;
            HauptmenüAuswahl := False;

         when others =>
            null;
      end case;

   end loop HauptmenüSchleife;

   Put_Line ("Auf Wiedersehen.");

end Start;
