with Ada.Wide_Text_IO, Schwierigkeitsgrad, Hauptmenue, GlobalerHub, Charaktererstellung, StandardAuswahl, Laden, Ada.Strings.Wide_Unbounded, AllesAufStandardSetzen, Nicht, GanzeZahl;
use Ada.Wide_Text_IO, Ada.Strings.Wide_Unbounded;

procedure Start is

   Wert : Integer := 0;
   SchonMalImSpielGewesen : Boolean := False;

   Text : Unbounded_Wide_String;
   HauptmenüEingabe : Unbounded_Wide_String;

   Hauptmenü1 : Integer := 0;
   Hauptmenü2 : Integer := 0;
   Hauptmenü3 : Integer := 0;

   HauptmenüAuswahl : Boolean := True;

begin

   HauptmenüSchleife:
   while HauptmenüAuswahl = True loop

      case Wert is
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

      case Wert is

         when -1 =>
            HauptmenüAuswahl := False;

         when 0 =>
            Put_Line ("Sie befinden sich bereits im Hauptmenü.");

         when 1 =>
            Hauptmenü1 := Charaktererstellung.Erstellung;
            case Hauptmenü1 is

               when 0 =>
                  null;

               when 1 =>
                  Hauptmenü2 := Schwierigkeitsgrad.SchwierigkeitAuswählen;
                  case Hauptmenü2 is

                     when 0 =>
                        null;

                     when 1 =>
                        case SchonMalImSpielGewesen is

                           when False =>
                              Hauptmenü3 := GlobalerHub.VerteilungGlobal;
                              SchonMalImSpielGewesen := True;

                           when True =>
                              AllesAufStandardSetzen.AufStandardSetzen;
                              Hauptmenü3 := GlobalerHub.VerteilungGlobal;

                        end case;

                        case Hauptmenü3 is

                           when -1 =>
                              HauptmenüAuswahl := False;

                           when 2 =>
                              null;--Laden.Laden;

                           when others =>
                              null;

                        end case;

                     when others =>
                        HauptmenüAuswahl := False;

                  end case;

               when 2 =>
                  null;--Laden.Laden;

               when others =>
                  HauptmenüAuswahl := False;

            end case;

         when 2 =>
            null;--Laden.Laden;

         when 3 =>
            Nicht.Nicht; -- Speichern

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
