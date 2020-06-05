def caesar_cipher
    puts "Please enter your text"
    my_string= gets.chop
    puts "Please enter the shifting factor"
    shifting_factor=gets.chop.to_i
    my_array=my_string.bytes
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