with Token; use Token;

package Id is

   type id_record is private;
   
   function make (s: in String) return id_record;
   function get_lexeme (lex: in id_record) return lexeme_record;
   
private
   
   type id_record is record
      lex: lexeme_record;
   end record;
   
end Id;
