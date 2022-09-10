math.randomseed( os.time())
-- Goofy Ahh Variables
gameRoundVar = (1)
botAttackChoice = math.random(1, 4)
botLeftChopSticks = (1)
botRightChopSticks = (1)
spacer = (" ")
playerLeftChopSticks = (1)
playerRightChopSticks = (1)

-- Main Game Functions

function doPlayerChoiceCalc()
    if playerChoice == ("1") then
        if botLeftChopSticks == 0 then
            print("Can't do that")
        else
            attackLeftwithLeft()
            print(botLeftChopSticks)
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
    if playerChoice == ("4") then
        if botRightChopSticks == 0 then
            print("Can't do that")
        else
            attackRightwithLeft()
        end
    end
end
    -- Show Bot and Player Chopsticks (these functions are not called directly but instead via other functions)
     function showBotChopSticks()
        print(spacer)
        print("Bot's Chopsticks:")
        io.write(botLeftChopSticks)
        io.write(" ")
        io.write(botRightChopSticks)
    
    end

     function showPlayerChopsticks()
        print(spacer)
        print("Your Chopstick's:")
        io.write(playerLeftChopSticks)
        io.write(" ")
        io.write(playerRightChopSticks)
    end

    -- Player Move Controls (One of the final functions called in the game clock)
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
        doPlayerChoiceCalc()
        botAttackTask()
    end

    -- Player Attack Functions

    function attackLeftwithLeft()
        botLeftChopSticks = botLeftChopSticks + playerLeftChopSticks
    end

    function attackLeftwithRight()
        botLeftChopSticks = botLeftChopSticks + playerRightChopSticks
    end

    function attackRightwithLeft()
        botRightChopSticks = botRightChopSticks + playerLeftChopSticks
    end

    function attackRightWithRight()
        botRightChopSticks = botRightChopSticks +  playerRightChopSticks
    end

    -- Bot Attack Functions

    function botAttackLeftWithLeft()
        playerLeftChopSticks = botLeftChopSticks + playerLeftChopSticks
    end
    
    function botAttackLeftWithRight()
        playerLeftChopSticks = botRightChopSticks + playerLeftChopSticks
    end
    
    function botAttackRightWithLeft()
        playerRightChopSticks = botLeftChopSticks + playerRightChopSticks
    end

    function botAttackRightWithRight()
        playerRightChopSticks = botRightChopSticks + playerRightChopSticks
    end

-- Bot Move Task (Final function in game clock)
    
    function botAttackTask()
        if botAttackChoice == (1) then
            if playerLeftChopSticks == ("0") then
                
            else
                botAttackLeftWithLeft()
            end
        end
        if botAttackChoice == (2) then
            if playerLeftChopSticks == ("0") then

            else 
                botAttackLeftWithRight()
            end
        end
        if botAttackChoice == (3) then
            if playerRightChopSticks == ("0") then
                
            else
                botAttackRightWithLeft()
            end
        end
        if botAttackChoice == (4) then
            if playerRightChopSticks == ("0") then

            else
                botAttackRightWithRight()
            end
        end
        botAttackChoice = math.random(1, 4)
    end


-- Starting Print 

print("Welcome to Chopsticks!")

-- Game Clock (what runs the game forever until finished)
while true do
    if gameRoundVar == gameRoundVar then
        showPlayerOptions()
        gameRoundVar = (gameRoundVar + 1)
    end

    -- Declare hand as dead

    if playerLeftChopSticks >= 5 then
        playerLeftChopSticks = (0)
        print("Your Left Hand Is Dead!")
    end
    if playerRightChopSticks >= 5 then
        playerRightChopSticks = (0)
        print("Your Right Hand Is Dead!")
    end
    if botLeftChopSticks >= 5 then
        botLeftChopSticks = (0)
        print("Bots Left Hand Is Dead!")
    end
    if botRightChopSticks >= 5 then
        botRightChopSticks = (0) 
        print("Bots Right Hand Is Dead!")
    end 
    
    if playerLeftChopSticks + playerRightChopSticks == (0) then
        print("Games Over. You Lost! Bot Won!")
        break
    else 

    end

    if botLeftChopSticks + botRightChopSticks == (0) then
        print("Games Over. You Won! Bot Lost!")
        break
    else

    end
end
