with Ada.Strings.Wide_Unbounded; use Ada.Strings.Wide_Unbounded;

with Charaktere;

package VomSpielerWeggeworfen is

   Ort : Integer := 100;

   type Weggeworfen is array (1 .. 100) of Charaktere.InventarRecord; -- Zweidimensionales Array um nicht dutzende Arrays anlegen zu müssen?
   WeggeworfenSchlafsaal : Weggeworfen := (others => (0, 0, To_Unbounded_Wide_String ("")));
   
   procedure VomSpielerWeggeworfen;

end VomSpielerWeggeworfen;
