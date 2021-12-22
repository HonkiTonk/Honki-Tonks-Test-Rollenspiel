with Ada.Wide_Text_IO;
use Ada.Wide_Text_IO;

package Zeit is

   Minute : Integer := 0;
   Stunde : Integer := 6;
   Tag : Integer := 1;

   procedure Uhrzeit;
   procedure UhrzeitNutzer (ErhöhenStunde, ErhöhenMinute : in Integer);

end Zeit;
