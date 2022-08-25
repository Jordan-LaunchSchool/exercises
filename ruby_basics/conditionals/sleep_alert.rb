# sleep_alert.rb

status = ['awake', 'tired'].sample

# puts status == 'awake' ? 'Be productive!' : 'Go to sleep!'

alert = if status == 'awake'
          'Be productive!'
        else
          'Go to sleep!'
        end

puts alert


