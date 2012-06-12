class jBlote 
  constructor: (args) ->
    @raw_html = ""

  literal: (text) ->
    @raw_html += text
    return this;

  a: (options) ->
    @raw_html += @open_tag('a', options)
    return this;

  br: ->
    @raw_html += @simple_tag('br')

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

window.Blote = new jBlote