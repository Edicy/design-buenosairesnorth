{% for item in site.menuitems %}{% if item.selected? %}
{% if editmode %}
<div id="submenu" class="clearfix">
  <ul>{% for level2 in item.visible_children %}
    <li{% unless level2.translated? %} class="untranslated"{% endunless %}><a href="{{ level2.url }}"{% if level2.selected? %} class="active"{% endif %}{% unless level2.translated? %} class="fci-editor-menuadd"{% endunless %}>{{ level2.title }}</a></li>
    {% endfor %}
      <li>{% menubtn item.hidden_children %}</li>
      <li>{% menuadd parent="item" %}</li>  
    </ul>
   </div>
      {% else %}
      {% if item.children? %}
      <div id="submenu" class="clearfix">
  <ul>{% for level2 in item.children %}
    <li><a href="{{ level2.url }}"{% if level2.selected? %} class="active"{% endif %}>{{ level2.title }}</a></li>
    {% endfor %}
    </ul>
   </div>
      {% endif %}
      {% endif %}
{% endif %}{% endfor %}
