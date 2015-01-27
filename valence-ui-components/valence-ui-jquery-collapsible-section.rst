####################
Collapsible Section
####################

The `vui-collapsible-section-jquery <https://www.npmjs.com/browse/keyword/vui>`_ library provides a jQuery-based widget representing a collapsible section of content.

.. role:: example
    
:example:`Example`

.. raw:: html

        <div style="margin-left:2em;">
	    <h4 id="coll-hdg1" class="vui-heading-collapsible" data-target="collapse01">
	        Collapsible section: Expanded by default
	    </h4>
	    <div id="collapse01">
            <span>This section is expanded and so you can read all the details that pertain to this section.</span>

	    </div>
	    <h4 id="coll-hdg2" class="vui-heading-collapsible" data-target="collapse02">
	        Collapsible section: Collapsed by default
	    </h4>
	    <div id="collapse02" style="display:none;">
            <span>This section is collapsed by default. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span>			
	    </div>
        </div>

Here's the HTML:

.. code-block:: html

    <h4 id="coll-hdg1" class="vui-heading-collapsible" data-target="collapse01">
        Collapsible section: Expanded by default
    </h4>
    <div id="collapse01">
        <span>This section is expanded and so you can read all the details that pertain to this section.</span>
    </div>
    <h4 id="coll-hdg2" class="vui-heading-collapsible" data-target="collapse02">
        Collapsible section: Collapsed by default
    </h4>
    <div id="collapse02" style="display:none;">
        <span>This section is collapsed by default. Lorem Ipsum ...</span>         
    </div>

    ...
    
    <script src="node_modules/vui-collapsible-section-jquery/collapsibleSection.js"></script>
    <script>
        $(function () {
            $( '#coll-hdg1' ).vui_collapsibleSection();
            $( '#coll-hdg2' ).vui_collapsibleSection();
        });
    </script>


A collapsible section is comprised of a heading and content. To create a collapsible section, you need to:

- Add the ``.vui-heading-collapsible`` class to your heading. This class specifies that this is a collapsible heading.

- Add the ``data-target=""`` attribute to your heading. The value is the ``id`` for the content associated with the section.

- Make your content appear right below the heading and include the same ``id`` specified in the ``data-target`` attribute.

- Initialize the collapsible section widget by calling the ``vui_collapsibleSection()`` function on the heading element.  


If you prefer to have the section collapsed by default, add the ``display:none`` CSS style to the element containing the content. If the content isn't hidden, then by default, the content is expanded.


