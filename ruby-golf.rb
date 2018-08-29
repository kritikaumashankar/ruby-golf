def sum_array(a)
  result = 0
  a.each do |i|
    result =result + i.to_i
  end
  puts result
end

def rockPaperScissors()
  puts "What is your input?"
  str = gets.strip.to_s.capitalize[0]
  arr = ['R','P','S']
  comp_value = arr.sample
  if str == comp_value
      puts "its a tie"
  elsif (str == 'R' && comp_value == 'P') || (str == 'P' && comp_value == 'S') || (str == 'S' && comp_value == 'R')
    puts "Computer Wins!"
  else
    puts "User wins!"
  end
end

def fizzbuzz_func()
  (1..100).each do |i|
    if i% 3 ==0 && i % 5 == 0
      puts "fizzbuzz"
    elsif i %5 == 0
        puts "buzz"
    elsif i%3 == 0 
        puts "fizz"
    else
      puts i
    end
  end
  
end

def multiple_func(num,max_value)
  i=1
  max = max_value / num
  for i in (0..max)
      puts "#{num} * #{i} = #{num *i}"
      i = i+ 1
  end
end

def caesarCipher(str,offset)
  newStr =''
  str.each_byte do |c|
    newStr += (c+offset).chr
  end
  puts "#{newStr}"
end

def stringFunc(str,sub_str)
  count =0
    for s in (0...str.length)
      newStr = str[s..s+sub_str.length-1]
        if newStr.eql? sub_str 
          count= count + 1
      end
    end
    puts "#{count}"  
end

def array_func(arr)
  newArr = []
  temp =''
  i=0
  while i < arr.length
    temp = arr[i][0]
    if(!arr[i+1].nil?)
      arr[i][0] =arr[i+1][0] 
      arr[i+1][0]= temp
    end
        newArr << arr[i]
      i = i+1
  end     
  puts "#{newArr}"
end

def loveTestFunc(str1,str2)
    charArr=[]
        for i in (0...str1.length)
          for j in (0...str2.length)
            if(str1[i]== str2[j])
              charArr.push str1[i]
            end
          end
        end
      charArr = charArr.uniq
    r = (str1.length+str2.length) / charArr.length
  puts "r #{r}"
end

def shoppingList(ar)
  ar = ar.uniq
  ar = ar.sort
  hash = {}
  for i in (1..ar.length)
    hash[i] = ar[i-1]
  end
  puts "#{hash}"
end
#sum_array([1,2,3,4])
rockPaperScissors
#fizzbuzz_func()
#multiple_func(6,300)
#caesarCipher("KRITIKA",4)
#stringFunc("preethee","ee")
#array_func([["A","B"],["C","D"],["E","F"]])
#loveTestFunc("New York".gsub(/\s+/, ""),"New Delhi".gsub(/\s+/, ""))
#shoppingList(['Potato','Banana','Flour','Meat'])
