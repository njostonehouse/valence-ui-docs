##################
Breadcrumbs
##################

The `vui-breadcrumbs <https://github.com/Brightspace/valence-ui-breadcrumbs>`_ library contains a series of Less mixins and CSS that you can use to style breadcrumbs.

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
Styling with Less
*******************
If you're familiar with `Less <http://lesscss.org/>`_, style your breadcrumbs with our Less mixins. First, you'll need to import the breadcrumbs library into your Less file:


.. code-block:: console

  @import '<npm module path>/vui-breadcrumbs/breadcrumbs'

You can apply breadcrumb styles by implementing the ``#vui.Breadcrumbs()`` mixin on your breadcrumb container.

Less:

.. code-block:: css

    ol.breadcrumbs {
      #vui.Breadcrumbs();
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



