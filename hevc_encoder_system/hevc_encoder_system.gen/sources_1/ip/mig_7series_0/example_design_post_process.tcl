

## Post process the example design
puts "Post Processing the example_design"

set_property TOP example_top [current_fileset]


#set hdlLanguage [get_project_property "PREFHDL"]
    set_property target_language Verilog [current_project]



    ## Chipscope debugging not selected.


