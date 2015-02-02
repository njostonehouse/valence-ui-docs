##################
Accordion
##################

The `vui-accordion-jquery <https://www.npmjs.com/browse/keyword/vui>`_ library provides a jQuery-based widget that displays a panel that when clicked, expands or collapses the associated content.

.. raw:: html

    <div class="vui-typography">
    <div class="vui-accordion" >
        <div class="vui-accordion-header" data-content-labelledby="panel1">
            <h3 class="docs" id="panel1">Accordion 1</h3>
        </div>
        <div class="vui-accordion-content">
            <p>Accordion 1. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
        </div>
        <div class="vui-accordion-header" data-content-labelledby="panel2">
                <h3 class="docs" id="panel2">Accordion 2</h3>
        </div>
        <div class="vui-accordion-content">
            <p>Accordion 2. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
        </div>
    </div>
    </div>

You can apply accordion behaviour to ``<div>`` elements by adding the ``.vui-accordion`` class. Within an accordion panel you'll have an accordion header and accordion content, which are identified by using the ``.vui-accordion-header`` and ``.vui-accordion-content`` classes respectively.

.. admonition::  Accessibility

    An element in the accordion header should be identified as the label for the panel's content by using the ``data-content-labelledby`` attribute. When you use this attribute, the content element will be automatically linked up to the specified header.

****************
Accordion Mode
****************
By default, ``<div>`` elements marked up with ``.vui-accordion`` assume the display mode to be "Accordion", meaning that only one panel can be expanded at a time. This is equivalent to explicitly setting ``data-display-mode="accordion"`` on the element identified as the Accordion.

To initialize the accordion, in your JavaScript call the ``vui_accordion()`` function on the container for the accordion.

.. role:: example

:example:`Example`

.. raw:: html

    <div class="vui-typography">
    <div class="vui-accordion" >
        <div class="vui-accordion-header" data-content-labelledby="candy1930s">
            <h3 class="docs" id="candy1930s">1930s Candy</h3>
        </div>
        <div class="vui-accordion-content">
            <ul>
                <li>Caramel Cubes</li>
                <li>Giant Tootsie Pops</li>
            </ul>
        </div>
        <div class="vui-accordion-header" data-content-labelledby="candy1940s">
                <h3 class="docs" id="candy1940s">1940s Candy</h3>
        </div>
        <div class="vui-accordion-content">
            <ul>
                <li>Licorice Twists</li>
                <li>Mike &amp; Ike</li>
                <li>Whoppers</li>
            </ul>
        </div>
    </div>
    </div>

Here's the HTML:

.. code-block:: html

    <div class="vui-accordion" >
        <div class="vui-accordion-header" data-content-labelledby="candy1930s">
            <h3 class="docs" id="candy1930s">1930s Candy</h3>
        </div>
        <div class="vui-accordion-content">
            <ul>
                <li>Caramel Cubes</li>
                <li>Giant Tootsie Pops</li>
            </ul>
        </div>
        <div class="vui-accordion-header" data-content-labelledby="candy1940s">
                <h3 class="docs" id="candy1940s">1940s Candy</h3>
        </div>
        <div class="vui-accordion-content">
            <ul>
                <li>Licorice Twists</li>
                <li>Mike &amp; Ike</li>
                <li>Whoppers</li>
            </ul>
        </div>
    </div>

    ...

    <script src="node_modules/vui-accordion-jquery/accordion.js"></script>
    <script>
        $(function () {
            $( '.vui-accordion' ).vui_accordion();
        });
    </script>

****************
Stacked Mode
****************
More than one panel can be expanded at a time by setting ``data-display-mode="stacked"`` on the element identified as the Accordion.

.. role:: example

:example:`Example`

.. raw:: html

    <div class="vui-typography">
        <div class="vui-accordion" data-display-mode="stacked">
            <div class="vui-accordion-header" data-content-labelledby="candy1950s">
           <div class="vui-accordion-header-content">
                <h3 class="docs" id="candy1950s"><a href="http://www.d2l.com">1950s Candy</a></h3>
            </div>
            </div>
            <div class="vui-accordion-content">
                <ul>
                    <li>Atomic Fireballs</li>
                    <li>Fizzies Drink Tablets</li>
                    <li>Pez</li>
                </ul>
            </div>
            <div class="vui-accordion-header" data-content-labelledby="candy1960s">
                <h3 class="docs" id="candy1960s">1960s Candy</h3>
            </div>
            <div class="vui-accordion-content">
                <ul>
                    <li>Cherry Sours</li>
                    <li>Cinnamon Bears</li>
                    <li>Lemmonheads</li>
                </ul>
            </div>
            <div class="vui-accordion-header" data-content-labelledby="candy1970s">
                <h3 class="docs" id="candy1970s">1970s Candy</h3>
            </div>
            <div class="vui-accordion-content">
                <ul>
                    <li>Gobstoppers</li>
                    <li>Pop Rocks</li>
                    <li>Ring Pops</li>
                    <li>Zotz</li>
                </ul>
            </div>
        </div>
    </div>

Here's the HTML:

.. code-block:: html

    <div class="vui-accordion" data-display-mode="stacked">
        <div class="vui-accordion-header" data-content-labelledby="candy1950s">
            <h3 class="docs" id="candy1950s">1950s Candy</h3>
        </div>
        <div class="vui-accordion-content">
            <ul>
                <li>Atomic Fireballs</li>
                <li>Fizzies Drink Tablets</li>
                <li>Pez</li>
            </ul>
        </div>
        <div class="vui-accordion-header" data-content-labelledby="candy1960s">
            <h3 class="docs" id="candy1960s">1960s Candy</h3>
        </div>
        <div class="vui-accordion-content">
            <ul>
                <li>Cherry Sours</li>
                <li>Cinnamon Bears</li>
                <li>Lemmonheads</li>
            </ul>
        </div>
        <div class="vui-accordion-header" data-content-labelledby="candy1970s">
            <h3 class="docs" id="candy1970s">1970s Candy</h3>
        </div>
        <div class="vui-accordion-content">
            <ul>
                <li>Gobstoppers</li>
                <li>Pop Rocks</li>
                <li>Ring Pops</li>
                <li>Zotz</li>
            </ul>
        </div>
    </div>

    ...

     <script>
        $(function () {
            $( '.vui-accordion' ).vui_accordion();
        });
    </script>
