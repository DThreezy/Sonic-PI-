# Challenge E

# Challenge E
use_bpm 180
use_synth :chipbass

# VARIABLES TO STORE SAMPLES
intro = "C:/Users/deon_radcliff/Downloads/mario_sounds/mario_sounds/mario_intro.wav"
mushroom = "C:/Users/deon_radcliff/Downloads/mario_sounds/mario_sounds/mushroom.wav"
coin = "C:/Users/deon_radcliff/Downloads/mario_sounds/mario_sounds/coin.wav"
jump = "C:/Users/deon_radcliff/Downloads/mario_sounds/mario_sounds/jump.wav"

#TWO WAYS TO PLAY SAMPLES
#sample "C:/Users/deon_radcliff/Downloads/mario_sounds/mario_sounds/coin.wav"
#sleep 1

sample intro
sleep 8


# INTRO
play :e4
sleep 0.5
play :e4
sleep 1
play :e4
sleep 1
play :c4
sleep 0.5
play :e4
sleep 1
play :g4
sleep 2
play :g3
sleep 2

# PART ONE
live_loop :part_one_jawn do
  4.times do
    play :c4
    sleep 1.5
    play :g3
    sleep 1.5
    play :e3
    sleep 1.5
    play :a3
    sleep 1
    play :b3
    sleep 1
    play :bb3
    sleep 0.5
    play :a3
    sleep 1
    sample jump
    sleep 1
    sample coin
    sleep 1
  end
  stop
end

sleep 40
#PART TWO
play :g3
sleep 2/3.0 #0.666666...
play :e4
sleep 2/3.0 #0.666666...
play :g4
sleep 2/3.0 #0.666666...
play :a4
sleep 1
play :f4
sleep 0.5
play :g4
sleep 1
play :e4
sleep 1
play :c4
sleep 0.5
play :d4
sleep 0.5
play :b3

sample mushroom
sleep 1
