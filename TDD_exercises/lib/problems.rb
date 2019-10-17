require "byebug"
class Array

    def my_unique
        new_arr = []
        self.each { |ele| new_arr << ele unless new_arr.include?(ele) }
        new_arr
    end

    def two_sum
        new_arr = []
        self.each_with_index do |ele, i|
            (i+1...self.length).each do |j|
                if j > i  
                   new_arr << [i,j] if self[i] + self[j] == 0
                end
            end
        end
        new_arr
    end

    def my_transpose
        super_arr = []
        #[[0,1,2],[3,4,5],[6,7,8]]
        (0...first.length).each do |i|
            subarray = []            
            length.times do |j|
                subarray << self[j][i]
            end
            super_arr << subarray
        end
        super_arr  
    end

    def stock_picker
        [index(min), index(max)]
    end

    

end