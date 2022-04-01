pragma Warnings (Off, "*array aggregate*");

with Ada.Strings.Wide_Wide_Unbounded; use Ada.Strings.Wide_Wide_Unbounded;

with Charaktere;

package body SortierenInventar is

   procedure SortierenInventar
   is begin
      
      Charaktere.Hauptcharakter.InventarZumSortieren := Charaktere.Hauptcharakter.Inventar;
      Charaktere.Hauptcharakter.Inventar := (others => (0, 0, To_Unbounded_Wide_Wide_String (Source => "")));

      SortierenAußenSchleife:
      for AußenSchleifenwert in Charaktere.Hauptcharakter.Inventar'Range loop
         SortierenInnenSchleife:
         for InnenSchleifenwert in Charaktere.Hauptcharakter.Inventar'Range loop
            
            if
              Charaktere.Hauptcharakter.InventarZumSortieren (InnenSchleifenwert).ID /= 0
            then
               Charaktere.Hauptcharakter.Inventar (AußenSchleifenwert).ID := Charaktere.Hauptcharakter.InventarZumSortieren (InnenSchleifenwert).ID;
               Charaktere.Hauptcharakter.Inventar (AußenSchleifenwert).Menge := Charaktere.Hauptcharakter.InventarZumSortieren (InnenSchleifenwert).Menge;
               Charaktere.Hauptcharakter.InventarZumSortieren (InnenSchleifenwert).ID := 0;
               exit SortierenInnenSchleife;      
               
            else
               null;               
            end if;
            
         end loop SortierenInnenSchleife;         
      end loop SortierenAußenSchleife;
      
   end SortierenInventar;

end SortierenInventar;
