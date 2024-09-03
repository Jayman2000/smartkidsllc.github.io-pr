---
title: Python® Classes
description: How we teach the Python programming language
---

<!--
I had to put a figure here in order to center both the Python logo and the trademark symbol. I wish that I could have just included an <img>, but I can’t. There’s a few different variations of the Python Logo. One of them contains the text “python™”. I wanted to use that version of the logo, but there’s a few problems with it:

1. The text is gray. The gray text looks fine with our light theme, but it’s a little bit harder to read with our dark theme.

2. According to the Python Logo download page [1], ‘The font used in the logo is called "Flux Regular". The PSF owns a copy but we cannot distribute it, except for work on the PSF's behalf.’ I don’t know if we can use the version of the logo that contains text if we don’t have a Flux Regular license.

OK, so we have to use the textless version of the logo. Unfortunately, the textless logo doesn’t contain an unregistered trademark symbol. According to the PSF Trademark Usage Policy [2]:

> The Python logos are not currently registered. (We will post an update to this policy if they are registered later.) These logos should be used in the form provided by the PSF, and should be accompanied by a symbol for unregistered trademarks: "(TM)" or a small TM "™". This may not be removed or obscured and must always be included with the logo.

So we have to add an unregistered trademark symbol. Normally, I would just edit the SVG file in order to add an unregistered trademark symbol to the textless logo, but the PSF Trademark Usage Policy has specific rules that you have to follow if you modify a Python logo. Here’s one of them [3]:

> Any use of a derived (modified) logo for any commercial purpose must also be approved first by the PSF.

It’s just easier to apply this workaround than it is to make sure that we follow all of the PSF Trademark Usage Policy’s requirements.

On an unrelated note, if I don’t keep this entire <figure> on a single line, then it adds a <p> element. That’s kind of annoying.

[1]: <https://www.python.org/community/logos>
[2]: <https://www.python.org/psf/trademarks#how-to-use-the-trademarks>
[3]: <https://www.python.org/psf/trademarks#uses-that-always-require-approval>
-->
<figure style={{"textAlign": "center", "width": "100%", "margin": "0" }}><img alt="PYTHON Logo" src="/img/python-logo-only.svg" style={{ "height": "15lh" }} />™</figure>

## How to teach the _Python_ programming language

### What’s the goal?

Before you start teaching the _Python_ programming language, you have to think about what the purpose of the _Python_ programming language is. In other words, you have to ask yourself “why would anyone want to learn the _Python_ programming language?”

The _Python_ programming language exists to make it easier to create pieces of software. There are many reasons why someone might want to learn the _Python_ programming language, but their primary reason should always be “I want to create pieces of software.”

As a teacher, your primary goal should be to give students the knowledge that they need in order to create pieces of software on their own.

### How do you achieve that goal?

There are many ways you could possibly achieve that goal. Here’s how I try to achieve that goal.

#### Step 1: Choose a project

How do you decide what you’re going to teach to a student? I use projects to help me decide what I’m going to teach to students. A project is just a piece of software that the student will eventually create. I always base what I teach off of student projects in order to make sure that I’m giving students skills that are practical and relevant. I never want to teach a student a skill that they aren’t going to use.

A good project has the following qualities:

- The student actually wants to make the project.
- The student can create some parts of the project on their own but is going to need to learn something new in order create other parts of the project. (This might not apply to a student’s first few projects).
- The project isn’t too difficult for the student to create.

Most of the time, I have students come up with their own project ideas. When you allow students to come up with their own project ideas, there’s a good chance that you’ll have to help students with their ideas. Some students might struggle to come up with any ideas at all. Other students might have ideas that are way too difficult for them to create.

If a student has never used the _Python_ programming language before, then I choose the first few projects for them. Specifically, I have them do these projects first:

1. [Hello, world!](project-ideas/hello-world)
2. [Personalized Greeting](project-ideas/personalized-greeting)
3. [Quiz Game](project-ideas/quiz-game)
4. [Turtle Mess](project-ideas/turtle-mess)

Once they’ve done those projects, I then have them come up with their own project ideas.

#### Step 2: Create a dependency tree of skills

Once you or the student has come up with a project idea, you need to figure out what you need to teach the student so that they can create their project. Each individual thing that you teach to the student is called a skill. In order to figure out what I have to teach and what order I have to teach it in, I create a dependency tree of skills.

Here’s an example. Let’s say that the student’s project is a Celsius to Fahrenheit converter. The first thing that I do is figure out approximately what their final code is going to look like. The code for a Celsius to Fahrenheit converter looks like this:

```python
degrees_celsius = input("Enter a temperature in Celsius: ")
degrees_celsius = float(degrees_celsius)
degrees_fahrenheit = (degrees_celsius * 9/5) + 32
print(degrees_fahrenheit)
```

I then think about what skills my student needs to have in order to create that program:

