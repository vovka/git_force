#!/usr/bin/env ruby
puts 'Hello from Git Force!'
ROOT = '/Users/vscherb/dev/git_force/lib'
require File.expand_path('git_force', ROOT)
GitForce::Git::Commands.new.fetch4
puts 'OK'
