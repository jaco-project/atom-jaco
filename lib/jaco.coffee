jaco = require 'jaco'

module.exports =

    activate: (state) ->
        atom.workspaceView.command 'jaco:hiraganize', => @hiraganize()
        atom.workspaceView.command 'jaco:katakanize', => @katakanize()

    hiraganize: ->
        editor = atom.workspace.getActiveEditor()
        editor.setText jaco.hiraganize editor.getText()

    katakanize: ->
        editor = atom.workspace.getActiveEditor()
        editor.setText jaco.katakanize editor.getText()
