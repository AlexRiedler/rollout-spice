require 'slim'
require 'redis'
require 'rollout'

$redis = Redis.new(host: "127.0.0.1", driver: :hiredis)
$rollout = Rollout.new($redis)
RolloutSpice::Config.rollout = $rollout
RolloutSpice::Config.groups = ["admin", "bosses", "humans", "androids"]
