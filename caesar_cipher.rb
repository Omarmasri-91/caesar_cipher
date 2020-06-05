def caesar_cipher
    puts "Please enter your text"
    my_string= gets.chop
    puts "Please enter the shifting factor"
    shifting_factor=gets.chop.to_i
    my_array=my_string.split("")
    new_char_ord=""
    new_array=[]
    my_array.each_with_index do |char, i|
        if char.ord>=97 && char.ord<=122
            new_char_ord=char.ord+shifting_factor
            if new_char_ord>122
                new_char_ord-=26
            elsif new_char_ord<97
                new_char_ord+=26
            end
        elsif char.ord>=65 && char.ord<=90
            new_char_ord=char.ord+shifting_factor
            if new_char_ord>90
                new_char_ord-=26
            elsif new_char_ord<65
                new_char_ord+=26
            end
        elsif char.ord>=48 && char.ord<=57
            new_char_ord=char.ord+shifting_factor
            if new_char_ord>57
                new_char_ord-=10
            elsif new_char_ord<48
                new_char_ord+=10
            end
        else new_char_ord=char.ord
        end
        new_array[i]=new_char_ord.chr
    end
    puts "the original text is #{my_string}"
    puts "the crypted text is #{new_array.join}"
return new_array.join
end
caesar_cipher

#_____

def caesar_cipher
    puts "Please enter your text"
    my_string= gets.chop
    puts "Please enter the shifting factor"
    shifting_factor=gets.chop.to_i
    my_array=my_string.bytes                        # bytes find the code of each character and return as an array
    new_array= my_array.map do |char|
        if char>=97 && char<=122
            char=char+shifting_factor
            if char>122
                char-=26
            elsif char<97
                char+=26
            end
        elsif char>=65 && char<=90
            char=char+shifting_factor
            if char>90
                char-=26
            elsif char<65
                char+=26
            end
        elsif char>=48 && char<=57
            char=char+shifting_factor
            if char>57
                char-=10
            elsif char<48
                char+=10
            end
        else char
        end
        char=char.chr
    end
    puts "the original text is #{my_string}"
    puts "the crypted text is #{new_array.join}"
return new_array.join
end
caesar_cipher