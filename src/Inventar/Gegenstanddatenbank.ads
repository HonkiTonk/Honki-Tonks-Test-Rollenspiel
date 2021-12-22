with Ada.Wide_Text_IO, Ada.Strings.Wide_Unbounded;
use Ada.Wide_Text_IO, Ada.Strings.Wide_Unbounded;

package Gegenstanddatenbank is

   type SonstigesGegenstand is record

      ID : Integer;
      Gewicht : Float;
      Wert : Integer;
      Name : Unbounded_Wide_String;
      Beschreibung : Unbounded_Wide_String;

   end record;

   type SonstigesGegenstandListeArray is array (1 .. 7) of SonstigesGegenstand;
   SonstigesGegenstandListe : SonstigesGegenstandListeArray := ((1, 0.1, 50, To_Unbounded_Wide_String ("P16 Munition"), To_Unbounded_Wide_String ("Munition für die P16 Pistole.")),
                                                                (2, 0.1, 50, To_Unbounded_Wide_String ("P18 Munition"), To_Unbounded_Wide_String ("Munition für die P18 Pistole.")),
                                                                (3, 0.1, 50, To_Unbounded_Wide_String ("MP16 Munition"), To_Unbounded_Wide_String ("Munition für die P16 Maschinenpistole.")),
                                                                (4, 0.1, 50, To_Unbounded_Wide_String ("SG29 Munition"), To_Unbounded_Wide_String ("Munition für das SG29 Sturmgewehr.")),
                                                                (5, 0.1, 50, To_Unbounded_Wide_String ("SSG5 Munition"), To_Unbounded_Wide_String ("Munition für das SSG5 Scharfschützengewehr.")),
                                                                (6, 0.1, 50, To_Unbounded_Wide_String ("MG8 Munition"), To_Unbounded_Wide_String ("Munition für das MG8 Maschinengewehr.")),
                                                                (7, 0.1, 50, To_Unbounded_Wide_String ("PF10 Munition"), To_Unbounded_Wide_String ("Munition für die PF10 Panzerfaust.")));

   type HeilGegenstand is record

      ID : Integer;
      Gewicht : Float;
      Wert : Integer;
      Heilwert : Integer; -- Statuseffekte negative ID
      Name : Unbounded_Wide_String;
      Beschreibung : Unbounded_Wide_String;

   end record;

   type HeilGegenstandListeArray is array (1000 .. 1008) of HeilGegenstand;
   HeilGegenstandListe : HeilGegenstandListeArray := ((1000, 0.1, 10, 5, To_Unbounded_Wide_String ("Rationen"), To_Unbounded_Wide_String ("Wenig schmackhafte Militärrationen für Notfälle.")),
                                                      (1001, 0.1, 50, 10, To_Unbounded_Wide_String ("Verband"), To_Unbounded_Wide_String ("Ein einfacher Verband.")),
                                                      (1002, 0.1, 10, 15, To_Unbounded_Wide_String ("Verbandskasten"), To_Unbounded_Wide_String ("Diverse Verbände und Pflaster in einem Kasten.")),
                                                      (1003, 0.1, 10, 20, To_Unbounded_Wide_String ("Großer Verbandskasten"), To_Unbounded_Wide_String ("Zahlreiche Verbände, Pflaster und Desinfektionsmittel.")),
                                                      (1004, 0.1, 10, -1, To_Unbounded_Wide_String ("Antibiotikum"), To_Unbounded_Wide_String ("Effektives Mittel gegen Krankheiten.")),
                                                      (1005, 0.1, 10, -2, To_Unbounded_Wide_String ("Hitzepad"), To_Unbounded_Wide_String ("Hilfreich gegen Kälte.")),
                                                      (1006, 0.1, 10, -3, To_Unbounded_Wide_String ("Antidot"), To_Unbounded_Wide_String ("Wirksames Gegengift.")),
                                                      (1007, 0.1, 10, -4, To_Unbounded_Wide_String ("Druckverband"), To_Unbounded_Wide_String ("Hilft gegen Blutungen.")),
                                                      (1008, 0.1, 10, -5, To_Unbounded_Wide_String ("Eisspray"), To_Unbounded_Wide_String ("Ein Spray gegen Verbrennungen.")));

   type QuestGegenstand is record

      ID : Integer;
      Gewicht : Float;
      Name : Unbounded_Wide_String;
      Beschreibung : Unbounded_Wide_String;

   end record;

   type QuestGegenstandListeArray is array (2000 .. 2001) of QuestGegenstand;
   QuestGegenstandListe : QuestGegenstandListeArray := ((2000, 0.1, To_Unbounded_Wide_String ("Schlüssel"), To_Unbounded_Wide_String ("Ein kleiner, bronzener Türschlüssel.")),
                                                        (2001, 0.1, To_Unbounded_Wide_String ("Strategische Pläne"), To_Unbounded_Wide_String ("Wichtige strategische Plände")));

   type KampfGegenstand is record

      ID : Integer;
      Gewicht : Float;
      Wert : Integer;
      Schaden : Integer;
      Name : Unbounded_Wide_String;
      Beschreibung : Unbounded_Wide_String;

   end record;

   type KampfGegenstandListeArray is array (3000 .. 3001) of KampfGegenstand;
   KampfGegenstandListe : KampfGegenstandListeArray := ((3000, 0.1, 50, 5, To_Unbounded_Wide_String ("Handgranate"), To_Unbounded_Wide_String ("Eine gewönhliche Handgranate")),
                                                        (3001, 0.1, 50, 5, To_Unbounded_Wide_String ("Napalmgranate"), To_Unbounded_Wide_String ("Eine Handgranate gefüllt mit Napalm.")));

   type WaffenGegenstand is record

      ID : Integer;
      Gewicht : Float;
      Wert : Integer;
      Hand : Integer;
      Grundschaden : Integer;
      MunitionMaximal : Integer;
      Name : Unbounded_Wide_String;
      Beschreibung : Unbounded_Wide_String;

   end record;

   type WaffenGegenstandListeArray is array (4000 .. 4006) of WaffenGegenstand;
   WaffenGegenstandListe : WaffenGegenstandListeArray := ((4000, 0.1, 50, 1, 5, 8, To_Unbounded_Wide_String ("P16"), To_Unbounded_Wide_String ("Die Standard Pistole.")),
                                                          (4001, 0.1, 50, 1, 7, 10, To_Unbounded_Wide_String ("P18"), To_Unbounded_Wide_String ("Eine modifizierte Version der P16.")),
                                                          (4002, 0.1, 50, 2, 10, 30, To_Unbounded_Wide_String ("MP16"), To_Unbounded_Wide_String ("Die Standard Maschinenpistole.")),
                                                          (4003, 0.1, 50, 2, 15, 30, To_Unbounded_Wide_String ("SG29"), To_Unbounded_Wide_String ("Das Standard Sturmgewehr.")),
                                                          (4004, 0.1, 50, 2, 20, 15, To_Unbounded_Wide_String ("SSG5"), To_Unbounded_Wide_String ("Das Standard Scharfschützengewehr.")),
                                                          (4005, 0.1, 50, 2, 25, 1000, To_Unbounded_Wide_String ("MG8"), To_Unbounded_Wide_String ("Ein Maschinengewehr.")),
                                                          (4006, 0.1, 50, 2, 50, 1, To_Unbounded_Wide_String ("PF10"), To_Unbounded_Wide_String ("Eine Panzerfaust.")));

   type RüstungenGegenstand is record

      ID : Integer;
      Gewicht : Float;
      Wert : Integer;
      Verteidigung : Integer;
      Position : Integer;
      Name : Unbounded_Wide_String;
      Beschreibung : Unbounded_Wide_String;

   end record;

   type RüstungenGegenstandListeArray is array (5000 .. 5004) of RüstungenGegenstand;
   RüstungenGegenstandListe : RüstungenGegenstandListeArray := ((5000, 0.1, 50, 5, 3, To_Unbounded_Wide_String ("Uniform"), To_Unbounded_Wide_String ("Eine gewöhnliche Uniform.")),
                                                                  (5001, 0.1, 50, 8, 3, To_Unbounded_Wide_String ("Gepolsterte Uniform"), To_Unbounded_Wide_String ("Eine gepolsterte Uniform.")),
                                                                  (5002, 0.1, 50, 12, 3, To_Unbounded_Wide_String ("Gepanzerte Uniform"), To_Unbounded_Wide_String ("Eine Uniform die mit Panzerplatten verstärkt ist.")),
                                                                  (5003, 0.1, 50, 20, 3, To_Unbounded_Wide_String ("Kampfanzug"), To_Unbounded_Wide_String ("Ein wiederstandsfähiger Kampfanzug.")),
                                                                  (5004, 0.1, 50, 35, 3, To_Unbounded_Wide_String ("Schwerer Kampfanzug"), To_Unbounded_Wide_String ("Eine weiterverstärkte Version des normalen Kampfanzugs.")));

   type HelmGegenstand is record

      ID : Integer;
      Gewicht : Float;
      Wert : Integer;
      Verteidigung : Integer;
      Position : Integer;
      Name : Unbounded_Wide_String;
      Beschreibung : Unbounded_Wide_String;

   end record;

   type HelmGegenstandListeArray is array (6000 .. 6002) of HelmGegenstand;
   HelmGegenstandListe : HelmGegenstandListeArray := ((6000, 0.1, 50, 5, 1, To_Unbounded_Wide_String ("Hut"), To_Unbounded_Wide_String ("Eine einfacher Stoffhut.")),
                                                      (6001, 0.1, 50, 8, 1, To_Unbounded_Wide_String ("Stahlhelm"), To_Unbounded_Wide_String ("Der Standard Militärhelm.")),
                                                      (6002, 0.1, 50, 12, 1, To_Unbounded_Wide_String ("Dicker Stahlhelm"), To_Unbounded_Wide_String ("Ein verstärkter Stahlhelm.")));

   type HandGegenstand is record

      ID : Integer;
      Gewicht : Float;
      Wert : Integer;
      Verteidigung : Integer;
      Position : Integer;
      Name : Unbounded_Wide_String;
      Beschreibung : Unbounded_Wide_String;

   end record;

   type HandGegenstandListeArray is array (7000 .. 7001) of HandGegenstand;
   HandGegenstandListe : HandGegenstandListeArray := ((7000, 0.1, 50, 5, 2, To_Unbounded_Wide_String ("Handschuhe"), To_Unbounded_Wide_String ("Einfache Stoffhandschuhe.")),
                                                      (7001, 0.1, 50, 8, 2, To_Unbounded_Wide_String ("Dicke Handschuhe"), To_Unbounded_Wide_String ("Handschuhe mit extra dickem Polster für kalte Orte.")));

   type SchuhGegenstand is record

      ID : Integer;
      Gewicht : Float;
      Wert : Integer;
      Verteidigung : Integer;
      Position : Integer;
      Name : Unbounded_Wide_String;
      Beschreibung : Unbounded_Wide_String;

   end record;

   type SchuhGegenstandListeArray is array (8000 .. 8001) of SchuhGegenstand;
   SchuhGegenstandListe : SchuhGegenstandListeArray := ((8000, 0.1, 50, 5, 4, To_Unbounded_Wide_String ("Schuhe"), To_Unbounded_Wide_String ("Ganz gewöhnliche Schuhe.")),
                                                        (8001, 0.1, 50, 8, 4, To_Unbounded_Wide_String ("Militärstiefel"), To_Unbounded_Wide_String ("Bestandteil der militärischen Grundausrüstung.")));

end Gegenstanddatenbank;
