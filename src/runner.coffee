# Quickie script to compile and run all the files given as arguments.

coffee: require './coffee-script'
process.mixin require 'sys'

paths: process.ARGV
paths: paths[2...paths.length]
coffee.compile_files paths, (js) -> eval(js)