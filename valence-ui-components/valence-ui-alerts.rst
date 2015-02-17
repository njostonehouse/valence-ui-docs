##################
Alerts
##################

The `vui-alerts <https://www.npmjs.com/browse/keyword/vui>`_ library contains Less mixins and CSS that can be used to apply alert styles to a containing element. In most cases you'll want to apply this alert style to a simple container for a message; however, the contents of the container doesn't have to be limited to just text (for example, the container can include images, buttons, other HTML, and so on).

.. role:: example
  
:example:`Example`

.. raw:: html
  
  <div class="vui-error">This is an error messsage.</div>

*******************
Styling with Less 
*******************
If you're familiar with `Less <http://lesscss.org/>`_, use our Less mixins to apply the alert styles. First, you'll need to import the alerts library into your Less file:

.. code-block:: console

  @import 'node_modules/vui-alerts/alerts';

To apply the **error** alerts style, import the following library:

.. code-block:: console

  @import 'node_modules/vui-alerts/error';

Then call the ``#vui.Alerts.error();`` mixin from within your CSS selector:

.. code-block:: css

  .vui-error {
    #vui.Alerts.error();
  }
  
*******************
Styling with CSS 
*******************
If you'd prefer to use plain CSS instead of Less to apply the error alert style, bundle the **error.css** file with your application's CSS. Then apply the ``.vui-error`` class to a containing element in your HTML. 

.. code-block:: html

  <div class="vui-error">This is an error messsage.</div>