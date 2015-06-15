##################
Icons
##################

The `vui-icons <https://github.com/Brightspace/valence-ui-icons>`_ library provides mixins and CSS classes for adding icons to your app. All icons are available in the "small" size of 16x16. The file icons are available in three different sizes: 16x16 (small), 24x24 (large), and 50x50 (xlarge).

.. role:: example

:example:`Example`

.. raw:: html

  <div class="vuiexamplebox">
    <div>
      <span class="vui-icon-file-pdf"></span>
      <span class="vui-icon-file-pdf-large"></span>
      <span class="vui-icon-file-pdf-xlarge">
    </div>
  </div>

*******************
Styling with Sass
*******************
If you're familiar with `Sass <http://sass-lang.com/>`_, you can use our Sass mixins to include icons in your CSS. To apply the general styling for icons, call the ``vui-icon`` mixin from within the icon's CSS selector.  Then call the appropriate mixin for the specified icon. For example, the small PDF file icon is generated with the ``vui-filePdf`` mixin.

Scss:

.. code-block:: css

  @import '<npm module path>/vui-icons/icons';

  [class^=icon] {
    @include vui-icon;
  }

  .icon-filePdf {
    @include vui-filePdf;
  }

  .icon-filePdfLarge {
    @include vui-filePdfLarge;
  }

  .icon-filePdfXLarge {
    @include vui-filePdfXLarge;
  }

HTML:

.. code-block:: html

  <span class="icon-filePdf"></span>
  <span class="icon-filePdfLarge"></span>
  <span class="icon-filePdfXLarge"></span>

*******************
Styling with CSS
*******************
If you’d prefer to use plain CSS instead of Sass, bundle the **icons.css** file with your application’s CSS. Then apply the specified CSS class name on a ``<span>`` element.

.. code-block:: html

  <span class="vui-icon-file-pdf"></span>
  <span class="vui-icon-file-pdf-large"></span>
  <span class="vui-icon-file-pdf-xlarge"></span>


*********************
Available Icons
*********************
In the Sass mixins, the icons are named with the following conventions:

.. raw:: html

  <ul>
    <li>vui-action<i>Verb</i> (examples: <tt>vui-actionDownload</tt>, <tt>vui-actionEditBulk</tt>)</li>
    <li>vui-file<i>TypeSize</i>  (examples: <tt>vui-fileVideo</tt>, <tt>vui-fileVideoXLarge</tt>)</li>
    <li>vui-property<i>PropertyName</i> (examples: <tt>vui-propertyDateRestricted</tt>, <tt>vui-propertyLocked</tt>)</li>
  </ul>

In the CSS, the icons are named with the following conventions:

.. raw:: html

  <ul>
    <li>vui-icon-<i>action</i>-<i>verb</i> (examples: <tt>vui-icon-download</tt>, <tt>vui-icon-edit-bulk</tt>)</li>
    <li>vui-icon-file-<i>type</i>-<i>size</i>  (examples: <tt>vui-icon-file-video</tt>, <tt>vui-icon-file-video-xlarge</tt>)</li>
    <li>vui-icon-property-<i>property-name</i> (examples: <tt>vui-icon-property-date-restricted</tt>, <tt>vui-icon-property-locked</tt>)</li>
  </ul>


Actions
==================

.. raw:: html

  <div class="vui-docs-icons clearfix">
    <ul>
      <li><div class="vui-icon-bookmark"></div>actionBookmark</li>
      <li><div class="vui-icon-browse"></div>actionBrowse</li>
      <li><div class="vui-icon-copy"></div>actionCopy</li>
      <li><div class="vui-icon-create"></div>actionCreate</li>
      <li><div class="vui-icon-delete"></div>actionDelete</li>
      <li><div class="vui-icon-download"></div>actionDownload</li>
      <li><div class="vui-icon-edit-bulk"></div>actionEditBulk</li>
      <li><div class="vui-icon-edit"></div>actionEdit</li>
      <li><div class="vui-icon-link"></div>actionLink</li>
      <li><div class="vui-icon-preview"></div>actionPreview</li>
      <li><div class="vui-icon-remove"></div>actionRemove</li>
      <li><div class="vui-icon-reorder"></div>actionReorder</li>
      <li><div class="vui-icon-search"></div>actionSearch</li>
      <li><div class="vui-icon-share"></div>actionShare</li>
      <li><div class="vui-icon-subscribe"></div>actionSubscribe</li>
      <li><div class="vui-icon-tag"></div>actionTag</li>
      <li><div class="vui-icon-upload"></div>actionUpload</li>
    </ul>
  </div>


Files
==================
File icons are available in three different sizes: 16x16, 24x24 (large), and 50x50 (xlarge).

.. raw:: html

  <div class="vui-docs-icons clearfix">
    <ul>
      <li><div class="vui-icon-file-audio"></div>fileAudio</li>
      <li><div class="vui-icon-file-d2l"></div>fileD2L</li>
      <li><div class="vui-icon-file-document"></div>fileDocument</li>
      <li><div class="vui-icon-file-flash"></div>fileFlash</li>
      <li><div class="vui-icon-file-generic"></div>fileGeneric</li>
      <li><div class="vui-icon-file-html"></div>fileHtml</li>
      <li><div class="vui-icon-file-image"></div>fileImage</li>
      <li><div class="vui-icon-file-pdf"></div>filePdf</li>
      <li><div class="vui-icon-file-presentation"></div>filePresentation</li>
      <li><div class="vui-icon-file-spreadsheet"></div>fileSpreadsheet</li>
      <li><div class="vui-icon-file-text"></div>fileText</li>
      <li><div class="vui-icon-file-video"></div>fileVideo</li>
      <li><div class="vui-icon-file-xml"></div>fileXml</li>
      <li><div class="vui-icon-file-zip"></div>fileZip</li>
    </ul>
  </div>

Properties
==================

.. raw:: html

  <div class="vui-docs-icons clearfix">
    <ul>
      <li><div class="vui-icon-property-assessable"></div>propertyAssessable</li>
      <li><div class="vui-icon-property-conditionally-released"></div>propertyConditionallyReleased</li>
      <li><div class="vui-icon-property-date-restricted"></div>propertyDateRestricted</li>
      <li><div class="vui-icon-property-group-restricted"></div>propertyGroupRestricted</li>
      <li><div class="vui-icon-property-hidden"></div>propertyHidden</li>
      <li><div class="vui-icon-property-locked"></div>propertyLocked</li>
    </ul>
  </div>

Other
==================

.. raw:: html

  <div class="vui-docs-icons clearfix">
    <ul>
      <li><div class="vui-icon-collapse-h"></div>collapseHover</li>
      <li><div class="vui-icon-collapse"></div>collapse</li>
      <li><div class="vui-icon-drag-handle"></div>dragHandle</li>
      <li><div class="vui-icon-expand-h"></div>expandHover</li>
      <li><div class="vui-icon-expand"></div>expand</li>
    </ul>
  </div>
