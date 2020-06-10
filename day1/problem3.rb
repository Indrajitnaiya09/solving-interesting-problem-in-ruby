class StringProblem
    def initialize(input_string)
        if input_string.class == String
            @input_string = input_string
            seperate_string_and_number
        else
            "Invalid Input, rather than String, other format not allow!!"
        end
    end

    def input_string
        @input_string || "Please enter a valid format"
    end

    def seperate_string_and_number
        @number = @input_string.gsub(/[^\d]/, '')
        @my_string_array = @input_string.split(@number)
        rev_string(@my_string_array,@number)
    end

    def rev_string(my_string_array, integer_array)
        @return_array = []
        my_string_array.each_with_index do |each_index,index|
            each_index.split("").each_with_index do |ele, index|
                @return_array.unshift(ele)
            end
            if index == 0
                @return_array.unshift(integer_array)
            end
        end
        p @return_array.join("")
    end
end

ob1 = StringProblem.new("hello123world") #expected output -> "dlrow123olleh"
p ob1.input_string


ob1 = StringProblem.new(1)
p ob1.input_string
