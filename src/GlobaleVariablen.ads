package GlobaleVariablen is
   
   CharakterGrafik : Wide_Character := '⁋';

   Ort : Integer := 100;
   Schwierigkeitsgrad : Integer;
   ZuLadenderSpielstand : Integer;
   
   type CharakterPositionRecord is record
      
      Ort : Integer;
      YPosition : Integer;
      XPosition : Integer;
      
   end record;

   type CharakterPositionArray is array (100 .. 101) of CharakterPositionRecord;
   CharakterPosition : CharakterPositionArray := ((100, 3, 3),
                                                  (others => 0));
   
end GlobaleVariablen;
