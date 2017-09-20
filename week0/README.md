## Example Assignment: Instructions

When you're ready to submit your solution, go to the assignments list.

# Getting Started!

The goal of this assignment is to familiarize yourself with the infrastructure and the tools required during this class. Even though the grade in this assignment will be excluded from your final grade for the course, it is important that you work through this assignment carefully.

The following screencast video will guide you through this assignment

Tutorial: Working on the Programming Assignments

## Installing Required Tools

Before anything else, it is most important that you make sure that all tools are correctly installed. Make sure that you have installed:
* java 1.8 or newer (`java -version`)
* sbt (`brew install sbt`)
* intellij (you'll figure it out)

# The Assignment

## Part 1: Obtain the Project Files

Run the `load_resources.sh` script located in the root of this repo if the resource files have not been populated. 

## Part 2: Using the Scala REPL

During this class we will always launch the Scala REPL (the interactive Scala console) through `sbt`. This way you don’t need to install the Scala distribution on your machine, having `sbt` is enough. (In case you prefer to have the scala command available on your machine, you can download the Scala distribution from the scala-lang.org website.)

Open the [Sbt Tutorial](https://github.com/lampepfl/progfun-wiki/blob/gh-pages/SbtTutorial.md) page and follow the first steps until “Running the Scala Interpreter”. Note that `sbt` can only be started inside a project directory, so first navigate to the project directory that you created in Part 1.

Enter a few Scala expressions to make sure everything is working as expected.

## Part 3: Opening the Project in IntelliJ

Create a file ~/.sbt/plugins/build.sbt and put this there:

```addSbtPlugin("com.github.mpeltonen" % "sbt-idea" % "1.5.1")```

and then in `sbt` run: `gen-idea`

This will create project files.

To install scala plugin in IDEA: Settings/Preferences -> Plugins -> Browse repositories -> find Scala, right click -> Download and Install. Restart IDEA

More exhaustive instructions for configuring intellij can be found [here](http://laurentkempe.com/2013/09/20/Functional-Programming-Principles-in-Scala-using-JetBrains-IntelliJ-IDEA/)

Open the folder with your assignment in IDEA: File -> Open Project...

## Part 4: Running your Code

Once you start writing some code, you might want to run your code on a few examples to see if it works correctly. We present two possibilities to run the methods you implemented.

### Using the Scala REPL

In the sbt console, start the Scala REPL by typing console.
```
> console
[info] Starting scala interpreter...

scala>
```

The classes of the assignment are available inside the REPL, so you can for instance import all the methods from object Lists:

```
scala> import example.Lists._
import example.Lists._

scala> max(List(1,3,2))
res1: Int = 3
```

### Using a Main Object

Another way to run your code is to create a new Main object that can be executed by the Java Virtual Machine.

1. In eclipse, right-click on the package example in src/main/scala and select “New” - “Scala Object” 
2. Use Main as the object name (any other name would also work)
3. Confirm by clicking “Finish” 

In order to make the object executable it has to extend the type App. Change the object definition to the following:
```
object Main extends App {
  println(Lists.max(List(1,3,2)))
}
```
Now the Main object can be executed. In order to do so in eclipse:

You can run the Main object in the sbt console by simply using the command run.

## Part 5: Writing Tests

Throughout the assignments of this course we will require you to write unit tests for the code that you write. Unit tests are the preferred way to test your code because unlike REPL commands, unit tests are saved and can be re-executed as often as required. This is a great way to make sure that nothing breaks when you have go back later to change some code that you wrote earlier on.

We will be using the ScalaTest testing framework to write our unit tests. In eclipse, navigate to the folder `src/test/scala` and open the file `ListsSuite.scala` in package example. This file contains a step-by-step tutorial to learn how to write and execute ScalaTest unit tests.
