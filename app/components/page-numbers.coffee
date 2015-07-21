# Pagination controller. Use it in your template like so:
#
# page-numbers currentPage=myCurrentPage totalPages=myTotalPages action="updateCurrentPage"
#
# Your controller must provide the bound action to update the page number query param
#
# Optionally, you can render a large or small verion
#
# page-numbers small=true
`import Ember from 'ember'`

PageNumbersComponent = Ember.Component.extend
  tagName: 'ul'
  classNames: ['pagination']
  classNameBindings: ['small:pagination-sm', 'large:pagination-lg']
  adjacentPages: 2

  displayLeftElipsis: (->
    current = @get('currentPage')
    adjacent = @get('adjacentPages')
    current > adjacent + 1
  ).property('currentPage', 'totalPages')

  displayRightElipsis: (->
    current = @get('currentPage')
    adjacent = @get('adjacentPages')
    total = @get('totalPages')
    current < (total - adjacent)
  ).property('currentPage', 'totalPages')

  showOnlyOne: Ember.computed.any('onlyOnePage', 'nullTotal')
  onlyOnePage: Ember.computed.equal('totalPages', 1)
  nullTotal: Ember.computed.none('totalPages')

  pages: (->
    current = @get('currentPage')
    total = @get('totalPages')
    adjacent = @get('adjacentPages')
    leftBuffer = @get('displayLeftElipsis')
    rightBuffer = @get('displayRightElipsis')
    startIndex = @_determineStartIndex(current, total, adjacent, leftBuffer, rightBuffer)
    endIndex = @_determineEndIndex(current, total, adjacent, leftBuffer, rightBuffer)

    for i in [startIndex..endIndex]
      page: i
      current: current == i
  ).property('totalPages', 'currentPage')

  atBeginning: (->
    current = @get('currentPage')
    current == 1
  ).property('currentPage')

  atEnd: (->
    current = @get('currentPage')
    total = @get('totalPages')
    current == total
  ).property('currentPage')


  _determineStartIndex: (current, total, adjacent, leftBuffer, rightBuffer) ->
    if leftBuffer
      startIndex = current - adjacent
    else
      startIndex = 1

  _determineEndIndex: (current, total, adjacent, leftBuffer, rightBuffer) ->
    if rightBuffer
      return (current + adjacent)
    else
      total

  actions:
    updateCurrentPage: (page) ->
      @sendAction('action', page)
    firstPage: ->
      @sendAction('action', 1)
    lastPage: ->
      @sendAction('action', @get('totalPages'))

`export default PageNumbersComponent;`