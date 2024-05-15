class StringCalculator
  def self.add(params_str)
    return 0 if params_str.empty?
    delimiters = /,|\n/
    if params_str.start_with?("//")
      delimiter, params_str = params_str[2..].split("\n", 2)
      delimiters = /#{delimiter}/
    end

    given_inputs = params_str.split(delimiters).map(&:to_i)
    negatives = given_inputs.select { |n| n < 0 }
    raise "negative numbers not allowed #{negatives.join(', ')}" unless negatives.empty?

    result = given_inputs.sum
    return result
  end
end