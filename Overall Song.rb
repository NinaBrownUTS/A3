#BEGINNING
use_bpm 120
use_synth :pluck
play :C, release: 15
verse_melody = [:c3, :e3, :g3, :c3, :e3, :g3, :c3, :e3, :g3,
                :g3, :b3, :d3, :g3, :b3, :d3, :g3, :b3, :d3]

verse_melody.each do |note|
  play note
  sleep 0.5
end



#FIRST VERSE
use_bpm 120
use_synth :pluck
chorus_melody = [:e4, :g4, :a4, :g4, :a4, :b4, :a4, :g4,
                 :e4, :g4, :a4, :g4, :a4, :b4, :a4, :g4]
chorus_melody.each do |note|
  play note
  sleep 0.5
end
2.times do
  use_bpm 120
  use_synth :pluck
  sample :loop_mika
  play :C, release:8
  chorus_melody = [:e4, :g4, :a4, :g4, :a4, :b4, :a4, :g4]
  chorus_melody.each do |note|
    play note
    sleep 1
  end
  use_bpm 120
  use_synth :pluck
  sample :loop_mika
  play :E3, release:8
  chorus_melody = [:e4, :g4, :a4, :g4, :a4, :b4, :a4, :g4,
                   :e4, :g4, :a4, :g4, :a4, :b4, :a4, :g4]
  chorus_melody.each do |note|
    play note
    sleep 0.5
  end
end



#CHORUS
use_bpm 120
use_synth :pluck
chorus_melody = [:a4, :g4, :e4, :g4,
                 :b4, :a4, :g4, :e4]
2.times do
  sample :loop_mika
  play :C, release: 8
  chorus_melody.each do |note|
    play note
    sleep 1
  end
  2.times do
    sample :loop_mika
    play :E3, release: 8
    chorus_melody.each do |note|
      play note
      sleep 0.5
    end
  end
end



#ENDING
use_bpm 120
use_synth :pluck
2.times do
  sample :loop_mika
  verse_melody = [:c3, :e3, :g3, :c3, :e3, :g3, :c3, :e3,
                  :b3, :d3, :g3, :b3, :d3, :g3, :b3, :d3]
  verse_melody.each do |note|
    play note
    sleep 0.5
  end
end
play :E3, release: 15


