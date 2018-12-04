isKiller(butch).         % Butch is a killer
married(mia, marsellus). % Mia and Marsellus are married.
isDead(zed).             % Zed is dead.
kills(marsellus, X) :- givesFootMassage(X, mia). % Marsellus kills everyone who gives Mia a footmassage.
loves(mia, X)       :- goodDancer(X).            % Mia loves everyone who is a good dancer.
eats(jules, X)      :- isNutritious(X) ; isTasty(X). % Jules eats anything that is nutritious or tasty.
