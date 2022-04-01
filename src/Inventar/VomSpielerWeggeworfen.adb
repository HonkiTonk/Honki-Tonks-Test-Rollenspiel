pragma Warnings (Off, "*array aggregate*");

package body VomSpielerWeggeworfen is

   procedure VomSpielerWeggeworfen
   is begin      
      
      case
        Ort
      is
         when 100 =>
            null;
            
         when others =>
            raise Program_Error;
      end case;
      
   end VomSpielerWeggeworfen;

end VomSpielerWeggeworfen;
