### Array

Accesing elements using the #[] method
```ruby
arr = [1, 2, 3, 4, 5, 6]
arr[2, 3]  #=> [3, 4, 5]
arr[1..4]  #=> [2, 3, 4, 5]
arr[1..-3] #=> [2, 3, 4]
```

To return the first n elements of an array, use take
```ruby
arr.take(3) #=> [1, 2, 3]
```

To return the last n elements of an array, use drop
```ruby
arr.drop(3) #=> [4, 5, 6]
```

To insert multiple values at once use insert method
```ruby
arr.insert(3, 'orange', 'pear', 'grapefruit')
#=> [0, 1, 2, "orange", "pear", "grapefruit", 3, 4, 5, 6]
```

To remove nil values use compact method
```ruby
arr = ['foo', 0, nil, 'bar', 7, 'baz', nil]
arr.compact  #=> ['foo', 0, 'bar', 7, 'baz']
```

To remove duplicates use uniq method
```ruby
arr = [2, 5, 6, 556, 6, 6, 8, 9, 0, 123, 556]
arr.uniq #=> [2, 5, 6, 556, 8, 9, 0, 123]
```

To iterate over the elements in the array in reverse order use reverse_each method
```ruby
words = %w[first second third fourth fifth sixth]
str = ""
words.reverse_each { |word| str += "#{word} " }
p str #=> "sixth fifth fourth third second first "
```

To create a new array based on the original array, but with the values modified by the supplies block use map method
```ruby
arr.map { |a| 2*a }   #=> [2, 4, 6, 8, 10]
arr                   #=> [1, 2, 3, 4, 5]
arr.map! { |a| a**2 } #=> [1, 4, 9, 16, 25]
arr                   #=> [1, 4, 9, 16, 25]
```

To select elements from array according to criteria defined in a block use select, reject or drop_while methods
```ruby
arr = [1, 2, 3, 4, 5, 6]
arr.select { |a| a > 3 }     #=> [4, 5, 6]
arr.reject { |a| a < 3 }     #=> [3, 4, 5, 6]
arr.drop_while { |a| a < 4 } #=> [4, 5, 6]
arr                          #=> [1, 2, 3, 4, 5, 6]
```
