pragma Warnings (Off, "*array aggregate*");

with Ada.Strings.Wide_Wide_Unbounded; use Ada.Strings.Wide_Wide_Unbounded;

package WortZuGanzeZahl is

   function WortZuGanzeZahl
     (EinWortEingabeStringExtern : in Unbounded_Wide_Wide_String)
      return Integer;

private

   Prüfung : Boolean;

   EinWortEingabeStringÄnderbar : Unbounded_Wide_Wide_String;

end WortZuGanzeZahl;
