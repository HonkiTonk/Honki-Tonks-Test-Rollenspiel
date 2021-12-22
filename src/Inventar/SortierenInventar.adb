package body SortierenInventar is

   procedure SortierenInventar is
   begin
      
      Charaktere.Hauptcharakter.InventarZumSortieren := Charaktere.Hauptcharakter.Inventar;
      Charaktere.Hauptcharakter.Inventar := (others => (0, 0, To_Unbounded_Wide_String ("")));

      SortierenAußenSchleife:
      for A in Charaktere.Hauptcharakter.Inventar'Range loop
         SortierenInnenSchleife:
         for B in Charaktere.Hauptcharakter.Inventar'Range loop
            
            if Charaktere.Hauptcharakter.InventarZumSortieren (B).ID /= 0 then
               Charaktere.Hauptcharakter.Inventar (A).ID := Charaktere.Hauptcharakter.InventarZumSortieren (B).ID;
               Charaktere.Hauptcharakter.Inventar (A).Menge := Charaktere.Hauptcharakter.InventarZumSortieren (B).Menge;
               Charaktere.Hauptcharakter.InventarZumSortieren (B).ID := 0;
               exit SortierenInnenSchleife;               
            else
               null;               
            end if;
            
         end loop SortierenInnenSchleife;         
      end loop SortierenAußenSchleife;
      
   end SortierenInventar;

end SortierenInventar;
