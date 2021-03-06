##################
Alerts
##################

The `vui-alerts <https://github.com/Brightspace/valence-ui-alerts>`_ library contains mixins and CSS that can be used to apply alert styles to a containing element. In most cases you'll want to apply this alert style to a simple container for a message; however, you don’t have to limit the container’s contents to just text (for example, the container can include images, buttons, other HTML, and so on).

.. role:: example

:example:`Example`

.. raw:: html

  <div class="vui-error">This is an error messsage.</div>

*******************
Styling with Sass
*******************
If you're familiar with `Sass <http://sass-lang.com/>`_, you can use our mixins to apply the alert styles. Import and include the ``vui-alerts-error`` mixin in your CSS selector:

Scss:

.. code-block:: css

  @import '<npm module path>/vui-alerts/error';

  .my-error-alert {
    @include vui-alerts-error;
  }

HTML:

.. code-block:: html

  <div class="my-error-alert">
    This is an error message.
  </div>

*******************
Styling with CSS
*******************
If you'd prefer to use plain CSS instead of Sass to apply the error alert style, bundle the **error.css** file with your application's CSS. Then apply the ``.vui-error`` class to a containing element in your HTML.

.. code-block:: html

  <div class="vui-error">
    This is an error messsage.
  </div>
