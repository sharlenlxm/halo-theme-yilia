<#macro layout title,keywords,description,canonical>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta name="renderer" content="webkit">
  <meta http-equiv="X-UA-Compatible" content="IE=edge" >
  <link rel="dns-prefetch" href="${context!}">
  <title>${title!}</title>
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <meta name="keywords" content="${keywords!}"/>
  <meta name="description" content="${description!}">
  <meta property="og:type" content="website">
  <meta property="og:title" content="${title!}">
  <meta property="og:url" content="${canonical!}">
  <meta property="og:site_name" content="${title!}">
  <meta property="og:description" content="${description!}">
  <meta name="twitter:card" content="summary">
  <meta name="twitter:title" content="${title!}">
  <meta name="twitter:description" content="${description!}">
  <link rel="alternative" href="${context!}/atom.xml" title="${options.blog_title!}" type="application/atom+xml">

  <@global.head/>

  <#include "_partial/css.ftl">
  <style type="text/css">
     #container.show {
       background: <#if settings.slider?? && settings.slider !=''>${settings.slider}<#else>linear-gradient(200deg,#a0cfe4,#e8c37e)</#if>;
     }
  </style>
</head>
<body>
  <div id="container" q-class="show:isCtnShow">
    <canvas id="anm-canvas" class="anm-canvas"></canvas>
    <div class="left-col" q-class="show:isShow">
      <#include "_partial/left-col.ftl">
    </div>
    <div class="mid-col" q-class="show:isShow,hide:isShow|isFalse">
      <#include "_partial/mobile-nav.ftl">
      <div id="wrapper" class="body-wrap">
        <div class="menu-l">
          <div class="canvas-wrap">
            <canvas data-colors="#eaeaea" data-sectionHeight="100" data-contentId="js-content" id="myCanvas1" class="anm-canvas"></canvas>
          </div>
          <div id="js-content" class="content-ll">
            <#nested />
          </div>
        </div>
      </div>
      <#include "_partial/footer.ftl">
    </div>
    <#include "_partial/after-footer.ftl">
    <#include "_partial/tools.ftl">
    <#include "_partial/viewer.ftl">
  </div>
</body>
</html>
</#macro>
