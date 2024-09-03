---
title: Advanced Understanding of Variables
description: Why “from x import y; y = 2” only kind of works
---

In [the Basic Understanding of Variables skill](basic-variables), you taught students that variables are containers for information. That definition is not completely accurate. Sometimes, you need to give students a more accurate understanding of variables in order to help them fix their code. You need to help these students understand [the _Python_ programming language’s data model](https://docs.python.org/3/reference/datamodel.html).

For example, I had a student who wrote an application that contained multiple files. His code did something like this:

- `game.py`:

    ```python
    from player import display_stats
    from enemies import attack_player


    print("What a beautiful day to have an adventure!")
    display_stats()
    print("OH NO, NOT A MONSTER!")
    attack_player()
    display_stats()
    ```

- `player.py`:

    ```python
    health = 100


    def display_stats():
        print("Health: " + str(health))
    ```

- `enemies.py`:

    ```python
    from player import health


    def attack_player():
        global health
        health -= 10
    ```

I had to give that student a more accurate understanding of variables in order to explain to him why the player still has `100` health even after the `attack_player()` function is called.

## Dependencies

Students need to have these skills before learning this skill:

- [Data Type Fundamentals](data-types)

## Goal

When you teach this skill, your goal is to make it so that a students know the following:

### Facts about objects

- Objects are containers for information.
- All objects have three different properties:
    - Identity
    - Type
    - Value
- An object’s identity is number. Every object has a different identity number.
- An object’s type determines what kind of information is stored in the object.
- An object’s value is the piece of information that the object is storing.

### Facts about variables

- Variables are not actually containers for information.
- A variable is like a name tag for an object.
- Variables have two different properties:
    - Identity
    - Name

###  How variables become connected to objects

- If a variable has an identity of `24` and an object has an identity of `24`, then the variable is currently referring to that object.
- A variable’s identity can change. For example,

    ```python
    gamer_mode_activated = False
    gamer_mode_activated = True  # This line of code changes the variable’s identity.
    ```

- An object’s identity cannot change. For example,

    ```python
    best_memes = [
        "Skibidi Toilet"
        "Ohio"
        "Rizzler"
    ]
    print(id(best_memes))
    best_memes.append("https://youtu.be/daeMbGKXWMg")
    print(id(best_memes))  # Even though the list’s value has changed, its identity is still the same.
    ```

## Activities

Here are some activities that you can do in order to teach this skill.

### Drawing diagrams on the board

1. Write this line of code on the board:

    ```python
    player_score = 0
    ```

2. Ask students what that line of code does.

3. Explain that variables are not actually containers for information. Say that objects are containers for information.

4. Explain that you’re going to draw what that line of code does on the board. Explain that you’re going to draw objects on the board as boxes with three different parts. Draw this on the board:

    <img alt="TODO" src="/img/box-for-an-object.svg" class="centered" style={{ "width": "50%" }} />

5. Explain that every object has an identity. Explain that an object’s identity is just a unique number. Every object has a different identity number.

6. Ask students to choose an identity number for the object that you drew. Once a student chooses an identity for the object, write that identity inside your box:

    <img alt="TODO" src="/img/object-box-with-identity.svg" class="centered" style={{ "width": "50%" }} />

7. Explain that every object has a type. Explain that an object’s type determines what kind of information is stored inside the object. Point back to the code that you wrote earlier. Ask students what data type that line of code uses. Once the correct answer is revealed, write that type inside your box:

    <img alt="TODO" src="/img/object-box-with-identity-and-type.svg" class="centered" style={{ "width": "50%" }} />

8. Explain that every object has a value. Explain that an object’s value is the information that’s stored inside the object. Point back to the code that you wrote earlier. Ask students what information is that line of code trying to store. Once the correct answer is revealed, write that value inside your box:

    <img alt="TODO" src="/img/object-box-with-identity-type-and-value.svg" class="centered" style={{ "width": "50%" }} />

9. Explain that that was just the first part of what the `player_score =0` line of code does. Explain that now that we’re done creating the object, we have have to create the variable.

10. Explain that you’re going to draw variables on the board as circles that are split in half. Add one of those circles to your drawing:

    <img alt="TODO" src="/img/finished-object-box-with-variable-circle.svg" class="centered" style={{ "width": "50%" }} />

11. Explain that all variables have a name. Point back to the code that you wrote earlier. Ask students what the name of the variable is. Once the correct answer is revealed, write that name inside your circle:

    <img alt="TODO" src="/img/finished-object-box-with-variable-circle-name.svg" class="centered" style={{ "width": "50%" }} />

12. Explain that all variables have an identity. Ask students what the identity of the variable is. Once the correct answer is revealed, write that identity inside your circle. Also add an arrow to indicate that the variable refers to a particular object.

    <img alt="TODO" src="/img/finished-object-box-with-finished-variable-circle.svg" class="centered" style={{ "width": "50%" }} />

13. You’re now done with that first `player_score = 0` variable. Add these two lines of code to the board:

    ```python
    player_name = "Jeff"
    default_name = "Someone"
    ```

14. Ask students to come up to the board an add those two variables to your diagram. You may have to help them with this part. Once their done, the full diagram will look like this:

    <img alt="TODO" src="/img/3-object-boxes-with-3-variable-circles.svg" class="centered" style={{ "width": "100%" }} />

15. Add this line of code to the board:

    ```python
    player_score = player_score + 1
    ```

    Side note: I recommend not using `+=` here. The behavior of `x += y` depends on the data type of `x`. If the data type is immutable, then `x += y` will either fail or create a new object and change the identity of the `x` variable. If the data type is mutable, then `x += y` shouldn’t create a new object and shouldn’t change the identity of the `x` variable. `x = x + y`, on the other hand, is simpler. As long as the compiler/interpreter isn’t doing any optimization ticks, `x = x + y` will always create a new object and change the identity of the `x` variable (unless you’re doing something like `x = x + 0`). For more information, see the documentation for [`object.__add__`](https://docs.python.org/3/reference/datamodel.html#object.__add__) and [`object.__iadd__`](https://docs.python.org/3/reference/datamodel.html#object.__iadd__).

16. Ask students how that line of code is going to affect the diagram. They probably won’t be able to figure this one out. Explain that `player_score + 1` is going to create a new object. Change the diagram so it looks like this:

    <img alt="TODO" src="/img/4-object-boxes-with-3-variable-circles.svg" class="centered" style={{ "width": "100%" }} />

17. _(Optional)_ Explain how the `int` object with identity `42` might get garbage collected.

18. Add this line of code to the board:

    ```python
    player_name = default_name
    ```

19. Ask students how that line of code is going to affect the diagram. Here’s the correct answer:

    <img alt="TODO" src="/img/4-object-boxes-with-3-variable-circles-2.svg" class="centered" style={{ "width": "100%" }} />
