##################
Off-screen
##################

The `vui-offscreen <https://github.com/Brightspace/valence-ui-offscreen>`_ library provides a Less mixin and CSS for positioning elements off the screen.

Off-screen elements are valuable from an accessibility perspective when you want to have elements that are hidden to sighted users while being recognizable for screen reader users. However, you should make sure to apply off-screen to the correct elements. If you hide elements that receive focus, this might confuse sighted users because they will not be able to see which element has focus. For more information, read `WebAIM's article on Invisible Content <http://webaim.org/techniques/css/invisiblecontent/>`_.

*********************
Styling with Less
*********************
If you're familiar with `Less <http://lesscss.org/>`_, you can add off-screen styles with our Less mixins.  First, you'll need to import the following library into your Less file:

.. code-block:: console

  @import '<npm module path>/vui-offscreen/offscreen';

To position an element offscreen, call the ``#vui.offscreen()`` mixin from within your selector.

Less:

.. code-block:: css

  .offscreen {
    #vui.offscreen();
  }

HTML:

.. code-block:: html

  <p class="offscreen">
    This text will only be visible to screen readers.
  </p>


*********************
Styling with CSS
*********************
If you'd prefer to use CSS to style lists, bundle the provided **offscreen.css** file with your application's CSS. Then apply the ``.vui-offscreen`` class to your element.

.. code-block:: html

  <p class="vui-offscreen">
    This text will only be visible to screen readers.
  </p>
