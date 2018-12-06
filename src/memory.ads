with Ada.Characters.Handling; use Ada.Characters.Handling;
with Token; use Token;

package body Memory is

   memory_array: array (0 .. 100) of integer := (others => 0);

   function get_index (lexeme_instance: in lexeme_record) return Natural is
      symbol_descriptor: Character := to_string (lexeme_instance)(1);
      index: Natural;
   begin
      if not is_letter (symbol_descriptor) then
         raise invalid_identifier with symbol_descriptor & " is not a valid id";
      end if;
      if is_lower (symbol_descriptor) then
         index := character'pos(symbol_descriptor) - character'pos('a');
      else
         index := character'pos(symbol_descriptor) - character'pos('A') + 26;
      end if;
      return index;
   end get_index;

   procedure store (lexeme_instance: in lexeme_record; value: Integer) is
   begin
      memory_array(get_index(lexeme_instance)) := value;
   end store;

   function fetch (lexeme_instance: in lexeme_record) return Integer is
   begin
      return memory_array(get_index(lexeme_instance));
   end fetch;

end Memory;

package Memory is

   procedure store (lexeme_instance: in lexeme_record; value: Integer) with pre => is_valid_id(lexeme_instance);
   function fetch (lexeme_instance: in lexeme_record) return Integer with pre => is_valid_id(lexeme_instance);

end Memory;
