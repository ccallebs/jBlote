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
       obj.literal('I'm in cell #1');
      obj.$td();
      obj.td();
        obj.literal('I\'m in cell #2');
      obj.$td();
  obj.$tr().$table();

  return obj.export();
}

$('body').append(draw_table());
```