puts  "****** WELCOME TO THE WIZARD-TO-BE GAME. PRESS ENTER TO START. ******"
enter = $stdin.gets.chomp

  def stars()
    puts '-' * 50
  end

puts "Your coach stops and, as you get off, an elderly, sophisticated lady - " +
"supposedly a wizardess - approaches you and says: 'Welcome to Wandland! You" +
 "have travelled a long, long way, for you have been admitted to the Wizard-to-be school!" +
 " Follow the yellow brick road. You don't want to be late for the initiation ceremony, do you?'"

stars

puts "You get to the school's building and you're surprised to see that the main" +
"door is closed! You walk around the building. There is only a second door."

stars

  def reception_room
    stars
    puts "The door opens: it's the reception room. The receptionist (with a very" +
     " long beard, must be a wizard too) asks you for the password. You reply saying:"
    stars
    print "> "
    password = $stdin.gets.chomp

    if password == "chilliconcarne"
      puts "'You shall pass!' - says the receptionist.'"
      classroom
    else
      stars
      puts "'Thou shalt not pass! Come back with the password, little chipmunk!'" +
      " - says him. Him also kicks yout out."
      stars
      start
    end
  end

  def apprentice_room
    stars
    puts "A beardy elf lets you in. He speaks: 'My name is Murray, yes like the" +
    "talking skull from Monkey Island, hum, and I don't like people. I know you " +
    "want something from me, but I won't listen to you unless you help me find my " +
     "pentagonal glasses. Some stupid human, yes like you, " +
     "hid them from me, I supposed he hated the shape.'"
    puts "What an impertinent elf! What do you do?"
    stars
    puts "Press 1 to say: 'Sorry, can't help you right now, I'm late! How do I" +
     " get in?'\nPress 2 to say: 'Mmhf 'kay, I'll help you.'"
    print "> "
    choice = $stdin.gets.chomp

    if choice == "1"
      puts "He kicks you out. Sugars!"
      start
    elsif choice == "2"
      stars
      puts "It takes you some time, but you find Murray's pentagonal glasses." +
      " 'Thank you, human!' - says him - 'I'll help you too, the password for getting in" +
        " is: chilliconcarne.' You keep a mental note of it and go back outside."
      stars
      start
    else
      puts "Sorry, I don't understand your choice."
      apprentice_room
    end
  end

  def classroom
    stars
    puts "The receptionist lets you in the conference room. It's empty! An English dandy" +
    " appears from behind a curtain and looks at you to then say: 'You aren't late," +
    " wizard-to-be! If Murray the elf hasn't told you, that was just" +
    " a test to see how you would have reacted. Congratulations! Come have some cake," +
    " you sure must fancy a slice?'"
    stars
    puts "Press 1 to say: 'Of course, who says no to cake!'\nPress 2 to say: 'After you, Sir.'"

    print "> "
    pie = $stdin.gets.chomp

    if pie == "1"
      stars
      die("You have a slice, nom nom, but.. oh-oh, it's poisoned! Your game, my dear, ends here.")
    elsif pie == "2"
      stars
      puts "The Mad Hatter eats a slice, and dies within seconds."
      puts "'You do well not to trust stangers' - says a voice from behind another" +
      " curtain. The voice reveals itself. It's the famous Merlin the wizard!"
      riddle_method
    else
      puts "Sorry, I don't understand your choice."
      classroom
    end
  end

  def die(why)
    puts why, "Game over :("
    stars
    exit(0)
  end

  def riddle_method()
    stars
    puts "'Tell me now' - says Merlin - 'what do you say if I say 'The rain in Spain.. '"
    stars
    puts "Press 1 for: ' ..falls down the drain.'"
    puts "Press 2 for: ' ..falls mainly in the plain.'"

    print "> "
    riddle = $stdin.gets.chomp

    if riddle == "1"
      puts "'Not quite, but you've impressed me enough. Welcome to the Wizard-to-be school!'"
      exit(0)
    elsif riddle == "2"
      puts "'Extraordinary! You like a good old musical movie. Welcome to the Wizard-to-be school!'"
      exit(0)
    else
      stars
      puts "Haha, no cheating! I'll say that again."
      riddle_method
    end
  end

  def start
    puts "Press 1 to knock on door 1.\nPress 2 to knock on door 2."

    print "> "
    door = $stdin.gets.chomp

    if door == "1"
      reception_room
    elsif door == "2"
      apprentice_room
    else
      puts "Sorry, I don't understand your choice."
      start
    end
  end

  start
