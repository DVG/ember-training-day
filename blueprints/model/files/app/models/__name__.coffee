`import DS from 'ember-data'`

<%= classifiedModuleName %> = DS.Model.extend
  # Here you will define the attributes and relationships that are returned by your API.
  # To define a simple attribute, you use the DS.attr() method like so:
  # name: DS.attr()
  #
  # Rails will send the attributes as snake_case, you should define the attributes here as lowerCamelCase
  # fullName: DS.attr() # maps to json {"full_name": "Some Value"}
  # 
  # By default, everything is a string. You can do automatic type conversion by specifying the type as an argument to DS.attr
  # someNumber: DS.attr('number')
  # someString: DS.attr('string')
  # someTruthy: DS.attr('boolean')
  #
  # If your model has related records returned by the API, you can use DS.belongsTo and DS.hasMany
  # author:   DS.belongsTo('author')
  # comments: DS.hasMany('comment')
  # 
  # The property name on the left is this model's name for the relationship. The string passed to the method on the
  # right is the actual model name to look up
  #
  # If the API returns embedded records or sideloaded records, they will be automatically read into the store.
  # If the API returns a list of IDs, a separate GET request will be made to fetch each related record automatically.
  # Further, you should specify these relationships as async:
  # asyncComments: DS.hasMany('comment'. { async: true} )
  #
  # You can use regular old properties and computed properties as well in a model. There's also polymorphic relationships, but
  # don't worry too much about that right now. 

`export default <%= classifiedModuleName %>`