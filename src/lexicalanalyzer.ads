with Ada.Text_IO; use Ada.Text_IO;
with Ada.Containers.Doubly_Linked_Lists; use  Ada.Containers;

package LexicalAnalyzer is
   
   procedure Token_list is
 
   package DL_List_Pkg is new Token_list (Token);
   use     DL_List_Pkg;
 
   DL_List : List;
 
begin
 
   DL_List.Append (1);
   DL_List.Append (2);
   DL_List.Append (3);
 
end Doubly_Linked_List;

procedure Read_And_Write_File_Line_By_Line is
   Input, Output : File_Type;
begin
   Open (File => Input,
         Mode => In_File,
         Name => "test1.jl");
   Create (File => Output,
           Mode => Out_File,
           Name => "output.txt");
   loop
      declare
         Line : String := Get_Line (Input);
      begin
         -- You can process the contents of Line here.
         Put_Line (Output, Line);
      end;
   end loop;
   Close (Input);
   Close (Output);
exception
   when End_Error =>
      if Is_Open(Input) then 
         Close (Input);
      end if;
      if Is_Open(Output) then 
         Close (Output);
      end if;
end Read_And_Write_File_Line_By_Line;
end LexicalAnalyzer;
