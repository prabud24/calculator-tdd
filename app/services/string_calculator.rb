class StringCalculator
  def self.add(params_str)
    return 0 if params_str.empty?

    if params_str.start_with?("//")
      delimiter, params_str = params_str[2..].split("\n", 2)
      delimiters = /#{delimiter}/
    else
      delimiters = /,|\n/
    end

    given_inputs = params_str.split(delimiters).map(&:to_i)
    negatives = given_inputs.select { |n| n < 0 }
    raise "negative numbers not allowed #{negatives.join(', ')}" unless negatives.empty?

    result = given_inputs.sum
    return result
  end
end