{View} = require 'atom'

module.exports =
    class AtomJacoView extends View
        @content: ->
            @div class: 'atom-jaco overlay from-top', =>
                @div "The AtomJaco package is Alive! It's ALIVE!", class: "message"

        initialize: (serializeState) ->
            atom.workspaceView.command "atom-jaco:execute", => @execute()
            atom.workspaceView.command "atom-jaco:katakanize", => @katakanize()

        # Returns an object that can be retrieved when package is activated
        serialize: ->

        # Tear down any state and detach
        destroy: ->
            @detach()

        execute: ->
            if @hasParent()
                @detach()
            else
                atom.workspaceView.append(this)
