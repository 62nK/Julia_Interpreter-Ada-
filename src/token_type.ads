package Token_Type is

   type token_type_record is (function_token, 
                       open_parenthesis_token, closed_parenthesis_token,
                       if_token, else_token,
                       while_token, 
                       for_token,
                       print_token, 
                       ge_operator_token, gt_operator_token, le_operator_token, lt_operator_token, eq_operator_token, ne_operator_token,
                       add_operator_token, sub_operator_token, mul_operator_token, div_operator_token, mod_operator_token, exp_operator_token, rev_div_operator_token,
                       assing_operator_token, 
                       id_token, literal_integer_token,
                       end_token, EOS_TOK);

end Token_Type;
