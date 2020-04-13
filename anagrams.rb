require"byebug"
def anagrams_1(word,list) 
    
    array = word.chars.permutation.to_a # O(
        #array = word.chars
            #array = word.each_char {|char| arr << char} O(n)
            #


    array.include?(list.chars)

end #O(n!)


#O(n) + O(n) = 2 * O(n) == 0(n)
#arr1 .each do + 3
#arr1.each do - 4
#1..2..3..4..5
#4  5  6  7  8
#0  1  2  3  4

#O(n) * O(n) == O(n^2)
#arr1.each do |idx|
#   (idx...arr1.legnth) do |idx2|
#[1,2,3,4,5]
#  arr<< num[idx] + num{idx2}
#[1,1] [1,2] [1,3] [1,4] [1,5]
#[2,2] ,[2,2], [2,3], [2,4] [2,5]
#[3,3], [3,4] , [3,5]
#[4,4], [4,5]


# def permutations(arr) #O(n!)
#     return arr if arr.length <= 1 #O(n)

#     last_letter = arr.pop #0(n)
#     permed = permutations(arr) # (n^7) * (n^7) * (n^7) .. we reach our base case. O(n!)
#     new_perms = [] #O(1)

#     permed.each.with_index do |var,x| #O(n^6) ||(n^7)
#         (0...bad_variable_name_x.length).each do |y| #O(n^2) || (n^3)
#             new_perms << var[x...y] + [last_letter] + var[y..-1] #(0(n) + O(1) + O(n)) = O(n)
#         end
#     end

#     new_perms
# end






def second_anagram?(word, other_word)
    other = other_word.split("") #O(n)

    word.each_char do |el| #O(n^2)

        if other.include?(el)#O(n)
            other.delete_at(other.index(el)) #O(n)
        end
    end
    other.empty?
end #O(n^2)

def third_anagram(word, other_word)
    word.chars.sort == other_word.chars.sort 
end 
