begin
  require 'rubygems'
  require 'hirb'

  Hirb.enable

  Pry.config.print = proc do |output, value|
    Hirb::View.view_or_page_output(value) || Pry::DEFAULT_PRINT.call(output, value)
  end
rescue => e
  puts "Could not enable hirb: #{e.message}"
end
