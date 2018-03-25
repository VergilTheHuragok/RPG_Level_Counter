math.randomseed(os.time())
print("Munchkin Level Counter")
io.read()
level = 1
gear = 0
oneshot = 0
against = 0
enemyl = 0
enemye = 0
enemys = 0
runaway = 2
enemyr = 0
fast = 0
slow = 0
tempr = 0
nope = "n"
runawayt = 0
enemys = enemyl + enemye
print("Help on or off?")
print("(\"y\":On)(\"n\":Off)")
help = io.read()
if help == "y" then
   print("Help is on.")
   io.read()
else
   print("Help if off.")
   io.read()
   help = "n"
end
print("What gender are you?")
if help == "y" then
   print("(\"m\":Man)(\"w\":Woman)")
end
gender = io.read()
if gender == "w" then
   print("You are a woman.")
   io.read()
else
   print("You are a man.")
   io.read()
   gender = "m"
end
function lose()
   print("You lost!")
   io.read()
   print("Run away?")
   if help == "y" then
      print("(\"y\":Yes)(\"n\":No)")
   end
   run = io.read()
   if run == "y" then
      repeat
         roll = math.random(1,6)
         print("You rolled a "..roll..".")
         print("Reroll?")
         if help == "y" then
            print("(\"y\":Yes)(\"n\":No)")
         end
         reroll = io.read()
      until reroll ~= "y"
      if roll >= 7 - runawayt then
         print("You escaped!")
         io.read()
      else
         print("You were caught!")
         print("Prepare to do the badstuff!")
         io.read()
      end
   end
end
function stats()
   runawayt = runaway + fast + enemyr + tempr - slow
   if runawayt > 5 then
      runawayt = 5
   elseif runawayt < 1 then
      runawayt = 1
   end
   strength = level + gear + oneshot - against
   print("Combat Strength: "..strength)
   print("~~~~~~~~~~~~~~~")
   print("level: "..level)
   print("Gear: "..gear)
   print("Oneshot: "..oneshot)
   print("Against: "..against)
   print("...............")
   print("Run Away Roll: "..7 - runawayt.."+")
   print("Slow: ".. slow)
   print("Fast: "..fast)
   print("Temperary Run Away: "..tempr)
   print("..............")
   if gender == "m" then
      print("Man")
   else
      print("Woman")
   end
   if warrior == "y" then
      print("Warrior")
   end
