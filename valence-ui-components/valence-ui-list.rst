##################
List
##################

The `vui-list <https://github.com/Brightspace/valence-ui-list>`_ library contains mixins and CSS that you can use to style lists.

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
If you're familiar with `Sass <http://sass-lang.com/>`_, you can use our mixins to style lists. A list can be styled using the ``vui-list`` mixin as shown.

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

Item States
==================
List items can be in two different states (or a combination of both states), and we expose different mixins for each state:

- **selected**: This state is reserved for lists that support the selection of items, either with checkboxes or radio buttons.

- **active**: Clickable or selectable items are typically put into this state when the user's mouse hovers over them, or when they receive keyboard focus.

To create styles for list item states, call the list-item mixins as shown, and apply the CSS class names to the items as needed.

.. role:: example

:example:`Example`

.. raw:: html

  <div class="vuiexamplebox vui-typography">
    <div class="vui-docs-example2">
      <ul id="liststates" class="vui-compact vui-no-separator">
        <li class="vradio"><label><input name="list_group_1" type="radio" checked /> item 1</label></li>
        <li class="vradio"><label><input name="list_group_1" type="radio" /> item 2</label></li>
        <li class="vradio"><label><input name="list_group_1" type="radio" /> item 3</label></li>
      </ul>
    </div>
  </div>

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


Similar to the Sass mixin, you can disable the separators between list items
by adding the ``.vui-no-separator`` class:

.. code-block:: css

  <ul class="vui-list vui-no-separator"></ul>

To reduce padding inside the items, apply the ``.vui-compact`` class:

.. code-block:: css

  <ul class="vui-list vui-compact"></ul>

To apply the ``selected`` and ``active`` states to items, use the ``.vui-selected`` and ``.vui-active`` classes.
