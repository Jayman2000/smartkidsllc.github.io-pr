---
title: Creating and Changing Variables
description: How to make the comuter remember things
---

Once you’ve taught students what a variable is, you need to teach them how to create and change variables.

## Dependencies

Students need to have these skills before learning this skill:

- [IDE fundamentals](ide-fundamentals)
- [Basic Understanding of Variables](basic-variables)

## Goal

When you teach this skill, your goal is to make it so that a student is able to write code that looks like this:

```python
foo = "This message is stored in the first variable."
bar = "This message is stored in the second variable."
baz = "This message is stored in the third variable."
print(foo)

foo = "Richard Stallmann is my waifu."
print(foo)
```

## Activities

Here are some activities that you can do in order to teach this skill.

### Dictation

1. Make sure that students have a _Python_ file open in their IDE.

2. Tell students that we are going to add a line of code that creates a variable.

3. Tell students to type in a name for their variable. Tell students that they can choose any name that the like, but that their name cannot contain spaces. Tell students that they can use underscores instead of spaces.

4. Tell students to type a space followed by an equals sign followed by another space.

5. Tell students to type a quotation mark.

6. Tell students to type in a message. Students can choose whatever they want for their message.

7. Tell students to type a quotation mark.

8. Tell students to add a new line.

9. Tell students to type the word print followed by an opening parenthesis.

10. Tell students to type the name of their variable followed by a closing parenthesis. Make sure that students don’t put quotation marks around their variable’s name.

11. Ask students what they think their code will do.

12. Have students run their code to make sure that it does what they think it will do.

13. Once students have created their first variable, tell them to add another variable to their code and print that variable.

14. Once students have added another variable to their code, have them add a line of code that changes one of their variables. Also have them add a line of code that prints that variable after it has been changed.

15. Ask students what they think their code will do now.

16. Have students run their code to make sure that it does what they think it will do.

### Copying from the board

1. Make sure that students have a _Python_ file open in their IDE.

2. Write this code on the board:

    ```python
    player_1_name = "Dontrel the Dolphin"
    print(player_1_name)
    ```

3. Ask students what they think that code will do.

4. Tell students to type the code that’s on the board on their computers.

5. Once a student finishes copying the code from the board, tell them to run the code.

6. Once a student runs their code, ask them if the code did what they expected it to.

7. Ask a student to come up to the board and add a second variable to the program.

8. TODO

### Don’t quote variable names

Once students know a little bit about variables, you might want to do this extra activity.

1. Write this code on the board:

    ```python
    best_game_ever_created = "Shrek the Thrid: The Video Game for Game Boy Advance"
    print(best_game_ever_created)
    print("best_game_ever_created")
    ```

2. Ask students what they think this program is going to do.

3. Run the code and show what the program does.

4. Talk about the difference between `print(best_game_ever_created)` and `print("best_game_ever_created")`.
