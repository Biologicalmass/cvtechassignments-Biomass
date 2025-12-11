import random
  #opens file called words, and reads the file while beriding itself of whitespace
def file(name = "words.txt"):
    with open(name, "r") as words:
        newword = words.read().split()
        return newword
    #Makes a random wordchoice from wlist, which is variable for file()
def ranword(wlist):
        return random.choice(wlist)
#The game begins
def game():
    #Makes file() = a variable
    wlist = file()
    #Declares the chosen word
    chosen_word = ranword(wlist).lower()
    #makes an empty set so no multiple letters are guessed
    guessed_letter = set()
    incorrect_guess = 0
    max_incorrect_guess = 6

    print("Hi bozo, welcome to word guessum game!")

    #so it goes forever until break happens
    while True:

        #says to add a char if char is inside of guessed letter otherwise make the char an underscore for letters in chosen word
        display = "".join([char if char in guessed_letter else "_" for char in chosen_word])

        #Starts new line, and shows us the chosen word while underscored, and/or if completed the full word
        print(f"\nWord is: {display}")

        #shows you how many tries you have left, I tried to do it "you have _ chances" but it didn't work out
        print(f"You have guessed {incorrect_guess}/{max_incorrect_guess} times incorrectly")


        #You win when underscores are all gone
        if "_" not in display:
             print("You won, now go tacobell ur pants")
             break
        #You lose when your incorrect guesses equal the maximum guesses given.
        if incorrect_guess >= max_incorrect_guess:
             print(f"You lose bozo, '+L Ratio' the real word was {chosen_word} ")
             break


        #The guess itself
        guess = input("Guess a Letter: ").lower()


        #If the length of the guess isn't one character or isn't a letter from the alphabet run this, and continue
        if len(guess) !=1 or not guess.isalpha():
             print("daz a wrong input an you knows it.")
             continue
        #If you have already guessed a letter then do this and continue
        if guess in guessed_letter:
            print("you guessed that already.")
            continue


        #Add guessed letter to guess which also alters the display in real time
        guessed_letter.add(guess)


        #If you add a correct letter it says your correct
        if guess in chosen_word:
             print("Bozo is correct")
        else:
            #If it isn't correct, it tells you you're wrong and then adds a score to your incorrect guesses.
             print("Wrong guess  Bozo")
             incorrect_guess += 1


game()