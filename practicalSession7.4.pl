% Practical task 1
s0 --> [].
s0 --> as, s0.
as --> [a, a].

% Practical task 2
s1 --> [].
s1 --> a, s1, d.
s1 --> s2.
s2 --> [].
s2 --> bs, s2, cs.
a  --> [a].
d  --> [d].
bs --> [b, b].
cs --> [c, c].

% Practical task 3
prop --> p.
prop --> q.
prop --> r.
prop --> not, prop.
prop --> left, prop, and, prop, right.
prop --> left, prop, or, prop, right.
prop --> left, prop, implies, prop, right.
p --> [p].
q --> [q].
r --> [r].
not --> [not].
left  --> ['('].
right --> [')'].
and --> [and].
or  --> [or].
implies --> [implies].
