require 'haml'

Dir.glob('./views/*.haml').each do |haml|
  haml =~ /([^\/]+).haml/
  File.open "./#{$1}.html", 'w' do |f|
    f.write Haml::Engine.new(File.read(haml)).render
  end
end
