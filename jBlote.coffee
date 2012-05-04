class Bloat 
  constructor: (args) ->
    @raw_html = ""

  literal: (text) ->
    @raw_html += text
    return this;

  div: (options) ->
    @raw_html += "<div" 
    @raw_html += apply_options(options)    
    @raw_html += ">"
    return this

  $div: ->
    @raw_html += "</div>"
    return this

  span: (options) ->
    @raw_html += "<span"
    @raw_html += apply_options(options)
    @raw_html += ">"
    return this;

  $span: -> 
    @raw_html += "</span>"

  br: ->
    @raw_html += "<br />"
    return this

  p: (options) ->
    @raw_html += "<p"
    @raw_html += apply_options(options)
    @raw_html += ">"
    return this

  $p: ->
    @raw_html += "</p>"
    return this

  table: (options) ->
    @raw_html += "<table"
    @raw_html += apply_options(options)
    @raw_html += ">"
    return this

  $table: ->
    @raw_html += "</table>"
    return this

  tr: (options) ->
    @raw_html += "<tr"
    @raw_html += apply_options(options)
    @raw_html += ">"
    return this

  $tr: ->
    @raw_html += "</tr>"

  td: (options) ->
    @raw_html += "<td"
    @raw_html += apply_options(options)
    @raw_html += ">"
    return this

  $td: ->
    @raw_html += "</td>"
    return this

  export: ->
    return @raw_html

  @apply_options(options)
    text = ""
    for key, value of options
      text += " " + key + "=\"" value "\""
    return text      

  @null_or_empty: (x) ->
    return (x == null || x == "" || x == undefined)

window.Bloat = Bloat