end
function info()
   repeat
      stats()
      io.read()
      print("Change your stats?")
      if help == "y" then
         if help == "y" then
            print("(\"l\":Level)(\"ge\":Gender)(\"g\":Gear)(\"f\":Fast)(\"s\":Slow)(\"w\":Warrior)(\"t\":Temp. Run)(\"o\":Oneshot)(\"a\":Against)")
         end
      end
      change = io.read()
      if change == "l" then
         print("Up or down?")
         if help == "y" then
            print("(\"u\":Up)(\"d\":Down)")
         end
         new = io.read()
         if new == "u" then
            print("You Leveled up!")
            io.read()
            level = level + 1
         elseif new == "d" then
            print("Haha, You lost a level.")
            io.read()
            level = level - 1
         else
            print("Invalid choice.")
            io.read()
         end
      elseif change == "ge" then
         print("What gender are you?")
         if help == "y" then
            print("(\"m\":Man)(\"w\":Woman)")
         end
         gender = io.read()
         if gender == "w" then
            print("You are a woman.")
            io.read()
         else
            print("You are a man.")
            io.read()
            gender = "m"
         end
      elseif change == "g" then
         print("Up or Down?")
         if help == "y" then
            print("(\"u\":Up)(\"d\":Down)")
         end
         new = io.read()
         if new == "u" then
            print("How much?")
            if help == "y" then
               print("([#]:Amount)")
            end
            diff = io.read()
            gear = gear + diff
            print("Your gear is now "..gear..".")
            io.read()
         elseif new == "d" then
            print("How much?")
            if help == "y" then
               print("([#]:Amount)")
            end
            diff = io.read()
            gear = gear - diff
            print("Your gear is now "..gear..".")
            io.read()
         else
            print("Invalid choice.")
            io.read()
         end
      elseif change == "f" then
         print("Up or Down?")
         if help == "y" then
            print("(\"u\":Up)(\"d\":Down)")
         end
         new = io.read()
         if new == "u" then
            print("How much?")
            if help == "y" then
               print("([#]:Amount)")
            end
            diff = io.read()
            fast = fast + diff
            print("Your fast is now "..fast..".")
            io.read()
         elseif new == "d" then
            print("How much?")
            if help == "y" then
               print("([#]:Amount)")
            end
            diff = io.read()
            fast = fast - diff
            print("Your fast is now "..fast..".")
            io.read()
         else
            print("Invalid choice.")
            io.read()
         end
      elseif change == "s" then
         print("Up or Down?")
         if help == "y" then
            print("(\"u\":Up)(\"d\":Down)")
         end
         new = io.read()
         if new == "u" then
            print("How much?")
            if help == "y" then
               print("([#]:Amount)")
            end
            diff = io.read()
            slow = slow + diff
            print("Your slow is now "..slow..".")
            io.read()
         elseif new == "d" then
            print("How much?")
            if help == "y" then
               print("([#]:Amount)")
            end
            diff = io.read()
            slow = slow - diff
            print("Your slow is now "..slow..".")
            io.read()
         else
            print("Invalid choice.")
            io.read()
         end
      elseif change == "w" then
         print("Are you a warrior?")
         if help == "y" then
            print("(\"y\":Yes)(\"n\":No)")
         end
         warrior = io.read()
         if warrior ~= "y" then
            warrior = "n"
            print("You are not a warrior.")
            io.read()
         else
            print("You are now a warrior.")
            io.read()
         end
      elseif change == "t" then
         print("Up or Down?")
         if help == "y" then
            print("(\"u\":Up)(\"d\":Down)")
         end
         new = io.read()
         if new == "u" then
            print("How much?")
            if help == "y" then
               print("([#]:Amount)")
            end
            diff = io.read()
            tempr = tempr + diff
            print("Your temparary run away is now "..tempr..".")
            io.read()
         elseif new == "d" then
            print("How much?")
            if help == "y" then
               print("([#]:Amount)")
            end
            diff = io.read()
            tempr = tempr - diff
            print("Your temparary run away is now "..tempr..".")
            io.read()
         else
            print("Invalid choice.")
            io.read()
         end
      elseif change == "o" then
         print("Up or Down?")
         if help == "y" then
            print("(\"u\":Up)(\"d\":Down)")
         end
         new = io.read()
         if new == "u" then
            print("How much?")
            if help == "y" then
               print("([#]:Amount)")
            end
            diff = io.read()
            oneshot = oneshot + diff
            print("Your oneshot is now "..oneshot..".")
            io.read()
         elseif new == "d" then
            print("How much?")
            if help == "y" then
               print("([#]:Amount)")
            end
            diff = io.read()
            oneshot = oneshot - diff
            print("Your oneshot is now "..oneshot..".")
            io.read()
         else
            print("Invalid choice.")
            io.read()
         end
      elseif change == "a" then
         print("Up or Down?")
         if help == "y" then
            print("(\"u\":Up)(\"d\":Down)")
         end
         new = io.read()
         if new == "u" then
            print("How much?")
            if help == "y" then
               print("([#]:Amount)")
            end
            diff = io.read()
            against = against + diff
            print("Your against is now "..against..".")
            io.read()
         elseif new == "d" then
            print("How much?")
            if help == "y" then
               print("([#]:Amount)")
            end
            diff = io.read()
            against = against - diff
            print("Your against is now "..against..".")
            io.read()
         else
            print("Invalid choice.")
            io.read()
         end
      else
         nope = "y"
      end
      if nope == "n" then
         print("More?")
         if help == "y" then
            print("(\"y\":Yes)(\"n\":No)")
         end
         again = io.read()
      else
         again = "n"
         nope = "n"
      end
   until again ~= "y"
