## Enumerables Practice in Ruby

### Purpose

In short, we are trying to write code to pass the `rspec` tests located in `spec/enumerables_spec.rb`. We are also trying to develop an understanding of how enumerables work in Ruby, and the connection between the methods of the `Enumerable` module and basic iterative control flow (e.g. `while`, `for`, and `until` loops).

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

In the above case the program outputs 
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
It should be immediately apparent that the `each` construction saves the programmer some mental overhead. First, we no longer have to worry about maintaining a `counter` variable that must be updated. Second, we don't need to worry about the logic that terminates the loop. Third, we don't have three extra lines of code that cause potential bugs. So, if you're going to iterate through a collection in Ruby, don't use a `for` or `while` loop. Instead, use an `each` loop that will automatically do something to `each` element in the collection. Aren't `Enumerable` methods great?

But iterating in Ruby doesn't stop there and the language has much more power than the `each` operator. Ruby enumerables are also designed to handle common operations that programmers would frequently have to implement themselves using standard `while` and `for` loops (e.g. find the largest element in an array, return a new array that contains the square roots of the elements in an existing array, or multiply all the elements in array together and return the result). Ruby has methods to handle all of these and more.

So, that's what this repo is for.

If you look at the file called `enumerables_practice.rb` you'll see a bunch of empty methods. The methods are named after the kind of enumerable methods you should use to pass their associated tests. Write the methods. Pass the tests. That's it! If you're uncomfortable with the higher order methods (`map`, `reduce`) implement all the `each` methods until you're completely solid. Be sure to reference (and get comfortable doing so) the Ruby `Enumerable` documentation located [here](https://ruby-doc.org/core-2.4.2/Enumerable.html). Everything you need is on that page.

There is a `solutions` branch you can use to check your work against or get hints from. But try to come up with your own solutions before looking at the provided answers.

### Some Comments on `map`
For many programmers at the beginning of their Ruby journey, the `Enumerable#map` method poses a serious challenge. But really, `map` isn't doing anything dramatically differently from `each`. The only significant difference between the behavior of `each` and `map` *is the return value of the methods*. 

As we saw earlier, `each` is a simplified way to construct a loop in Ruby. Calling `each` on a collection performs some action with each element of the array. The only side effect of running `each` is whatever is produced by running some operation on every element in an array. Take a look at the following code:
```
def loop_over_collection(input_array)
  return input_array.each do |element|
    puts "#{element} is a great number!!"
  end
end

collection = [1,2,3,4,5]
p loop_over_collection(collection)
```
As we can see, the `loop_over_collection(input_array)` method takes a collection as its input and returns the result of running an `each` method on that collection. So what does the output look like?
```
1 is a great number!!
2 is a great number!!
3 is a great number!!
4 is a great number!!
5 is a great number!!
[1, 2, 3, 4, 5]
```
Not surprising. The `each` loop iterates over every element of our collection, prints out a message, then returns the result of the `each`. Well what is the return value of `each`? It is the array on which `each` was originally called. That's why when we call `p loop_over_collection(collection)` we get the line of output `[1, 2, 3, 4, 5]`. 

If you're wondering where we're going with this, let's change the above method slightly. We'll still use an `each` statement, but instead of printing a message for each element we'll do a mathematical operation.
```
def loop_over_collection(input_array)
  return input_array.each do |element|
    element * 3
  end
end

collection = [1,2,3,4,5]
p loop_over_collection(collection)
```
Here's our output:
```
[1, 2, 3, 4, 5]
```
Why's that? Well the `each` statement is multiplying every element in the array by 3 but those results aren't being stored anywhere. And as we know, the return value of `each` is the original array on which `each` was called. So our output is just our original array. 

Let's jump one step further and replace our `each` statement above with a `map` statement. 
```
def loop_over_collection(input_array)
  return input_array.map do |element|
    element * 3
  end
end

collection = [1,2,3,4,5]
p loop_over_collection(collection)
```
All we did was replace our single `each` call with `map` and our output looks like this: 
```
[3, 6, 9, 12, 15]
```
When we run `map` we're running an operation on every element of an array, just like `each`. But instead of just performing an operation on every element then moving on, `map` stores the results of running those operations *and returns a new array with those results*. So, as we can see we've *mapped* `[1,2,3,4,5]` to a new array (`[3, 6, 9, 12, 15]`) containing the original elements each multiplied by 3. Here is a slightly different view of what the map operation is doing:
```
Input        Output
        map
     1  --> 3
     2  --> 6
     3  --> 9
     4  --> 12
     5  --> 15
```
Obviously we could achieve this same behavior with each by creating a temporary array variable, shovelling each result into the temporary array, then returning the new array. But Ruby, again, gives us options to doing more with less. In this case a wonderful enumerable method that performs operations on every element of a collection *and* returns those results in a new array. 
