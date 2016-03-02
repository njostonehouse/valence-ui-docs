---
title: Components
permalink: /components/
---
Here are the available Valence UI components:

{% assign sorted_groups = (site.componentgroups | sort: 'order') %}
{% for group in sorted_groups %}
<div class="component-groups">
	<h2>{{ group.title }}</h2>
	<div>{{ group.description }}</div>
	<div class="component-group-items">
		{% for component in group.components %}
			{% assign item = (site.components | where: 'title', component.title | first) %}
			<table class="vui-table component-group-item">
				<thead>
				<tr>
					<th>

						<div class="component-group-item-title"><a name="{{item.title}}"></a>{{ item.title }}</div>
						<div class="component-group-item-description">{{ item.description }}</div>
					</th>
				</tr>
				</thead>
				<tfoot>
				<tr>
					<th>
						<a class="vui-image-action github-image-action" href="http://github.com/Brightspace/{{ item.github_url }}">
							<img src="{{ site.baseurl }}/images/GitHub-Mark-32px.png"/><span>Developer Guide</span>
						</a>
					</th>
				</tr>
				</tfoot>
				<tbody>
				<tr>
					<td>{{ item.content }}</td>
				</tr>
				</tbody>
			</table>
		{% endfor %}
	</div>
</div>
{% endfor %}
