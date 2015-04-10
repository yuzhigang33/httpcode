path = require 'path'
cson = require 'cson'

data = cson.load path.join __dirname, './status.cson'
