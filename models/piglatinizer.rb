class PigLatinizer

    def piglatinize(phrase)
        phrase.split.map do |word|
            convert_word(word)
        end.join(" ")
    end

    def convert_word(word)
        start = strip_off_starting_consonants(word)

        if start.length > 0 && start[0].length > 0 then
            cons = word[0, start[0].length]
            word[cons.length, word.length-cons.length] + cons + "ay"
        else
            word + "way"
        end
    end

    def strip_off_starting_consonants(word)
        word.downcase.split(/[aeiou]/)
    end
end