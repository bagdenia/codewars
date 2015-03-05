# question
# Santa is handing out gifts in the kindergarten. Many toddlers are around there and everyone should have the opportunity to have a seat on Santa's lap. But there's Peter, a 5 year old boy, who is a bit naughty. He tries to get two gifts. After he got the first one, he lines up again in the queue of children.
#
# But fortunately Santa is not alone. His elves keep a list with the names of the children, which already were on Santa's lap. We know, that each child name is unique. If a child tries to get a second gift, the elves will tell Santa.
#
# OK, let's help Santa and his elves with a simple function handOutGift() (hand_out_gift in Ruby) which takes the name of the next child. If this child already got a gift, it must throw an error in order to remind Santa.
#
# Ruby Example
#
# hand_out_gift("Peter");
# hand_out_gift("Alison");
# hand_out_gift("John");
# hand_out_gift("Maria");
# hand_out_gift("Peter"); // <-- must throw an error

Ary = Array.new

def hand_out_gift(name)
  
  if Ary.include?(name)
    raise "//"
  else
    Ary.push(name)
    true
  end
end

# tests
hand_out_gift("Peter")
hand_out_gift("Alison")
hand_out_gift("John")
hand_out_gift("Maria")
hand_out_gift("Peter")

# best practice
def hand_out_gift(name)
  @names ||= []
  raise if @names.include? name
  @names << name
end