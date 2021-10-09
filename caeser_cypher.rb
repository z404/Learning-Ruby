def encode_caeser_cypher (plaintext, shift = 3)
    cyphertext = ""
    plaintext.split('').each do |letter|
        cyphertext.concat((letter.ord+shift).chr)
    end
    cyphertext
end 

def decode_caeser_cypher (cyphertext, shift = 3)
    plaintext = ""
    cyphertext.split('').each do |letter|
        plaintext.concat((letter.ord-shift).chr)
    end
    plaintext
end

def encryt_caeser_cypher_letters_only(plaintext, shift = 3)
    cyphertext = ""
    plaintext.split("").each do |letter|
        if letter.ord+shift > 122
            cyphertext.concat((letter.ord + shift - 26).chr)
        elsif letter.ord <= 90 and letter.ord + shift > 90
            cyphertext.concat((letter.ord + shift - 26).chr)
        else
            cyphertext.concat(letter.ord + shift)
        end
    end
    return cyphertext
end


puts encode_caeser_cypher("zanish", 5)
puts decode_caeser_cypher(encode_caeser_cypher("anish", 5), 5)
puts encryt_caeser_cypher_letters_only("zanish", 5)

