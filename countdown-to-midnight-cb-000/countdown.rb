#write your code here

def countdown(int)
  while int > 0
    puts "#{int} SECOND(S)!"
    int -= 1
  end
  "HAPPY NEW YEAR!"
end

def countdown_with_sleep(int)
  while int > 0
    puts "#{int} SECOND(S)!"
    int -= 1
    sleep(0.99999)
  end
  "HAPPY NEW YEAR!"
end
