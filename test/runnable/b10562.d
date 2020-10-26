/*
TEST_OUTPUT:
---
---
*/
void main()
{
    {
        int[3] ok = 3;
        assert(ok == [ 3, 3, 3]);

        ok = 1;
        assert(ok == [ 1, 1, 1]);

        int[][] da2;
        assert(da2 == []);
    }
    {
        int[3][2] a;
        assert(a == [ [ 0, 0, 0 ], [ 0, 0, 0 ] ]);

        int[3][2] b = 4;
        assert(b == [ [ 4, 4, 4 ], [ 4, 4, 4 ] ]);

        // b = 9;
        // assert(b == [ [ 9, 9, 9 ], [ 9, 9, 9 ] ]);

        int[3][2] c = [ 1, 2, 3 ];
        assert(c == [ [ 1, 2, 3 ], [ 1, 2, 3 ] ]);

        c = [ 5, 6, 7 ];
        assert(c == [ [ 5, 6, 7 ], [ 5, 6, 7 ] ]);

        int[3][2] d = [ [ 1, 2, 3 ], [ 4, 5, 6 ] ];
        assert(d == [ [ 1, 2, 3 ], [ 4, 5, 6 ] ]);
    }
    {
        int[3][2][4] a;
        assert(a == [ [ [ 0, 0, 0 ], [ 0, 0, 0 ] ],
                      [ [ 0, 0, 0 ], [ 0, 0, 0 ] ],
                      [ [ 0, 0, 0 ], [ 0, 0, 0 ] ],
                      [ [ 0, 0, 0 ], [ 0, 0, 0 ] ] ]);

        // a = 1;
        // assert(a == [ [ [ 1, 1, 1 ], [ 1, 1, 1 ] ],
        //               [ [ 1, 1, 1 ], [ 1, 1, 1 ] ],
        //               [ [ 1, 1, 1 ], [ 1, 1, 1 ] ],
        //               [ [ 1, 1, 1 ], [ 1, 1, 1 ] ] ]);

        int[3][2][4] b = [ 1, 2, 3 ];
        assert(b == [ [ [ 1, 2, 3 ], [ 1, 2, 3 ] ],
                      [ [ 1, 2, 3 ], [ 1, 2, 3 ] ],
                      [ [ 1, 2, 3 ], [ 1, 2, 3 ] ],
                      [ [ 1, 2, 3 ], [ 1, 2, 3 ] ] ]);

        // b = [ 4, 5, 6];
        // assert(b == [ [ [ 4, 5, 6 ], [ 4, 5, 6 ] ],
        //               [ [ 4, 5, 6 ], [ 4, 5, 6 ] ],
        //               [ [ 4, 5, 6 ], [ 4, 5, 6 ] ],
        //               [ [ 4, 5, 6 ], [ 4, 5, 6 ] ] ]);

        int[3][2][4] c = [ [ 1, 2, 3 ], [ 4, 5, 6 ] ];
        assert(c == [ [ [ 1, 2, 3 ], [ 4, 5, 6 ] ],
                      [ [ 1, 2, 3 ], [ 4, 5, 6 ] ],
                      [ [ 1, 2, 3 ], [ 4, 5, 6 ] ],
                      [ [ 1, 2, 3 ], [ 4, 5, 6 ] ] ]);

        c = [ [ 4, 5, 6 ], [ 7, 8, 9 ] ];
        assert(c == [ [ [ 4, 5, 6 ], [ 7, 8, 9 ] ],
                      [ [ 4, 5, 6 ], [ 7, 8, 9 ] ],
                      [ [ 4, 5, 6 ], [ 7, 8, 9 ] ],
                      [ [ 4, 5, 6 ], [ 7, 8, 9 ] ] ]);
    }
    {
        int[3] val = [4, 5, 6];
        int[3][2][4] a = val[];

        assert(a == [ [ [ 4, 5, 6 ], [ 4, 5, 6 ] ],
                    [ [ 4, 5, 6 ], [ 4, 5, 6 ] ],
                    [ [ 4, 5, 6 ], [ 4, 5, 6 ] ],
                    [ [ 4, 5, 6 ], [ 4, 5, 6 ] ] ]);
    }
    {
        // https://issues.dlang.org/show_bug.cgi?id=10562
        int[3] value = [ 1, 2, 3 ];
        int[3][2] a = value;  // <-- COMPILATION ERROR
        assert(a == [ [ 1, 2, 3 ], [ 1, 2, 3 ] ]);
    }
    {
        // https://issues.dlang.org/show_bug.cgi?id=20465
        int[][3][2] arr;
        assert(arr == [[ null, null, null ], [ null, null, null ]]);

        // int[] slice = [ 1 ];
        // arr = slice;
        // assert(arr == [[ slice, slice, slice ], [ slice, slice, slice ]]);
    }
}