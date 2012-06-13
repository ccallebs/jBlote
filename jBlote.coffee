class Blote 
  constructor: (args) ->
    @raw_html = ""
    @end_tags = ""

  inj: (text) ->
    @raw_html += text;
    return this;

  literal: (text) ->
    @raw_html += text
    return this;

  export: ->
    return @raw_html + @end_tags

  # Tag Definitions

  a: (options) ->
    return @open_tag('a', options)

  abbr: (options) ->
    return @open_tag('abbr', options)

  acronym: (options) ->
    return @open_tag('acronym', options)

  address: (options) ->
    return @open_tag('address', options)

  applet: (options) ->
    return @open_tag('applet', options)

  area: (options) ->
    return @open_tag('area', options)

  article: (options) ->
    return @open_tag('article', options)

  aside: (options) ->
    return @open_tag('aside', options)

  audio: (options) ->
    return @open_tag('audio', options)

  b: ->
    return @simple_tag('b')

  base: (options) ->
    return @open_tag('base', options)

  bdi: (options) ->
    return @open_tag('bdi', options)

  bdo: (options) ->
    return @open_tag('bdo', options)

  big: (options) ->
    return @open_tag('big', options)

  blockquote: (options) ->
    return @open_tag('blockquote', options)

  body: (options) ->
    return @open_tag('body', options)

  body: (options) ->
    return @open_tag('body', options)

  br: (options) ->
    return @simple_tag('br')

  button: (options) ->
    return @open_tag('button', options)

  canvas: (options) ->
    return @open_tag('canvas', options)

  caption: (options) ->
    return @open_tag('caption', options)

  center: (options) ->
    return @open_tag('center', options)
  
  cite: (options) ->
    return @open_tag('cite', options)

  code: (options) ->
    return @open_tag('code', options)

  col: (options) ->
    return @open_tag('col', options)

  colgroup: (options) ->
    return @open_tag('colgroup', options)

  command: (options) ->
    return @open_tag('command', options)

  datalist: (options) ->
    return @open_tag('datalist', options)

  dd: (options) ->
    return @open_tag('dd', options)

  del: (options) ->
    return @open_tag('del', options)

  details: (options) ->
    return @open_tag('details', options)

  dfn: (options) ->
    return @open_tag('dfn', options)

  dir: (options) ->
    return @open_tag('dir', options)

  div: (options) ->
    return @open_tag('div', options)

  dl: (options) ->
    return @open_tag('dl', options)

  dt: (options) ->
    return @open_tag('dt', options)

  em: (options) ->
    return @open_tag('em', options)

  embed: (options) ->
    return @open_tag('embed', options)

  fieldset: (options) ->
    return @open_tag('fieldset', options)

  figcaption: (options) ->
    return @open_tag('figcaption', options)

  figure: (options) ->
    return @open_tag('figure', options)

  font: (options) ->
    return @open_tag('font', options)

  footer: (options) ->
    return @open_tag('footer', options)

  form: (options) ->
    return @open_tag('form', options)

  frame: (options) ->
    return @open_tag('frame', options)

  frameset: (options) ->
    return @open_tag('frameset', options)

  h1: (options) ->
    return @open_tag('h1', options)

  h2: (options) ->
    return @open_tag('h2', options)

  h3: (options) ->
    return @open_tag('h3', options)

  h4: (options) ->
    return @open_tag('h4', options)

  h5: (options) ->
    return @open_tag('h5', options)

  h6: (options) ->
    return @open_tag('h6', options)

  head: (options) ->
    return @open_tag('head', options)

  header: (options) ->
    return @open_tag('header', options)

  hgroup: (options) ->
    return @open_tag('hgroup', options)

  hr: (options) ->
    return @open_tag('hr', options)

  html: (options) ->
    return @open_tag('html', options)

  i: (options) ->
    return @open_tag('i', options)

  iframe: (options) ->
    return @open_tag('iframe', options)

  img: (options) ->
    return @open_tag('img', options)

  input: (options) ->
    return @open_tag('input', options)

  ins: (options) ->
    return @open_tag('ins', options)

  keygen: (options) ->
    return @open_tag('keygen', options)

  kbd: (options) ->
    return @open_tag('kbd', options)

  label: (options) ->
    return @open_tag('label', options)

  legend: (options) ->
    return @open_tag('legend', options)

  li: (options) ->
    return @open_tag('li', options)

  link: (options) ->
    return @open_tag('link', options)

  map: (options) ->
    return @open_tag('map', options)

  mark: (options) ->
    return @open_tag('mark', options)

  menu: (options) ->
    return @open_tag('menu', options)

  meta: (options) ->
    return @open_tag('meta', options)

  meter: (options) ->
    return @open_tag('meter', options)

  nav: (options) ->
    return @open_tag('nav', options)

  noframes: (options) ->
    return @open_tag('noframes', options)

  noscript: (options) ->
    return @open_tag('noscript', options)

  object: (options) ->
    return @open_tag('object', options)

  ol: (options) ->
    return @open_tag('ol', options)

  optgroup: (options) ->
    return @open_tag('optgroup', options)

  option: (options) ->
    return @open_tag('option', options)

  output: (options) ->
    return @open_tag('output', options)

  p: (options) ->
    return @open_tag('p', options)

  param: (options) ->
    return @open_tag('param', options)

  pre: (options) ->
    return @open_tag('pre', options)

  progress: (options) ->
    return @open_tag('progress', options)

  q: (options) ->
    return @open_tag('q', options)

  rp: (options) ->
    return @open_tag('rp', options)

  rt: (options) ->
    return @open_tag('rt', options)

  ruby: (options) ->
    return @open_tag('ruby', options)

  s: (options) ->
    return @open_tag('s', options)

  samp: (options) ->
    return @open_tag('samp', options)

  script: (options) ->
    return @open_tag('script', options)

  section: (options) ->
    return @open_tag('section', options)

  select: (options) ->
    return @open_tag('select', options)

  small: (options) ->
    return @open_tag('small', options)

  source: (options) ->
    return @open_tag('source', options)

  span: (options) ->
    return @open_tag('span', options)

  strike: (options) ->
    return @open_tag('strike', options)

  strong: (options) ->
    return @open_tag('strong', options)

  style: (options) ->
    return @open_tag('style', options)

  sub: (options) ->
    return @open_tag('sub', options)

  summary: (options) ->
    return @open_tag('summary', options)

  sup: (options) ->
    return @open_tag('sup', options)

  table: (options) ->
    return @open_tag('table', options)

  tbody: (options) ->
    return @open_tag('tbody', options)

  td: (options) ->
    return @open_tag('td', options)

  textarea: (options) ->
    return @open_tag('body', options)

  tfoot: (options) ->
    return @open_tag('tfoot', options)

  th: (options) ->
    return @open_tag('th', options)

  thead: (options) ->
    return @open_tag('thead', options)

  time: (options) ->
    return @open_tag('time', options)

  title: (options) ->
    return @open_tag('title', options)

  tr: (options) ->
    return @open_tag('tr', options)

  track: (options) ->
    return @open_tag('track', options)

  tt: (options) ->
    return @open_tag('tt', options)

  u: (options) ->
    return @open_tag('u', options)

  var: (options) ->
    return @open_tag('var', options)

  video: (options) ->
    return @open_tag('video', options)

  wbr: (options) ->
    return @open_tag('wbr', options)

  # Helper methods

  simple_tag: (tag_name) ->
    @raw_html += "<" + tag_name + " />"
    return this

  open_tag: (tag_name, options) ->
    @raw_html += "<" + tag_name
    @raw_html += @apply_options(options)
    @raw_html += ">"
    @end_tags = @close_tag(tag_name) + @end_tags
    return this;

  close_tag: (tag_name) ->
    return "</" + tag_name + ">"

  apply_options: (options) ->
    text = ""
    for key, value of options
      text += " " + key + "=\"" + value + "\""
    return text      

  null_or_empty: (x) ->
    return (x == null || x == "" || x == undefined)

window.Blote = ->
  return new Blote