def solve_alfametic(puzzle)
    words = puzzle.scan(/[A-Z]+/)
    unique_chars = words.join('').chars.uniq
    first_chars = words.map { |word| word[0] }
  
    (0..9).to_a.permutation(unique_chars.size).each do |permutation|
      char_to_digit = unique_chars.zip(permutation).to_h
      next if char_to_digit[first_chars[0]] == 0 || char_to_digit[first_chars[1]] == 0 || char_to_digit[first_chars[2]] == 0
  
      numbers = words.map { |word| word.chars.map { |char| char_to_digit[char] }.join.to_i }
      sum = numbers[0..-2].sum
  
      if sum == numbers.last
        result = char_to_digit.transform_values(&:to_s)
        return result
      end
    end
  
    nil
  end
  
  # Exemplo de uso
  puzzle = "SEND + MORE = MONEY"
  solution = solve_alfametic(puzzle)
  
  if solution
    puts "Solução encontrada:"
    puts solution
  else
    puts "Não foi encontrada uma solução."
  end
  