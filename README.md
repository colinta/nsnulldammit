Objective-C code that helps you assign `[NSNull null]` within RubyMotion.

###### add it to your RubyMotion project
```bash
$ git clone git@github.com:colinta/nsnulldammit vendor/nsnulldammit
```

###### add it to your Rakefile
```ruby
app.vendor_project('vendor/nsnulldammit/', :static)
```

###### use it!
```ruby
dict = {}
array = [1,2,3]
person = Person.new

dict.setToNull('key)      # dict['key'] = NSNull.null
array.setIndexToNull(1)   # array[1] = NSNull.null
array.appendNull          # array << NSNull.null
person.setToNull('email') # person.email = NSNull.null
```
