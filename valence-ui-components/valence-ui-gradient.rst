##################
Gradient
##################

The `vui-gradient <https://www.npmjs.com/browse/keyword/vui>`_ library provides Less mixins for creating linear CSS gradients.

To create gradient styles, import the following library into your LESS file:

.. code-block:: css

  @import 'node_modules/vui-gradient/gradient';

*******************
Vertical gradient
*******************
Vertical gradients are applied from top to bottom.

:example:`Example`

.. raw:: html
    
  <div class="gradientv" style="height:75px; border: 1px solid #ddd;">
    <p style="text-align: center;">Vertical gradient</p>
  </div>

To apply a vertical gradient with the default styles, call the ``#vui.gradientVertical()`` mixin from within your CSS selector. 

.. code-block:: css

  div {
    #vui.gradientVertical( );
  }

To override the gradient colors, pass ``#vui.gradientVertical()`` a ``startColor`` and ``endColor``. You can provide a ``fallbackColor``, which is the color to fall back to if the gradient doesn't work (e.g., the browser doesn't support gradients).  By default, the ``startColor`` is used as the  ``fallbackColor``.

.. code-block:: css

  div {
    #vui.gradientVertical(
      @startColor: #ff0000,
      @endColor: #0000ff
    );
  }
 
**********************
Horizontal gradient
**********************
Horizontal gradients are applied from left to right.

:example:`Example`

.. raw:: html
    
  <div class="gradienth" style="height:75px; border: 1px solid #ddd;">
    <p style="text-align: center;">Horizontal gradient</p>
  </div>

To apply a horizontal gradient with the default styles, call the ``#vui.gradientHorizontal()`` mixin from within your CSS selector. 

.. code-block:: css

  /* Default gradient styles */
  div {
    #vui.gradientHorizontal( );
  }

To override the gradient colors, pass ``#vui.gradientHorizontal()`` a ``startColor`` and ``endColor``. You can provide a ``fallbackColor``, which is the color to fall back to if the gradient doesn't work (e.g., the browser doesn't support gradients).  By default, the ``startColor`` is used as the  ``fallbackColor``.

.. code-block:: css

  /* Override gradient colors */
  div {
    #vui.gradientHorizontal(
      @startColor: #ff0000,
      @endColor: #0000ff
    );
  }