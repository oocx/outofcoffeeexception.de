path = require 'path'
fs = require 'fs'
gm = require 'gm'

console.log 'test'

module.exports = (env, callback) ->

  class ThumbnailGenerator extends env.ContentPlugin
    constructor: (@filepath, @source) ->
      @sourceFilePath = @filepath.full

    getFilename: ->
      fn = @filepath.relative.replace /.jpg$/, 't.jpg'
      fn = fn.replace /.JPG$/, 't.JPG'
      return fn

    getView: ->
      return (env, locals, contents, templates, callback) ->
        options = env.config.less or {}
        options.filename = @filepath.relative
        options.paths = [path.dirname(@filepath.full)]


        gm(@sourceFilePath).resize(200, 150).stream (err, stdout, stderr) ->
          if (err)
            console.log(' Fehler: ' + err + " " + @sourceFilePath);

          callback null, stdout



    ThumbnailGenerator.fromFile = (filepath, callback) ->
      fs.readFile filepath.full, (error, buffer) ->
        if error
          console.log 'Fehler: ' + error
          callback error
        else
          callback null, new ThumbnailGenerator filepath, buffer


  env.registerContentPlugin 'thumbnails', '**/DSC*.*(jpg|JPG)', ThumbnailGenerator

  callback()
