compass_rake
============

Compass Rake is a simple tool that can allow anybody to start using Compass for image sprites.


1.) Install Ruby.
  a.) Windows: http://rubyinstaller.org/
    i.) Make sure when you install Ruby, you select the option to "Add Ruby Executables to your PATH"
  b.) Mac: As of 10.9 Mavericks, Ruby-2.0.x comes preinstalled, so you shouldnt need to do anything.
  
  
2.) Clone this repo, and navigate to the folder via command line.


3.) Run 'rake compass:setup'
  a.) This will install the bundler gem, and then run bundle install to get the compass gem.


4.) Place all the images you'd like to have sprited, in the /images folder.
  a.) You can place as many folders and images in that directory and they will all be included into the compiled sprite.
  

5.) Run 'rake compass:compile'
  a.) By default this will output sprite_icons.css, and the corresponding sprite_icons.png file.


6.) Copy and Paste the spite_icons.css, and the sprite_icons.png file into your project.


7.) You're done, now celebrate: https://www.youtube.com/watch?v=x8apI6x2Qyg

