class Power
  def power(x,y)
    return 1 if y == 0
    result = 1
    if y > 0
      while y > 0
        result = result * x
        y -= 1
      end
      return result
    elsif y < 0
      while y < 0
        result = result * x
        y += 1
      end
      return (1.to_f/result.to_f)
    end
  end
end