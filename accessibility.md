---
title: Accessibility
permalink: /accessibility/
---

Web accessibility is all about ensuring people with disabilities have equal access to information and functionality on the web. Since Valence UI mostly provides styles for your application, your application's accessibility is primarily your responsibility. If you use semantic markup, follow web standards, and put in a bit of extra effort, your application can be accessible to everyone.

As you browse the VUI component documentation, you'll find a lot of inline accessibility tips. Below you'll find more general accessibility information. We'll be referring to version 2.0 of the [Web Content Accessibility Guidelines (WCAG 2.0)](http://www.w3.org/TR/WCAG20/) standard.

## Page Title

Each page must include a unique, descriptive and relevant title using the `<title>` element.

{% highlight html %}
<!DOCTYPE html>
<html>
<head>
  <title>Unique, descriptive page title</title>
</head>
</html>
{% endhighlight %}

For [single-page applications](https://en.wikipedia.org/wiki/Single-page_application), make sure the title is kept up-to-date with changes to the primary content by setting `document.title` via JavaScript:

{% highlight javascript %}
  document.title = 'my new page title';
{% endhighlight %}

### WCAG 2.0 Success Criterion 2.4.2 (Level A):

* [Understanding SC 2.4.2](http://www.w3.org/TR/UNDERSTANDING-WCAG20/navigation-mechanisms-title.html)
* [Techniques for providing descriptive titles for web pages](http://www.w3.org/TR/2013/NOTE-WCAG20-TECHS-20130905/G88)

## Text Alternatives

All non-text content (images, charts, audio, video, etc.) must be accompanied by a text alternative. For images, use the `“alt”` attribute or set `alt=“”` for decorative images. For other types of media, alternative formats may include: transcripts for audio, descriptive audio for video.

### WCAG 2.0 Success Criterion 1.1.1 (Level A):

* [Understanding SC 1.1.1](http://www.w3.org/TR/UNDERSTANDING-WCAG20/text-equiv-all.html)
* [WebAIM: Alternate Text](http://webaim.org/techniques/alttext/)

## Keyboard Navigation and Focus Management

All page elements must be accessible using the keyboard in a logical and intuitive order. Keyboard focus should be visible and obvious. Focus should be never be lost when elements such as menus or modal dialogs are opened and closed.

### WCAG 2.0 Success Criterion 2.1.1 (Level A):

* [Understanding SC 2.1.1](http://www.w3.org/TR/UNDERSTANDING-WCAG20/keyboard-operation-keyboard-operable.html)
* [Techniques for using both keyboard and other device-specific functions](http://www.w3.org/TR/2013/NOTE-WCAG20-TECHS-20130905/SCR20)
* [WebAIM: Keyboard Accessibility](http://webaim.org/techniques/keyboard/)

## Color Contrast

Elements in your interface should have sufficient color contrast. To meet WCAG 2.0 Level AA, text should have a contrast ratio of at least 4.5:1 with its background. Larger text should have a ratio of 3:1.

You can use a [color contrast analyzer](http://www.visionaustralia.org/digital-access-cca>) tool or [plugin to Chrome](https://chrome.google.com/webstore/detail/accessibility-developer-t/fpkknkljclfencbdbgkenhalefipecmb?hl=en) or [Firefox](https://addons.mozilla.org/en-US/firefox/addon/accessibility-evaluation-toolb/) to help.

### WCAG 2.0 Success Criterion 1.4.3 (Level AA):

* [Understanding SC 1.4.3](http://www.w3.org/TR/UNDERSTANDING-WCAG20/visual-audio-contrast-contrast.html)

Color should also never be used on its own to convey meaning or information.

### WCAG 2.0 Success Criterion 1.4.1 (Level A):

* [Understanding SC 1.4.1](http://www.w3.org/TR/UNDERSTANDING-WCAG20/visual-audio-contrast-without-color.html)

## Further Reading and Resources

* [WCAG 2.0](http://www.w3.org/WAI/intro/wcag20)
* [How to Meet WCAG 2.0](http://www.w3.org/WAI/WCAG20/quickref/)
* [Web Accessibility Initiative](http://www.w3.org/WAI/)
* [ARIA Authoring Practices](http://www.w3.org/TR/wai-aria-practices/)
* [WebAIM](http://webaim.org/)
