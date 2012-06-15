# jBlote 0.9a

A not-so-minimalistic JavaScript templating engine.

-------

jBlote was built with extensibility and re-use in mind. The syntax isn't as nice as other templating frameworks, but there is no invented mark-up language either. It's all JavaScript with no text parsing.

-------

## Conventions

HTML is generated by chaining JavaScript functions together.  The exported code follows a FILO (First in, last out) approach and is very simple to use. For example:

    var obj = Blote();
    obj.div({ class: 'list-item' })
      .em()
      .literal('I'm emphasized text located within a div.')
      .export();
  
As you can see from the `div()` function above, you can add tag parameters by simply passing them into the function. jBlote knows to take care of the rest. The above code would output:

`<div class="list-item"><em>I'm emphasized text located within a div.</em></div>`

But what about trickier requirements? Let's say you wanted to create a jBlote template that didn't follow the FILO approach (Something like a table, for instance). The syntax for that would be as follows:

    var obj =  Blote();
    obj.table({ cellpadding: 0, cellspacing: 0})
      .inj(
        Blote().tr()
          .inj(
            Blote().td().literal("Row 1, Col 1")
          ).inj(
            Blote().td().literal("Row 1, Col 2")
          )
      ).inj(
        Blote().tr()
          .inj(
            Blote().td().literal("Row 2, Col 1")
          ).inj(
            Blote().td().literal("Row 2, Col 2")
          )
      ).export();
  
A bit messier, eh? The `inj()` function tells jBlote that the object parameters are to be executed separately from the flow of the parent object. This allows us to embed objects within objects. Using this approach and applying some javascript, you can separate the concerns of each template into smaller functions.

    function draw_table(rows, columns) {
      var table = Blote();
  
      table.table({ cellpadding: 0, cellshading: 0 });
      
      for (i = 0; i < rows; ++i)
        table.inj(draw_row(i, columns));
    
      return table;
    }

    function draw_row(row, columns) {
      var row = Blote();
  
      row.tr();
      
      for (i = 0; i < columns; ++i)
        row.inj(draw_cell(row, i));
   
      return row;
    }

    function draw_cell(i, j) {
      var cell = Blote();
      cell.td().literal('Row ' + j + ', Col ' + i)
      return cell;
    }

    var obj = draw_table(2, 2);
    obj.export();`

For just two rows, that way of rendering the table is a bit verbose. But if you needed many variations of the same type of table, this would extend nicely.

## What Needs Work
I'm not satisfied with the syntax. If anyone has ANY suggestions on how I can increase the readability of the code and make it more suave, I am all ears.

Also, I need to benchmark the performance of this vs. other templating engines. It's my assumption that this will be among the fastest, but I've not verified that.

