class String
  # colorization
  def colorize(color_code)
    "\e[#{color_code}m#{self}\e[0m"
  end

  def red
    colorize(31)
  end

  def green
    colorize(32)
  end

  def yellow
    colorize(33)
  end

  def pink
    colorize(35)
  end
end

%w(rubygems pry hirb awesome_print).each do |gem|
  begin
    require gem
  rescue LoadError => e
    $stderr.puts "Could not load gem #{gem} - not installed?".red
    $stderr.puts "gem install #{gem}".red
  end
end

begin
  Hirb.enable

  Pry.config.print = proc do |output, value|
    Hirb::View.view_or_page_output(value) || Pry::DEFAULT_PRINT.call(output, value)
  end
rescue => e
  $stderr.puts "Could not enable hirb: #{e.message}".red
end

begin
  AwesomePrint.pry!
rescue => e
  $stderr.puts "Could not enable AwesomePrint: #{e.message}".red
end