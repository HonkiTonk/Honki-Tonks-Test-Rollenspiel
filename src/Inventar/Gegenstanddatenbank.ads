pragma Warnings (Off, "*array aggregate*");

with Ada.Strings.Wide_Wide_Unbounded; use Ada.Strings.Wide_Wide_Unbounded;

package Gegenstanddatenbank is

   type SonstigesGegenstand is record

      ID : Integer;
      Gewicht : Float;
      Wert : Integer;
      Name : Unbounded_Wide_Wide_String;
      Beschreibung : Unbounded_Wide_Wide_String;

   end record;

   type SonstigesGegenstandListeArray is array (1 .. 7) of SonstigesGegenstand;
   SonstigesGegenstandListe : SonstigesGegenstandListeArray := (
                                                                1 => (1, 0.1, 50, To_Unbounded_Wide_Wide_String (Source => "P16 Munition"), To_Unbounded_Wide_Wide_String (Source => "Munition für die P16 Pistole.")),
                                                                2 => (2, 0.1, 50, To_Unbounded_Wide_Wide_String (Source => "P18 Munition"), To_Unbounded_Wide_Wide_String (Source => "Munition für die P18 Pistole.")),
                                                                3 => (3, 0.1, 50, To_Unbounded_Wide_Wide_String (Source => "MP16 Munition"),
                                                                      To_Unbounded_Wide_Wide_String (Source => "Munition für die P16 Maschinenpistole.")),
                                                                4 => (4, 0.1, 50, To_Unbounded_Wide_Wide_String (Source => "SG29 Munition"), To_Unbounded_Wide_Wide_String (Source => "Munition für das SG29 Sturmgewehr.")),
                                                                5 => (5, 0.1, 50, To_Unbounded_Wide_Wide_String (Source => "SSG5 Munition"),
                                                                      To_Unbounded_Wide_Wide_String (Source => "Munition für das SSG5 Scharfschützengewehr.")),
                                                                6 => (6, 0.1, 50, To_Unbounded_Wide_Wide_String (Source => "MG8 Munition"),
                                                                      To_Unbounded_Wide_Wide_String (Source => "Munition für das MG8 Maschinengewehr.")),
                                                                7 => (7, 0.1, 50, To_Unbounded_Wide_Wide_String (Source => "PF10 Munition"), To_Unbounded_Wide_Wide_String (Source => "Munition für die PF10 Panzerfaust."))
                                                               );

   type HeilGegenstand is record

      ID : Integer;
      Gewicht : Float;
      Wert : Integer;
      Heilwert : Integer; -- Statuseffekte negative ID
      Name : Unbounded_Wide_Wide_String;
      Beschreibung : Unbounded_Wide_Wide_String;

   end record;

   type HeilGegenstandListeArray is array (1_000 .. 1_008) of HeilGegenstand;
   HeilGegenstandListe : HeilGegenstandListeArray := (
                                                      1_000 => (1_000, 0.1, 10, 5, To_Unbounded_Wide_Wide_String (Source => "Rationen"),
                                                                To_Unbounded_Wide_Wide_String (Source => "Wenig schmackhafte Militärrationen für Notfälle.")),
                                                      1_001 => (1_001, 0.1, 50, 10, To_Unbounded_Wide_Wide_String (Source => "Verband"), To_Unbounded_Wide_Wide_String (Source => "Ein einfacher Verband.")),
                                                      1_002 => (1_002, 0.1, 10, 15, To_Unbounded_Wide_Wide_String (Source => "Verbandskasten"),
                                                                To_Unbounded_Wide_Wide_String (Source => "Diverse Verbände und Pflaster in einem Kasten.")),
                                                      1_003 => (1_003, 0.1, 10, 20, To_Unbounded_Wide_Wide_String (Source => "Großer Verbandskasten"),
                                                                To_Unbounded_Wide_Wide_String (Source => "Zahlreiche Verbände, Pflaster und Desinfektionsmittel.")),
                                                      1_004 => (1_004, 0.1, 10, -1, To_Unbounded_Wide_Wide_String (Source => "Antibiotikum"),
                                                                To_Unbounded_Wide_Wide_String (Source => "Effektives Mittel gegen Krankheiten.")),
                                                      1_005 => (1_005, 0.1, 10, -2, To_Unbounded_Wide_Wide_String (Source => "Hitzepad"), To_Unbounded_Wide_Wide_String (Source => "Hilfreich gegen Kälte.")),
                                                      1_006 => (1_006, 0.1, 10, -3, To_Unbounded_Wide_Wide_String (Source => "Antidot"), To_Unbounded_Wide_Wide_String (Source => "Wirksames Gegengift.")),
                                                      1_007 => (1_007, 0.1, 10, -4, To_Unbounded_Wide_Wide_String (Source => "Druckverband"), To_Unbounded_Wide_Wide_String (Source => "Hilft gegen Blutungen.")),
                                                      1_008 => (1_008, 0.1, 10, -5, To_Unbounded_Wide_Wide_String (Source => "Eisspray"), To_Unbounded_Wide_Wide_String (Source => "Ein Spray gegen Verbrennungen."))
                                                     );

   type QuestGegenstand is record

      ID : Integer;
      Gewicht : Float;
      Name : Unbounded_Wide_Wide_String;
      Beschreibung : Unbounded_Wide_Wide_String;

   end record;

   type QuestGegenstandListeArray is array (2_000 .. 2_001) of QuestGegenstand;
   QuestGegenstandListe : QuestGegenstandListeArray := (
                                                        2_000 => (2_000, 0.1, To_Unbounded_Wide_Wide_String (Source => "Schlüssel"), To_Unbounded_Wide_Wide_String (Source => "Ein kleiner, bronzener Türschlüssel.")),
                                                        2_001 => (2_001, 0.1, To_Unbounded_Wide_Wide_String (Source => "Strategische Pläne"), To_Unbounded_Wide_Wide_String (Source => "Wichtige strategische Plände"))
                                                       );

   type KampfGegenstand is record

      ID : Integer;
      Gewicht : Float;
      Wert : Integer;
      Schaden : Integer;
      Name : Unbounded_Wide_Wide_String;
      Beschreibung : Unbounded_Wide_Wide_String;

   end record;

   type KampfGegenstandListeArray is array (3_000 .. 3_001) of KampfGegenstand;
   KampfGegenstandListe : KampfGegenstandListeArray := (
                                                        3_000 => (3_000, 0.1, 50, 5, To_Unbounded_Wide_Wide_String (Source => "Handgranate"), To_Unbounded_Wide_Wide_String (Source => "Eine gewönhliche Handgranate")),
                                                        3_001 => (3_001, 0.1, 50, 5, To_Unbounded_Wide_Wide_String (Source => "Napalmgranate"),
                                                                  To_Unbounded_Wide_Wide_String (Source => "Eine Handgranate gefüllt mit Napalm."))
                                                       );

   type WaffenGegenstand is record

      ID : Integer;
      Gewicht : Float;
      Wert : Integer;
      Hand : Integer;
      Grundschaden : Integer;
      MunitionMaximal : Integer;
      Name : Unbounded_Wide_Wide_String;
      Beschreibung : Unbounded_Wide_Wide_String;

   end record;

   type WaffenGegenstandListeArray is array (4_000 .. 4_006) of WaffenGegenstand;
   WaffenGegenstandListe : WaffenGegenstandListeArray := (
                                                          4_000 => (4_000, 0.1, 50, 1, 5, 8, To_Unbounded_Wide_Wide_String (Source => "P16"), To_Unbounded_Wide_Wide_String (Source => "Die Standard Pistole.")),
                                                          4_001 => (4_001, 0.1, 50, 1, 7, 10, To_Unbounded_Wide_Wide_String (Source => "P18"),
                                                                    To_Unbounded_Wide_Wide_String (Source => "Eine modifizierte Version der P16.")),
                                                          4_002 => (4_002, 0.1, 50, 2, 10, 30, To_Unbounded_Wide_Wide_String (Source => "MP16"), To_Unbounded_Wide_Wide_String (Source => "Die Standard Maschinenpistole.")),
                                                          4_003 => (4_003, 0.1, 50, 2, 15, 30, To_Unbounded_Wide_Wide_String (Source => "SG29"), To_Unbounded_Wide_Wide_String (Source => "Das Standard Sturmgewehr.")),
                                                          4_004 => (4_004, 0.1, 50, 2, 20, 15, To_Unbounded_Wide_Wide_String (Source => "SSG5"),
                                                                    To_Unbounded_Wide_Wide_String (Source => "Das Standard Scharfschützengewehr.")),
                                                          4_005 => (4_005, 0.1, 50, 2, 25, 1000, To_Unbounded_Wide_Wide_String (Source => "MG8"), To_Unbounded_Wide_Wide_String (Source => "Ein Maschinengewehr.")),
                                                          4_006 => (4_006, 0.1, 50, 2, 50, 1, To_Unbounded_Wide_Wide_String (Source => "PF10"), To_Unbounded_Wide_Wide_String (Source => "Eine Panzerfaust."))
                                                         );

   type RüstungenGegenstand is record

      ID : Integer;
      Gewicht : Float;
      Wert : Integer;
      Verteidigung : Integer;
      Position : Integer;
      Name : Unbounded_Wide_Wide_String;
      Beschreibung : Unbounded_Wide_Wide_String;

   end record;

   type RüstungenGegenstandListeArray is array (5_000 .. 5_004) of RüstungenGegenstand;
   RüstungenGegenstandListe : RüstungenGegenstandListeArray := (
                                                                  5_000 => (5_000, 0.1, 50, 5, 3, To_Unbounded_Wide_Wide_String (Source => "Uniform"), To_Unbounded_Wide_Wide_String (Source => "Eine gewöhnliche Uniform.")),
                                                                  5_001 => (5_001, 0.1, 50, 8, 3, To_Unbounded_Wide_Wide_String (Source => "Gepolsterte Uniform"),
                                                                            To_Unbounded_Wide_Wide_String (Source => "Eine gepolsterte Uniform.")),
                                                                  5_002 => (5_002, 0.1, 50, 12, 3, To_Unbounded_Wide_Wide_String (Source => "Gepanzerte Uniform"),
                                                                            To_Unbounded_Wide_Wide_String (Source => "Eine Uniform die mit Panzerplatten verstärkt ist.")),
                                                                  5_003 => (5_003, 0.1, 50, 20, 3, To_Unbounded_Wide_Wide_String (Source => "Kampfanzug"),
                                                                            To_Unbounded_Wide_Wide_String (Source => "Ein wiederstandsfähiger Kampfanzug.")),
                                                                  5_004 => (5_004, 0.1, 50, 35, 3, To_Unbounded_Wide_Wide_String (Source => "Schwerer Kampfanzug"),
                                                                            To_Unbounded_Wide_Wide_String (Source => "Eine weiterverstärkte Version des normalen Kampfanzugs."))
                                                                 );

   type HelmGegenstand is record

      ID : Integer;
      Gewicht : Float;
      Wert : Integer;
      Verteidigung : Integer;
      Position : Integer;
      Name : Unbounded_Wide_Wide_String;
      Beschreibung : Unbounded_Wide_Wide_String;

   end record;

   type HelmGegenstandListeArray is array (6_000 .. 6_002) of HelmGegenstand;
   HelmGegenstandListe : HelmGegenstandListeArray := (
                                                      6_000 => (6_000, 0.1, 50, 5, 1, To_Unbounded_Wide_Wide_String (Source => "Hut"), To_Unbounded_Wide_Wide_String (Source => "Eine einfacher Stoffhut.")),
                                                      6_001 => (6_001, 0.1, 50, 8, 1, To_Unbounded_Wide_Wide_String (Source => "Stahlhelm"), To_Unbounded_Wide_Wide_String (Source => "Der Standard Militärhelm.")),
                                                      6_002 => (6_002, 0.1, 50, 12, 1, To_Unbounded_Wide_Wide_String (Source => "Dicker Stahlhelm"), To_Unbounded_Wide_Wide_String (Source => "Ein verstärkter Stahlhelm."))
                                                     );

   type HandGegenstand is record

      ID : Integer;
      Gewicht : Float;
      Wert : Integer;
      Verteidigung : Integer;
      Position : Integer;
      Name : Unbounded_Wide_Wide_String;
      Beschreibung : Unbounded_Wide_Wide_String;

   end record;

   type HandGegenstandListeArray is array (7_000 .. 7_001) of HandGegenstand;
   HandGegenstandListe : HandGegenstandListeArray := (
                                                      7_000 => (7_000, 0.1, 50, 5, 2, To_Unbounded_Wide_Wide_String (Source => "Handschuhe"), To_Unbounded_Wide_Wide_String (Source => "Einfache Stoffhandschuhe.")),
                                                      7_001 => (7_001, 0.1, 50, 8, 2, To_Unbounded_Wide_Wide_String (Source => "Dicke Handschuhe"),
                                                                To_Unbounded_Wide_Wide_String (Source => "Handschuhe mit extra dickem Polster für kalte Orte."))
                                                     );

   type SchuhGegenstand is record

      ID : Integer;
      Gewicht : Float;
      Wert : Integer;
      Verteidigung : Integer;
      Position : Integer;
      Name : Unbounded_Wide_Wide_String;
      Beschreibung : Unbounded_Wide_Wide_String;

   end record;

   type SchuhGegenstandListeArray is array (8_000 .. 8_001) of SchuhGegenstand;
   SchuhGegenstandListe : SchuhGegenstandListeArray := (
                                                        8_000 => (8_000, 0.1, 50, 5, 4, To_Unbounded_Wide_Wide_String (Source => "Schuhe"), To_Unbounded_Wide_Wide_String (Source => "Ganz gewöhnliche Schuhe.")),
                                                        8_001 => (8_001, 0.1, 50, 8, 4, To_Unbounded_Wide_Wide_String (Source => "Militärstiefel"),
                                                                  To_Unbounded_Wide_Wide_String (Source => "Bestandteil der militärischen Grundausrüstung."))
                                                       );

end Gegenstanddatenbank;
