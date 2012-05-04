jBlote
======

A not-so-minimalistic javascript templating engine.

This is a work in progress. The syntax will surely change, but I felt that a need existed for a procedural templating engine.

Example usage:
```javascript
function draw_table() {
  obj = Blote
    obj.table().tr();
      obj.td();
       obj.literal('I\'m in cell #1');
      obj.$td();
      obj.td();
        obj.literal('I\'m in cell #2');
      obj.$td();
  obj.$tr().$table();

  return obj.export();
}

$('body').append(draw_table());
```

As a general rule, you open a tag with *.tag_name() and close it with *.$tag_name(). Some tags do not need to be closed:

* *.br() implements &lt;br /&gt;
* *.hr() implements &lt;hr /&gt;
* Basically, it follows the XHTML standard

This is how you implement tag properties:
```javascript
obj.div(
  { class: 'rad-class', id: 'best-div' }
)
```

This is still a work in progress. There will be many bugs.