poly = @poly || {}

class DefinitionError extends Error
  constructor: (@message) ->
    @name = "DefinitionError"

class DependencyError extends Error
  constructor: (@message) ->
    @name = "DependencyError"

class ModeError extends Error
  constructor: (@message) ->
    @name = "ModeError"

class DataError extends Error
  constructor: (@message) ->
    @name = "DataError"

class UnknownInput extends Error
  constructor: (@message) ->
    @name = "UnknownInput"

class NotImplemented extends Error
  constructor: (@message) ->
    @name = "ModeError"

poly.error = (msg) -> new Error(msg)
poly.error.data = (msg) -> new DataError(msg)
poly.error.depn = (msg) -> new DependencyError(msg)
poly.error.defn = (msg) -> new DefinitionError(msg)
poly.error.mode = (msg) -> new ModeError(msg)
poly.error.impl = (msg) -> new NotImplemented(msg)
poly.error.input = (msg) -> new UnknownInput(msg)

@poly = poly
