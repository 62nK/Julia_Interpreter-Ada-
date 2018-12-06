

package Statement is
   
   type statement_type is (assign_statement_type, if_statement_type, for_statement_type, while_statement_type, print_statement_type);
   type statement_record (statement_type_instance: statement_type) is private;
   
   function make (assignment_variable_id: in id_record; assignment_value: in arithmetic_expression_access) return block_record;
   function make (boolean_expression_instance: in boolean_expression_record; if_block1, if_block2: in block_record) return block_record;
   function make (for_variable_id: in id_record; for_iter: in iter; for_block: in block) return block_record;
   function make (while_boolean_expression: in boolean_expression; while_block: in block) return block_record;
   function make (print_arithmetic_expression: in arithmetic_expression_access) return block_record;
   
   procedure execute (statement_instance: in statement_record);
   
private
   
   type statement_record (statement_type_instance: statement_type) is record
         case statement_type_instance is
            when assign_statement_type =>
               assignment_variable_id: id_record;
               assignment_value: arithmetic_expression_access := null;
            when if_statement_type =>
               if_boolean_expression: boolean_expression_record;
               if_block1: block_record;
               if_block2: block_record;
            when for_statement_type =>
               for_variable_id: id_record;
               for_iter: iter_record;
               for_block: block_record;
            when while_statement_type =>
               while_boolean_expression: boolean_expression;
               while_block: block_record;
            when print_statement_type =>
               print_arithmetic_expression: arithmetic_expression_access := null;
         end case;
      end record;   

end Statement;
