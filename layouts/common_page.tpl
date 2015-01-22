<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="{{ page.language_code }}" lang="{{ page.language_code }}">
<head>

{% include "SiteHeader" %}
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
   <div id="content_inner2" class="clearfix content-hyphenate" data-search-indexing-allowed="true">
    {% content %}
   </div>
<div id="sidebar" class="clearfix">
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
  {% include "JS" %}
</body>
</html>