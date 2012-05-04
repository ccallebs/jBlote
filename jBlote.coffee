class Bloat 
  constructor: (args) ->
    @raw_html = ""

  literal: (text) ->
    @raw_html += text
    return this;

  div: (options) ->
    return open_tag('div', options)

  $div: ->
    return close_tag('div')

  span: (options) ->
    return open_tag('span', options)

  $span: -> 
    return close_tag('span')

  br: ->
    return simple_tag('br')

  p: (options) ->
    return open_tag('p', options)

  $p: ->
    return close_tag('p')

  table: (options) ->
    return open_tag('table', options)

  $table: ->
    return close_tag('table')

  tr: (options) ->
    return open_tag('tr', options)

  $tr: ->
    return close_tag('tr')

  td: (options) ->
    return open_tag('td', options)

  $td: ->
    return close_tag('td')

  export: ->
    return @raw_html

  # Helper methods

  @simple_tag: (tag_name) ->
    @raw_html += "<" + tag_name + " />"
    return this

  @open_tag: (tag_name, options) ->
    @raw_html += "<" + tag_name
    @raw_html += apply_options(options)
    @raw_html += ">"
    return this;

  @close_tag: (tag_name) ->
    @raw_html += "</" + tag_name + ">"
    return this

  @apply_options: (options) ->
    text = ""
    for key, value of options
      text += " " + key + "=\"" + value "\""
    return text      

  @null_or_empty: (x) ->
    return (x == null || x == "" || x == undefined)

window.Bloat = Bloat