with ada.Text_IO; use ada.Text_IO;
with ada.Integer_Text_IO; use ada.Integer_Text_IO;
with Parser; use Parser;
with Program; use Program;

procedure Interpreter is

   filename : String := "test4.jl";
   parser_instance: parser_record := make (filename);
   program_instance: program_record;

begin

   parse (parser_instance, program_instance);
   --execute (program_instance);

end Interpreter;
