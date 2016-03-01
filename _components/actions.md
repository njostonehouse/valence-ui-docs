---
title: Actions & Navigation
description: Styles for interactive elements on a page that navigate or perform actions.
components:
- title: Buttons
  package: vui-button
- title: Links
  package: vui-link
- title: Image Actions
  package: vui-image-action
- title: Breadcrumbs
  package: vui-breadcrumbs
order: 10
---
<div>
	<div>
		<button class="vui-button-primary">Okay</button>
		<button class="vui-button">
			<img src="{{ site.baseurl }}/images/print.svg"/>
			&nbsp;Print
		</button>
	</div>
	<div>
		<a class="vui-link">Next</a>
	</div>
	<div>
		<a href="#" class="vui-image-action">
			<img src="{{ site.baseurl }}/images/sliders.svg"/><span>Settings</span>
		</a>
	</div>
	<div>
		<ol class="vui-breadcrumbs">
			<li><a href="#">Everywhere</a></li>
			<li><a href="#">There</a></li>
			<li>Here</li>
		</ol>
	</div>
</div>
