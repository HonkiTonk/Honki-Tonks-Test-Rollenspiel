package body WortZuGanzeZahl is

   function WortZuGanzeZahl
     (EinWortEingabeString : in Unbounded_Wide_String)
      return Integer
   is begin

      EinWortEingabeStringÄnderbar := EinWortEingabeString;

      KommaPrüfenSchleife:
      for StellenZählen in To_Wide_String (EinWortEingabeStringÄnderbar)'Range loop

         if
           To_Wide_String (EinWortEingabeStringÄnderbar) (StellenZählen) /= ','
         then
            null;

         else
            Replace_Slice (EinWortEingabeStringÄnderbar, StellenZählen, To_Wide_String (EinWortEingabeStringÄnderbar)'Last, "");
            exit KommaPrüfenSchleife;
         end if;

      end loop KommaPrüfenSchleife;

      AnfangsNullenEntfernenSchleife:
      for NullenZählen in To_Wide_String (EinWortEingabeStringÄnderbar)'Range loop

         if
           To_Wide_String (EinWortEingabeString) (NullenZählen) = '0'
         then
            null;

         else
            Replace_Slice (EinWortEingabeStringÄnderbar, 1, NullenZählen - 1, "");
            exit AnfangsNullenEntfernenSchleife;
         end if;

      end loop AnfangsNullenEntfernenSchleife;

      Trim (EinWortEingabeStringÄnderbar, Ada.Strings.Both);

      PrüfungsSchleife:
      for A in To_Wide_String (EinWortEingabeStringÄnderbar)'Range loop

         if
           To_Wide_String (EinWortEingabeStringÄnderbar) (A) = '1'
           or
             To_Wide_String (EinWortEingabeStringÄnderbar) (A) = '2'
           or
             To_Wide_String (EinWortEingabeStringÄnderbar) (A) = '3'
           or
             To_Wide_String (EinWortEingabeStringÄnderbar) (A) = '4'
           or
             To_Wide_String (EinWortEingabeStringÄnderbar) (A) = '5'
           or
             To_Wide_String (EinWortEingabeStringÄnderbar) (A) = '6'
           or
             To_Wide_String (EinWortEingabeStringÄnderbar) (A) = '7'
           or
             To_Wide_String (EinWortEingabeStringÄnderbar) (A) = '8'
           or
             To_Wide_String (EinWortEingabeStringÄnderbar) (A) = '9'
           or
             To_Wide_String (EinWortEingabeStringÄnderbar) (A) = '0'
         then
            Prüfung := True;

         else
            return 0;
         end if;

      end loop PrüfungsSchleife;

      case
        Prüfung
      is
         when True =>
            return Integer'Wide_Value (To_Wide_String (EinWortEingabeStringÄnderbar));

         when False =>
            return 0;
      end case;

   end WortZuGanzeZahl;

end WortZuGanzeZahl;
