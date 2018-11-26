with Token_type; use Token_type;

package Token is
end Token;

package body Token is
   
   token_type : Token_type;
   lexeme : String := CL.Argument (1);
   row_number : Integer;
   col_number : Integer;
   
   --type Token is new Controlled with private;
   function create(token_type : Token_type; lexeme : String; row_number, col_number : Integer) return Token;
   function get_token_type() return token_type;
   function get_lexeme() return lexeme;
   function get_row_number() return row_number;
   function get_col_number() return col_number;
   
end Token;
