/*!
 * jQuery UI Effects Explode 1.12.1
 * http://jqueryui.com
 *
 * Copyright jQuery Foundation and other contributors
 * Released under the MIT license.
 * http://jquery.org/license
 */
!function(e){"function"==typeof define&&define.amd?define(["jquery","../version","../effect"],e):e(jQuery)}(function(e){return e.effects.define("explode","hide",function(i,t){function o(){g.push(this),g.length===h*p&&s()}function s(){r.css({visibility:"visible"}),e(g).remove(),t()}var n,f,d,c,a,l,h=i.pieces?Math.round(Math.sqrt(i.pieces)):3,p=h,r=e(this),u=i.mode,v="show"===u,y=r.show().css("visibility","hidden").offset(),b=Math.ceil(r.outerWidth()/p),w=Math.ceil(r.outerHeight()/h),g=[];for(n=0;n<h;n++)for(c=y.top+n*w,l=n-(h-1)/2,f=0;f<p;f++)d=y.left+f*b,a=f-(p-1)/2,r.clone().appendTo("body").wrap("<div></div>").css({position:"absolute",visibility:"visible",left:-f*b,top:-n*w}).parent().addClass("ui-effects-explode").css({position:"absolute",overflow:"hidden",width:b,height:w,left:d+(v?a*b:0),top:c+(v?l*w:0),opacity:v?0:1}).animate({left:d+(v?0:a*b),top:c+(v?0:l*w),opacity:v?1:0},i.duration||500,i.easing,o)})});