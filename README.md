# Silent Subsetting with Long Logical Vectors in R

This repository demonstrates a subtle bug in R's subsetting mechanism.  When you use a logical vector to subset a data frame, and the logical vector is longer than the number of rows in the data frame, R silently drops the extra elements. This behavior can lead to unexpected results and make debugging difficult.

## Bug
The `bug.r` file contains code that reproduces this issue.  The code creates a data frame and attempts to subset it using a logical vector that's too long.

## Solution
The `bugSolution.r` file demonstrates how to avoid this issue by checking the length of the logical vector before subsetting.  This ensures that the logical vector is the correct length and prevents unexpected behavior.
