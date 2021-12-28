with Ada.Strings.Wide_Unbounded; use Ada.Strings.Wide_Unbounded;

package Ausruesten is
   
   procedure Ausrüsten;
   
private
      
   Platznummer : Integer;

   GegenstandName : Unbounded_Wide_String;
   Auswahl : Unbounded_Wide_String;
   
end Ausruesten;
