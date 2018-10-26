# Q0: Why are these two errors being thrown?
There is no Pokemon model created in the database yet.

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *
In the home controller, we take all Pokemon who do not belong to a trainer (since their trainer_id is null) and take a random one.

# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.

The line directs the site to the capture method in the Pokemon controller. The line “capture_path(id: @pokemon)” makes sure that the correct Pokemon is being captured

# Question 3: What would you name your own Pokemon?

I name it Fooo~

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?

redirect_back fallback_location: root_path. Which would just take us back to the previous path. 

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.
It check during the create, if the new pokemon receive any errors. If yes, then it will generate a string that is stored in the flash hash with the key :error. Then the application.html.erb file will display that error string. and render the page

# Give us feedback on the project and decal below!
It is a great project. I learned a lot from it :)

# Extra credit: Link your Heroku deployed app
https://pokeportalcifer.herokuapp.com/
