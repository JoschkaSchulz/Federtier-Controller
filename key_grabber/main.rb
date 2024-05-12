require './key_state_checker.rb'
require 'httparty'

key_state_checker = KeyStateChecker.new
debounce = Time.now

loop do
  next if Time.now < debounce + 0.5

  if key_state_checker.f13_pressed?
    debounce = Time.now
    puts "[#{debounce}]: F13 Wurde gedrückt"
    HTTParty.get('http://localhost:3000/characters/1/move_head')
  end

  if key_state_checker.f14_pressed?
    debounce = Time.now
    puts "[#{debounce}]: F14 Wurde gedrückt"
    HTTParty.get('http://localhost:3000/characters/1/move_head')
  end

  if key_state_checker.f15_pressed?
    debounce = Time.now
    puts "[#{debounce}]: F15 Wurde gedrückt"
    HTTParty.get('http://localhost:3000/characters/1/move_head')
  end

  if key_state_checker.f16_pressed?
    debounce = Time.now
    puts "[#{debounce}]: F16 Wurde gedrückt"
    HTTParty.get('http://localhost:3000/characters/1/move_head')
  end

  if key_state_checker.f17_pressed?
    debounce = Time.now
    puts "[#{debounce}]: F17 Wurde gedrückt"
    HTTParty.get('http://localhost:3000/characters/1/move_head')
  end

  if key_state_checker.f18_pressed?
    debounce = Time.now
    puts "[#{debounce}]: F18 Wurde gedrückt"
    HTTParty.get('http://localhost:3000/characters/1/move_head')
  end

  sleep 0.01
end