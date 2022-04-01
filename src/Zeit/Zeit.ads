pragma Warnings (Off, "*array aggregate*");

package Zeit is

   Minute : Natural := 0;
   Stunde : Natural := 6;
   Tag : Natural := 1;

   procedure Uhrzeit;

   procedure UhrzeitNutzer
     (ErhöhenStundeExtern : in Natural;
      ErhöhenMinuteExtern : in Natural);

end Zeit;
