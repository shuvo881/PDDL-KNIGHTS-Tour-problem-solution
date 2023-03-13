(define(domain KNIGHTS)
    (:requirements :negative-preconditions)
    (:predicates
        (at ?col ?row)
        (diff_by_one ?x ?y)
        (diff_by_two ?x ?y)
        (visited ?x ?y)
    )
    
    (:action move_2col_1row
        :parameters (?form_col ?form_row ?to_col ?to_row)
        :precondition (and 
                (not(visited ?to_col ?to_row))
                (at ?form_col ?form_row)
                (diff_by_two ?form_col ?to_col)
                (diff_by_one ?form_row ?to_row)
            )
            
        
        :effect (and
            (not(at ?form_col ?form_row))
            (at ?to_col ?to_row)
            (visited ?to_col ?to_row)
        )
    )
    
    (:action move_2row_1col
        :parameters (?form_col ?form_row ?to_col ?to_row)
        :precondition (and 
                (not(visited ?to_col ?to_row))
                (at ?form_col ?form_row)
                (diff_by_two ?form_row ?to_row)
                (diff_by_one ?form_col ?to_col)
            )
            
        
        :effect (and
            (not(at ?form_col ?form_row))
            (at ?to_col ?to_row)
            (visited ?to_col ?to_row)
        )
    )


)