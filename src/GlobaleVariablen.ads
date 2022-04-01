pragma Warnings (Off, "*array aggregate*");

package GlobaleVariablen is
   
   CharakterGrafik : constant Wide_Wide_Character := '⁋';

   Ort : Natural := 100;
   Schwierigkeitsgrad : Natural;
   ZuLadenderSpielstand : Integer;
   
   type CharakterPositionRecord is record
      
      Ort : Natural;
      YPosition : Natural;
      XPosition : Natural;
      
   end record;

   type CharakterPositionArray is array (100 .. 101) of CharakterPositionRecord;
   CharakterPosition : CharakterPositionArray := (
                                                  100    => (100, 3, 3),
                                                  others => (0, 0, 0)
                                                 );
   
end GlobaleVariablen;
