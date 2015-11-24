### Hash

Creating new hash in different ways
```ruby
Hash = { "Jane Doe" => 10, "Jim Doe" => 6 }
Hash["a", 100, "b", 200]             #=> {"a"=>100, "b"=>200}
Hash[ [ ["a", 100], ["b", 200] ] ]   #=> {"a"=>100, "b"=>200}
Hash["a" => 100, "b" => 200]         #=> {"a"=>100, "b"=>200}
```

Conversion to hash
```ruby
Hash.try_convert({1=>2})   # => {1=>2}
Hash.try_convert("1=>2")   # => nil
```

Equality of hashes
```ruby
h1 = { "a" => 1, "c" => 2 }
h2 = { 7 => 35, "c" => 2, "a" => 1 }
h3 = { "a" => 1, "c" => 2, 7 => 35 }
h4 = { "a" => 1, "d" => 2, "f" => 35 }
h1 == h2   #=> false
h2 == h3   #=> true
h3 == h4   #=> false
```

Deleting elements
```ruby
h = { "a" => 100, "b" => 200 }
h.delete("a")                              #=> 100
h.delete("z")                              #=> nil
h.delete("z") { |el| "#{el} not found" }   #=> "z not found"
```

Setting default value
```ruby
h = { "a" => 100, "b" => 200 }
h.default = "Go fish"
h["a"]     #=> 100
h["z"]     #=> "Go fish"
```

Conversion to array
```ruby
h = { "c" => 300, "a" => 100, "d" => 400, "c" => 300  }
h.to_a   #=> [["c", 300], ["a", 100], ["d", 400]]
```

Returns amount of key-value pairs
```ruby
h = { "d" => 100, "a" => 200, "v" => 300, "e" => 400 }
h.length        #=> 4
h.delete("a")   #=> 200
h.length        #=> 3
```
