# Custom Song: "My Girl"
# Original by The Temptations

# Define your custom sample paths
intro = "C:/Users/deon_radcliff/Documents/Audacity/intropart.wav"
second = "C:/Users/deon_radcliff/Documents/Audacity/secondpart.wav"
outro = "C:/Users/deon_radcliff/Documents/Audacity/youtuber.wav"
supahotfire = "C:/Users/deon_radcliff/Documents/Audacity/supahot.wav"

# In Da Club - 50 Cent

supahotfire = "C:/Users/deon_radcliff/Documents/Audacity/supahot.wav"
first50cent = "C:/Users/deon_radcliff/Documents/Audacity/50.cent.intro.wav"
acapella1 = "C:/Users/deon_radcliff/Documents/Audacity/acapella_sample.wav"
acapella2 = "C:/Users/deon_radcliff/Documents/Audacity/acapella_outro.wav"

#parameterized function defined at the top
define :first do |y,z|
  play y
  sleep 0.75
  play y
  sleep 2.5
  play y
  sleep 0.75
  play z
  sleep 1
  play z
  sleep 0.75
  play z
  sleep 1
  play y
  sleep 0.75
  play y
  sleep 1
end

#loop + variable
define :loop_variable do
  live_loop :variable_of_notes do
    120.times do
      sample :drum_cymbal_hard, amp: 0.025
      sleep 0.75
    end
    stop
  end
end
# Set the BPM
use_bpm 105

# Define your starting notes
define :starting_notes do
  play :G3
  sleep 0.5
  play :C3
  sleep 0.5
  play :C3, release: 2
  sleep 1
  play :G3
  sleep 0.5
  play :C3
  sleep 0.5
  play :C3, release: 2
  sleep 1
  # Repeat the pattern
end

# Define your middle notes
define :middle_notes do
  play :b3, release: 3, amp: 0.5
  sleep 1.5
  play :b4, release: 3, amp: 0.5
  sleep 1.5
  play :b5, release: 3, amp: 0.5
  sleep 1.5
  play :b5, release: 1, amp: 0.5
  sleep 1.5
  # Repeat the pattern
end

# Define your middle-ish notes
define :middleish_notes do
  play :b4
  sleep 0.75
  play :b4
  sleep 0.75
  play :b4
  sleep 0.75
  play :a5
  sleep 0.75
  play :a4
  sleep 0.75
  play :a4
  sleep 0.75
  play :a4, release: 2
  sleep 0.75
  # Repeat the pattern
end

use_synth :fm

# Start the live loop for the starting notes
live_loop :starting do
  2.times do
    starting_notes
  end
  stop
end

# Play the intro sample
sleep 15
sample intro, amp: 3, release: 5
sleep 1

# Play the middle notes
sleep 22.75
middle_notes

# Play the middle-ish notes
middleish_notes

# Play the second sample
sample second, amp: 3, release: 5
sleep 1


# Sleep for the outro
sleep 42

use_bpm 92
use_synth :fm
# Play the outro sample
#external custom sample
sample supahotfire, amp: 3, release: 2
sleep 7

#loop + variable
loop_variable

#parameterized function
live_loop :parameterized_function do
  2.times do
    first :e2, :e3
  end
  stop
end

sleep 14
#external custom sample
sample first50cent, amp: 3, release: 2

sleep 8
use_synth :hoover

#loop + array of notes
poo = [:e2, :e2, :e2, :e3, :e3, :e3, :e2, :e2, :e2, :e2, :e2, :e3, :e3, :e3, :e2, :e2, :e2, :e2, :e2, :e3, :e3, :e3, :e2, :e2, :e2, :e2, :e2, :e3, :e3, :e3, :e2, :e2, :e2, :e2, :e2, :e3, :e3, :e3, :e2, :e2]
poopoo = [0.75, 2.5, 0.75, 1, 0.75, 1, 0.75, 1, 0.75, 2.5, 0.75, 1, 0.75, 1, 0.75, 1, 0.75, 2.5, 0.75, 1, 0.75, 1, 0.75, 1, 0.75, 2.5, 0.75, 1, 0.75, 1, 0.75, 1, 0.75, 2.5, 0.75, 1, 0.75, 1, 0.75, 1]
num = 0

32.times do
  play poo[num]
  sleep poopoo [num]
  num = num + 1
end

sample acapella1, amp: 3, release: 2

sleep 16

sample acapella2, amp: 3, release: 2

#This song is 1 minute & 3.68 seconds or 01:03.68
