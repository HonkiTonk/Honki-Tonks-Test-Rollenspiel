pragma Warnings (Off, "*array aggregate*");

with Ada.Strings.Wide_Wide_Unbounded; use Ada.Strings.Wide_Wide_Unbounded;

with Charaktere;

package VomSpielerWeggeworfen is

   Ort : Integer := 100;
   
   -- Zweidimensionales Array um nicht dutzende Arrays anlegen zu müssen?
   type WeggeworfenArray is array (1 .. 100) of Charaktere.InventarRecord;
   WeggeworfenSchlafsaal : WeggeworfenArray := (others => (0, 0, To_Unbounded_Wide_Wide_String (Source => "")));
   
   procedure VomSpielerWeggeworfen;

end VomSpielerWeggeworfen;
