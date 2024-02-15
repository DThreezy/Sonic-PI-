use_bpm 120

live_loop :suspensful_till_beat_drop do
  1.times do
    play :D4, release: 5
    sleep 5
    play :D4, release: 5
    sleep 5
    play :F4
    sleep 0.5
    play :F4
    sleep 0.5
    play :A4
    sleep 0.5
    play :F4
    sleep 0.5
    play :E4
    sleep 0.5
    play :D4
    sleep 0.5
  end
  stop
end

sleep 13
live_loop :no_suspense do
  play :D4
  sleep 0.5
  play :D4
  sleep 0.5
  play :F4
  sleep 0.5
  play :F4
  sleep 0.5
  play :A4
  sleep 0.5
  play :F4
  sleep 0.5
  play :E4
  sleep 0.5
  play :D4
  sleep 0.5
end

sleep 15
live_loop :amen_break do
  sample :loop_amen, beat_stretch: 2
  sleep 4
end


