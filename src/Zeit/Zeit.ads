package Zeit is

   Minute : Natural := 0;
   Stunde : Natural := 6;
   Tag : Natural := 1;

   procedure Uhrzeit;

   procedure UhrzeitNutzer
     (ErhöhenStunde : in Natural;
      ErhöhenMinute : in Natural);

end Zeit;
