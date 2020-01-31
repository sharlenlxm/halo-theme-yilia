<script>
	<#--var yiliaConfig = {-->
	<#--	mathjax: ${settings.mathjax?c},-->
	<#--	isHome: ${is_index??},-->
	<#--	isPost: ${is_post?? || is_sheet??},-->
	<#--	isArchive: ${is_archives??},-->
	<#--	isTag: ${is_tag??},-->
	<#--	isCategory: ${is_category??},-->
	<#--	open_in_new: ${settings.open_in_new?c},-->
	<#--	toc_hide_index: <%=theme.toc_hide_index%>,-->
	<#--	root: "${context!}/",-->
	<#--	innerArchive: <%=theme.smart_menu.innerArchive ? true : false%>,-->
	<#--	showTags: <%=(theme.slider && theme.slider.showTags) ? true : false%>-->
	<#--}-->
</script>

<#include "script.ftl">

<#if settings.mathjax!false && (is_post?? || is_sheet??)>
<#include "mathjax.ftl">
</#if>
