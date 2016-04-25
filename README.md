# Improving Developer Efficiency by Determining the Fastest Scripting Language to Compile and Run

## Abstract
Programming is the use of code to automate processes done on a computer. There are multiple types of programming languages available to use for this purpose, used for different purposes. A scripting language is compiled as the code is run; instead of performing two steps (building the executable and running that executable), this compiles the code on the fly (also known as interpretation) and then runs it immediately thereafter. Scripting languages are very useful for running quick scripts that automate tasks which are often tedious. Scripting languages need to compile and run quickly because scripts are intended to automate a process and make it quicker for the developer to get something done.
My objective with this project was to find the scripting language that best helps developers and programmers achieve this. I investigated and compared six of the most commonly used scripting languages—Swift, Ruby, Python, AppleScript, Go, and JavaScript—in the performance of common tasks: arithmetic, writing to and reading from disk, and parsing JSON text, as well as a control for the classic “Hello, World” program. I ran each test 4 times for each languages, and recorded the time taken to run each program in milliseconds. I took an average of the task times for each language, and then an average of all the tasks run for each language. Contrary to my hypothesis, I found that the fastest scripting language to compile and run is AppleScript, with an average of 314 ms, with Python coming in second at 320 ms. This was a limited experiment, and an expanded test of these and more programming languages could be plausibly executed to not only determine the fastest programming language, but maybe even the “best” programming language.Hypothesis
It is hypothesized that Swift if the fastest scripting language to compile and run, compared to JavaScript, Python, Ruby, AppleScript, and Go. This was hypothesized because: it is the newest language of the ones being tested, it is based on Apple’s LLVM compiler which has a reputation for high performance, and its standard libraries are highly optimized.

## Background
Scripting languages are very useful for running quick scripts that automate tasks which are often tedious. An example of a popular script used is CocoaPods: written in Ruby, it manages the download and update of third-party code used in your iOS application. Doing this manually is very tedious, but adding a defining file to your project and running a simple command makes the process much simpler. Another example could be found in my personal development journey: I was recently dealing with a bug in the setup of my iOS app, where the fix would be every so often I had to go through a tedious process to keep the project cache clean. To make this simpler, I wrote a script to consolidate the process, and from then on I spent less time performing this tedious process by hand.

If a programming language advertises itself as useful for writing quick scripts, then it needs to be fast. If the compiler for a scripting language, which is run every time a script is run, is slow, it has the possibility of wasting time for the developer—which defeats the purpose for writing the script in the first place. Developers need to work quickly.

I personally was drawn to an investigation on this topic because I noticed that all the Ruby scripts that run on my computer (including CocoaPods) were compiling really slow compared to other scripts written in other languages (including my script that I wrote with Swift), and I wondered what other, faster alternatives to Ruby there were, as it is still so popularly used by programmers around the world. I also wanted to know the degree by which Ruby was slower (or even faster) than other languages that are widely used.

## Procedure
1. Each language’s compiler and command line interface was made available on the test machine, mostly by downloading from the language’s website.

2. Tests were written for the following tasks in each language:

  a) A simple “Hello, World” program that prints text to the console

  b) A program that evaluates the following math equations and prints the results to the console:

    1. ![sqrt((2*175)/-9.8)](/images/Screen Shot 2015-12-02 at 8.31.05 PM.png)

    2. ![(1/2)*-1.62*6.3^2](/images/Screen Shot 2015-12-02 at 8.32.20 PM.png)

  c) A program that parses a simple JSON construct that describes my name, my school, and my skills, using dictionaries and arrays; printing a statement using that information to the console

  d) A program that writes text to a file on disk, reads that same file, and prints its contents to the console

3. Each test was run four (4) times per language, and then an average was taken of the task times for each language, and then an average of all the tasks run for each language.

## Results

![Results table](/images/Screen Shot 2016-04-25 at 11.17.10 AM.png)

![Graph](/images/Screen Shot 2016-04-25 at 11.17.24 AM.png)

## Conclusions
On average, the fastest scripting language to compile and run, of the languages tested, is AppleScript, with an average of 314 ms. This can likely be attributed to less dependence on the language’s functionality and more on “scripting” apps that support it. The language that scored the second-fastest time on average was Python, with an average of 320 ms. To say that this proved my hypothesis wrong would be an understatement.


## Discussion and Applications
I was surprised at the results, that AppleScript was on average the fastest scripting language of the group I tested. This is infamously known as that clunky language that no one likes nor uses (due to the weird syntax, app-dependent functionality, etc.). This all may be true, but now it has been proven to be the fastest of all the widely-used scripting languages (avg. 314 ms), by average, with Python in an extremely close second (avg. 320 ms). This can likely be attributed to less dependence on the language’s functionality and more on “scripting” apps that support it. Needless to say, my hypothesis was blown out of the water.

From the control tests, I noticed that the first time each program was run it was much slower than the other three times. This is most probably because the compilers all cache the first build, which is smart on their part: a developer should not wait to recompile what has already been compiled. Also, it took much longer for a program to compile when there was an error in the code (build, syntax, etc.). In all this, these results were still valid.

I could recommend many improvements and expansions for future experimentation on this subject. The most obvious improvements that could be made are using an encoded timer to improve accuracy, and to include more languages in experimentation. As far as expansion goes, maybe future studies could factor in other aspects of a language (aesthetics, syntax, etc.) to determine the “best” scripting language as opposed to just the fastest scripting language.

## Validity
This was a valid experiment. All variables were controlled as much as possible. Theo only factor that could have caused error was the human reaction time on the timer. I decided to not include a timer in code because I felt it would add unneeded complexity and bog down build times. I also would have been the most accurate option. However, an external timer was the next-best option: it produced valid results, and I can say that those results reflect the relative differences between the code runs in each language. I also could have used a separate machine with super-high performance but a) my goal was to test in a realistic development environment and b) I saw that the differences between times would be the determining factor in coming to the conclusion, not necessarily the numbers themselves.

## Acknowledgements
I thank all who have encouraged me in my pursuit of programming, especially my parents for constant encouragement, and my physics teacher for approving this project. I also acknowledge all those whose hard work went into the creation of these programming languages, as they all had the same goal in mind: to make their and other developers’ lives easier, and this is my attempt at paying it forward.
