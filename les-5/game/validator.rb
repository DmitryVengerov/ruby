#!/usr/bin/ruby

module Bones
  module Validator

    RATE_RANGE = (2..12)

    attr_reader :error

    def valid? args
      return RATE_RANGE.include?(args) ? true : false
    end

    def comparison? user_rate, comp_rate
      if user_rate <= comp_rate
        # suc
        return 1
      else
        # fail
        return 0
      end
    end

    def check_score? score
      return score <= 0 ? "failed" : "win!"
    end

    def validator_version
      '1.0.2'
    end

  end
end
