# Cipher Challenge

# I worked on this challenge [by myself]
# I spent [1] hours on this challenge.

# 1. Solution
# Write your comments on what each thing is doing.
# If you have difficulty, go into IRB and play with the methods.

def dr_evils_cipher(coded_message)
  input = coded_message.downcase.split("") # Check out this method in IRB to see how it works! Also refer to the Ruby docs.
  # it's setting the input to be the coded message that is now lower case and splits each input into a single letter
  decoded_sentence = []
  #setting decoded sentence to be an empty array
  cipher = {"e" => "a",   # This is technically a shift of four letters...Can you think of a way to automate this? Is a hash
            "f" => "b",   # the best data structure for this problem? What are the pros and cons of hashes?
            "g" => "c",
            "h" => "d",
            "i" => "e",
            "j" => "f",
            "k" => "g",
            "l" => "h",
            "m" => "i",
            "n" => "j",
            "o" => "k",
            "p" => "l",
            "q" => "m",
            "r" => "n",
            "s" => "o",
            "t" => "p",
            "u" => "q",
            "v" => "r",
            "w" => "s",
            "x" => "t",
            "y" => "u",
            "z" => "v",
            "a" => "w",
            "b" => "x",
            "c" => "y",
            "d" => "z"}
# This is where the conversions for the code is stored in a hash.
  input.each do |x| # What is #each doing here?
    found_match = false  # Why would this be assigned to false from the outset? What happens when it's true?

    # It is iterating over each item that was in the message to be decoded. It's false because it doesn't match the code that deciphers it. It means that it was the same which can't happen.

    cipher.each_key do |y| # What is #each_key doing here?
      if x == y  # What is this comparing? Where is it getting x? Where is it getting y? What are those variables really?

        # It is iterating over the hash keys. It is comparing the message to be decoded to the key to see what letter it should change it too.

        decoded_sentence << cipher[y]
        found_match = true
        #When they match it's push the new deciphered lettter to the decoded sentence array.
        break  # Why is it breaking here?
        #It's breaking so it can move onto the next letter to decipher.
      elsif x == "@" || x == "#" || x == "$" || x == "%"|| x == "^" || x == "&"|| x =="*" #What the heck is this doing?
        #It's making it so if there is a character that's not a letter it won't change it and just push it into the array.
        decoded_sentence << " "
        found_match = true
        break
      elsif (0..9).to_a.include?(x) # Try this out in IRB. What does   " (0..9).to_a "    do?
        #Similar as before but this is for numbers in an array and will add those as well.
        decoded_sentence << x
        found_match = true
        break
      end
    end
    if not found_match  # What is this looking for?
      decoded_sentence << x
    # If there isn't anything that matches the previous checks it will just add it to decoded sentece.
    end
  end
  decoded_sentence = decoded_sentence.join("")
  #What is this method returning?
# It's returning the decoded sentence and joining everything back together.
end

# Your Refactored Solution

def dr_evils_cipher(coded_message)
  uncoded_message = coded_message.downcase.split("")
  decoded_message = []
  cipher = {"e" => "a",
            "f" => "b",
            "g" => "c",
            "h" => "d",
            "i" => "e",
            "j" => "f",
            "k" => "g",
            "l" => "h",
            "m" => "i",
            "n" => "j",
            "o" => "k",
            "p" => "l",
            "q" => "m",
            "r" => "n",
            "s" => "o",
            "t" => "p",
            "u" => "q",
            "v" => "r",
            "w" => "s",
            "x" => "t",
            "y" => "u",
            "z" => "v",
            "a" => "w",
            "b" => "x",
            "c" => "y",
            "d" => "z"}

  input.each do |uncoded_letter|
    found_match = false

    cipher.each_key do |code_key|
      if x == y
        decoded_message << cipher[code_key]
        found_match = true
        break
      elsif x == "@" || x == "#" || x == "$" || x == "%"|| x == "^" || x == "&"|| x =="*"
        decoded_message << " "
        found_match = true
        break
      elsif (0..9).to_a.include?(x)
        decoded_message << x
        found_match = true
        break
      end
    end
    if not found_match
      decoded_message << x
    end
  end
  decoded_message = decoded_message.join("")

end



# Driver Test Code:
p dr_evils_cipher("m^aerx%e&gsoi!") == "i want a coke!" #This is driver test code and should print true
# Find out what Dr. Evil is saying below and turn it into driver test code as well. Driver test code statements should always return "true."
p dr_evils_cipher("syv%ievpc#exxiqtxw&ex^e$xvegxsv#fieq#airx%xlvsykl$wizivep#tvitevexmsrw.#tvitevexmsrw#e*xlvsykl#k&aivi%e@gsqtpixi&jempyvi.
&fyx%rsa,$pehmiw@erh#kirxpiqir,%ai%jmreppc@lezi&e&asvomrk%xvegxsv#fieq,^almgl^ai^wlepp%gepp@tvitevexmsr^l")
p dr_evils_cipher("csy&wii,@m'zi@xyvrih$xli*qssr$mrxs&alex@m#pmoi%xs#gepp%e^hiexl#wxev.")
p dr_evils_cipher("qmrm#qi,*mj^m#iziv^pswx#csy#m^hsr'x%orsa^alex@m%asyph^hs.
@m'h%tvsfefpc%qszi$sr%erh*kix#ersxliv$gpsri@fyx*xlivi@asyph^fi@e^15&qmryxi@tivmsh%xlivi$alivi*m*asyph&nywx^fi$mrgsrwspefpi.")
p dr_evils_cipher("alc@qeoi*e$xvmppmsr^alir#ai*gsyph%qeoi...#fmppmsrw?")

# Reflection
# Keep your reflection limited to 10-15 minutes!
=begin

 I'm still a little confused on how to do the shift. I have a general idea of how to make my method and I'm gonna need to do more research. Once I figure out that I can than easily change my each do. I'm gonna come back to this to make it a simpler code.


=end