# Custom Song: "My Girl"
# Original by The Temptations

# Define your custom sample paths
intro = "C:/Users/deon_radcliff/Documents/Audacity/intropart.wav"
second = "C:/Users/deon_radcliff/Documents/Audacity/secondpart.wav"
outro = "C:/Users/deon_radcliff/Documents/Audacity/youtuber.wav"

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

# Play the outro sample
sample outro, amp: 3, release: 2
sleep 1
