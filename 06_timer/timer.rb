class Timer
  #write your code here
  def initialize
    @seconds = 0
    #@time_string = "00:00:00"
  end

  def seconds
    @seconds
  end

  def time_string
    @time_string
  end

  def seconds=(seconds)
    @seconds = seconds
    words = ["","",""]
    carry = seconds

    #go through the seconds, minutes, hours
    for i in 0..1 do
      seconds = carry
      carry = 0

      while seconds >= 60 do
        seconds-=60
        carry+=1
      end

      if seconds < 10
        words[i] << "0"
      end

      words[i] << seconds.to_s
    end

    while carry >= 24 do
      carry-=24
    end

    if carry < 10
      words[2] << "0"
    end

    words[2] << carry.to_s
    words = words.reverse

    @time_string = words.join(":")
  end
end
