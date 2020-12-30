def binary_search(arr, value)
  floor = 0
  ceiling = arr.length - 1
  counter = 0
  winner = nil
  while floor <= ceiling
    counter +=1
    guess = (floor + ceiling)/ 2
    print "Attempt #{counter}: "
    if arr[guess] == value
      winner = guess
      puts "Index ##{guess} is right!"
      break
    elsif arr[guess] < value
      puts "Too low. Guess higher."
      floor = guess + 1
    else
      puts "Too high. Guess lower."
      ceiling = guess - 1
    end
  end
  
  puts "Your number is not in array" unless winner
end