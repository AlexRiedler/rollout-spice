require 'yaml'

# wraps the normal Rollout::Feature object,
# adding extra data that we need for displaying.
class RolloutSpice::Feature

  def self.all
    return @@all_rollouts if defined?(@@all_rollouts)
    rollouts = YAML.load(File.read(RolloutSpice::Config.rollouts_yaml))
    @@all_rollouts ||= rollouts.map { |attrs| new(attrs) }
  end

  attr_reader :name, :description, :type, :key

  def initialize(attributes)
    @name = attributes.delete("name")
    @description = attributes.delete("description")
    @type = attributes.delete("rollout_type")
    @key = attributes.delete("rollout_key")
    @misc = attributes
  end

  def unwrapped
    rollout.get(@key)
  end

  def active_ids
    rollout.get(@key).users
  end

  def rollout
    RolloutSpice::Config.rollout
  end
end
