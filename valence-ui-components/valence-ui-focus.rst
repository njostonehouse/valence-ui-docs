##################
Focus
##################

The `vui-focus <https://www.npmjs.com/browse/keyword/vui>`_ library provides uncompiled Less and compiled CSS that can be used to apply an outline style to elements when they receive focus. This accessibility feature helps identify to the user which element currently has focus.

In most cases, you'll want to use this library on elements which do not already have a visible or obvious focus indicator. This typically includes use, links, checkbox and radio inputs.

*******************
Styling with Less 
*******************
If you're familiar with `Less <http://lesscss.org/>`_, use our Less mixins to apply focus styling to elements. First, you'll need to import the focus library into your LESS file:

.. code-block:: console

    @import 'node_modules/vui-focus/focus';

Call the ``#vui.focusOutline()`` mixin from your CSS selector, usually with the ``focus`` pseudo-selector applied:

.. code-block:: css

  a:focus {
      #vui.focusOutline();
  }

The outline width, color, style, and offset values can also be overriden when calling the ``#vui.focusOutline()`` mixin:

.. code-block:: css

  a:focus {
      #vui.focusOutline(
          @width: 2px,
          @color: #00FF00,
          @style: solid,
          @offset: 2px
      );
  }

To customize the focus mixin, the following global variables are exposed:

.. code-block:: css

  @vui-focus-outlineWidth;
  @vui-focus-outlineStyle;
  @vui-focus-outlineColor;
  @vui-focus-outlineOffset;
  

*******************
Styling with CSS 
*******************
If you'd prefer to use plain CSS instead of Less, bundle the **focus.css** file with your application's CSS. Then apply the ``.vui-outline`` class to any element in your HTML. When that element receives focus, the outline style is applied automatically.

.. code-block:: html

  <a class="vui-outline">my link</a>