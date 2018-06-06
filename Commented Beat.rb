#Commented Beat by Ryan Ward

'Prelim - Start - ?This section is used to initiate code before the main context?'
use_bpm 90
'Prelim - End'

'Loops - Start ?Continous sounds without stop?'
live_loop :Base1 do
  sample :bd_808, rate: 1, amp: 3
  sleep 1
  sample :bd_808, rate: 1, amp: 4
  sleep 1
end

live_loop :Base2 do
  sample :loop_breakbeat, beat_stretch: 4
  sleep 4
end

live_loop :hihat do
  16.times do
    sample :drum_cymbal_pedal, start: 0.05, finish: 0.4, rate: 3, amp: 0.5 + rrand(-0.1, 0.1)
    sleep 0.125
  end
  'Loops - End'
  
  
  'Define - start ?This section allows for short phrase calling?'
  def s25
    sleep (0.25)
  end
  
  def s625
    sleep (0.0625)
  end
  'Define - end'
  
  
  
  
  
  
  'Main Section - Start'
  4.times do
    sample :drum_cymbal_pedal, start: 0.05, finish: 0.6, rate: 5, amp: 0.5 + rrand(-0.1, 0.1)
    s25
  end
  
  
  16.times do
    sample :drum_cymbal_pedal, start: 0.1, finish: 0.3, rate: 3, amp: 0.5 + rrand(-0.1, 0.1)
    s625
  end
  
end
'Main Section - End'