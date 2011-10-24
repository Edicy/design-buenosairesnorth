{% if editmode %}
<div id="langmenu">
{% for language in site.languages %}
  <a{% if language.selected? %} class="active"{% endif %} href="{{ language.url }}">{{ language.title }}</a>
{% endfor %}
{% languageadd %}
</div>
{% else %}
{% if site.has_many_languages? %}
<div id="langmenu">
{% for language in site.languages %}
  <a{% if language.selected? %} class="active"{% endif %} href="{{ language.url }}">{{ language.title }}</a>
{% endfor %}
</div>
{% endif %}
{% endif %}
