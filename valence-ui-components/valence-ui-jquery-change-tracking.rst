##################
Change Tracking
##################

The `vui-change-tracking-jquery <https://www.npmjs.com/browse/keyword/vui>`_ 
library provides jQuery-based widgets, events, Less mixins, and CSS that can be used to visually indicate unsaved changes to form inputs.  When a user changes the input value for a field, the field is highlighted with a background color.

.. role:: example
    
:example:`Example`

.. raw:: html

	<form data-track-changes="true">
	    <div class="tracker vui-field-row">
	        <label class="vui-label">
	            Project
	            <input class="input-tracking vui-input" type="text" />
	        </label>
	    </div>
	    <fieldset class="tracker vui-field-row">
	        <legend class="vui-label">Styles</legend>
	        <label>
	            <input class="input-tracking" type="radio" name="styleGroup" checked="checked" />
	            Contemporary
	        </label>
	        <label>
	            <input class="input-tracking" type="radio"name="styleGroup" value="modern" />
	            Modern
	        </label>
	        <label>
	            <input class="input-tracking" type="radio"name="styleGroup" value="traditional" />
	            Traditional
	        </label>
	    </fieldset>
    </form>

Here's the HTML:

.. code-block:: html

    <form data-track-changes="true">
        <div class="tracker vui-field-row">
            <label class="vui-label">
                Project
                <input class="input-tracking vui-input" type="text" />
            </label>
        </div>
        <fieldset class="tracker vui-field-row">
            <legend class="vui-label">Styles</legend>
            <label>
                <input class="input-tracking" type="radio" name="styleGroup" checked="checked" />
                Contemporary
            </label>
            ...
        </fieldset>
    </form>
    
    ...
    
    <script src="node_modules/vui-change-tracking-jquery/changeTracking.js"></script>
    <script src="node_modules/vui-change-tracking-jquery/changeTracker.js"></script>
    <script>
        $(function () {
            $( '.tracker' ).vui_changeTracker();
            $( '.input-tracking' ).vui_changeTracking();
        });
    </script>

To enable change tracking, add the ``data-track-changes="true"`` attribute to the containing element (for example, on the ``<form>`` element). 

To initialize the change tracking widgets:

- Call the ``vui_changeTracker()`` function on the elements that contain the input fields (for example, on the ``<fieldset>`` or field row).  

	This function applies the highlighting style to the changed elements. Typically, your inputs will be contained in a field row  (see :ref:`Fields and Labels <vui-fieldlabels>` ), so the highlighting will be applied to the whole row; however, if you want to highlight individual fields, call ``vui_changeTracker()``  for those elements.

- Call the ``vui_changeTracking()`` function on the inputs that you want to track. 
	
	This function triggers events when the specified elements have changed. 

In the example above, changes are tracked for inputs that specify the ``.input-tracking`` class.  The changes are highlighted on the containing element that has the ``.tracker`` class.

*********************
Styling with Less 
*********************
If you're familiar with `Less <http://lesscss.org/>`_, you can apply the change tracking style with the ``#vui.changed()`` mixin. First, you'll need to import the following library into your LESS file:

.. code-block:: console

    @import 'node_modules/vui-change-tracking-jquery/changeTracking'; 

Then call the ``#vui.changed()`` mixin within the ``.vui-changed`` class selector: 

.. code-block:: css
  	
  .vui-changed {
      #vui.changed();
  }

*******************
Styling with CSS 
*******************
If you'd prefer to use plain CSS instead of Less, bundle the **changeTracking.css** file with your application's CSS. The ``.vui-changed`` style will be used by the change tracking widgets to apply the highlighting style to the changed elements.


**********************
Resetting the state
**********************
The change-tracking state can be reset for one or more elements by triggering the ``vui-reset`` event on an ancestor container. For instance, this may be called after saving changes.

.. role:: example
    
:example:`Example`

.. raw:: html

    <div id="tracking_container" data-track-changes="true">
        <div class="tracker vui-field-row">
            <label class="vui-label">
                Reset Example
                <input class="input-tracking vui-input" type="text">    
            </label> 
        </div>
    </div>
    <button class="vui-button" onclick="$( '#tracking_container' ).trigger( 'vui-reset' );" value="Reset">Reset</button>

HTML:

.. code-block:: html

    <div id="tracking_container" data-track-changes="true">
        ... 
    </div>
    <script>
        $( '#tracking_container' ).trigger( 'vui-reset' );
    </script>
