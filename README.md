## Enumerables Practice in Ruby

### Purpose

*What are we trying to do here?* 

Write code to pass the tests. Well that and also try to develop an understanding of how enumerables work in Ruby and the connection between the methods of the `Enumerable` module and basic iterative control flow (e.g. `while`, `for`, and `until` loops).

*What is an enumerable?* 

The Ruby module called `Enumerable` is derived from the term `enumerate` or the action of naming things in a collection one by one. For example (to use the style of a middle school vocabulary assignment), "Edith began to dramatically enumerate the works of William Shakespeare for her English class: '*Hamlet*, *Othello*, *As You Like It*,...' ". Traditionally, the tool programmers use to `enumerate` collections is a loop, which in Ruby looks like this:
```
shakespeare_comedies =
  [ "All's Well That Ends Well",
  "As You Like It",
  "Comedy of Errors",
  "Love's Labour's Lost",
  "Measure for Measure",
  "Merchant of Venice",
  "Merry Wives of Windsor",
  "Midsummer Night's Dream",
  "Much Ado about Nothing",
  "Taming of the Shrew",
  "Tempest",
  "Twelfth Night",
  "Two Gentlemen of Verona",
  "Winter's Tale" ]

list_length = shakespeare_comedies.length
counter = 0
while counter < list_length do
  puts "I laughed hard at '#{shakespeare_comedies[counter]}'"
  counter += 1
end
```
In the above case our the program outputs 
```
I laughed hard at 'All's Well That Ends Well'
I laughed hard at 'As You Like It'
I laughed hard at 'Comedy of Errors'
I laughed hard at 'Love's Labour's Lost'
I laughed hard at 'Measure for Measure'
I laughed hard at 'Merchant of Venice'
I laughed hard at 'Merry Wives of Windsor'
I laughed hard at 'Midsummer Night's Dream'
I laughed hard at 'Much Ado about Nothing'
I laughed hard at 'Taming of the Shrew'
I laughed hard at 'Tempest'
I laughed hard at 'Twelfth Night'
I laughed hard at 'Two Gentlemen of Verona'
I laughed hard at 'Winter's Tale'
```
`while` and `for` loops are found in most programming languages, but that doesn't mean they're the most appropriate tool for iterating through a collection in every language. In Ruby, the above approach isn't very *rubyesque*. 

So what would be more *rubyesque*? Well this is where the Ruby `Enumerable` mixin module comes in handy. The fact is that collections of things (e.g. `arrays` or `hashes`, or `linked lists` or any number of common data structures) are naturally `enumerable` or lend themselves to being enumerated over. 

Because one of the core features of Ruby is its *elegant syntax that is natural to read and easy to write*, the language provides more readable versions of the standard `loop` constructions for enumerable data types. The most basic construction is the `each` method. Compare the `while` loop written above with the following syntax:

#### While Loop
```
list_length = shakespeare_comedies.length
counter = 0
while counter < list_length do
  puts "I laughed hard at '#{shakespeare_comedies[counter]}'"
  counter += 1
end
```
#### Each Loop
```
shakespeare_comedies.each do
  puts "I laughed hard at '#{shakespeare_comedies[counter]}'"
end
```
It should be immediately apparent that the `each` construction saves the programmer some mental overhead. First we no longer have to worry about maintaining a `counter` variable that must be updated. Second, we don't need to worry about the logic that terminates the loop. Third, we don't have 3 extra lines of code that cause potential bugs. So, if you're going to iterate through a colleciton in Ruby, don't use a `for` or `while` loop, use an `each` loop that will automatically do something to `each` element in the collection. Aren't `Enumerable` methods , great?

But iterating in Ruby doesn't stop there and the language has much more power than the `each` operator. Ruby Enumerables are also designed to handle common operations that programmers would frequently have to implement themselves using standard `while` and `for` loops, e.g. find the largest element in an array, return a new array that contains the square roots of the elements in an existing array, or multiply all the elements in array together and return the result. Ruby has methods to handle all of these and more.

So, that's what this repo is for. 

If you look at the file called `enumerables_practice.rb` you'll see 

There is a `solutions` branch you can use to check your work against or get hints from. But try to come up with your own solutions before looking at the provided answers.
