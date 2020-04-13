# $list = [ 0, 3, 5, 4, -5, 10, 1, 90]
# $list = [5,3,-7]
$list = [2, 3, -6, 7, -6, 7]
require "byebug"

def min_1 #(list) 
    least = $list[0]

    $list.each do |num1| 
        $list.each do |num2|
            least = num1 if num1 < num2 && num1 < least
        end
    end
    
    least
end #O(n^2)

def min2
    least = $list[0]

    (0...$list.length - 1).each do |idx|
        num1 = $list[idx]
        num2 = $list[idx + 1]
        least = num1 if num1 < num2 && num1 < least
    end 
least
end #O(n)

def quad_subsum
    result = $list[0]
    (0...$list.length).each do |idx1|
        subsum = $list[idx1]
        (idx1...$list.length).each do |idx2|  
            subsum += $list[idx2] unless idx1 == idx2
            result = subsum if subsum > result
        end 
    end 
result 
end

def poly_subsum
    sub_arrs = [] #O(1)

    (0...$list.length).each do |idx1| #O(n)
        (idx1...$list.length).each do |idx2| #O(n)
            sub_arrs << $list[idx1..idx2] #O(logn)?
        end 
    end 

    sub_arrs.map! { |el| el.sum } #O(n)
    sub_arrs.max #O(n)
end #O(n^n) || O(n logn)

def linear_subsum
    max = $list[0]
    sum = $list[0] 

    (0...$list.length - 1).each do |idx|
        num1 = $list[idx + 1]
        # debugger 
        sum += num1 
        sum = 0 if sum < 0
        max = sum if sum > max
    end

    max

end