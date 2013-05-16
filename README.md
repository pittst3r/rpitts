# R. Pitts

## Testing

- MiniTest
- Capybara
- Poltergeist/PhantomJS
- Factory Girl
- Turn

### To run tests

```
rake
```

### To make tests

- Test files must end in `_test.rb`
- Test files must `require "test_helper"`
- Feature test names must end in 'feature', e.g.

```ruby
describe "Some awesome feature" do
  it "does something awesome" do
    skip
  end
end
```
