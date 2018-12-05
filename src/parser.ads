with Lexical_Analyzer; use Lexical_Analyzer;
with Program; use Program;

package Parser is

   type parser_record is private;
   
   function make (filename: in String) return parser_record;
   procedure parse (parser_instance: in out parser_record; program_instance: out program_record);
      
private
   
   type parser_record is record
      lexical_analyzer_instance: lexical_analyzer_record;
   end record;
   

end Parser;
