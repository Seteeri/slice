# slice

Slice functionality for PicoLisp, inspired by Python.

It slices lists inclusively, given [A B C] with A the start index inclusive, B the end index inclusive, and C as an optional step which defaults to 1.

A negative number for A will start from the tail.

A negative number for B will start from the head.

For calculated indices: if B < A, NIL returned.

If T is passed for A, it will use the start of the list.

If T is passed for B, it will use the end of the list.

A negative step will reverse the list. Internally, first the list is subsectioned with the specified range, flipped and stepped, thus the results are reversed. Note, the list is copied.

For strings, they must be evaluated with chop etc. then slice performed on the list of characters.

Other possible to-do's include chaining slice operations and slicing numbers (slicing bits).

# Data

    (de ... (L J K Step . @))

# Code

    : (setq L (1 2 3 4 5 6 7 8 9 10))
    -> (1 2 3 4 5 6 7 8 9 10)

    # Step from start to end every other value
    : (... L T T 2)
    -> (2 4 6 8 10)

    # Step from start to end every other value in reverse
    : (... L T T -2)
    -> (10 8 6 4 2)

    # Reverse the list
    : (... L T T -1)
    -> (10 9 8 7 6 5 4 3 2 1)

# Test

# Debug
