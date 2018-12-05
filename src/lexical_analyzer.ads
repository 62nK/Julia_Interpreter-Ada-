with Ada.Text_IO; use Ada.Text_IO;
with Ada.Containers.Doubly_Linked_Lists; use  Ada.Containers;
with Token; use Token;

package Lexical_Analyzer is
   
   type lexical_analyzer_record is private;
      lexical_exception: exception;

      
   function make (filename: in string) return lexical_analyzer_record; 
   procedure get_next_token (lexical_analyzer_instance: in out lexical_analyzer_record; token_instance: out token_record) with pre => has_next (lexical_analyzer_instance);  
   function get_lookahead_token (lexical_analyzer_instance: in lexical_analyzer_record) return token_record with pre => has_next(lexical_analyzer_instance);
   function has_next (lexical_analyzer_instance: in lexical_analyzer_record) return Boolean;
   
private
   
   package token_lists is new Ada.Containers.Doubly_Linked_Lists(Element_Type => token_record);
   type lexical_analyzer_record is record
      token_list: token_lists.list;
   end record;
   
end Lexical_Analyzer;
