.. title:: Typography

.. contents::
   :depth: 1

The `vui-typography <https://www.npmjs.com/browse/keyword/vui>`_ library contains `Less <http://lesscss.org/>`_ mixins and CSS that can be used to produce basic typography styles.

*********************
Default text
*********************
You can apply default text styling to a block-level element (for example, ``<body>``, ``<p>``, ``<div>``, and so on) by using Less or plain CSS. 

.. role:: example
    
:example:`Example`

.. raw:: html
    
  <p class="vui-typography">
    Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
  </p>

Styling with Less 
==================
To apply default text styling in Less, call the ``#vui.Typography()`` mixin from within your selector.

.. code-block:: css
	
  @import 'node_modules/vui-typography/typography';

  body {
    #vui.Typography();
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
Four incremental heading styles can be applied to any ``<h1>``-``<h6>`` element by adding the appropriate ``.vui-heading-*`` class or by calling the ``#vui.Heading*`` Less mixin.

.. role:: example
    
:example:`Example`

.. raw:: html

  <div class="vui-typography">
    <h1 style="border-bottom:none;" class="vui-heading-1">Heading Style 1</h1>
    <h2 style="border-bottom:none;" class="vui-heading-2">Heading Style 2</h2>
    <h3 style="border-bottom:none;" class="vui-heading-3">Heading Style 3</h3>
    <h4 style="border-bottom:none;" class="vui-heading-4">Heading Style 4</h4>
  </div>


.. admonition::  Accessibility

  Your page should always contain a single ``<h1>`` element.

  Heading levels should increase with your page's semantic structure, never skipping a level.

  For additional information, see `Techniques for WCAG 2.0: Organizing a page using headings <http://www.w3.org/TR/WCAG-TECHS/G141.html>`_.

Styling with Less 
==================
To apply heading styles with Less, call the ``#vui-Heading1()`` - ``#vui-Heading4()`` mixin within the heading selector.  The selector level does not have to match the mixin level (for example, you can apply the ``#vui.Heading3()`` mixin for an ``h6`` selector).

.. code-block:: css

  @import 'node_modules/vui-typography/typography';

  h1 {
    #vui.Heading1();
  }

  h2 {
    #vui.Heading2();
  }

  h3 {
    #vui.Heading3();
  }

  h4 {
    #vui.Heading4();
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

  <div class="vui-typography">
    <p class="vui-emphasis">
      Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
    </p>
  </div>

Styling with Less 
==================
To apply the emphasis style with Less, call the ``#vui.Typography.emphasis()`` mixin within the selector.

.. code-block:: css

  .emphasis {
    #vui.Typography.emphasis();
  }


Styling with CSS 
==================
To apply the emphasis style with CSS, add the ``.vui-emphasis`` class to the text element.

.. code-block:: html

  <p class="vui-emphasis">
    Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod...
  </p>

*********************
Help
*********************
The "help" style can be applied to any text elements (for example, ``<p>`` and ``<span>``).

.. role:: example
    
:example:`Example`

.. raw:: html

  <div class="vui-typography">
    <p class="vui-help">
      Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod... tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
    </p>
  </div>

Styling with Less 
==================
To apply the help style with Less, call the ``#vui.Typography.help()`` mixin within the selector.

.. code-block:: css

  .help {
    #vui.Typography.help();
  }

Styling with CSS 
==================
To apply the help style with CSS, add the ``.vui-help`` class to the text element.

.. code-block:: html

  <p class="vui-help">
    Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod...
  </p>