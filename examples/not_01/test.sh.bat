swipl -g "open('../results.txt',append,FH), ['../../src/etalis.P'], set_etalis_flag(output_temporary_files,on), set_etalis_flag(logging_to_file,on), set_etalis_flag(store_fired_events,on), compile_event_file('test_01.event'), event(a(2)), event(a(0)), findall(stored_event(event(d(X),T)), stored_event(event(d(X),T)),List), ( List = [stored_event(event(d(2),[datime(_,_,_,_,_,_,_),datime(_,_,_,_,_,_,_)]))] -> write(FH,'not_01\t\t\t\tpassed\n'),write('not_01\t\t\t\tpassed\n') ; write(FH,'not_01\t\t\t\tfailed'),write('not_01\t\t\t\tfailed') ),halt."
