%path=@runpath
cd %path
wfopen R\WORKFILE
pageselect PAGE
%z=@wlookup("x y z","series")
if %z="" then
            %z=""
    else
        for %y {%z}
      graph graph_{%y}.line {%y}
      next
endif
%mergeName="graphs_of_"+@wreplace(%z," ","_")

%z=@wlookup("graph_*","graph")
graph {%mergeName}.merge {%z}


