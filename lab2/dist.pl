distance((X1, Y1), (X2, Y2), D) :- 
    D is sqrt(((X2-X1)*(X2-X1)) + ((Y2-Y1)*(Y2-Y1))).