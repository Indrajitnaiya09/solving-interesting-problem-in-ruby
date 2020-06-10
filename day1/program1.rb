class ArrayProblem
    def initialize(array)
        if array.class == Array
            @input_array = array
            check_uniqueness
        else
           p "Invalid entry, please pass an array"
        end
    end
    def input_array
        @input_array || "I'm not initailize yet!!"
    end
    def check_uniqueness
        @unique_array = []
        @input_array.each do |each_index|
            if each_index.class == Array
                remove_wrapper(each_index)
            elsif each_index.class == Integer
                check_invalid_entry(each_index)
            elsif each_index.class == String
                check_invalid_entry(each_index)
            else
                p "#{each_index.class} format is not allowed"
                break
            end
        end
    end
    def check_invalid_entry(each_index)
        if @unique_array.include? each_index
        else
            @unique_array << each_index
        end
    end
    def remove_wrapper(each_index)
        each_index.each do |inner_index|
            if inner_index.class == Array
                remove_wrapper(inner_index)
            else
                check_invalid_entry(inner_index)
            end
        end
    end
    def display_result
        @unique_array
    end
end

ob1 = ArrayProblem.new([[1,2,3], "Hello", "1", 1, 4])
print "Input -> #{ob1.input_array} \n"
print "Output -> #{ob1.display_result} \n"

ob2 = ArrayProblem.new("passing string")
print "Input -> #{ob2.input_array} \n"
print "Output -> #{ob2.display_result} \n"

ob3 = ArrayProblem.new([[1,2,3], "Hello", "1", 1, 4, {"name" => "Indrajit"}])
print "Input -> #{ob3.input_array} \n"
print "Output -> #{ob3.display_result} \n"

ob4 = ArrayProblem.new([[1,2,3], "Hello", "1", 1, 4, [[[[5,6,7,"world"]]]]])
print "Input -> #{ob4.input_array} \n"
print "Output -> #{ob4.display_result} \n"