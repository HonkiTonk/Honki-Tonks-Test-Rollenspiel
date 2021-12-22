package body VomSpielerWeggeworfen is

   procedure VomSpielerWeggeworfen is
   begin
      
      case Ort is
         when 100 =>
            null;
            
         when others =>
            Put_Line ("Sollte niemals aufgerufen werden VomSpielerWeggeworfen.VomSpielerWeggeworfen when others =>");
            
      end case;
      
   end VomSpielerWeggeworfen;

end VomSpielerWeggeworfen;
