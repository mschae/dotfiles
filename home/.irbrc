#!/usr/bin/ruby

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

require 'irb/completion'
require 'irb/ext/save-history'

IRB.conf[:SAVE_HISTORY] = 1000
IRB.conf[:HISTORY_FILE] = "#{ENV['HOME']}/.irb_history"

IRB.conf[:PROMPT_MODE] = :SIMPLE


%w(rubygems pry wirble).each do |gem|
  begin
    require gem
  rescue LoadError => e
  end
end

begin
  Pry.init
rescue => e
  $stderr.puts "Could not init Pry: #{e.message}".red
end

begin
  %w{init colorize}.each { |str| Wirble.send(str) }
rescue => e
  $stderr.puts "There was a problem with Wirble: #{e.message}".red
end
