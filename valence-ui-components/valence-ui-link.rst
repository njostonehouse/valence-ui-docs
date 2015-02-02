####################
Link
####################

The `vui-link <https://www.npmjs.com/browse/keyword/vui>`_ library contains Less mixins and CSS that you can use to style links.

There are two types of links:

.. list-table::
      :header-rows: 1

      * - Link type
        - Less Mixin
        - CSS Class
        - Description
      * - 
	      .. raw:: html

			<a class="docs vui-link" href="#">Default</a><br>

      	- ``#vui.Link()`` 
      	- ``.vui-link`` 
      	- Default link
      * - 
  	      .. raw:: html

			<a class="docs vui-link vui-link-main" href="#">Primary</a><br>

      	- ``#vui.Link.main()``
      	- ``.vui-link .vui-link-main``
        - Primary/main link

*******************
Styling with Less 
*******************
If you're familiar with `Less <http://lesscss.org/>`_, style your links with our Less mixins. First, you'll need to import the link library into your Less file:

.. code-block:: console

  @import 'node_modules/vui-link/link'

To apply the default link style, call the ``#vui.Link()`` mixin from within your CSS selector.  To apply the primary link style, call the ``#vui.Link.main()`` mixin.

.. code-block:: css

  a {
    #vui.Link();
  }

  a.main {
    #vui.Link.main();
  }

You can also override the link color and focus colors:

.. code-block:: css

  #vui.Link( 
    @color: #ff0000, 
    @color-focus: #0000ff 
  );

These colors are also exposed as variables, which can be referenced in your Less:

.. code-block:: css

  .myLink {
    color: @vui-link-color;
  }

  .myLink:hover, .myLink:focus {
    color: @vui-link-color-focus;
  }

*******************
Styling with CSS
*******************
If you'd prefer to use CSS, bundle the **link.css** file with
your application's CSS. Then apply the ``.vui-link`` class to your link elements.

.. role:: example

:example:`Example`

.. raw:: html

  <a class="vui-link" href="#">Plain Link</a><br>
  <a class="vui-link vui-link-main" href="#">Main Link</a><br>

HTML:

.. code-block:: html

  <a class="vui-link" href="#">Plain Link</a><br>
  <a class="vui-link vui-link-main" href="#">Main Link</a><br>
