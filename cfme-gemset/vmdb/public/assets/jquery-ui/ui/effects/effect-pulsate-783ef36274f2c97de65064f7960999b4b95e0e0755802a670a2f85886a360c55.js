/*!
 * jQuery UI Effects Pulsate 1.12.1
 * http://jqueryui.com
 *
 * Copyright jQuery Foundation and other contributors
 * Released under the MIT license.
 * http://jquery.org/license
 */
!function(e){"function"==typeof define&&define.amd?define(["jquery","../version","../effect"],e):e(jQuery)}(function(e){return e.effects.define("pulsate","show",function(i,n){var t=e(this),f=i.mode,s="show"===f,o="hide"===f,u=s||o,a=2*(i.times||5)+(u?1:0),c=i.duration/a,d=0,r=1,h=t.queue().length;for(!s&&t.is(":visible")||(t.css("opacity",0).show(),d=1);r<a;r++)t.animate({opacity:d},c,i.easing),d=1-d;t.animate({opacity:d},c,i.easing),t.queue(n),e.effects.unshift(t,h,a+1)})});