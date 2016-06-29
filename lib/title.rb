class String
  define_method(:title) do
    input_array = self.split(' ')
    answer_array = []
    input_array.each() do |each_word|
      if (each_word == 'and') || (each_word == 'or') || (each_word == 'but')
        answer_array.push(each_word)
      else
        answer_array.push(each_word.chr.upcase + each_word.slice(1, each_word.length))
      end
    end
    answer_array.join(' ')
  end
end
