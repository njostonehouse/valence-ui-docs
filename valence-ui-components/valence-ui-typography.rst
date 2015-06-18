.. title:: Typography

.. contents::
   :depth: 1

The `vui-typography <https://github.com/Brightspace/valence-ui-typography>`_ library contains mixins and CSS that can be used to produce basic typography styles.

*********************
Default text
*********************
You can apply default text styling to a block-level element (for example, ``<body>``, ``<p>``, ``<div>``, and so on) by using Sass or plain CSS.

.. role:: example

:example:`Example`

.. raw:: html

  <div class="vuiexamplebox">
    <p class="vui-typography">
      Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
    </p>
  </div>

Styling with Sass
==================
If you're familiar with `Sass <http://sass-lang.com/>`_, you can use our mixins to apply typographic style. Import and include the ``vui-typography`` mixin in your CSS selector.

.. code-block:: css

  @import '<npm module path>/vui-typography/typography';

  body {
    @include vui-typography;
  }

Styling with CSS
==================
If you'd prefer to use CSS, bundle the **typography.css** file with your application's CSS. Then apply the ``.vui-typography`` class to the block-level element.

.. code-block:: html

  <body class="vui-typography">
    Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod...
  </body>

*********************
Headings
*********************
Four incremental heading styles can be applied to any ``<h1>``-``<h6>`` element by adding the appropriate ``.vui-heading-*`` class or by calling the ``vui-typography-heading*`` Sass mixin.

.. role:: example

:example:`Example`

.. raw:: html

  <div class="vuiexamplebox">
    <div class="vui-typography">
      <h1 style="border-bottom:none;" class="vui-heading-1">Heading Style 1</h1>
      <h2 style="border-bottom:none;" class="vui-heading-2">Heading Style 2</h2>
      <h3 style="border-bottom:none;" class="vui-heading-3">Heading Style 3</h3>
      <h4 style="border-bottom:none;" class="vui-heading-4">Heading Style 4</h4>
    </div>
  </div>


.. admonition::  Accessibility

  Your page should always contain a single ``<h1>`` element.

  Heading levels should increase with your page's semantic structure, never skipping a level.

  For additional information, see `Techniques for WCAG 2.0: Organizing a page using headings <http://www.w3.org/TR/WCAG-TECHS/G141.html>`_.

Styling with Sass
==================
To apply heading styles with Sass, call the ``vui-typography-heading1`` - ``vui-typography-heading4`` mixin within the heading selector.  The selector level does not have to match the mixin level (for example, you can apply the ``vui-typography-heading3`` mixin for an ``h6`` selector).

.. code-block:: css

  @import '<npm module path>/vui-typography/typography';

  h1 {
    @include vui-typography-heading1;
  }

  h2 {
    @include vui-typography-heading2;
  }

  h3 {
    @include vui-typography-heading3;
  }

  h4 {
    @include vui-typography-heading4;
  }

Styling with CSS
==================
To apply heading styles with plain CSS, add the appropriate ``.vui-heading-*`` class to any heading element.  The CSS class does not need to match the element level (for example, the ``.vui-heading-3`` class can be applied to a ``<h6>`` element.)

.. code-block:: html

  <div class="vui-typography">
    <h1 class="vui-heading-1">Heading Style 1</h1>
    <h2 class="vui-heading-2">Heading Style 2</h2>
    <h3 class="vui-heading-3">Heading Style 3</h3>
    <h4 class="vui-heading-4">Heading Style 4</h4>
  </div>

*********************
Emphasis
*********************
Emphasis can be added to any text elements (for example, ``<p>`` and ``<span>``).

.. role:: example

:example:`Example`

.. raw:: html

  <div class="vuiexamplebox">
  <div class="vui-typography">
    <span class="vui-emphasis">
      Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</span>
  </div>
  </div>

Styling with Sass
==================
To apply the emphasis style with Sass, call the ``vui-typography-emphasis`` mixin within the selector.

.. code-block:: css

  .emphasis {
    @include vui-typography-emphasis;
  }

Styling with CSS
==================
To apply the emphasis style with CSS, add the ``.vui-emphasis`` class to the text element.

.. code-block:: html

  <span class="vui-emphasis">
    Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod...
  </span>

*********************
Help
*********************
The "help" style can be applied to any text elements (for example, ``<p>`` and ``<span>``).

.. role:: example

:example:`Example`

.. raw:: html

  <div class="vuiexamplebox">
  <div class="vui-typography">
    <span class="vui-help">
      Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod... tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
    </span>
  </div>
  </div>

.. admonition::  Accessibility

  If the help information is included in a form, make sure it can be navigated to by a screen reader.  The help information can be associated to a form field by using the ``aria-describedby`` attribute.

  For more information, read `WebAIM's article on Advanced Form Labeling <http://webaim.org/techniques/forms/advanced#describedby>`_.

Styling with Sass
==================
To apply the help style with Sass, call the ``vui-typography-help`` mixin within the selector.

.. code-block:: css

  .help {
    @include vui-typography-help;
  }

Styling with CSS
==================
To apply the help style with CSS, add the ``.vui-help`` class to the text element.

.. code-block:: html

  <span class="vui-help">
    Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod...
  </span>
