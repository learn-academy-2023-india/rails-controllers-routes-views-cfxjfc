class MainController < ApplicationController
    def cubed
        @number = params[:number].to_i
        @result = @number**3
    end
    def evenly
        @num1 = params[:num1].to_i
        @num2 = params[:num2].to_i
        @result = @num1 % @num2 == 0
    end
    def palindrome 
        @word = params[:word]
        @is_palindrome = @word.downcase == @word.downcase.reverse
    end
    def random
        @min = params[:min].to_i
        @max = params[:max].to_i
        @results = rand(@min..@max)
    end
    def madlib
        @noun = params[:noun]
        @verb = params[:verb]
        @adjective = params[:adjective]
        @adverb = params[:adverb]
    end

end
