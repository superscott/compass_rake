desc "Install everything needed to run Compass"
task 'compass:setup' do

  puts "installing Bundler gem"
  `gem install bundler`

  puts "using gemfile to install compass gems"
  `bundle install`

  puts "all done. once you're ready to build your sprites, run 'rake compass:compile'"

end


desc "lowercase all the .png image files"
task "compass:lowercase" do
  puts "\n"
  puts "gathering all .png images....... \n\n"
  all_images = Dir["images/**/*.png"]
  puts all_images

  puts "\n"
  puts "activating lowercase......."

  all_images.each do |image_file|
    full_path = File.realdirpath(image_file)
    dir = File.dirname(full_path)
    extension = File.extname(image_file)
    image_name = File.basename(image_file, extension)
    File.rename(full_path, dir + "/" + image_name.downcase + extension) 
  end

  puts "\n"
  puts "FINISHED LOWERCASING FILES"
  puts "\n"

end


desc "compass compile to generate sprite"
task "compass:compile" do
  puts "Please stand by, while we compile......."
  `compass compile`
  puts "\n"
  puts "Thank you for waiting, your Sprite and CSS are now ready."
  puts "\n"
end


task "compass:compile" => "compass:lowercase"
