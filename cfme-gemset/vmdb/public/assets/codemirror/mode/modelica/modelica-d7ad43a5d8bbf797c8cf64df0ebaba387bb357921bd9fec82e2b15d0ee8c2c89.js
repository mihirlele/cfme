// CodeMirror, copyright (c) by Marijn Haverbeke and others
// Modelica support for CodeMirror, copyright (c) by Lennart Ochel
!function(e){"object"==typeof exports&&"object"==typeof module?e(require("../../lib/codemirror")):"function"==typeof define&&define.amd?define(["../../lib/codemirror"],e):e(CodeMirror)}(function(e){"use strict";function t(e){for(var t={},n=e.split(" "),r=0;r<n.length;++r)t[n[r]]=!0;return t}function n(t,n){function r(e){if(e)for(var t in e)e.hasOwnProperty(t)&&o.push(t)}"string"==typeof t&&(t=[t]);var o=[];r(n.keywords),r(n.builtin),r(n.atoms),o.length&&(n.helperType=t[0],e.registerHelper("hintWords",t[0],o));for(var i=0;i<t.length;++i)e.defineMIME(t[i],n)}e.defineMode("modelica",function(t,n){function r(e,t){return e.skipToEnd(),t.tokenize=null,"comment"}function o(e,t){for(var n=!1,r;r=e.next();){if(n&&"/"==r){t.tokenize=null;break}n="*"==r}return"comment"}function i(e,t){for(var n=!1,r;null!=(r=e.next());){if('"'==r&&!n){t.tokenize=null,t.sol=!1;break}n=!n&&"\\"==r}return"string"}function l(e,t){for(e.eatWhile(k);e.eat(k)||e.eat(b););var n=e.current();return!t.sol||"package"!=n&&"model"!=n&&"when"!=n&&"connector"!=n?t.sol&&"end"==n&&t.level>0&&t.level--:t.level++,t.tokenize=null,t.sol=!1,c.propertyIsEnumerable(n)?"keyword":f.propertyIsEnumerable(n)?"builtin":p.propertyIsEnumerable(n)?"atom":"variable"}function a(e,t){for(;e.eat(/[^']/););return t.tokenize=null,t.sol=!1,e.eat("'")?"variable":"error"}function u(e,t){return e.eatWhile(k),e.eat(".")&&e.eatWhile(k),(e.eat("e")||e.eat("E"))&&(e.eat("-")||e.eat("+"),e.eatWhile(k)),t.tokenize=null,t.sol=!1,"number"}var s=t.indentUnit,c=n.keywords||{},f=n.builtin||{},p=n.atoms||{},d=/[;=\(:\),{}.*<>+\-\/^\[\]]/,m=/(:=|<=|>=|==|<>|\.\+|\.\-|\.\*|\.\/|\.\^)/,k=/[0-9]/,b=/[_a-zA-Z]/;return{startState:function(){return{tokenize:null,level:0,sol:!0}},token:function(e,t){if(null!=t.tokenize)return t.tokenize(e,t);if(e.sol()&&(t.sol=!0),e.eatSpace())return t.tokenize=null,null;var n=e.next();if("/"==n&&e.eat("/"))t.tokenize=r;else if("/"==n&&e.eat("*"))t.tokenize=o;else{if(m.test(n+e.peek()))return e.next(),t.tokenize=null,"operator";if(d.test(n))return t.tokenize=null,"operator";if(b.test(n))t.tokenize=l;else if("'"==n&&e.peek()&&"'"!=e.peek())t.tokenize=a;else if('"'==n)t.tokenize=i;else{if(!k.test(n))return t.tokenize=null,"error";t.tokenize=u}}return t.tokenize(e,t)},indent:function(t,n){if(null!=t.tokenize)return e.Pass;var r=t.level;return/(algorithm)/.test(n)&&r--,/(equation)/.test(n)&&r--,/(initial algorithm)/.test(n)&&r--,/(initial equation)/.test(n)&&r--,/(end)/.test(n)&&r--,r>0?s*r:0},blockCommentStart:"/*",blockCommentEnd:"*/",lineComment:"//"}});var r="algorithm and annotation assert block break class connect connector constant constrainedby der discrete each else elseif elsewhen encapsulated end enumeration equation expandable extends external false final flow for function if import impure in initial inner input loop model not operator or outer output package parameter partial protected public pure record redeclare replaceable return stream then true type when while within",o="abs acos actualStream asin atan atan2 cardinality ceil cos cosh delay div edge exp floor getInstanceName homotopy inStream integer log log10 mod pre reinit rem semiLinear sign sin sinh spatialDistribution sqrt tan tanh",i="Real Boolean Integer String";n(["text/x-modelica"],{name:"modelica",keywords:t(r),builtin:t(o),atoms:t(i)})});