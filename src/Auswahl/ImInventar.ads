with Ada.Strings.Wide_Unbounded; use Ada.Strings.Wide_Unbounded;

package ImInventar is

   function ImInventar
     return Integer;
   
private
   
   WiederverwendbarkeitVonBenutzenBeimKämpfen : Boolean := True;
   
   Text : Unbounded_Wide_String;

end ImInventar;
