#!/usr/bin/ruby

$LOAD_PATH.unshift "../lib"

require "yaml"
require 'thermostat'

include Proliphix

c = YAML.load_file("../account.yaml")

t = Thermostat.new(c["ip"], c["user"], c["passwd"])

t.set_senors(ThermHvacMode, ThermHvacState, ThermFanState, ThermFanMode, ThermAverageTemp, ThermHeat1Usage, ThermSetbackHeat)

t.fetch_data

puts t


