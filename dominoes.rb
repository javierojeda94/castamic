def dominoes
  dominoes_array = []
  (0..6).each do |first_number|
    (0..first_number).each do |second_number|
      dominoes_array << [first_number, second_number]
    end
  end
  dominoes_array
end

p dominoes
