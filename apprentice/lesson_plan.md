# Lesson Plan

## Overview

** REMEMBER TO RECORD THE SESSION **

1. Answers from previous lesson

2. Self introduction
   a. Hi I'm Merlin
   b. What I do at Multiverse
   c. How long I've been here, and how long I've been writing software

** Tell them: please interrupt me at any point if you have any questions, no matter how silly you think they might be **

3. Introductions/ ice breaker

   a. What's your name?
   b. Any previous programming experience? (completely fine if no)
   c. Tell me one thing you're interested in (can be outside of work)

4. Ask them to recap what they've done on previous lessons

5. Tell them what we're going to cover
   a. The Elixir build tool: mix
   b. Testing with ExUnit

   Has anyone written test code before?

6. Open the `mix` LiveBook
   a. Go through the material and live code along to make a project etc

7. Chat about testing

   a. Has anyone written tests before?
   b. Why do we need tests anyway?
   c. Cant' we just test our code in IEx?

8. Explain the format of a test
   a. Descriptive test name
   b. Setup anything we need
   c. Run the code under test
   d. Check the result is what we expected

9. Open the main LiveBook at the `ExUnit` section
   a. Run through the material

10. Clone the `Bank` project from GitHub:

```shell
git clone https://github.com/mjftw/bank-manager -b test_stubs_only
```

11. Explain what we're going to do
    a. We're going to put out new skills into action and write some tests for a project I wrote in my free time
    b. We'll write some of the tests together, and then I'll leave you to fill in the other tests on your own

12. Explain what the project is
    a. I've built a basic bank account manager
    b. It can store the balance on an account, and move money between accounts
    c. Explain the basics of event sourcing of transactions

13. Explain the code a little
    a. How we represent an `Account`
    b. How we represent a `Transaction`
    c. Play with some of the functions in IEx

14. Live code adding some tests
    a. Start with the `new()` functions
    b. Then do the `Bank` functions

15. Create a new branch, commit the changes, and push

16. Give the code to the apprentices to add some more tests on their own
    a. Github link/ code zip
    b. Tell them: Do as many of the tests as you like
    c. I'm very happy to look over your answers and provide some feedback
    d. If you need some tips, have a look at the `master` branch of the repository: https://github.com/mjftw/bank-manager/
