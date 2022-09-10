math.randomseed( os.time())
-- Goofy Ahh Variables
gameRoundVar = (1)
botAttackChoice = math.random(1, 4)
botLeftChopSticks = (1)
botRightChopSticks = (1)
spacer = (" ")
playerLeftChopSticks = (1)
playerRightChopSticks = (1)

     function showBotChopSticks()
        print(spacer)
        print("Bot's Chopsticks:")
        io.write(botLeftChopSticks)
        io.write(" ")
        io.write(botRightChopSticks)
    
    end

    print("Welcome to Chopsticks!")


    function showPlayerChopsticks()
        print(spacer)
        print("Your Chopstick's:")
        io.write(playerLeftChopSticks)
        io.write(" ")
        io.write(playerRightChopSticks)
    end
    function showPlayerOptions()
        showBotChopSticks()
        print(spacer)
        showPlayerChopsticks()
        print(spacer)
        print("Choices:")
        print("1: Attack Left side with Left side")
        print("2: Attack Left side with Right side")
        print("3: Attack Right Side with Left Side")
        print("4: Attack Right Side with Right Side")
        playerChoice = io.read()
    end
    
    function attackLeftwithLeft()
        botLeftChopSticks = (botLeftChopSticks + playerLeftChopSticks)
        print(playerLeftChopSticks)
    end

    function attackLeftwithRight()
        botLeftChopSticks = (botLeftChopSticks + playerRightChopSticks)
    end

    function attackRightwithLeft()
        botRightChopSticks = (botRightChopSticks + playerLeftChopSticks)
    end

    function attackRightWithRight()
        botRightChopSticks = (botRightChopSticks +  playerRightChopSticks)
    end
    function doPlayerChoiceCalc()

        if playerChoice == ("1") then
            if botLeftChopSticks == 0 then
                print("Can't do that")
            else
                attackLeftwithLeft()
            end 
        end
        if playerChoice == ("2") then
            if botLeftChopSticks == 0 then
                print("Can't do that")
            else
                attackLeftwithRight()
            end
        end
        if playerChoice == ("3") then
            if botRightChopSticks == 0 then
                print("Can't do that")
            else
                attackRightwithLeft()
            end
        end
    end
        if playerChoice == ("4") then
            if botRightChopSticks == 0 then
                print("Can't do that")
            else
                attackRightwithLeft()
            end
        end
    end
    showPlayerOptions()
    function showCurrentBotChopSticks()
        print("Bot's Chopsticks:")
        io.write(botLeftChopSticks)
        io.write(" ")
        io.write(botRightChopSticks)
    end
    function showCurrentPlayerChopSticks()
        print("Player's Chopsticks:")
        io.write(playerLeftChopSticks)
        io.write(" ")
        io.write(playerRightChopSticks)

    end
    showCurrentBotChopSticks()
    
gameRoundVar = (1)
botAttackChoice = math.random(1, 4)
gameRoundVar = (2)



function doBotAttackthenPlayer()
    gameRoundVar = (2)
    if botAttackChoice == 1 then
        playerLeftChopSticks = (playerLeftChopSticks + botLeftChopSticks)
    end
    if botAttackChoice == 2 then
        playerLeftChopSticks = (playerLeftChopSticks + botRightChopSticks)
    end
    if botAttackChoice == 3 then
        playerRightChopSticks = (playerRightChopSticks + botLeftChopSticks)
    end
    if botAttackChoice == 4 then
        playerRightChopSticks = (playerRightChopSticks + botLeftChopSticks)
    end
    showCurrentBotChopSticks()
    gameRoundVar = (1)
    botAttackChoice = math.random(4)
end
--Game clock (what runs the game forever until finished)
while true do
    if gameRoundVar == 2 then
        doBotAttackthenPlayer()
    end
    if gameRoundVar == 1 then
        showBotChopSticks()
        showPlayerOptions()
        doPlayerChoiceCalc()
        gameRoundVar = (2)
    end
    if playerLeftChopSticks >= 5 then
        playerLeftChopSticks = (0)
    end
    if playerRightChopSticks >= 5 then
        playerRightChopSticks = (0)
    end
    if botLeftChopSticks >= 5 then
        botLeftChopSticks = (0)
    end
    if botRightChopSticks >= 5 then
        botRightChopSticks = (0) 
    end 

end
