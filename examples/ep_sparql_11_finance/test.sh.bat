swipl -g "['../../src/ep_sparql/ep_sparql.P'], set_etalis_flag(output_temporary_files,on), set_etalis_flag(logging_to_file,on), set_etalis_flag(store_fired_events,on), parse_rdf_xml_file('companies.rdf',Companies), assert_all_rdf_tripples(Companies,company), ep_sparql_parse('CONSTRUCT ?name hasIncrease ?bonus WHERE { ?company hasStockPrice ?price1 } SEQ { ?company hasStockPrice ?price2 } FILTER ( write(?company) && write_space(1) && company(?company,companyName,?name) && write(?name) && ?bonus is (?price2-?price1)*100 && write_space(1) && write(?bonus) && write_nl(1) )',ParsedEPQuery), nl, write('ParsedEPQuery: '), write(ParsedEPQuery), nl, ep_sparql_compile(ParsedEPQuery,CEPRules,ResultComplexEvent), compile_internal_event_rules(main,CEPRules), nl, write('CEPRules: '), write(CEPRules), nl,  nl, event(rdf(company1,hasStockPrice,1)), event(rdf(company1,hasStockPrice,2)), event(rdf(company1,hasStockPrice,1)), event(rdf(company1,hasStockPrice,2)), event(rdf(company1,hasStockPrice,1)), event(rdf(company1,hasStockPrice,2)), findall(stored_event(event(rdf(C,C2,C3),T)),stored_event(event(rdf(C,C2,C3),T)),List), write(List), halt."
