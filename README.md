 # Ruby Enumerable Methods
 ---
  A remake of some of the essential Ruby Enumerable methods that are inherited by Arrays and Hashes.

  The point of the exercise is to practice using yield statements to yield control to an external block that is given to a function.

  The :my_map method has been made able to handle either a given block or a Proc as an argument. It can accept both but will execute only the Proc if both are given.

  I have tried to make all of my_methods compatible with both Arrays and Hashes and match output as close to its original method as possible.

  ### Methods
  ---
  - #### #my_each
    Uses a for loop to iterate through self, yielding its element to a given block each loop.
    Returns the original array if block given, returns self.to_enum(:each) otherwise.

  - #### #my_each_with_index
    Uses a for loop to iterate through self, yielding its element and an iteration counter to a given block each loop.
    Returns the original array if block given, returns self.to_enum(:each) otherwise.

  - #### #my_select
    Uses :my_each method to loop through self and creates a new array with the elements which loops evaluate to true. 

  - #### #my_map
    Uses :my_each method to loop through self and replaces each element with the return value from its respective loop

  - #### #my_inject
    Uses :my_each method to loop through self and create a result based on either a given value or the first element of self, if no value is given.
    The result will be accumulated by being set equal to the return value of each loop.

  - #### #my_all
    Uses :my_each method to loop through self and checks each element against a given block. Checks if element is true if no block given.
    Returns true if ALL elements match. imagine that

  - #### #my_any
    Loops through self and checks if any element returns true to a given block. Checks if any element is true if no block given.
    Returns true if found. 

  - #### #my_none
    Loops through self and checks if any element returns true to a given block. Checks if any element is true if no block given.
    Returns false if found.