class Backpack
  def initialize(attributes)
    @attributes = attributes # a hash containing day_of_week and weather keys
    @items = []
    prepare
  end

  def items
    @items
  end


  def appropriate_clothes
    weather = @attributes[:weather]
    day_of_week = @attributes[:day_of_week]
      if weather == 'rainy'
        @items << 'pants'
        @items << 'shirt'
        @items << 'umbrella'
      elsif weather == 'cold'
        @items << 'pants'
        @items << 'shirt'
        @items << 'jacket'
      else
        @items << 'pants'
        @items << 'shirt'
      end
  end

  def ensure_gym_shoes
    weather = @attributes[:weather]
    day_of_week = @attributes[:day_of_week]
    if day_of_week == 'monday' || day_of_week == 'thursday'
      @items << 'gym shoes'
    end
  end

  def ensure_packed_lunch
    weather = @attributes[:weather]
    day_of_week = @attributes[:day_of_week]
    if day_of_week != 'saturday' && day_of_week != 'sunday'
      @items << 'packed lunch'
    end
  end

  def ensure_snacks_weekend
    weather = @attributes[:weather]
    day_of_week = @attributes[:day_of_week]
    if day_of_week == 'saturday' || day_of_week == 'sunday'
      @items << 'snacks'
    end
  end

  def prepare
    appropriate_clothes
    ensure_gym_shoes
    ensure_packed_lunch
    ensure_snacks_weekend
  end

  def packing_list
    output = []
    output << "Melinda, here's your packing list!"
    output << "Day: #{@attributes[:day_of_week]}, Weather: #{@attributes[:weather]}"
    output << ""

    @items.each do |item|
      output << "- #{item}"
    end
    output.join("\n")
  end

end
