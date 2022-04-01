pragma Warnings (Off, "*array aggregate*");

package Karten is
   
   type KartenArray is array (100 .. 101, 1 .. 20, 1 .. 10) of Integer;
   Karte : KartenArray := (
                           100 => (1 => (9, 4, 4, 6, 4, 10, others => -1),
                                   2 => (20, 1, 1, 1, 1, 5, others => -1),
                                   3 => (3, 1, 1, 25, 1, 3, others => -1),
                                   4 => (8, 4, 4, 4, 4, 7, others => -2),
                                   others => (others => -2)),
                           101 => (others => (others => -1))
                          );
   
   procedure Anzeige;
   
end Karten;
