/*!
 * jQuery UI Position 1.12.1
 * http://jqueryui.com
 *
 * Copyright jQuery Foundation and other contributors
 * Released under the MIT license.
 * http://jquery.org/license
 *
 * http://api.jqueryui.com/position/
 */
!function(t){"function"==typeof define&&define.amd?define(["jquery","./version"],t):t(jQuery)}(function(t){return function(){function i(t,i,o){return[parseFloat(t[0])*(c.test(t[0])?i/100:1),parseFloat(t[1])*(c.test(t[1])?o/100:1)]}function o(i,o){return parseInt(t.css(i,o),10)||0}function e(i){var o=i[0];return 9===o.nodeType?{width:i.width(),height:i.height(),offset:{top:0,left:0}}:t.isWindow(o)?{width:i.width(),height:i.height(),offset:{top:i.scrollTop(),left:i.scrollLeft()}}:o.preventDefault?{width:0,height:0,offset:{top:o.pageY,left:o.pageX}}:{width:i.outerWidth(),height:i.outerHeight(),offset:i.offset()}}var l,n=Math.max,f=Math.abs,s=/left|center|right/,h=/top|center|bottom/,r=/[\+\-]\d+(\.[\d]+)?%?/,p=/^\w+/,c=/%$/,a=t.fn.position;t.position={scrollbarWidth:function(){if(void 0!==l)return l;var i,o,e=t("<div style='display:block;position:absolute;width:50px;height:50px;overflow:hidden;'><div style='height:100px;width:auto;'></div></div>"),n=e.children()[0];return t("body").append(e),i=n.offsetWidth,e.css("overflow","scroll"),o=n.offsetWidth,i===o&&(o=e[0].clientWidth),e.remove(),l=i-o},getScrollInfo:function(i){var o=i.isWindow||i.isDocument?"":i.element.css("overflow-x"),e=i.isWindow||i.isDocument?"":i.element.css("overflow-y"),l="scroll"===o||"auto"===o&&i.width<i.element[0].scrollWidth,n="scroll"===e||"auto"===e&&i.height<i.element[0].scrollHeight;return{width:n?t.position.scrollbarWidth():0,height:l?t.position.scrollbarWidth():0}},getWithinInfo:function(i){var o=t(i||window),e=t.isWindow(o[0]),l=!!o[0]&&9===o[0].nodeType,n=!e&&!l;return{element:o,isWindow:e,isDocument:l,offset:n?t(i).offset():{left:0,top:0},scrollLeft:o.scrollLeft(),scrollTop:o.scrollTop(),width:o.outerWidth(),height:o.outerHeight()}}},t.fn.position=function(l){if(!l||!l.of)return a.apply(this,arguments);l=t.extend({},l);var c,d,g,u,m,w,W=t(l.of),v=t.position.getWithinInfo(l.within),y=t.position.getScrollInfo(v),H=(l.collision||"flip").split(" "),b={};return w=e(W),W[0].preventDefault&&(l.at="left top"),d=w.width,g=w.height,u=w.offset,m=t.extend({},u),t.each(["my","at"],function(){var t=(l[this]||"").split(" "),i,o;1===t.length&&(t=s.test(t[0])?t.concat(["center"]):h.test(t[0])?["center"].concat(t):["center","center"]),t[0]=s.test(t[0])?t[0]:"center",t[1]=h.test(t[1])?t[1]:"center",i=r.exec(t[0]),o=r.exec(t[1]),b[this]=[i?i[0]:0,o?o[0]:0],l[this]=[p.exec(t[0])[0],p.exec(t[1])[0]]}),1===H.length&&(H[1]=H[0]),"right"===l.at[0]?m.left+=d:"center"===l.at[0]&&(m.left+=d/2),"bottom"===l.at[1]?m.top+=g:"center"===l.at[1]&&(m.top+=g/2),c=i(b.at,d,g),m.left+=c[0],m.top+=c[1],this.each(function(){var e,s,h=t(this),r=h.outerWidth(),p=h.outerHeight(),a=o(this,"marginLeft"),w=o(this,"marginTop"),x=r+a+o(this,"marginRight")+y.width,T=p+w+o(this,"marginBottom")+y.height,L=t.extend({},m),P=i(b.my,h.outerWidth(),h.outerHeight());"right"===l.my[0]?L.left-=r:"center"===l.my[0]&&(L.left-=r/2),"bottom"===l.my[1]?L.top-=p:"center"===l.my[1]&&(L.top-=p/2),L.left+=P[0],L.top+=P[1],e={marginLeft:a,marginTop:w},t.each(["left","top"],function(i,o){t.ui.position[H[i]]&&t.ui.position[H[i]][o](L,{targetWidth:d,targetHeight:g,elemWidth:r,elemHeight:p,collisionPosition:e,collisionWidth:x,collisionHeight:T,offset:[c[0]+P[0],c[1]+P[1]],my:l.my,at:l.at,within:v,elem:h})}),l.using&&(s=function(t){var i=u.left-L.left,o=i+d-r,e=u.top-L.top,s=e+g-p,c={target:{element:W,left:u.left,top:u.top,width:d,height:g},element:{element:h,left:L.left,top:L.top,width:r,height:p},horizontal:o<0?"left":i>0?"right":"center",vertical:s<0?"top":e>0?"bottom":"middle"};d<r&&f(i+o)<d&&(c.horizontal="center"),g<p&&f(e+s)<g&&(c.vertical="middle"),n(f(i),f(o))>n(f(e),f(s))?c.important="horizontal":c.important="vertical",l.using.call(this,t,c)}),h.offset(t.extend(L,{using:s}))})},t.ui.position={fit:{left:function(t,i){var o=i.within,e=o.isWindow?o.scrollLeft:o.offset.left,l=o.width,f=t.left-i.collisionPosition.marginLeft,s=e-f,h=f+i.collisionWidth-l-e,r;i.collisionWidth>l?s>0&&h<=0?(r=t.left+s+i.collisionWidth-l-e,t.left+=s-r):h>0&&s<=0?t.left=e:s>h?t.left=e+l-i.collisionWidth:t.left=e:s>0?t.left+=s:h>0?t.left-=h:t.left=n(t.left-f,t.left)},top:function(t,i){var o=i.within,e=o.isWindow?o.scrollTop:o.offset.top,l=i.within.height,f=t.top-i.collisionPosition.marginTop,s=e-f,h=f+i.collisionHeight-l-e,r;i.collisionHeight>l?s>0&&h<=0?(r=t.top+s+i.collisionHeight-l-e,t.top+=s-r):h>0&&s<=0?t.top=e:s>h?t.top=e+l-i.collisionHeight:t.top=e:s>0?t.top+=s:h>0?t.top-=h:t.top=n(t.top-f,t.top)}},flip:{left:function(t,i){var o=i.within,e=o.offset.left+o.scrollLeft,l=o.width,n=o.isWindow?o.scrollLeft:o.offset.left,s=t.left-i.collisionPosition.marginLeft,h=s-n,r=s+i.collisionWidth-l-n,p="left"===i.my[0]?-i.elemWidth:"right"===i.my[0]?i.elemWidth:0,c="left"===i.at[0]?i.targetWidth:"right"===i.at[0]?-i.targetWidth:0,a=-2*i.offset[0],d,g;h<0?(d=t.left+p+c+a+i.collisionWidth-l-e,(d<0||d<f(h))&&(t.left+=p+c+a)):r>0&&(g=t.left-i.collisionPosition.marginLeft+p+c+a-n,(g>0||f(g)<r)&&(t.left+=p+c+a))},top:function(t,i){var o=i.within,e=o.offset.top+o.scrollTop,l=o.height,n=o.isWindow?o.scrollTop:o.offset.top,s=t.top-i.collisionPosition.marginTop,h=s-n,r=s+i.collisionHeight-l-n,p="top"===i.my[1],c=p?-i.elemHeight:"bottom"===i.my[1]?i.elemHeight:0,a="top"===i.at[1]?i.targetHeight:"bottom"===i.at[1]?-i.targetHeight:0,d=-2*i.offset[1],g,u;h<0?(u=t.top+c+a+d+i.collisionHeight-l-e,(u<0||u<f(h))&&(t.top+=c+a+d)):r>0&&(g=t.top-i.collisionPosition.marginTop+c+a+d-n,(g>0||f(g)<r)&&(t.top+=c+a+d))}},flipfit:{left:function(){t.ui.position.flip.left.apply(this,arguments),t.ui.position.fit.left.apply(this,arguments)},top:function(){t.ui.position.flip.top.apply(this,arguments),t.ui.position.fit.top.apply(this,arguments)}}}}(),t.ui.position});