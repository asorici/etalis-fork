swipl -g "open('../results.txt',append,FH), ['../../src/etalis.P'], set_etalis_flag(output_temporary_files,on), set_etalis_flag(logging_to_file,on), set_etalis_flag(store_fired_events,on), compile_event_file('test_01.event'), event(a(1,1,1,1,1)), event(a(2,2,2,2,2)), event(a(3,3,3,3,3)), findall(stored_event(event(ce(ID,A1,A2,A3,TS),T)),stored_event(event(ce(ID,A1,A2,A3,TS),T)),List), ( List = [stored_event(event(ce(1,1,1,1,1),[datime(_,_,_,_,_,_,_),datime(_,_,_,_,_,_,_)])),stored_event(event(ce(2,2,2,2,2),[datime(_,_,_,_,_,_,_),datime(_,_,_,_,_,_,_)])) ] -> write(FH,'selection_01\t\t\tpassed\n'),write('selection_01\t\t\tpassed\n') ; write(FH,'selection_01\t\t\tfailed\n'),write('selection_01\t\t\tfailed\n') ),halt."
