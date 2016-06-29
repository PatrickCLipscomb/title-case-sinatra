require('rspec')
require('title')

describe("String#title") do
  it('uppercase the first character of each word in a string') do
    expect('hello'.title()).to(eq('Hello'))
  end
  it('uppercase the first character of each word in a string') do
    expect('hey there and all your rockstar or groupie friends'.title()).to(eq('Hey There and All Your Rockstar or Groupie Friends'))
  end
end
