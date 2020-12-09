def caesar_cipher(textline, factor)
    new_array = (textline.bytes).map do |element|
        if element >=97 && element<=122
            element += factor
            element-=26 if element>122
            element+=26 if element<97
        elsif element>=65 && element<=90
            element+= factor
            element-=26 if element>90
            element+=26 if element<65
        elsif element>=48 && element<=57
            element+= factor
            element-=10 if element>57       
            element+=10 if element<48
        end
        element.chr
    end
    puts "the original text is #{textline}"
    puts "the crypted text is #{new_array.join}"
    return new_array.join
end
caesar_cipher("omar", 5)