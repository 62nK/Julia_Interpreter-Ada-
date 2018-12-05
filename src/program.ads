with Id; use Id;
with Block; use Block;

package Program is

   type program_record is private;
   
   function make (function_id: in id_record; block_instance: in block_record) return program_record;
   procedure execute (program_instance: in program_record);
   
private
   
   type program_record is record
      function_id: id_record;
      block_instance: block_record;
   end record;

end Program;
