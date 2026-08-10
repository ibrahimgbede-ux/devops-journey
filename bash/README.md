#!bin/bash/

Markdown.

# Bash Arithmetic Calculator

## Purpose
To take user input and perform the four arithmetic calculations.

## Concepts Practised
- Variables.
- Conditional statements.
- Arithmetic expansion.
- Debugging Bash syntax.
- Arithmetic expansion.
- User input (read)

## Challenges

One challenge I encountered was handling division by zero. Initially, my script performed the division before checking whether the second number was 0. This meant Bash produced an error before my if statement could handle the invalid input.

I solved this by moving the division calculation inside the else block. This ensured the script first checks whether the divisor is zero and only performs the calculation when it is safe to do so.

I also encountered some smaller issues with Bash syntax, particularly the spacing and placement of the semicolon in an if statement.

## What I Learned
This challenge helped me understand how to combine several basic Bash concepts to create a functional script. I learned how to take user input, store it in variables, and use arithmetic expansion to perform calculations.

The biggest lesson was understanding control flow and input validation. I learned that a script should check whether an input is valid before performing an operation with it. This was particularly important when handling division by zero.

I also gained more experience debugging Bash and saw how small syntax details, such as spacing around brackets and the placement of semicolons, can affect whether a script runs correctly.
