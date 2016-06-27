<%@include file="/apps/apus/includes/global.jsp" %>
<%@taglib prefix="apus" uri="http://apus.edu/publicweb/aem/tags" %>

<c:set var="title" value="${properties.title}"/>

<div class="main">
	<div class="featPosts">
    	<div class="postsBig equalHeight">
        	<ul class="slides">
        		<c:forEach items="${apus:parseJSONString(properties.quickLinks)}" varStatus="i" var="item">
            	<c:set var="url" value="${item.linkPath}"/>
	            	<li id="spotlight-${i.index}" class="spotContent">
	                	<div class="featContent">
	                    	<div id="headline1">
	                        	<a title="${url}" href="${url}">
	                            	<span>
	                                	<img src="${item.imagePath}" alt="${item.altText}">
	                                </span>
	                            </a>
	                            <h2>${item.imageTitle}</h2>
	                        </div>
	                        <div class="wrap"> 
								${item.message}
	                        </div>
	                    </div>
	            	</li>
	           	</c:forEach>
        	</ul>
        </div>
        <div class="postsSmall equalHeight tl">
        	<div class="titlebanner">
            	<h3 class="title dark">${title}</h3>
            </div>
            <ul class="pag">
        		<c:forEach items="${apus:parseJSONString(properties.quickLinks)}" varStatus="i" var="item">
	           		<li class="headline1">
	                	<a href="#spotlight-${i.index}" class="paglink-${i.index}">
	                    	<h2>${item.imageTitle}</h2>
	                    </a>
	                </li>
            	</c:forEach>
           	</ul>
        </div>
    </div>
</div>
<div class="clear"></div>


