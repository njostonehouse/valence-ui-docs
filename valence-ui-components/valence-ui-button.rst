##################
Button
##################

The `vui-button <https://github.com/Brightspace/valence-ui-button>`_ library contains Less mixins and CSS that you can use to style buttons.

.. role:: example

:example:`Example`

.. raw:: html

  <div class="vuiexamplebox vui-typography">
    <button class="vui-button vui-primary">Button 1</button>
    <button class="vui-button">Button 2</button>
    <input class="vui-button" type="button" value="Button 3" />
    <button class="vui-button" disabled="disabled">Button 4</button>
  </div>

*******************
Styling with Less
*******************
If you're familiar with `Less <http://lesscss.org/>`_, style your buttons with our Less mixins.  First, you'll need to import the button library into your Less file:

.. code-block:: console

	@import '<npm module path>/vui-button/button'

To apply button styling to an element, call the ``#vui.Button()`` mixin from within your CSS selector. You can also make an element a primary button by calling the ``#vui.Button.primary()`` mixin.

Less:

.. code-block:: css

  button, input[type=button] {
    #vui.Button();
  }
  button.primary {
    #vui.Button.primary();
  }

HTML:

.. code-block:: html

	<button class="primary">Button 1</button>
	<button>Button 2</button>
	<input type="button" value="Button 3" />
	<button disabled="disabled">Button 4</button>

*******************
Styling with CSS
*******************
If you prefer to use CSS to style elements, bundle the **button.css** file with
your application's CSS. Then apply the ``.vui-button`` and ``.vui-button-primary`` classes to your button elements.

.. code-block:: html

  <button class="vui-button vui-primary">Button 1</button>
  <button class="vui-button">Button 2</button>
  <input class="vui-button" type="button" value="Button 3" />
  <button class="vui-button" disabled="disabled">Button 4</button>


*******************
Buttons with Icons
*******************
To include an icon inside a button, add a ``<span>`` element inside the button and apply the appropriate Less mixin or CSS class for the icon.  For more information, see :doc:`Icons <../valence-ui-components/valence-ui-icons>`.

.. role:: example

:example:`Example`

.. raw:: html

  <div class="vuiexamplebox vui-typography">
    <div class="vui-field-row">
      <button class="vui-button">
        <span class="vui-icon-bookmark"></span> Bookmark
      </button>
      <button class="vui-button">
        <span class="vui-icon-edit"></span> Edit
      </button>
    </div>
    <div>
      <button class="vui-button">
        <span class="vui-icon-bookmark"></span>
        <span class="vui-offscreen">Bookmark</span>
      </button>
      <button class="vui-button">
        <span class="vui-icon-edit"></span>
        <span class="vui-offscreen">Edit</span>
      </button>
    </div>
  </div>

.. admonition::  Accessibility

    Always provide text for buttons even if the button is simply an icon.  You can achieve this by providing off-screen text, which can be interpreted by assistive technologies. For more information, see :doc:`Off-screen <../valence-ui-components/valence-ui-offscreen>`.

Less:

.. code-block:: css

  .icon-bookmark,
  .icon-edit,
  {
    #vui.Icon();
  }

  .icon-bookmark {
    #vui.Icon.actionBookmark();
  }

  .icon-edit {
    #vui.Icon.actionEdit();
  }


HTML using Less:

.. code-block:: html

  <button>
    <span class="icon-bookmark"></span>
    <span class="offscreen">Bookmark</span>
  </button>
  <button>
    <span class="icon-edit"></span>
    Edit
  </button>

HTML using plain CSS:

.. code-block:: html

  <button class="vui-button">
    <span class="vui-icon-bookmark"></span>
    <span class="vui-offscreen">Bookmark</span>
  </button>
  <button class="vui-button">
    <span class="vui-icon-edit"></span>
    Edit
  </button>
