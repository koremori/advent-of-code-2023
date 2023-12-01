# frozen_string_literal: true

class TrebuchetCalibrator
  WORD_TO_NUM_TEMPLATE = {
    'one' => '1',
    'two' => '2',
    'three' => '3',
    'four' => '4',
    'five' => '5',
    'six' => '6',
    'seven' => '7',
    'eight' => '8',
    'nine' => '9'
  }.freeze

  class << self
    def calibration_codes_part01(input_codes)
      input_codes.sum do |line|
        nums = line.delete('^0-9')
        "#{nums[0]}#{nums[-1]}".to_i
      end
    end

    def calibration_codes_part02(input_codes)
      input_codes.sum do |line|
        nums = line.gsub(/one|two|three|four|five|six|seven|eight|nine|\D/, WORD_TO_NUM_TEMPLATE)
        "#{nums[0]}#{nums[-1]}".to_i
      end
    end
  end
end
