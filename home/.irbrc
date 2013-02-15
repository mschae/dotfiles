#!/usr/bin/ruby
require 'irb/completion'
require 'irb/ext/save-history'

IRB.conf[:SAVE_HISTORY] = 1000
IRB.conf[:HISTORY_FILE] = "#{ENV['HOME']}/.irb_history"

IRB.conf[:PROMPT_MODE] = :SIMPLE


%w(rubygems pry).each do |gem|
  begin
    require gem
  rescue LoadError => e
  end
end

begin
  Pry.init
rescue => e
  print "Could not init Pry: #{e.message}"
end
