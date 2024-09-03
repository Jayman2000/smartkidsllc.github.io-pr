---
title: Data Type Fundamentals
description: What’s the difference between 0 and 0.0?
---

The _Python_ programming language uses data types to distinguish between different types of information.

## Dependencies

Students need to have these skills before learning this skill:

- [Creating and Changing Variables](creating-and-changing-variables)

## Goal

When you teach this skill, your goal is to make it so that a students know the following:

- Every value has a data type.
- The `int` data type is used for storing whole numbers.
- The `str` data type is used for storing text.

## Activities

Here are some activities that you can do in order to teach this skill.

### Two different kinds of addition

1. Explain that every value in the _Python_ programming language has a data type.

2. Write `100` on the board. Explain that `100` is an `int`. Explain that we store whole numbers in `int`s.

3. Write `"Hello!"` on the board. Explain that `"Hello!"` is a string. Explain that we store text in strings.

4. Ask students to come up with two examples of `int`s. For this example, let’s say that students came up with these two `int`s: `101` and `102`.

5. Write an addition expression on the board that uses the two `int`s. In this example, you would write `101 + 102`.

6. Ask the students what the result of that expression is going to be.

7. Now, ask students tog come up with two examples of strings. For this example, let’s say that students came up with these two strings: `"hot"` and `"dog"`.

8. Write an addition expression on the board that uses the two strings. In this example, you would write `"hot" + "dog"`.

9. Ask the students what the result of that expression is going to be.

10. Now, write this code on the board:

    ```python
    p1_score = 7
    ```

11. Ask students to tell you what the data type for the `p1_score` variable is.

12. Add some more code to what you wrote on the board. At this point, the entire program that’s written on the board should look like this:

    ```python
    p1_score = 7
    p2_score = 11
    ```

13. Ask students to tell you what the data type for the `p2_score` variable is.

14. Add some more code to what you wrote on the board. At this point, the entire program that’s written on the board should look like this:

    ```python
    p1_score = 7
    p2_score = 11
    print("Total score:")
    print(p1_score + p2_score)
    ```

15. Ask students what this program is going to do.

16. Add some more code to what you wrote on the board. At this point, the entire program that’s written on the board should look like this:

    ```python
    p1_score = 7
    p2_score = 11
    print("Total score:")
    print(p1_score + p2_score)

    p1_name = "Alice"
    p2_name = "Bob"
    print("Good work, " + p1_name + " and " + p2_name + "!")
    ```

17. Ask students what this program is going to do.

18. Add some more code to what you wrote on the board. At this point, the entire program that’s written on the board should look like this:

    ```python
    p1_score = 7
    p2_score = 11
    print("Total score:")
    print(p1_score + p2_score)

    p1_name = "Alice"
    p2_name = "Bob"
    print("Good work, " + p1_name + " and " + p2_name + "!")

    print(p1_score + p1_name)
    ```
