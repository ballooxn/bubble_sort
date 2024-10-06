def bubble_sort(arr)
  sorted = false
  changed = false
  until sorted
    arr.each_with_index do |num, index|
      next if arr[-1] == num

      next_num = arr[index + 1]
      next unless num > next_num

      arr[index + 1] = num
      arr[index] = next_num
      changed = true
    end
    sorted = true unless changed
    changed = false
  end
  arr
end

p bubble_sort([4, 3, 78, 2, 0, 2])
