swipl -g "open('../results.txt',append,FH), ['../../src/ep_sparql/ep_sparql.P'], set_etalis_flag(output_temporary_files,on), set_etalis_flag(logging_to_file,on), set_etalis_flag(store_fired_events,on), ep_sparql_parse('SELECT ?company WHERE { ?company hasStockPrice ?price1 } SEQ { ?company hasStockPrice ?price2 } WITHIN 1',ParsedEPQuery,Win),  assert(external_trigger(select_event/1)), assert(external_trigger(rdf/3)), nl, write('ParsedEPQuery: '), write(ParsedEPQuery), write(' WITHIN '), write(Win), write(' sec.'),  nl, ep_sparql_compile(ParsedEPQuery,CEPRules,ResultComplexEvent,Win), compile_internal_event_rules(main,CEPRules), nl, write('CEPRules: '), write(CEPRules), nl,  nl, event(rdf(company1,hasStockPrice,1)), event(rdf(company1,hasStockPrice,2)), findall(stored_event(event(select_event([company1]),T)),stored_event(event(select_event([company1]),T)),List), (List=[stored_event(event(select_event([company1]),[datime(_,_,_,_,_,_,_),datime(_,_,_,_,_,_,_)]))] -> write(FH,'ep_sparql_01\t\t\tpassed\n'),write('ep_sparql_01\t\t\tpassed\n') ; write(FH,'ep_sparql_01\t\tfailed\n'),write('ep_sparql_01\t\tfailed\n') ),halt."

