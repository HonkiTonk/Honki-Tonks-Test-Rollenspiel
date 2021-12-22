package EinrichtungDatenbank is

   type Einrichtung is record
      
      ID : Integer;
      Passierbar : Boolean;
      Beweglich : Boolean;
      StärkeAnforderung : Integer;
      Teleport : Boolean;
      Anzeige : Wide_Character;
      
   end record;
   
   type EinrichtungListeArray is array (-2 .. 25) of Einrichtung;
   EinrichtungListe : constant EinrichtungListeArray := ((-2, False, False, 0, False, ' '), -- Außerhalb der Karte (Y-Achse), nicht in der Karte als Boden benutzen da Kartenschleife dann abbricht
                                                         (-1, False, False, 0, False, ' '), -- Außerhalb der Karte (X-Achse), nicht in der Karte als Boden benutzen da Kartenschleife dann abbricht
                                                         (0, False, False, 0, False, ' '), -- Nicht erreichbarer Bereich innerhalb der Karte, nicht als Boden benutzen, kein Abbruch der Kartenschleife
                                                         (1, True, False, 0, False, ' '), -- Boden
                                                         (2, True, False, 0, False, ' '), -- Boden für spätere verschiedene Bodengrafiken
                                                         (3, False, False, 0, False, '┃'), -- Wand
                                                         (4, False, False, 0, False, '━'), -- Wand
                                                         (5, False, False, 0, False, '┆'), -- Verschlossener Durchgang
                                                         (6, False, False, 0, False, '┄'), -- Verschlossener Durchgang
                                                         (7, False, False, 0, False, '┛'), -- Ecke
                                                         (8, False, False, 0, False, '┗'), -- Ecke
                                                         (9, False, False, 0, False, '┏'), -- Ecke
                                                         (10, False, False, 0, False, '┓'), -- Ecke
                                                         
                                                         (11, False, False, 0, False, '┣'), -- Wandverteiler
                                                         
                                                         (12, False, False, 0, False, '┫'), -- Wandverteiler
                                                         (13, False, False, 0, False, '┳'), -- Wandverteiler
                                                         
                                                         (14, False, False, 0, False, '┻'), -- Wandverteiler
                                                         (15, False, False, 0, False, '╋'), -- Wandkreuz
                                                         (16, False, False, 0, False, '╺'), -- Endstück rechts
                                                         (17, False, False, 0, False, '╸'), -- Endstück links
                                                         (18, False, False, 0, False, '╹'), -- Endstück oben
                                                         (19, False, False, 0, False, '╻'), -- Endstück unten
                                                         (20, True, False, 0, True, '⇇'), -- Ausgangspfeil
                                                         (21, True, False, 0, True, '⇈'), -- Ausgangspfeil
                                                         (22, True, False, 0, True, '⇉'), -- Ausgangspfeil
                                                         (23, True, False, 0, True, '⇊'), -- Ausgangspfeil
                                                         (24, False, True, 5, False, 'S'), -- Spind
                                                         (25, False, True, 3, False, 'T')); -- Tisch

end EinrichtungDatenbank;
