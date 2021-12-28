with Ada.Strings.Wide_Unbounded; use Ada.Strings.Wide_Unbounded;

package WortZuGanzeZahl is

   function WortZuGanzeZahl
     (EinWortEingabeString : in Unbounded_Wide_String)
      return Integer;

private

   Prüfung : Boolean;

   EinWortEingabeStringÄnderbar : Unbounded_Wide_String;

end WortZuGanzeZahl;
