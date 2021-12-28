with Ada.Strings.Wide_Unbounded; use Ada.Strings.Wide_Unbounded;

package Benutzen is

   function Benutzen
     return Boolean;

private

   GegenstandName : Unbounded_Wide_String;

   procedure HeilGegenstandBenutzen
     (IDPosition : in Integer);

end Benutzen;
