'use strict'
path    = require 'path'
cson    = require 'cson'
program = require 'commander'

data = cson.load path.join __dirname, './status.cson'

program.version '1.0.0'

program.option '-p, --peppers', 'Add peppers'
program.option '-P, --pineapple', 'Add pineapple'
program.option '-b, --bbq', 'Add bbq sauce'
program.option '-c, --cheese [type]', 'Add the specified type of cheese [marble]', 'marble'

program.parse process.argv

console.log 'you ordered a pizza with:'

if program.peppers
  console.log '  - peppers'
if program.pineapple
  console.log '  - pineapple'
if program.bbq
  console.log '  - bbq'

console.log '  - %s cheese', program.cheese
