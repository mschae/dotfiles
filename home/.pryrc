%w(rubygems pry awesome_print).each do |gem|
  begin
    require gem
  rescue LoadError => e
    $stderr.puts "Could not load gem #{gem} - not installed?"
    $stderr.puts "gem install #{gem}"
  end
end

begin
  AwesomePrint.pry!
rescue => e
  $stderr.puts "Could not enable AwesomePrint: #{e.message}"
end
