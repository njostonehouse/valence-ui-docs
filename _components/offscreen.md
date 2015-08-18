---
title: Off-screen
description: Styles for making information “visible” to screen reader users but hidden from sighted users.
permalink: /:path/offscreen/
---

The [vui-offscreen](https://github.com/Brightspace/valence-ui-offscreen) library provides mixins and CSS for positioning elements off the screen.

Off-screen elements are valuable from an accessibility perspective when you want to have elements that are hidden to sighted users while being recognizable for screen reader users. However, you should make sure to apply off-screen to the correct elements. If you hide elements that receive focus, this might confuse sighted users because they will not be able to see which element has focus. For more information, read [WebAIM's article on Invisible Content](http://webaim.org/techniques/css/invisiblecontent/).

## Styling with Sass

If you're familiar with [Sass](http://sass-lang.com/), you can use our mixins to position elements off-screen . Import and include the `vui-offscreen` mixin in your CSS selector.

Scss:

```css
@import '<npm module path>/vui-offscreen/offscreen';

.offscreen {
	@include vui-offscreen;
}
```

HTML:

```html
<p class="offscreen">
	This text will only be visible to screen readers.
</p>
```

## Styling with CSS

If you'd prefer to use CSS to style lists, bundle the provided **offscreen.css** file with your application's CSS. Then apply the `.vui-offscreen` class to your element.

```html
<p class="vui-offscreen">
	This text will only be visible to screen readers.
</p>
```
