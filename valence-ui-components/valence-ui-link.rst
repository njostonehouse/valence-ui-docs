####################
Link
####################

The `vui-link <https://github.com/Brightspace/valence-ui-link>`_ library contains Less mixins and CSS that you can use to style links.

.. role:: example

:example:`Example`

.. raw:: html

  <div class="vuiexamplebox vui-typography">
    <a class="vui-link" href="#">Plain Link</a><br>
    <a class="vui-link vui-link-main" href="#">Main Link</a><br>
  </div>

*******************
Styling with Scss
*******************
If you're familiar with `Sass <http://sass-lang.com/>`_, you can use our Sass mixins to style links. To apply the default link style, call the ``vui-link`` mixin from within your CSS selector.  To apply the primary link style, call the ``.vui-link-main`` mixin.

.. code-block:: css

  @import '<npm module path>/vui-link/link'

  a {
    @include vui-link;
  }

  a.main {
    @include vui-link-main;
  }


*******************
Styling with Less
*******************
**Note:** `Less <http://lesscss.org/>`_ mixins are still included for backwards compatibility, however these will likely be removed in a future version.  If you still want to use them to style links, call the ``#vui.Link()`` or ``#vui.Link.main()`` mixin from within your CSS selector.

.. code-block:: css

  @import '<npm module path>/vui-link/link'

  a {
    #vui.Link();
  }

  a.main {
    #vui.Link.main();
  }

*******************
Styling with CSS
*******************
If you'd prefer to use CSS, bundle the **link.css** file with
your application's CSS. Then apply the ``.vui-link`` class to your link elements.

.. code-block:: html

  <a class="vui-link" href="#">Plain Link</a><br>
  <a class="vui-link vui-link-main" href="#">Main Link</a><br>
