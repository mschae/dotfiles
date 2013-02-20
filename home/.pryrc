%w(rubygems pry wirble awesome_print).each do |gem|
  begin
    require gem
  rescue LoadError => e
    $stderr.puts "Could not load gem #{gem} - not installed?"
    $stderr.puts "gem install #{gem}"
  end
end

begin
  Hirb.enable

  Pry.config.print = proc do |output, value|
    Hirb::View.view_or_page_output(value) || Pry::DEFAULT_PRINT.call(output, value)
  end
rescue => e
  $stderr.puts "Could not enable hirb: #{e.message}"
end

begin
  AwesomePrint.pry!
rescue => e
  $stderr.puts "Could not enable AwesomePrint: #(e.message)"
end