- [ ] Celsius to Fahrenheit converter
    - [ ] Variables
    - [ ] Taking user input
    - [ ] Turning a `str` into a number
    - [ ] The four main arithmetic operators
    - [ ] Using parentheses to change the order of operations
    - [ ] Printing

I can then check off anything that my student already knows how to do. Let’s say that my student already knows how to do this much:

- [ ] Celsius to Fahrenheit converter
    - [x] Variables
    - [x] Taking user input
    - [ ] Turning a `str` into a number
    - [x] The four main arithmetic operators
    - [ ] Using parentheses to change the order of operations
    - [x] Printing

Now, I need to go one level deeper in my dependency tree. I need to teach my student the “turning a `str` into a number” skill and the “using parentheses to change the order of operations” skill. What skills do those two skills depend on? In other words, what skills does a student have to have before they can learn the “turning a `str` into a number” and the “using parentheses to change the order of operations” skills?

- [ ] Celsius to Fahrenheit converter
    - [x] Variables
    - [x] Taking user input
    - [ ] Turning a `str` into a number
        - [ ] The `str` data type
        - [ ] The `float` data type
    - [x] The four main arithmetic operators
    - [ ] Using parentheses to change the order of operations
        - [x] The four main arithmetic operators
    - [x] Printing

Notice how “the four main arithmetic operators” skill now appears multiple times on my dependency tree. This is a common thing that happens when creating dependency trees. Luckily, I was able to check off “the four main arithmetic operators” skill because my hypothetical student already has that skill. Unfortunately, my hypothetical student doesn’t know about the `str` data type or the `float` data type yet, so we have to add another level to our dependency tree:

- [ ] Celsius to Fahrenheit converter
    - [x] Variables
    - [x] Taking user input
    - [ ] Turning a `str` into a number
        - [ ] The `str` data type
            - [ ] What are data types?
        - [ ] The `float` data type
            - [ ] What are data types?
    - [x] The four main arithmetic operators
    - [ ] Using parentheses to change the order of operations
        - [x] The four main arithmetic operators
    - [x] Printing

And then, we have to go another level deeper because my hypothetical student doesn’t know about data types yet:

- [ ] Celsius to Fahrenheit converter
    - [x] Variables
    - [x] Taking user input
    - [ ] Turning a `str` into a number
        - [ ] The `str` data type
            - [ ] What are data types?
                - [x] Variables
        - [ ] The `float` data type
            - [ ] What are data types?
                - [x] Variables
    - [x] The four main arithmetic operators
    - [ ] Using parentheses to change the order of operations
        - [x] The four main arithmetic operators
    - [x] Printing

#### Step 3: Teach the skills

Now that our dependency tree is done, we have to decide what order we’re going to teach those skills in. You can choose whatever order you want. Just make sure that you fulfill a skill’s dependencies before you teach that skill. Going back to my previous example, I’m going to teach the student my skills in this order:

1. What are data types?
2. The `str` data type
3. The `float` data type
4. Using parentheses to change the order of operations

Once you’ve come up with an order, it’s time to start teaching. The docs page for each of the skills has example activities that you can use. You can also create your own activities if you want. If you have any ideas for activities that aren’t already in the docs, then I encourage you to [contribute to the docs site](https://github.com/smartkidsllc/smartkidsllc.github.io/blob/main/CONTRIBUTING.md).

##### Verification

It’s important to verify that you’ve successfully taught what you were trying to teach. I’ve been in situations where I thought that I taught something successfully, and I’ve even asked my students and they thought that they learned the concept, but they didn’t actually understand it. The students believed that they understood what I was trying to teach, but they didn’t actually understand what I was trying to teach.

Here’s an example: if you’re teaching students what a `float` is, then you could write down a list of literals and ask students if each item on the list is or is not a `float`.

Here’s another example: if you’re teaching students how to print things, then you could ask them to write three lines of code. Each of the lines of code has to print something different.

#### Step 4: Help students work on their projects

Once students have the skills that they need, it’s time for them to work on their projects. Every so often check in on students to see how much progress they’ve made. Be sure to help any students who have questions.

#### Step 5: Celebrate completed projects

Once a student finishes their project, ask the student if you can try out their project. When trying out a student’s project, be happy and supportive. For larger projects, you may want to encourage students to show their project to other students.

For larger projects, you should celebrate the progress that students have made along the way even if the project isn’t finished yet.

#### Step 6: Rinse and repeat

Once a student finishes a project, it’s time for them to choose a new project. Go back to [step 1](#step-1-choose-a-project).

## Legal notice

“_Python_” and the _Python_ logos are trademarks or registered trademarks of the _Python_ Software Foundation, used by SmartKids, LLC with permission from the Foundation. For more information, see [the PSF Trademark Usage Policy](https://www.python.org/psf/trademarks).

When writing the docs, remember to italicise the word “_Python_” and use it only as an adjective because [that’s what the PSF Trademark Usage Policy says you should do](https://www.python.org/psf/trademarks#how-to-use-the-trademarks).
