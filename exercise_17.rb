def reverse_array(array)
    x = []
    i = 0
    len = array.length
    loop do
        i = i + 1
        x.push(array.pop)
        break if i == len
    end
    print x
end 
reverse_array([1,2,3,4,5])