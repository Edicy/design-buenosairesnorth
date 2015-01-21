  <div id="mainmenu">
   <ul>
     {% unless site.root_item.hidden? %}<li><a href="{{ site.root_item.url }}"{% if site.root_item.selected? %} class="active"{% endif %}>{{ site.root_item.title }}</a></li>{% endunless %}
     {% for item in site.visible_menuitems %}
      <li><a href="{{ item.url }}"{% if item.selected? %} class="active"{% endif %}{% unless item.translated? %} class="fci-editor-menuadd untranslated"{% endunless %}>{{ item.title }}</a></li>
     {% endfor %}
      {% if site.hidden_menuitems.size > 0 %}<li class="vg-cms-btn">{% menubtn site.hidden_menuitems %}</li>{% endif %}
      {% if editmode %}<li class="vg-cms-btn">{% menuadd %}</li>{% endif %}
    </ul>
  </div>
  <!--//mainmenu-->

{% for item in site.menuitems_with_hidden %}
      {% if item.blog? %}
        {% assign bloglink = item.url %}
      {% endif %}
{% endfor %}