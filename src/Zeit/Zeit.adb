package body Zeit is

   procedure Uhrzeit is
   begin
      
      delay 5.0;
      Minute := Minute + 1;
                        
      if Minute >= 60 then
         Minute := Minute - 60;
         Stunde := Stunde + 1;
      else
         null;
      end if;

      if Stunde >= 24 then
         Stunde := Stunde - 24;
         Tag := Tag + 1;
      else
         null;
      end if;
      
   end Uhrzeit;



   procedure UhrzeitNutzer (ErhöhenStunde, ErhöhenMinute : in Integer) is
   begin

      if ErhöhenStunde = 0 and ErhöhenMinute = 0 then
         Put_Line ("Die aktuelle Uhrzeit ist" & Integer'Wide_Image (Stunde) & ":" & Integer'Wide_Image (Minute) & " am" & Integer'Wide_Image (Tag) & ". Tag.");
      elsif ErhöhenStunde = 0 and ErhöhenMinute = 1 then
         if Stunde <= 6 then
            Stunde := 6;
            Minute := 0;
         else
            Stunde := 6;
            Minute := 0;
            Tag := Tag + 1;
         end if;
      elsif ErhöhenStunde = 0 and ErhöhenMinute = 2 then
         if Stunde <= 12 then
            Stunde := 12;
            Minute := 0;
         else
            Stunde := 12;
            Minute := 0;
            Tag := Tag + 1;
         end if;
      elsif ErhöhenStunde = 0 and ErhöhenMinute = 3 then
         if Stunde <= 18 then
            Stunde := 18;
            Minute := 0;
         else
            Stunde := 18;
            Minute := 0;
            Tag := Tag + 1;
         end if;
      elsif ErhöhenStunde = 0 and ErhöhenMinute = 4 then
         Stunde := 0;
         Minute := 0;
         Tag := Tag + 1;
      else
         Stunde := Stunde + ErhöhenStunde;
         Minute := Minute + ErhöhenMinute;
      end if;

   end UhrzeitNutzer;      

end Zeit;
