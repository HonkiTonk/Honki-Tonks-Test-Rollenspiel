package body GanzeZahl is

   function GanzeZahl
     return Integer
   is begin

      EinWortEingabeString := To_Unbounded_Wide_String (Get_Line);
      Trim (EinWortEingabeString, Ada.Strings.Both);

      AufNummernPrüfen:
      for Stelle in To_Wide_String (EinWortEingabeString)'Range loop

         if
           To_Wide_String (EinWortEingabeString) (Stelle) = '1'
           or
             To_Wide_String (EinWortEingabeString) (Stelle) = '2'
           or
             To_Wide_String (EinWortEingabeString) (Stelle) = '3'
           or
             To_Wide_String (EinWortEingabeString) (Stelle) = '4'
           or
             To_Wide_String (EinWortEingabeString) (Stelle) = '5'
           or
             To_Wide_String (EinWortEingabeString) (Stelle) = '6'
           or
             To_Wide_String (EinWortEingabeString) (Stelle) = '7'
           or
             To_Wide_String (EinWortEingabeString) (Stelle) = '8'
           or
             To_Wide_String (EinWortEingabeString) (Stelle) = '9'
           or
             To_Wide_String (EinWortEingabeString) (Stelle) = '0'
         then
            null;

         else
            return -1_000_000_000;
         end if;

      end loop AufNummernPrüfen;

      return Integer'Wide_Value (To_Wide_String (EinWortEingabeString));

   end GanzeZahl;

end GanzeZahl;
