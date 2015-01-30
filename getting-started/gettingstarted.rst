.. title:: Getting Started with VUI

We've built the Valence UI libraries on `Less <http://lesscss.org/>`_, which is a CSS pre-processor that allows you to extend the CSS. We provide both the compiled CSS and Less mixins for each component in an `npm module <https://www.npmjs.org/browse/keyword/vui>`_.

************************
Comfortable with CSS?
************************
You can style VUI components by just using plain CSS. Each component includes CSS files that you can bundle with your application.

************************
Comfortable with Less?
************************
If you'd rather use `Less <http://lesscss.org/>`_ to style and customize your app, each VUI component includes Less mixins that you can inport into your LESS files.

****************************
Installing the components 
****************************
All of our :doc:`VUI components <../valence-ui-components/index>` are available as `npm modules <https://www.npmjs.org/browse/keyword/vui>`_, so you must have `Node.js <http://nodejs.org/>`_ installed.  

To install a component, in your project directory, type the following command:

    .. code-block:: console

    	npm install vui-componentname

For example, to install the `vui-icons <https://www.npmjs.com/browse/keyword/vui>`_ library, type: ``npm install vui-icons``.

Once installed, the VUI component is available in the ``node-modules`` directory of your project.  

From there you can incorporate the component into your app.  Visit the :doc:`docs <../valence-ui-components/index>` to see how.

****************************
Example
****************************
Here's a simple example to get up and running with VUI. It's just a "Hello World" HTML page that displays a heading, an input field with a label, and a button. We'll include the change tracking component, which is a jQuery-based widget to track form element changes. 

.. raw:: html
    
    <div class="vui-typography">
    <h2 class="docs vui-heading-2">Hello World</h2>
        <form data-track-changes="true">
            <div class="tracker vui-field-row">
                <label class="vui-label">
                Name
                <input class="input-tracking vui-input" type="text" />
                </label>
                <button class="vui-button vui-primary">Hello</button>
            </div>
        </form>
    </div>

1.  From the project directory, we install the VUI components that we'll use in this app:

    .. code-block:: console

    	npm install vui-typography
    	npm install vui-button
    	npm install vui-input
    	npm install vui-field
    	npm install vui-change-tracking-jquery

2.  We'll style and customize our components by using Less. So, we'll create a *myapp.less* file that contains all the Less goodness and then compile the file into a CSS file.

    .. code-block:: css

        @import 'node_modules/vui-button/button';
        @import 'node_modules/vui-typography/typography';
        @import 'node_modules/vui-field/field';
        @import 'node_modules/vui-field/label';
        @import 'node_modules/vui-input/input';
        @import 'node_modules/vui-change-tracking-jquery/changeTracking';

        body {
            #vui.Typography();
        }
        h1 {
            #vui.Heading1();
        }
        button, input[type=button]   {
            #vui.Button();
        }
        button.primary {
            #vui.Button.primary();
        }
        .myFieldRow {
            #vui.FieldRow();
        }
        .myFieldRow label {
            #vui.Label();
        }
        input
        {
            #vui.Input();
        }
        .vui-changed {
            #vui.changed();
        }

3.  We'll create a simple HTML file to display page and its details.  Notice that because we are using :doc:`change tracking <../valence-ui-components/valence-ui-jquery-change-tracking>`, which is a jQuery-based widget, we need to include `jQuery <http://jqueryui.com/>`_.

    .. code-block:: html

        <htm lang="en">
          <head>
    	    ...       
            <link href="myapp.css" rel="stylesheet">
          </head>
          <body>
            <h2>Hello World</h2>
              <form data-track-changes="true">
                  <div class="tracker myFieldRow">
                    <label>
                      Name
                      <input class="input-tracking" type="text" />
                    </label>
                    <button class="primary">Hello</button>
                  </div>
              </form>
    	    
            <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
            <script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.10.3/jquery-ui.min.js"></script>
            <script src="node_modules/vui-change-tracking-jquery/changeTracking.js"></script>
              $(function () {
              $( '.tracker' ).vui_changeTracker();
              $( '.input-tracking' ).vui_changeTracking();
                });
            </script>
          </body>
        </html>

4.  Now, just load the HTML page into your browser.

