pragma Warnings (Off, "*array aggregate*");

with Ada.Strings.Wide_Wide_Unbounded; use Ada.Strings.Wide_Wide_Unbounded;

package Ausruesten is
   
   procedure Ausrüsten;
   
private
      
   Platznummer : Integer;

   GegenstandName : Unbounded_Wide_Wide_String;
   
end Ausruesten;
