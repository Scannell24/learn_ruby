class Book

  def title
    @title
  end

  def title=(title)
    noCaps = ["for", "and", "the", "nor", "but", "or", "yet", "so", "a", "an", "in", "of"]
    words = title.split(/\W+/)
    words[0] = words[0].capitalize

    #go through list of words
    for i in 1..words.length-1 do
     word = words[i].clone

     if(!noCaps.include? word)
       words[i] = words[i].capitalize
     end
    end

    puts words.join(' ')
    @title = words.join(' ')
  end

end
