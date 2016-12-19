require_relative '../lib/fizzbuzz'
require 'byebug'

RSpec.describe "Fizzbuzz" do
  before(:each) do
    @fizzbuzz = Fizzbuzz.new
  end
  it "can initialize" do
    expect(@fizzbuzz.result).to eq([])
  end

  it "can count from 0 to 100" do
    expect (@fizzbuzz.count_to(100).input).to eq([0..100])
  end

  it "converts numbers divisible by 3 to fizz" do
    expect(@fizzbuzz.convert_num(3)).to eq("Fizz")
  end

  it "converts numbers divisible by 5 to Buzz" do
    expect(@fizzbuzz.convert_num(5)).to eq("Buzz")
  end

  it "converts numbers divisible by 3 and 5 to FizzBuzz" do
    expect(@fizzbuzz.convert_num(15)).to eq("FizzBuzz")
  end

  it "prints all numbers not divisible by 3 or 5 to the screen" do
    expect(@fizzbuzz.convert_num(1)).to eq(1)
  end

  it "can reset" do
    @fizzbuzz.start([1...10])
    @fizzbuzz.reset
    expect(@fizzbuzz.result).to eq([])
    expect(@fizzbuzz.input).to eq([])
  end


end

