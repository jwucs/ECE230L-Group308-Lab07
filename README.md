# Number Theory: Subtraction

## Names
Ethan Kraus, Jason Wu

## Summary
The purpose of this lab was to learn how to implement one’s complement subtraction and a two’s complement converter. We started off by implementing a simple half subtraction to simulate simultaneous light switch usage. We then implemented a 4 bit one’s complement subtractor utilizing a chain of 8 full adders. Finally, we implemented a two’s complement converter which converted our 8 bits into a 2’s complement which just makes it easier for unsigned subtraction.

## Lab Questions

### 1 - Explain the differences between our Half Adder from last lab and the Half Subtractor from this lab.
The half adder from the last lab was adding two bits, which produced a Y value if A XOR B. It then produced a carry bit if A OR B was true. For the half subtractor, it again produces a Y value if A XOR B, but in this case, our “borrow” output, which replaces the carry, is only produced when ~A AND B. This is because the borrow only exists when we are going “negative”, when our subtracting bit exists but our positive bit does not (1 - 0). 

### 2 - What about the end around carry of One’s Complement makes it hard to use and implement?
In order to use the end around carry of One’s complement subtraction, we first have to add the two numbers together to even find the end around carry, and then do another entire extra addition sequence to account for the carry around.

### 3 - What is the edge case and problem with Two’s Complement number representation?
If you have the most negative number represented, and then pass it into a twos-compliment conversion, it will return the same value, which is not what we want for arithmetic purposes. 