<style type="text/css">
.featPosts ul li li, .featPosts ol li li {
    list-style: disc outside none !important;
    margin-left: 17px;
    padding-left: 5px;
}
.featPosts a {
    text-decoration: none;
    color: #2f4c6c;
}
.featPosts a:hover { color: #cb0e3d; }
.featPosts h1,h2,h3,h4,h5,h6 {
    font-weight: normal;
    margin: 0;
    color: #676363;
}
.featPosts h3 a:hover { 
    text-decoration: none; 
}
.featPosts p { 
    margin: 0 0 16px; 
}
 
 /*dynamic menu */
 
.featPosts .postsSmall ul.pag h2{
    font-size: 15px;
    font-weight: bold;
    color: #0069aa;
    text-align: left;
    margin-left: -15px;
}

.featPosts .postsSmall ul.pag li a.current h2 {
    color: #FFFFFF;
    /* padding: 0 0 0 12px; */ 
    text-align: left;
    margin-left: 0;
}

.featPosts  .pag img{
display:none;
}

.featPosts .postsSmall ul.pag a.current .postmetadata  {
    color: #000;
    margin-left: 0;
    /* padding: 0 0 0 12px;  */
    text-align: left;
}
.featPosts .postsSmall ul.pag .postmetadata {
    color: #666666;
    font-size: 10px;
    font-weight: normal;
    text-transform: uppercase;
    margin-left: -15px;
    text-align: left;
}

.featPosts .featContent .postmetadata {
    color: #666666;
    font-size: 10px;
    font-weight: normal;
    margin-left: 10px;
    margin-top: 5px;
    text-transform: uppercase;
}  
.featPosts .wrap {
    border-top: 1px solid #CCCCCC;
    margin-left: 10px;
    margin-right: 10px;
    margin-top: 5px;
    overflow: hidden;
    padding: 10px 0;
    position: relative;
} 
.featPosts .read-more {
    background: url("//apus.edu/sebin/v/c/trans.png") repeat scroll 0 0 transparent;
    color: #333333;
    padding: 5px;
    position: relative;
    text-align: right;
    top: -19px;
}
.featPosts .read-more a {
    background: none no-repeat scroll 100% 50% transparent;
    font-weight: bold;
    padding-right: 22px;
    position: relative;
    text-decoration: none;
    top: 16px;
}
.featPosts .read-more a:hover {
    color:#000;
} 
/* end read more */ 
.clear, .cleaner {
    clear: both;
    height: 0;
    overflow: hidden;
} 
.featPosts .featContent {
    color: #403D3D;
    padding: 0 0 15px;
    border-right: 1px solid #ccc;
}
.featPosts .featContent p {
    font-size: 12px;
    font-family:verdana;
} 
.featPosts .featContent h2 {
    color: #676363;
    font-size: 18px;
    line-height: 22px;
    margin-left: 10px;
    margin-top: 10px;
} 
.featPosts .featContent a {
    color: #439ECF;
}
.featPosts .featContent a:hover {
    color: #439ECF;
    text-decoration: underline;
} 
.main {
    border-radius: 0 0.6em 0 0;
    border: 1px solid #B2D2E5;
    display: inline;
    float: left;
   font-size: 12px;
    position: relative;
    width: 98.5%;
   /* max-width: 920px;*/
    margin-left: 5px;
    -webkit-box-shadow: 0px 3px 7px rgba(50, 50, 50, 0.4);
    -moz-box-shadow:    0px 3px 7px rgba(50, 50, 50, 0.4);
    box-shadow:         0px 3px 7px rgba(50, 50, 50, 0.4);
}
.featPosts {
    border-radius: 10px 10px 0 0;
    clear: both;
    margin: 0;
    position: relative;
}
.featPosts .postsBig {
    background-color:#fff;
    display: block;
    overflow: hidden;
    width: 70%;
    /*max-height: 30em;*/
    float: left;
    -webkit-border-radius: 10px 0 0 10px;
}
.featPosts .postsBig img {
    max-width: 100%;
    height: auto
}
.featPosts .postsSmall {
    float: left;
    padding-bottom: 1px;
    width: 30%;
    background: #ffffff; /* Old browsers */
    background: -moz-linear-gradient(top,  #ffffff 0%, #f3f9fc 100%); /* FF3.6+ */
    background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,#ffffff), color-stop(100%,#f3f9fc)); /* Chrome,Safari4+ */
    background: -webkit-linear-gradient(top,  #ffffff 0%,#f3f9fc 100%); /* Chrome10+,Safari5.1+ */
    background: -o-linear-gradient(top,  #ffffff 0%,#f3f9fc 100%); /* Opera 11.10+ */
    background: -ms-linear-gradient(top,  #ffffff 0%,#f3f9fc 100%); /* IE10+ */
    background: linear-gradient(to bottom,  #ffffff 0%,#f3f9fc 100%); /* W3C */
    filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#ffffff', endColorstr='#f3f9fc',GradientType=0 ); /* IE6-9 */
}
.featPosts .postsSmall p {
    margin: 1px 0 0;
    font-size: 11px;
    color: #777;
}
.featPosts .postsSmall ul.pag li a {
    font-weight: bold;
    display: block;
    margin: 0;
    position: relative;
    padding: 10px 30px;
    overflow: hidden;
    color: #15478C;
    min-height: 39px;
    width: inherit;
}
.featPosts .postsSmall ul.pag li a:hover {
    background: #c2e0f6 repeat-x;
    width: inherit;
    overflow: hidden;
}
 
.featPosts .postsSmall ul.pag li {
    display: block;
    list-style: none outside none;
    border-bottom: 1px dotted #CCC;
    /* margin: 10px 0;
    padding: 0 0 10px; */
} 
.featPosts .pag {
    width: 100%;
} 
.featPosts .postsSmall ul.pag .current a {
    background: url("https://apus.edu/sebin/z/q/arrow3.png") no-repeat scroll 1px center transparent !important;
    color: #FFFFFF;
    margin-left: -21px;
    z-index: 11;
}
.featPosts .postsSmall ul.pag li a.current p {
    color:#000 !important; 
}
.featPosts ul {
    list-style:none;
    list-style-image:none;
    padding: 0;
    margin: 0;
}
.featPosts ul li.spotContent {
    display:none;
}
.featPosts p.postmetadata {
    font-size: 10px;
    text-transform: uppercase;
    font-weight: normal;
    color: #666;
} 
.titlebanner {
    background: #0069AA;
    width: 100%;
}
.featPosts .postsBig p.postmetadata {
    margin: 5px 0; 
}
.featPosts p.postmetadata a { 
color: #439ecf; 
}
.featPosts p.postmetadata a:hover { 
text-decoration:underline
}
.featPosts .postsSmall li.active span.arrow, 
.postsSmall li:hover span.arrow { 
    display: block; 
}
.featPosts h2.title {
    font-size: 18px;
    font-weight: normal;
    color: #003f62;
    margin: 0 0 10px 4px;
}
.featPosts h3.title {
    color: #FFF;
    font-size: 1.5em;
    text-transform: uppercase;
    line-height: 25px;
    padding: 15px 0;
    text-align: center;
}
.featPosts h3.title a { color: #fff; }
.featPosts h3.lightblue a { color: #333; }
.featPosts h3.title a:hover { text-decoration: underline; }


.stylebox_bottommid {
    border-bottom: 1px solid #CCCCCC;
    height: 1px;
}
/* #Mobile View that collapses the right col at 39em breakpoint */
@media only screen and (max-width: 39em) {

    .mobileview {
        display: block;
    }
    .featPosts .postsBig {
        width: 100%;
    }
    .postsSmall.equalHeight.tl {
        display: none;
    }
    .featPosts .postsBig img {
        height: auto;
        width: 99.9%;
        padding: 0 0 10px 0;
    }
    .featPosts .featContent {
        padding: 0 0 15px 0;
    }
}
</style>

<script type="text/javascript">
    $(document).ready(function() {
        var timeInterval, tabCount = 0, currnetIndex = 1;
        tabCount = $('.pag').find('li a').length;
        var tabContentObj = $('.spotContent');
        changeTabIndex();
        timeInterval = setInterval(function () { 
            changeTabIndex(); 
        }, 4 * 1000);
        function changeTabIndex() {
            if (currnetIndex > tabCount) {
                currnetIndex = 1;
            }
            tabContentObj.hide();
            $('.pag').find('li.current').removeClass('current');
            var currentAncorObj = $('.pag').find('li a').eq(currnetIndex - 1);
            currentAncorObj.parent().addClass('current');
            $(currentAncorObj.attr('href')).show();
            currnetIndex++;
        };
        $('.pag li').mouseenter(function () {
            clearInterval(timeInterval);
        }).mouseleave(function () {
            timeInterval = setInterval(function () { 
                changeTabIndex(); 
            }, 4 * 1000);
        });
        $('.pag li a').click(function () {
            tabContentObj.hide();
            $('.pag').find('li.current').removeClass('current');
            var currentAncorObj = $(this);
            currnetIndex = $('.pag').find('li a').index($(this)) + 1;
            currentAncorObj.parent().addClass('current');
            $(currentAncorObj.attr('href')).show();
            currnetIndex++;
            //return false;
        });
    });
</script>