`import DS from 'ember-data'`

Card = DS.Model.extend
  title:       DS.attr 'string'
  description: DS.attr 'string'
  difficulty:  DS.attr 'string'
  clue1:       DS.attr 'string'
  clue2:       DS.attr 'string'
  clue3:       DS.attr 'string'
  comments:    DS.attr 'string'
  complete:    DS.attr 'boolean'

`export default Card`