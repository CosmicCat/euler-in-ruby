#If the numbers 1 to 5 are written out in words: one, two, three, four, five, then there are 3 + 3 + 5 + 4 + 4 = 19 letters used in total.

#If all the numbers from 1 to 1000 (one thousand) inclusive were written out in words, how many letters would be used?

#NOTE: Do not count spaces or hyphens. For example, 342 (three hundred and forty-two) contains 23 letters and 115 (one hundred and fifteen) contains 20 letters. The use of "and" when writing out numbers is in compliance with British usage.

lettersCount = 0
for i in 1..999 do
  numberString = ''
  threeDigits = sprintf("%03d", i)
  # hundreds
  numberString += case threeDigits[0]
    when '0' then ''
    when '1' then 'onehundredand'
    when '2' then 'twohundredand'
    when '3' then 'threehundredand'
    when '4' then 'fourhundredand'
    when '5' then 'fivehundredand'
    when '6' then 'sixhundredand'
    when '7' then 'sevenhundredand'
    when '8' then 'eighthundredand'
    when '9' then 'ninehundredand'
  end

  numberString.gsub!(/and/, '') if threeDigits[1] == '0' && threeDigits[2] == '0'

  theFuckingTeens = false
  numberString += case threeDigits[1]
    when '0' then ''
    when '1' then theFuckingTeens = true ; ""
    when '2' then 'twenty'
    when '3' then 'thirty'
    when '4' then 'forty'
    when '5' then 'fifty'
    when '6' then 'sixty'
    when '7' then 'seventy'
    when '8' then 'eighty'
    when '9' then 'ninety'
  end

  if theFuckingTeens
    numberString += case threeDigits[2]
      when '0' then 'ten'
      when '1' then 'eleven'
      when '2' then 'twelve'
      when '3' then 'thirteen'
      when '4' then 'fourteen'
      when '5' then 'fifteen'
      when '6' then 'sixteen'
      when '7' then 'seventeen'
      when '8' then 'eighteen'
      when '9' then 'nineteen'
    end

  else
    numberString += case threeDigits[2]
      when '0' then ''
      when '1' then 'one'
      when '2' then 'two'
      when '3' then 'three'
      when '4' then 'four'
      when '5' then 'five'
      when '6' then 'six'
      when '7' then 'seven'
      when '8' then 'eight'
      when '9' then 'nine'
    end

  end
#  puts "#{i}: #{numberString}"
  lettersCount += numberString.length
end

puts lettersCount + "onethousand".length
