##################
Focus
##################

The `vui-focus <https://github.com/Brightspace/valence-ui-focus>`_ library contains mixins and CSS that can be used to apply an outline style to elements when they receive focus. This accessibility feature helps identify to the user which element currently has focus.

In most cases, you'll want to use this library on elements that do not already have a visible or obvious focus indicator, which is usually links, checkboxes and radio buttons.

*******************
Styling with Sass
*******************
If you're familiar with `Sass <http://sass-lang.com/>`_, you can use our Sass mixins to apply focus styling to elements. Import and include the ``vui-focus-outline`` mixin in your CSS selector. Usually the ``focus`` pseudo-selector is included as shown.

.. code-block:: css

  @import '<npm module path>/vui-focus/focus';

  a:focus {
    @include vui-focus-outline;
  }

*******************
Styling with CSS
*******************
If you'd prefer to use plain CSS instead of Sass, bundle the **focus.css** file with your application's CSS. Then apply the ``.vui-outline`` class to any element in your HTML. When that element receives focus, the outline style is applied automatically.

.. code-block:: html

  <a class="vui-outline">my link</a>
