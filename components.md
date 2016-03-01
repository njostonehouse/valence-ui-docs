---
title: Components
permalink: /components/
---

Here are the available Valence UI components:
{% assign sorted_groups = (site.components | sort: 'order') %}
{% for group in sorted_groups %}
<div class="component-groups">
	<div class="component-group-title">{{ group.title }}</div>
	<div class="component-group-description">{{ group.description }}</div>
	{{ group.content }}
	<ul class="component-list">
	{% for component in group.components %}
		<li>
			<a href="https://www.npmjs.com/package/{{component.package}}">{{component.title}}</a>
		</li>
	{% endfor %}
	</ul>
</div>
{% endfor %}
