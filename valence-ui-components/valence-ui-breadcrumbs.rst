##################
Breadcrumbs
##################

The `vui-breadcrumbs <https://github.com/Brightspace/valence-ui-breadcrumbs>`_ library contains mixins and CSS that you can use to style breadcrumbs. In most cases you'll want to apply the CSS class to an ordered list, however this is not required.

.. role:: example

:example:`Example`

.. raw:: html

  <div class="vuiexamplebox vui-typography">
    <ol class="vui-breadcrumbs">
      <li><a>Crumb 1</a></li>
      <li><a>Crumb 2</a></li>
      <li>Crumb 3</li>
    </ol>
  </div>

*******************
Styling with Sass
*******************
If you're familiar with `Sass <http://sass-lang.com/>`_, you can use our Sass mixins to style breadcrumbs. Import and include the ``vui-breadcrumbs`` mixin in your CSS selector.

Scss:

.. code-block:: css

  @import '<npm module path>/vui-breadcrumbs/breadcrumbs';

  .breadcrumbs {
    @include vui-breadcrumbs;
  }

HTML:

.. code-block:: html

  <ol class="breadcrumbs">
    <li><a>Crumb 1</a></li>
    <li><a>Crumb 2</a></li>
    <li>Crumb 3</li>
  </ol>

*******************
Styling with CSS
*******************
If you prefer to use CSS to style elements, bundle the **breadcrumbs.css** file with your application's CSS. Then apply the ``.vui-breadcrumbs`` class to your breadcrumb container, which is typically an ordered list.

.. code-block:: html

  <ol class="vui-breadcrumbs">
    <li><a>Crumb 1</a></li>
    <li><a>Crumb 2</a></li>
    <li>Crumb 3</li>
  </ol>



