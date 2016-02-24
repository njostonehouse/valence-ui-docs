---
title: Components
permalink: /components/
---

Here are the available Valence UI components:

<ul class="component-list">
{% for component in site.components %}
	<li>
		<a href="{{component.url | prepend: site.github.url }}">{{component.title}}</a><br />
		{{component.description}}
	</li>
{% endfor %}
</ul>
