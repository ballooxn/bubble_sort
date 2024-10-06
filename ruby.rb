def bubble_sort(arr)
  sorted = false
  until sorted
    sorted = true
    arr.each_with_index do |num, index|
      next if arr[-1] == num

      next_num = arr[index + 1]
      next unless num > next_num

      arr[index + 1] = num
      arr[index] = next_num
      sorted = false
    end
  end
  arr
end

p bubble_sort([4, 3, 78, 2, 0, 2])
