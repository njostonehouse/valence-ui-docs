##################
List
##################

The `vui-list <https://github.com/Brightspace/valence-ui-list>`_ library contains Less mixins and CSS that you can use to style lists.

.. role:: example

:example:`Examples`

.. raw:: html

  <p><strong>Default list with separators and padding</strong></p>
  <div class="vuiexamplebox vui-typography">
    <div class="vui-docs-example">
      <ul class="vui-list">
        <li>Item 1</li>
        <li>Item 2</li>
        <li>Item 3</li>
      </ul>
    </div>
  </div>

  <p><strong>Compact list with no separators</strong></p>
  <div class="vuiexamplebox vui-typography">
    <div class="vui-docs-example">
      <ul class="vui-list vui-compact vui-no-separator">
        <li>Item 1</li>
        <li>Item 2</li>
        <li>Item 3</li>
      </ul>
    </div>
  </div>

*********************
Styling with Sass
*********************
If you're familiar with `Sass <http://sass-lang.com/>`_, you can use our Sass mixins to style lists.

.. code-block:: css

  @import '<npm module path>/vui-list/list';

  ul {
    @include vui-list;
  }

Lists can be rendered without separators by also calling the ``vui-list-no-separator`` mixin:

.. code-block:: css

  ul {
    @include vui-list;
    @include vui-list-no-separator;
  }

To render lists with less padding inside the items, also call the ``vui-list-compact`` mixin:

.. code-block:: css

  ul {
    @include vui-list;
    @include vui-list-compact;
  }


*********************
Styling with Less
*********************
**Note:** `Less <http://lesscss.org/>`_ mixins are still included for backwards compatibility, however these will likely be removed in a future version.  If you still want to use Less to style lists, call the ``#vui.List()`` mixin within your list's CSS selector:

.. code-block:: css

  @import '<npm module path>/vui-list/list';

  ul {
    #vui.List();
  }

Lists can be rendered without separators by also calling the ``#vui.List.noSeparator()`` sub-mixin:

.. code-block:: css

  ul {
    #vui.List();
    #vui.List.noSeparator();
  }

To render lists with less padding inside the items, also call the ``#vui.List.compact()`` sub-mixin:

.. code-block:: css

  ul {
    #vui.List();
    #vui.List.compact();
  }

Item States
==================
List items can be in two different states (or a combination of both states), and we expose different mixins for each state:

- **selected**: This state is reserved for lists that support the selection of items, either with checkboxes or radio buttons.

- **active**: Clickable or selectable items are typically put into this state when the user's mouse hovers over them, or when they receive keyboard focus.

To apply states to list items, call the list-item mixins as shown.

  .. role:: example

:example:`Example`

.. raw:: html

  <div class="vuiexamplebox vui-typography">
    <div class="vui-docs-example2">
      <ul id="liststates" class="vui-compact vui-no-separator">
        <li class="vradio"><label><input type="radio" name="list_group_1" checked /> item 1</label></li>
        <li class="vradio"><label><input name="list_group_1" type="radio" /> item 2</label></li>
        <li class="vradio"><label><input name="list_group_1" type="radio" /> item 3</label></li>
      </ul>
    </div>
  </div>
  <br>

Scss:

.. code-block:: css

  @import '<npm module path>/vui-list/list-item';

  li:hover, li:focus {
    @include vui-list-item-active;
  }

  li.selected {
    @include vui-list-item-selected;
    &:hover, &:focus {
      @include vui-list-item-selected-active;
    }
  }

Less:

.. code-block:: css

  @import '<npm module path>/vui-list/list-item';

  li:hover, li:focus {
    #vui.ListItem.active();
  }

  li.selected {
    #vui.ListItem.selected();
    &:hover, &:focus {
      #vui.ListItem.selected.active();
    }
  }

In this example, we applied the *active* state to any list items that receive focus or hover.  Also, we created a new selector to apply the *selected* state.  Some JavaScript is used to toggle the ``selected`` class when the radio button is checked.

*********************
Styling with CSS
*********************
If you'd prefer to use CSS to style lists, bundle the provided **list.css** file with your application's CSS.


Apply the ``.vui-list`` class to your list elements:

.. code-block:: css

  <ul class="vui-list">
    <li>item 1</li>
  </ul>


Similar to the Less mixin, you can disable the separators between list items
by adding the ``.vui-no-separator`` class:

.. code-block:: css

  <ul class="vui-list vui-no-separator"></ul>

To reduce padding inside the items, apply the ``.vui-compact`` class:

.. code-block:: css

  <ul class="vui-list vui-compact"></ul>

To apply the ``selected`` and ``active`` states to items, use the ``.vui-selected`` and ``.vui-active`` classes.
