describe 'SC.Object', ->
  describe '#keys', ->
    it "return an object's keys", ->
      a = SC.Object.create(a: 1)

      expect(a.keys()).toEqual(['a'])

  describe '#toObject', ->
    it "convert to Javascript Object", ->
      a = SC.Object.create(a: 1)

      expect(a.toObject()).toEqual({a: 1})

describe 'pd', ->
  it "use console.log", ->
    pd 1, 2, 3
