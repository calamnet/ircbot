# This is the actual bot config and command logic 
#! /usr/bin/env ruby

require 'cinch'

bot = Cinch::Bot.new do
  configure do |c|
    c.server = 'irc.utonet.org'
    c.user = 'ShamelessBot'
    c.nick = 'shamelessbot'
    c.realname = 'Shameless Bot'
    c.channels = '#shameless'

  end

  on :message, "!hello" do |m|
    m.reply "Why hello there."
  end
end

bot.start