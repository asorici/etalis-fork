swipl -g "open('../results.txt',append,FH), ['../../src/etalis.P'], set_etalis_flag(output_temporary_files,on), set_etalis_flag(logging_to_file,on), set_etalis_flag(store_fired_events,on), compile_event_file('test_01.event'), event(a(1)), event(b(2)), event(c(3)), findall(stored_event(event(d(X1),T)),stored_event(event(d(X1),T)),List), ( List = [stored_event(event(d(3),[datime(_,_,_,_,_,_,_),datime(_,_,_,_,_,_,_)]))] -> write(FH,'sequence_07\t\t\tpassed\n'),write('sequence_07\t\t\tpassed\n') ; write(FH,'sequence_07\t\t\tfailed\n'),write('sequence_07\t\t\tfailed\n') ),halt."