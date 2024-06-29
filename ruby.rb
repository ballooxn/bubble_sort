

def bubble_sort(array)

    unsorted = 1
    while unsorted != 0 do
        unsorted = 0
        array.each_with_index do |n,i|
            if n == array[-1] then next end
            second_number = array[i+1]
            if n > second_number
                array[i] = second_number
                array[i+1] = n
                unsorted += 1
            end
            #
            #If something needs to be sorted, add one to unsorted.
            #If nothing is unsorted, unsorted should be equal to 0 and the loop should end
        end
    end
    array
end


p bubble_sort([4,3,78,2,0,99])