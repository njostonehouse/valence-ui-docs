---
title: Getting Started
permalink: /getting-started/
---

We've built the Valence UI libraries on [Sass](http://sass-lang.com/), which is a CSS pre-processor that allows you to extend the CSS. For most components, we provide both the compiled CSS and Sass mixins that you can use to style and customize your app.

All components are available as [npm modules](https://www.npmjs.org/browse/keyword/vui).

## Comfortable with CSS?

You can style VUI components by just using plain CSS. For components that include CSS files, just bundle those files with your application.

## Comfortable with Sass?

If you'd rather use [Sass](http://sass-lang.com/) to style and customize your app, most VUI components include Sass mixins (Scss syntax) that you can import into your own Sass files.

## Available components
Check out the [Components](/components/] page for a list of available VUI components.

## Installing the components

All of the VUI components are available as [npm modules](https://www.npmjs.org/browse/keyword/vui), so you must have [Node.js](http://nodejs.org/) installed.

To install a component, in your project directory, type the following command:

```shell
npm install vui-{component-name}
```

For example, to install the [vui-icons](https://www.npmjs.com/browse/keyword/vui) library, type: `npm install vui-icons`.

Once installed, the VUI component is available in the `node-modules` directory of your project.

From there you can incorporate the component into your app.  Visit the [docs](/components/) to see how.
