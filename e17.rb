#If the numbers 1 to 5 are written out in words: one, two, three, four, five, then there are 3 + 3 + 5 + 4 + 4 = 19 letters used in total.

#If all the numbers from 1 to 1000 (one thousand) inclusive were written out in words, how many letters would be used?

#NOTE: Do not count spaces or hyphens. For example, 342 (three hundred and forty-two) contains 23 letters and 115 (one hundred and fifteen) contains 20 letters. The use of "and" when writing out numbers is in compliance with British usage.

lettersCount = 0
for i in 1..999 do
  threeDigits = sprintf("%03d", i)
  # hundreds
  lettersCount += case threeDigits[0]
    when '0' then 0
    when '1' then 'onehundredand'.length
    when '2' then 'twohundredand'.length
    when '3' then 'threehundredand'.length
    when '4' then 'fourhundredand'.length
    when '5' then 'fivehundredand'.length
    when '6' then 'sixhundredand'.length
    when '7' then 'sevenhundredand'.length
    when '8' then 'eighthundredand'.length
    when '9' then 'ninehundredand'.length
  end

  theFuckingTeens = false
  lettersCount += case threeDigits[1]
    when '0' then 0
    when '1' then theFuckingTeens = true ; 0
    when '2' then 'twenty'.length
    when '3' then 'thirty'.length
    when '4' then 'fourty'.length
    when '5' then 'fifty'.length
    when '6' then 'sixty'.length
    when '7' then 'seventy'.length
    when '8' then 'eighty'.length
    when '9' then 'ninety'.length
  end

  if theFuckingTeens
    lettersCount += case threeDigits[2]
      when '0' then 'ten'.length
      when '1' then 'eleven'.length
      when '2' then 'twelve'.length
      when '3' then 'thirteen'.length
      when '4' then 'fourteen'.length
      when '5' then 'fifteen'.length
      when '6' then 'sixteen'.length
      when '7' then 'seventeen'.length
      when '8' then 'eighteen'.length
      when '9' then 'nineteen'.length
    end

  else
    lettersCount += case threeDigits[1]
      when '0' then 0
      when '1' then 'one'.length
      when '2' then 'two'.length
      when '3' then 'three'.length
      when '4' then 'four'.length
      when '5' then 'five'.length
      when '6' then 'six'.length
      when '7' then 'seven'.length
      when '8' then 'eight'.length
      when '9' then 'nine'.length
    end

  end
end

puts lettersCount + "onethousand".length
