with Arithmetic_Expression; use Arithmetic_Expression;

package Iter is

   type iter_record is new Ada.Finalization.Controlled with private;
   
   function make (arithmetic_expression_1, arithmetic_expression_1: in arithmetic_expression_access) return iter_record;
   function get_arithmetic_expression1 (iter_instance: in iter) return arithmetic_expression_access;
   function get_arithmetic_expression2 (iter_instance: in iter) return arithmetic_expression_access;
   
   
private
   
   type iter_record is new Ada.Finalization.Controlled with record
      arithmetic_expression_1: arithmetic_expression_access := null;
      arithmetic_expression_2: arithmetic_expression_access := null;
   end record;

end Iter;
