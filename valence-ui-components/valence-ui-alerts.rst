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
If you're familiar with `Sass <http://sass-lang.com/>`_, you can use our Sass mixins to apply the alert styles. Import and include the mixin in your CSS selector:

.. code-block:: css

  @import '<npm module path>/vui-alerts/error';

  .my-error-alert {
    @include vui-alerts-error;
  }

*******************
Styling with Less
*******************
**Note:** `Less <http://lesscss.org/>`_ mixins are still included for backwards compatibility, however these will likely be removed in a future version.  If you still want to use them for styling alerts, import and include the ``#vui.Alerts.error`` mixin in your CSS selector:

.. code-block:: css

  @import '<npm module path>/vui-alerts/error';

  .my-error-alert {
    #vui.Alerts.error();
  }

*******************
Styling with CSS
*******************
If you'd prefer to use plain CSS instead of Less to apply the error alert style, bundle the **error.css** file with your application's CSS. Then apply the ``.vui-error`` class to a containing element in your HTML.

.. code-block:: html

  <div class="vui-error">This is an error messsage.</div>
