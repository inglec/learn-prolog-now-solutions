termType(T, atom)    :- atom(T).
termType(T, integer) :- integer(T).
termType(T, float)   :- float(T).
termType(T, number)  :- number(T).
termType(T, atomic)  :- atomic(T).
termType(T, var)     :- var(T).
termType(T, nonvar)  :- nonvar(T).
termType(T, is_list) :- is_list(T).
