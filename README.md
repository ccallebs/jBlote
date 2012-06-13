jBlote 0.9a
======

A not-so-minimalistic javascript templating engine.

### Example usage:

```javascript
function draw_table() {
  obj = Blote();

  // The inj(..) function enables you to nest tags within each other
  // breaking the FILO convention

  obj.table()
      .tr()
      .inj(
        Blote()
          .td()
          .literal('Contents of cell #1')
      ).inj(
        Blote()
          .td()
          .literal('Contents of cell #2')
      );

  // Tags can also be staggered instead of chained

  obj.p();
  obj.literal('This text is inside a paragraph.');

  return obj.export();
}

$('body').append(draw_table());
```

If you'd like to implement tag properties (And I'm sure you do), this is how it's done:

```javascript
obj = Blote().div({ class: 'my_class', id: 'my_div' });
```

All HTML5 should be supported. Suggestions are welcome.