#colours = ["blue", "red", "yellow", "purple", "black", "grey", "orange", "green", "pink"]

gameDone = false
counter = 1
computer =  ["blue", "red", "yellow", "purple"]

def check(guess ,answer, gameDone)
    count = 0

    guess.each_with_index do |guess, index|
        if answer.include?(guess)
            if answer.index(guess) == index
                count += 1
                puts "#{guess} is in right place"
            else
                puts "#{guess} is the right colour wrong place"
            end
        else
            puts "#{guess} is not one of the colour "
        end
    end

    if count == 4
        puts "\nYou have won!!!!"
        return gameDone = true
    end
    return gameDone = false
end



puts "you have a total of 12 guesses"
while gameDone == false
    if counter <= 12
        puts "\nenter your guess include spaces between each answer, this is #{counter} out of 12 guesses"
        userGuess=gets.chomp
        userGuess= userGuess.split(" ")

        gameDone = check(userGuess, computer, gameDone)

    else
        puts "you have lost the correct answers was"
        puts computer.inspect
        gameDone = true
    end
    counter += 1
end
