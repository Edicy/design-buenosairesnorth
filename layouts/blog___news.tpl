<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>

{% include "SiteHeader" %}
  {{ blog.rss_link }}
  <title>{{site.name}} &raquo; {{page.title}}</title>
</head>
<body>
<div id="wrap" class="clearfix">
	<div id="header">
  <div id="logo">
   <h1 class="clearfix">{% editable site.header %}</h1>
  </div>
  <!--//logo-->
{% include "Mainmenu" %}
      {% include "MobileMenus" %}
  <div class="clearer"></div>
	</div>
	<!--//header-->
    <div id="content_top"></div>
   <div id="content_inner">
   <div class="clearer"></div>
   <div id="content_inner2">
     {% addbutton class="add-article" %}
     
    {% for article in articles %}
<div class="entry clearfix">
  <h1><a href="{{ article.url }}">{{ article.title }}</a> <span class="author">{{ article.author.name }}</span> <span class="date">{{ article.created_at | format_date:"short" }}</span></a></h1>
<div class="articlebody">
  {{ article.excerpt }}<br /> <a href="{{ article.url }}">{{ "read_more" | lc }}</a>, <a href="{{ article.url }}#comments">{{ "comments_for_count" | lc }}: {{ article.comments_count }}</a>
</div>
</div>
{% endfor %}
   </div>
<div id="sidebar">
  <div class="rss">
<a href="{{ bloglink }}.rss">RSS</a>
</div>
{% include "Submenu" %}
{% include "Contact" %}
</div>
   <!--//contact-->
  <div class="clearer"></div>
  </div>
  <div id="content_bottom"></div>
  <!--//footer_box-->
  <div id="edicy">
   {% loginblock %}{{ "footer_login_link" | lc }}{% endloginblock %}
  </div>
  <!--//edicy-->
{% include "Search" %}
{% include "Langmenu" %}
	<!--//footer-->
</div>
<!--//wrap-->
  {% unless editmode %}{{ site.analytics }}{% endunless %}
  {% include "JS" %}
</body>
</html>