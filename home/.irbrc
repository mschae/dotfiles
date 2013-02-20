#!/usr/bin/ruby
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
  $stderr.puts "Could not init Pry: #{e.message}"
end

begin
  %w{init colorize}.each { |str| Wirble.send(str) }
rescue => e
  $stderr.puts "There was a problem with Wirble: #{e.message}"
end
