---
title: Button
description: Styles for primary and default buttons, as well as buttons with icons.
---

The [vui-button](https://github.com/Brightspace/valence-ui-button) library contains mixins and CSS that you can use to style buttons.

Example:

<div class="vuiexamplebox vui-typography">
	<button class="vui-button vui-primary">Button 1</button>
	<button class="vui-button">Button 2</button>
	<input class="vui-button" type="button" value="Button 3" />
	<button class="vui-button" disabled="disabled">Button 4</button>
</div>

## Styling with Sass

If you're familiar with [Sass](http://sass-lang.com/), you can use our mixins to style buttons. Import and include the `vui-button` mixin in your CSS selector. In addition, you can apply primary button styles by also using the `vui-button-primary` mixin.

Scss:

{% highlight css %}
@import '<npm module path>/vui-button/button';

button, input[type=button] {
	@include vui-button;
}

button.primary {
	@include vui-button-primary;
}
{% endhighlight %}

HTML:

{% highlight html %}
<button class="primary">Button 1</button>
<button>Button 2</button>
<input type="button" value="Button 3" />
<button disabled="disabled">Button 4</button>
{% endhighlight %}

## Styling with CSS

If you prefer to use CSS to style elements, bundle the `button.css` file with your application's CSS. Then apply the `.vui-button` and `.vui-button-primary` classes to your button elements.

{% highlight html %}
<button class="vui-button vui-primary">Button 1</button>
<button class="vui-button">Button 2</button>
<input class="vui-button" type="button" value="Button 3" />
<button class="vui-button" disabled="disabled">Button 4</button>
{% endhighlight %}

## Buttons with Icons

To include an icon inside a button, add a `<span>` element inside the button and apply the appropriate mixin or CSS class for the icon.  For more information, see Icons.

<div class="vuiexamplebox vui-typography">
	<div class="vui-field-row">
		<button class="vui-button">
			<span class="vui-icon-bookmark"></span> Bookmark
		</button>
		<button class="vui-button">
			<span class="vui-icon-edit"></span> Edit
		</button>
	</div>
	<div>
		<button class="vui-button">
			<span class="vui-icon-bookmark"></span>
			<span class="vui-offscreen">Bookmark</span>
		</button>
		<button class="vui-button">
			<span class="vui-icon-edit"></span>
			<span class="vui-offscreen">Edit</span>
		</button>
	</div>
</div>

### Accessibility

Always provide text for buttons even if the button is simply an icon.  You can achieve this by providing off-screen text, which can be interpreted by assistive technologies. For more information, see [Off-screen](/components/offscreen.html).

Scss:

{% highlight css %}
.icon-bookmark,
.icon-edit {
	@include vui-icon;
}

.icon-bookmark {
	@include vui-actionBookmark;
}

.icon-edit {
	@include vui-actionEdit;
}
{% endhighlight %}

HTML using CSS generated from Sass:

{% highlight html %}
<button>
	<span class="icon-bookmark"></span>
	<span class="offscreen">Bookmark</span>
</button>
<button>
	<span class="icon-edit"></span>
	Edit
</button>
{% endhighlight %}

HTML using plain CSS:

{% highlight html %}
<button class="vui-button">
	<span class="vui-icon-bookmark"></span>
	<span class="vui-offscreen">Bookmark</span>
</button>
<button class="vui-button">
	<span class="vui-icon-edit"></span>
	Edit
</button>
{% endhighlight %}
