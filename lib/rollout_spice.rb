require "rollout_spice/engine"

module RolloutSpice

  module Config
    extend self
    attr_writer :rollout, :rollouts_yaml, :groups
    attr_reader :rollout

    def rollouts_yaml
      @rollouts_yaml ||= "config/rollouts.yml"
    end

    def groups
      @groups || []
    end
  end
end
