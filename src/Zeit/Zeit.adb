pragma Warnings (Off, "*array aggregate*");

with Ada.Wide_Wide_Text_IO; use Ada.Wide_Wide_Text_IO;

package body Zeit is

   procedure Uhrzeit
   is begin
      
      delay 5.0;
      Minute := Minute + 1;
                        
      if
        Minute >= 60
      then
         Minute := Minute - 60;
         Stunde := Stunde + 1;
         
      else
         null;
      end if;

      if
        Stunde >= 24
      then
         Stunde := Stunde - 24;
         Tag := Tag + 1;
         
      else
         null;
      end if;
      
   end Uhrzeit;



   procedure UhrzeitNutzer
     (ErhöhenStundeExtern : in Natural;
      ErhöhenMinuteExtern : in Natural)
   is begin

      if
        ErhöhenStundeExtern = 0
        and
          ErhöhenMinuteExtern = 0
      then
         Put_Line (Item => "Die aktuelle Uhrzeit ist" & Natural'Wide_Wide_Image (Stunde) & ":" & Natural'Wide_Wide_Image (Minute) & " am" & Natural'Wide_Wide_Image (Tag) & ". Tag.");
         
      elsif
        ErhöhenStundeExtern = 0
        and
          ErhöhenMinuteExtern = 1
      then
         if
           Stunde <= 6
         then
            Stunde := 6;
            Minute := 0;
            
         else
            Stunde := 6;
            Minute := 0;
            Tag := Tag + 1;
         end if;
         
      elsif
        ErhöhenStundeExtern = 0
        and
          ErhöhenMinuteExtern = 2
      then
         if
           Stunde <= 12
         then
            Stunde := 12;
            Minute := 0;
            
         else
            Stunde := 12;
            Minute := 0;
            Tag := Tag + 1;
         end if;
         
      elsif
        ErhöhenStundeExtern = 0
        and
          ErhöhenMinuteExtern = 3
      then
         if
           Stunde <= 18
         then
            Stunde := 18;
            Minute := 0;
            
         else
            Stunde := 18;
            Minute := 0;
            Tag := Tag + 1;
         end if;
         
      elsif
        ErhöhenStundeExtern = 0
        and
          ErhöhenMinuteExtern = 4
      then
         Stunde := 0;
         Minute := 0;
         Tag := Tag + 1;
         
      else
         Stunde := Stunde + ErhöhenStundeExtern;
         Minute := Minute + ErhöhenMinuteExtern;
      end if;

   end UhrzeitNutzer;      

end Zeit;
