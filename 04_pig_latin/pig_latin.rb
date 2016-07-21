#write your code here

def translate(var)
  #split up string into array of words
  words = var.split(/\W+/)

  #go through list of words
  for i in 0..words.length-1 do
    conCount = 0
    searching = true
    word = words[i].clone

    for j in 0..word.length-1 do
      if(searching)
        if(word[j] =~ /\A[^aeiou]/)
          if(word[j] =~ /\A[q]/)
            conCount = conCount+=2
            searching = false
          else
            conCount+=1
          end
        else
          searching = false;
        end
      end
    end

    puts "wordLength = #{word.length}"
    puts "conCount = #{conCount}"
    puts word

    for j in 0..word.length-1 do
      index = j+conCount
      if index >= word.length
        index -= word.length
      end

      words[i][j] = word[index]
      puts "#{words[i]}  i = #{index} #{j} #{word.length}"
    end

    words[i].concat("ay")
  end

  puts words.join(' ')
  return words.join(' ')
end
