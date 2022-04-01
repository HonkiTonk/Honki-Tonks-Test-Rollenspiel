pragma Warnings (Off, "*array aggregate*");

with Ada.Strings.Wide_Wide_Unbounded; use Ada.Strings.Wide_Wide_Unbounded;

package Benutzen is

   function Benutzen
     return Boolean;

private

   GegenstandName : Unbounded_Wide_Wide_String;

   procedure HeilGegenstandBenutzen
     (IDPositionExtern : in Integer);

end Benutzen;
