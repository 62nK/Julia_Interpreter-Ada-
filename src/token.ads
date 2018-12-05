with Token_Type; use Token_Type;

package Token is
          
   type lexeme_record is private;
   type token_record is private;
   
   function make (token_type_instance: in token_type_record; lexeme_instance: in lexeme_record; row_num, col_num: in Positive) return token_record;
   
   function get_token_type (token_instance: in token_record) return token_type_record;
   function get_lexeme (token_instance: in token_record) return lexeme_record;
   
   function get_row_num (token_instance: in token_record) return Positive;
   function get_col_num (token_instance: in token_record) return Positive;
   function lexeme_length (token_instance: in lexeme_record) return Positive;
  
   --function to_string (lexeme: in Lexeme_record) return String;
   --function "=" (lexeme: in Lexeme_record; str: in String) return Boolean;
   --function make (str: in String) return Lexeme_record;
   --function is_valid_id (l: in Lexeme_record) return boolean;
   
private
   
   type lexeme_record is record
      lexeme_instance: String (1 .. 5) := (1 => 'x', others => ' ');
      size: Positive := 1;
   end record;
   
   type token_record is record
      token_type_instance: token_type_record := EOS_TOK;
      lexeme_instance: lexeme_record;
      row_num: Positive := 1;
      col_num: Positive := 1;
   end record;
   
end Token;
