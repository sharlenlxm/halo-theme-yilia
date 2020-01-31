<div class="overlay" style="background: <#if settings.header?? && settings.header !=''>${settings.header}<#else>#4d4d4d</#if>"></div>
<div class="intrude-less">
	<header id="header" class="inner">
		<a href="${context!}" class="profilepic">
			<img src="${user.avatar!}" class="js-avatar">
		</a>
		<hgroup>
		  <h1 class="header-author"><a href="${context!}">${user.nickname!}</a></h1>
		</hgroup>
    <#if settings.subtitle?? && settings.subtitle !=''>
		<p class="header-subtitle">${settings.subtitle!}</p>
    </#if>

		<nav class="header-menu">
			<ul>
        <@menuTag method="list">
          <#list menus?sort_by('priority') as menu>
				    <li><a href="${menu.url!}" target="${menu.target!}">${menu.name!}</a></li>
	        </#list>
        </@menuTag>
			</ul>
		</nav>
    <#if settings.smart_menu_enable!true>
      <nav class="header-smart-menu">
          <#if settings.innerArchive?? && settings.innerArchive!=''>
            <a q-on="click: openSlider(e, 'innerArchive')" href="javascript:void(0)">${settings.innerArchive!}</a>
          </#if>
          <#if settings.friends?? && settings.friends!=''>
            <a q-on="click: openSlider(e, 'friends')" href="javascript:void(0)">${settings.friends!}</a>
          </#if>
          <#if settings.aboutme?? && settings.aboutme!=''>
            <a q-on="click: openSlider(e, 'aboutme')" href="javascript:void(0)">${settings.aboutme!}</a>
          </#if>
      </nav>
    </#if>
		<nav class="header-nav">
			<div class="social">
          <#if settings.github?? && settings.github!=''>
            <a class="github" target="_blank" href="${settings.github!}" title="github"><i class="icon-github"></i></a>
          </#if>
          <#if settings.weibo?? && settings.weibo!=''>
            <a class="weibo" target="_blank" href="${settings.weibo!}" title="weibo"><i class="icon-weibo"></i></a>
          </#if>
          <#if settings.zhihu?? && settings.zhihu!=''>
            <a class="zhihu" target="_blank" href="${settings.zhihu!}" title="zhihu"><i class="icon-zhihu"></i></a>
          </#if>
          <#if settings.qq?? && settings.qq!=''>
            <a class="qq" target="_blank" href="${settings.qq!}" title="qq"><i class="icon-qq"></i></a>
          </#if>
          <#if settings.weixin?? && settings.weixin!=''>
            <a class="weixin" target="_blank" href="${settings.weixin!}" title="weixin"><i class="icon-weixin"></i></a>
          </#if>
          <#if settings.jianshu?? && settings.jianshu!=''>
            <a class="jianshu" target="_blank" href="${settings.jianshu!}" title="jianshu"><i class="icon-jianshu"></i></a>
          </#if>
          <#if settings.douban?? && settings.douban!=''>
            <a class="douban" target="_blank" href="${settings.douban!}" title="douban"><i class="icon-douban"></i></a>
          </#if>
          <#if settings.segmentfault?? && settings.segmentfault!=''>
            <a class="segmentfault" target="_blank" href="${settings.segmentfault!}" title="segmentfault"><i class="icon-segmentfault"></i></a>
          </#if>
          <#if settings.bilibili?? && settings.bilibili!=''>
            <a class="bilibili" target="_blank" href="${settings.bilibili!}" title="bilibili"><i class="icon-bilibili"></i></a>
          </#if>
          <#if settings.acfun?? && settings.acfun!=''>
            <a class="acfun" target="_blank" href="${settings.acfun!}" title="acfun"><i class="icon-acfun"></i></a>
          </#if>
          <#if settings.mail?? && settings.mail!=''>
            <a class="mail" target="_blank" href="${settings.mail!}" title="mail"><i class="icon-mail"></i></a>
          </#if>
          <#if settings.facebook?? && settings.facebook!=''>
            <a class="facebook" target="_blank" href="${settings.facebook!}" title="facebook"><i class="icon-facebook"></i></a>
          </#if>
          <#if settings.google?? && settings.google!=''>
            <a class="google" target="_blank" href="${settings.google!}" title="google"><i class="icon-google"></i></a>
          </#if>
          <#if settings.twitter?? && settings.twitter!=''>
            <a class="twitter" target="_blank" href="${settings.twitter!}" title="twitter"><i class="icon-twitter"></i></a>
          </#if>
          <#if settings.linkedin?? && settings.linkedin!=''>
            <a class="linkedin" target="_blank" href="${settings.linkedin!}" title="linkedin"><i class="icon-linkedin"></i></a>
          </#if>
			</div>
		</nav>
	</header>
</div>
