.. title:: Forms

.. contents::
   :depth: 1


Forms are typically comprised of fields, labels, and inputs. 

*********************
Text Inputs
*********************
The `vui-input <https://www.npmjs.com/browse/keyword/vui>`_ library contains Less mixins and CSS that can be used to style inputs.

.. role:: example
    
:example:`Example`

.. raw:: html
    
  <div class="vui-field-row">
    <input style="width:200px;" class="vui-input" type="text" value="Some text" />
    <input style="width:200px;"class="vui-input" type="password" value="my password" />
  </div>
  <div class="vui-field-row">
    <input value="email@company.com" style="width:200px;" class="vui-input" type="email" />
    <input value="http://my-company.com/" style="width:200px;" class="vui-input" type="url" />
  </div>
  <div class="vui-field-row">
    <textarea style="width:400px;" class="vui-input" placeholder="Type some text here"></textarea>
  </div>
  <div class="vui-field-row">
    <select style="width:400px;" class="vui-input">
      <option>Option A</option>
      <option>Option B</option>
      <option>Option C</option>
    </select>
  </div>
  <div class="vui-field-row">
    <select style="width:400px;" class="vui-input" multiple>
      <option>Option 1</option>
      <option>Option 2</option>
      <option>Option 3</option>
      <option>Option 4</option>
      <option>Option 5</option>
      <option>Option 6</option>
    </select>
  </div>

Styling with Less 
==================
To apply styling to text inputs with Less, first import the following libraries into your Less file:

.. code-block:: console

  @import 'node_modules/vui-input/input';
  @import 'node_modules/vui-input/textarea';
  @import 'node_modules/vui-input/select';


Styles can be applied to ``<input>``, ``<textarea>`` and ``<select>`` elements by calling the ``#vui.Input()``, ``#vui.Input.textarea()``, ``#vui.Input.select()`` mixins, respectively.

Less:

.. code-block:: css

  input, 
  input[type="text"], 
  input[type="password"],
  input[type="email"],
  input[type="url"]
  {
    #vui.Input();
  }

  textarea {
    #vui.Input.textarea();
  }
  select {
    #vui.Input.select();
  }


HTML:

.. code-block:: html

  <div class="myFieldRow">
    <input type="text" />
    <input type="password" />
  </div>
  <div class="myFieldRow">
    <input type="email" />
    <input type="url" />
  </div>
  <div class="myFieldRow">
    <textarea placeholder="Type some text here"></textarea>
  </div>
  <div class="myFieldRow">
    <select>
      <option>Option A</option>
      ...
    </select>
  </div>
  <div class="myFieldRow">
    <select multiple>
      <option>Option 1</option>
      <option>Option 2</option>
      ...
    </select>
  </div>

Styling with CSS 
==================
To style text inputs with CSS, apply the ``.vui-input`` class to the  ``<input>``, ``<textarea>`` and ``<select>`` elements.

HTML:

.. code-block:: html

  <div class="vui-field-row">
    <input class="vui-input" type="text" value="Some text" />
    <input class="vui-input" type="password" value="my password" />
  </div>
  <div class="vui-field-row">
    <input class="vui-input" type="email" value="email@company.com" />
    <input class="vui-input" type="url" value="http://my-company.com/" />
  </div>
  <div class="vui-field-row">
    <textarea class="vui-input" placeholder="Type some text here"></textarea>
  </div>
  <div class="vui-field-row">
    <select class="vui-input">
      <option>Option A</option>
      ...
    </select>
  </div>
  <div class="vui-field-row">
    <select class="vui-input" multiple>
      <option>Option 1</option>
      <option>Option 2</option>
      ...
    </select>
  </div>

.. _vui-fieldlabels:

*********************
Fields and Labels
*********************

The `vui-field <https://www.npmjs.com/browse/keyword/vui>`_ library contain a series of Less mixins and CSS that can be used to style fields and labels.

.. admonition::  Accessibility

  Always provide a unique label for every form element. This allows assistive technology (such as screen readers) to correctly interpret your forms. If space is tight, you can hide the label by `moving it off-screen <http://webaim.org/techniques/css/invisiblecontent/>`_.

  For additional information, see `Techniques for WCAG 2.0: Using label elements to associate text labels with form controls <http://www.w3.org/TR/WCAG-TECHS/H44.html>`_.

.. role:: example
    
:example:`Example`

.. raw:: html
    
  <div class="vui-field-row">
    <label class="vui-label">
      Name
      <input type="text" class="vui-input" placeholder="Enter your name" />
    </label>
  </div>
  <div class="vui-field-row">
    <label class="vui-label">
      Email
      <input type="email" class="vui-input" id="email" placeholder="Enter your email" />
    </label>
  </div>

Styling with Less 
==================
If you're familiar with `Less <http://lesscss.org/>`_, style your fields and labels with our Less mixins.  First, you'll need to import the following  libraries into your Less file:

.. code-block:: console
    
  @import 'node_modules/vui-field/label';
  @import 'node_modules/vui-field/field';


Form fields (checkboxes, text inputs, etc.) can be grouped by calling the 
``#vui.FieldRow()`` mixin, which gives the field a standard bottom margin. This mixin would typically be applied to a ``<div>`` (or other element) used to surround each field.

