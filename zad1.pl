włada(rhodri, 844, 878).
włada(anarawd, 878, 916).
włada(hywel_dda, 916, 950).
włada(lago_ap_idwal, 950, 979).
włada(hywel_ap_ieuaf, 979, 985).
włada(cadwallon, 985, 986).
włada(maredudd, 986, 999).
kto(R):- włada(X, P, K), R>=P, R=<K, write(X),nl,!, fail.
