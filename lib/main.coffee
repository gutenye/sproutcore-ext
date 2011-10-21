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
