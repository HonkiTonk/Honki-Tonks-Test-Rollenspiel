with Ada.Wide_Text_IO, Ada.Strings.Wide_Unbounded, Charaktere;
use Ada.Wide_Text_IO, Ada.Strings.Wide_Unbounded;

package Zustaende is

   type ZuständeArray is array (1 .. 5) of Unbounded_Wide_String;

   Zustände : ZuständeArray := (To_Unbounded_Wide_String ("Krank"), To_Unbounded_Wide_String ("Unterkühlt"), To_Unbounded_Wide_String ("Vergiftet"), To_Unbounded_Wide_String ("Blutend"), To_Unbounded_Wide_String ("Verbrannt"));
   Zustände2 : ZuständeArray := (To_Unbounded_Wide_String ("Krankheit"), To_Unbounded_Wide_String ("Unterkühlung"), To_Unbounded_Wide_String ("Vergiftung"), To_Unbounded_Wide_String ("Blutung"), To_Unbounded_Wide_String ("Verbrennung"));

   procedure ZustandErzeugt (Zustand : in Integer);

end Zustaende;
