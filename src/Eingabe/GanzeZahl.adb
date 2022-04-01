pragma Warnings (Off, "*array aggregate*");

package body GanzeZahl is

   function GanzeZahl
     return Integer
   is begin

      EinWortEingabeString := To_Unbounded_Wide_Wide_String (Source => Get_Line);
      Trim (EinWortEingabeString, Ada.Strings.Both);

      AufNummernPrüfen:
      for StelleSchleifenwert in To_Wide_Wide_String (Source => EinWortEingabeString)'Range loop

         if
           To_Wide_Wide_String (Source => EinWortEingabeString) (StelleSchleifenwert) = '1'
           or
             To_Wide_Wide_String (Source => EinWortEingabeString) (StelleSchleifenwert) = '2'
           or
             To_Wide_Wide_String (Source => EinWortEingabeString) (StelleSchleifenwert) = '3'
           or
             To_Wide_Wide_String (Source => EinWortEingabeString) (StelleSchleifenwert) = '4'
           or
             To_Wide_Wide_String (Source => EinWortEingabeString) (StelleSchleifenwert) = '5'
           or
             To_Wide_Wide_String (Source => EinWortEingabeString) (StelleSchleifenwert) = '6'
           or
             To_Wide_Wide_String (Source => EinWortEingabeString) (StelleSchleifenwert) = '7'
           or
             To_Wide_Wide_String (Source => EinWortEingabeString) (StelleSchleifenwert) = '8'
           or
             To_Wide_Wide_String (Source => EinWortEingabeString) (StelleSchleifenwert) = '9'
           or
             To_Wide_Wide_String (Source => EinWortEingabeString) (StelleSchleifenwert) = '0'
         then
            null;

         else
            return -1_000_000_000;
         end if;

      end loop AufNummernPrüfen;

      return Integer'Wide_Wide_Value (To_Wide_Wide_String (Source => EinWortEingabeString));

   end GanzeZahl;

end GanzeZahl;