end
repeat
   info()
   print("Roll the die?")
   if help == "y" then
      print("(\"y\":Yes)(\"n\":No)")
   end
   run = io.read()
   if run == "y" then
      repeat
         roll = math.random(1,6)
         print("You rolled a "..roll..".")
         print("Reroll?")
         if help == "y" then
            print("(\"y\":Yes)(\"n\":No)")
         end
         reroll = io.read()
      until reroll ~= "y"
   end
   print("Combat?")
   if help == "y" then
      print("(\"y\":Yes)(\"n\":No)")
   end
   choose = io.read()
   if choose == "y" then
      print("What is the enemy's level?")
      enemyl = io.read()
      repeat
         enemys = enemyl + enemye
         print("---------------------")
         print("Enemy Strength: "..enemys)
         print("~~~~~~~~~~~~~~~~")
         print("Enemy Level: "..enemyl)
         print("Enemy Enhancements: "..enemye)
         print("................")
         print("Run Away Special: "..enemyr)
         print("_____________________")
         print("_____________________")
         info()
         print("Change the enemy's stats?")
         if help == "y" then
            print("(\"e\":Enhancements)(\"s\":Run Special)")
         end
         change = io.read()
         if change == "e" then
            print("Up or Down?")
            if help == "y" then
               print("(\"u\":Up)(\"d\":Down)")
            end
            new = io.read()
            if new == "u" then
               print("How much?")
               if help == "y" then
                  print("([#]:Amount)")
               end
               diff = io.read()
               enemye = enemye + diff
               print("The enemy's enhancements are now at: "..enemye)
               io.read()
            elseif new == "d" then
               print("How much?")
               if help == "y" then
                  print("([#]:Amount)")
               end
               diff = io.read()
               enemye = enemye - diff
               print("The enemy's enhancements are now at: "..enemye)
               io.read()
            else
               print("Invalid choice.")
               io.read()
            end
         elseif change == "s" then
            print("Up or Down?")
            if help == "y" then
               print("(\"u\":Up)(\"d\":Down)")
            end
            new = io.read()
            if new == "u" then
               print("How much?")
               if help == "y" then
                  print("([#]:Amount)")
               end
               diff = io.read()
               enemyr = enemyr + diff
               print("The enemy's runaway special is now at: "..enemyr)
               io.read()
            elseif new == "d" then
               print("How much?")
               if help == "y" then
                  print("([#]:Amount)")
               end
               diff = io.read()
               enemyr = enemyr - diff
               print("The enemy's runaway special are now at: "..enemyr)
               io.read()
            else
               print("Invalid choice.")
               io.read()
            end
         end
         print("Fight?")
         if help == "y" then
            print("(\"y\":Yes)(\"n\":No)")
         end
         fight = io.read()
         if fight == "y" then
            if enemys < strength then
               print("You won!")
               io.read()
               print("Level up?")
               if help == "y" then
                  print("(\"y\":Yes)(\"n\":No)")
               end
               answer = io.read()
               if answer == "y" then
                  print("How many times?")
                  if help == "y" then
                     print("([#]:Amount)")
                  end
                  answer = io.read("*n")
                  level = level + answer
                  print("You leveled up!")
                  io.read()
               end
            else
               if enemys > strength then
                  lose()
               else
                  if warrior == "y" then
                     print("You won!")
                     io.read()
                     print("Level up?")
                     if help == "y" then
                        print("(\"y\":Yes)(\"n\":No)")
                     end
                     answer = io.read()
                     if answer == "y" then
                        print("How many times?")
                        if help == "y" then
                           print("([#]:Amount)")
                        end
                        answer = io.read("*n")
                        level = level + answer
                        print("You leveled up!")
                        io.read()
                     end
                  else
                     lose()
                  end
               end
            end
         end
      until fight == "y"
      fight = "n"
      against = 0
      oneshot = 0
      enemyr = 0
      tempr = 0
      enemye = 0
   end
until 1 == 2