To style field labels, call the ``#vui.Label()`` mixin from within the ``label`` selector.

Less:

.. code-block:: css

  .myFieldRow {
    #vui.FieldRow();
  }

  .myFieldRow > label {
    #vui.Label();
  }

  input {
    #vui.input();
  }

HTML: 

.. code-block:: html

  <div class="myFieldRow">
    <label>
      Name
      <input type="text" placeholder="Enter your name" />
    </label>
  </div>
  <div class="myFieldRow">
    <label>
      Email
      <input type="email" placeholder="Enter your email" />
    </label>
  </div>

Styling with CSS 
==================
If you'd prefer to use CSS instead of Less, you can group and stack form fields vertically by applying the ``.vui-field-row`` class. Then apply the ``.vui-label`` class to a ``<label>`` element.

The ``.vui-field-row`` class gives the field a standard bottom margin.

HTML:

.. code-block:: html

  <div class="vui-field-row">
    <label class="vui-label">
      Name
      <input type="text" class="vui-input" placeholder="Enter your name" />
    </label>
  </div>
  <div class="vui-field-row">
    <label class="vui-label">
      Email
      <input type="email" class="vui-input" id="email" placeholder="Enter your email" />
    </label>
  </div>

****************
Required Fields
****************
The `vui-field <https://www.npmjs.com/browse/keyword/vui>`_ library contain Less mixins and CSS that can be used to indicate whether a field is required.  A required field is distinguished with a red asterisk (*).

.. role:: example
    
:example:`Example`

.. raw:: html
    
  <div class="vui-field-row">
    <label class="vui-label">
      <span class="vui-required">Name</span>
      <input class="vui-input" type="text" placeholder="Enter your name" />
    </label>        
  </div>

.. admonition::  Accessibility

  It's important to note that a required field is indicated with `just a visual flag`. To ensure you meet accessibility requirements, mark up the corresponding input with the `HTML5 "required" attribute <http://www.w3.org/html/wg/drafts/html/master/forms.html#the-required-attribute>`_ and/or the `"aria-required" attribute <http://www.w3.org/TR/wai-aria/states_and_properties#aria-required>`_. For more information, see 
  `MDN: Using the aria-required attribute <https://developer.mozilla.org/en-US/docs/Web/Accessibility/ARIA/ARIA_Techniques/Using_the_aria-required_attribute>`_.


Styling with Less 
==================
A field can be visually flagged as required by applying the ``#vui.Label.required()`` mixin to a selector.

Less:

.. code-block:: css
    
  @import 'node_modules/vui-field/label';

  .required {
    #vui.Label.required();
  }   

HTML:

.. code-block:: html

  <div class="myFieldRow">
    <label>
      <span class="required">Last Name</span>
      <input type="text" placeholder="Enter your name" required />
    </label>
  </div>


Styling with CSS 
==================
To visually flag a field as required with CSS, apply the ``.vui-required`` class to the element containing the label text.

HTML:

.. code-block:: html

  <div class="vui-field-row">
    <label class="vui-label">
      <span class="vui-required">Name</span>
      <input class="vui-input" type="text" placeholder="Enter your name" />
    </label>        
  </div>

.. _vui-fieldsets:

****************
Fieldsets
****************
When you have more than one related form element, group them together using the ``<fieldset>`` element and use the ``<legend>`` element to label the group.

.. admonition::  Accessibility

  To provide a more accessible experience, use fieldsets and legends to group related inputs. For more information, see `Techniques for WCAG 2.0: fieldset and legend <http://www.w3.org/TR/WCAG-TECHS/H71.html>`_.


.. role:: example
    
:example:`Example`

.. raw:: html

  <fieldset class="vui-field-row">
    <legend class="vui-label">Condiments</legend>
    <label>
      <input type="checkbox" />
      Ketchup
    </label>
    <label>
      <input type="checkbox" />
      Mustard
    </label>
    <label>
      <input type="checkbox" />
      Relish
    </label>
  </fieldset>

Styling with Less 
==================
Apply the ``#vui.FieldRow()`` mixin to the ``<fieldset>`` element and apply the ``#vui.Label()`` mixin to the ``<legend>`` element.

Less:

.. code-block:: css

  @import 'node_modules/vui-field/field';
  @import 'node_modules/vui-field/label';

  .myFieldRow, fieldset {
    #vui.FieldRow();
  }
  .myFieldRow > label, legend {
    #vui.Label();
  }

HTML:

.. code-block:: html

  <fieldset>
    <legend>Condiments</legend>
    <label>
      <input type="checkbox" />
      Ketchup
    </label>
    <label>
      <input type="checkbox" />
      Mustard
    </label>
    <label>
      <input type="checkbox" />
      Relish
    </label>
  </fieldset>

Styling with CSS 
==================
Apply the ``.vui-field-row`` class to the ``<fieldset>`` element and apply the ``.vui-label`` class to the ``<legend>`` element.

HTML:

.. code-block:: html

  <fieldset class="vui-field-row">
    <legend class="vui-label">Condiments</legend>
    <label>
      <input type="checkbox" />
      Ketchup
    </label>
    <label>
      <input type="checkbox" />
      Mustard
    </label>
    <label>
      <input type="checkbox" />
      Relish
    </label>
  </fieldset>


