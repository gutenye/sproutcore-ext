require 'sproutcore-runtime'

SC.Object.reopen 

  # return an object's keys
  #
  # ignore any key starts with `_`
  #   __sc123213_meta, _super
  #
  keys: ->
    ret = []
    for k in SC.keys(this)
      continue if k.match(/^_/)
      ret.push k

    ret

  # convert to a Javascript Object
  toObject:  -> 
    obj = {}
    for k in @keys()
      continue if k.match(/^_/)
      obj[k] = @get(k)
    obj

# print with debug, easy for search.
#
# @example
#
#   pd 'inside coolFunc', this, arguments
#   search: grep 'pd ' -R lib 
#
# @param arguments
window.pd = ()->
  pd.history ?= []
  pd.history.push arguments
  if this.console
      arguments.callee = arguments.callee.caller
      console.log( Array.prototype.slice.call(arguments) )
