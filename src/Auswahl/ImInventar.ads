pragma Warnings (Off, "*array aggregate*");

with Ada.Strings.Wide_Wide_Unbounded; use Ada.Strings.Wide_Wide_Unbounded;

package ImInventar is

   function ImInventar
     return Integer;
   
private
   
   WiederverwendbarkeitVonBenutzenBeimKämpfen : Boolean;
   
   Text : Unbounded_Wide_Wide_String;

end ImInventar;
