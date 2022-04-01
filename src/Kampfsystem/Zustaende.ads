pragma Warnings (Off, "*array aggregate*");

with Ada.Strings.Wide_Wide_Unbounded; use Ada.Strings.Wide_Wide_Unbounded;

package Zustaende is

   type ZuständeArray is array (1 .. 5) of Unbounded_Wide_Wide_String;
   Zustände : ZuständeArray := (
                                  To_Unbounded_Wide_Wide_String (Source => "Krank"),
                                  To_Unbounded_Wide_Wide_String (Source => "Unterkühlt"),
                                  To_Unbounded_Wide_Wide_String (Source => "Vergiftet"),
                                  To_Unbounded_Wide_Wide_String (Source => "Blutend"),
                                  To_Unbounded_Wide_Wide_String (Source => "Verbrannt")
                                 );

   Zustände2 : ZuständeArray := (
                                   To_Unbounded_Wide_Wide_String (Source => "Krankheit"),
                                   To_Unbounded_Wide_Wide_String (Source => "Unterkühlung"),
                                   To_Unbounded_Wide_Wide_String (Source => "Vergiftung"),
                                   To_Unbounded_Wide_Wide_String (Source => "Blutung"),
                                   To_Unbounded_Wide_Wide_String (Source => "Verbrennung")
                                  );

   procedure ZustandErzeugt
     (ZustandExtern : in Integer);

end Zustaende;
