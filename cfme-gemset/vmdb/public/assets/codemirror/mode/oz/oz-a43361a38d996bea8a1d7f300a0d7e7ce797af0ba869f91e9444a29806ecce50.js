// CodeMirror, copyright (c) by Marijn Haverbeke and others
!function(e){"object"==typeof exports&&"object"==typeof module?e(require("../../lib/codemirror")):"function"==typeof define&&define.amd?define(["../../lib/codemirror"],e):e(CodeMirror)}(function(e){"use strict";e.defineMode("oz",function(e){function t(e){return new RegExp("^(("+e.join(")|(")+"))\\b")}function n(e,t){if(e.eatSpace())return null;if(e.match(/[{}]/))return"bracket";if(e.match(/(\[])/))return"keyword";if(e.match(s)||e.match(d))return"operator";if(e.match(h))return"atom";var n=e.match(p);if(n)return t.doInCurrentLine?t.doInCurrentLine=!1:t.currentIndent++,"proc"==n[0]||"fun"==n[0]?t.tokenize=a:"class"==n[0]?t.tokenize=r:"meth"==n[0]&&(t.tokenize=o),"keyword";if(e.match(z)||e.match(k))return"keyword";if(e.match(b))return t.currentIndent--,"keyword";var u=e.next();if('"'==u||"'"==u)return t.tokenize=c(u),t.tokenize(e,t);if(/[~\d]/.test(u)){if("~"==u){if(!/^[0-9]/.test(e.peek()))return null;if("0"==e.next()&&e.match(/^[xX][0-9a-fA-F]+/)||e.match(/^[0-9]*(\.[0-9]+)?([eE][~+]?[0-9]+)?/))return"number"}return"0"==u&&e.match(/^[xX][0-9a-fA-F]+/)||e.match(/^[0-9]*(\.[0-9]+)?([eE][~+]?[0-9]+)?/)?"number":null}return"%"==u?(e.skipToEnd(),"comment"):"/"==u&&e.eat("*")?(t.tokenize=i,i(e,t)):f.test(u)?"operator":(e.eatWhile(/\w/),"variable")}function r(e,t){return e.eatSpace()?null:(e.match(/([A-Z][A-Za-z0-9_]*)|(`.+`)/),t.tokenize=n,"variable-3")}function o(e,t){return e.eatSpace()?null:(e.match(/([a-zA-Z][A-Za-z0-9_]*)|(`.+`)/),t.tokenize=n,"def")}function a(e,t){return e.eatSpace()?null:!t.hasPassedFirstStage&&e.eat("{")?(t.hasPassedFirstStage=!0,"bracket"):t.hasPassedFirstStage?(e.match(/([A-Z][A-Za-z0-9_]*)|(`.+`)|\$/),t.hasPassedFirstStage=!1,t.tokenize=n,"def"):(t.tokenize=n,null)}function i(e,t){for(var r=!1,o;o=e.next();){if("/"==o&&r){t.tokenize=n;break}r="*"==o}return"comment"}function c(e){return function(t,r){for(var o=!1,a,i=!1;null!=(a=t.next());){if(a==e&&!o){i=!0;break}o=!o&&"\\"==a}return!i&&o||(r.tokenize=n),"string"}}function u(){var e=l.concat(m);return new RegExp("[\\[\\]]|("+e.join("|")+")$")}var f=/[\^@!\|<>#~\.\*\-\+\\\/,=]/,d=/(<-)|(:=)|(=<)|(>=)|(<=)|(<:)|(>:)|(=:)|(\\=)|(\\=:)|(!!)|(==)|(::)/,s=/(:::)|(\.\.\.)|(=<:)|(>=:)/,l=["in","then","else","of","elseof","elsecase","elseif","catch","finally","with","require","prepare","import","export","define","do"],m=["end"],h=t(["true","false","nil","unit"]),k=t(["andthen","at","attr","declare","feat","from","lex","mod","mode","orelse","parser","prod","prop","scanner","self","syn","token"]),p=t(["local","proc","fun","case","class","if","cond","or","dis","choice","not","thread","try","raise","lock","for","suchthat","meth","functor"]),z=t(l),b=t(m);return{startState:function(){return{tokenize:n,currentIndent:0,doInCurrentLine:!1,hasPassedFirstStage:!1}},token:function(e,t){return e.sol()&&(t.doInCurrentLine=0),t.tokenize(e,t)},indent:function(t,n){var r=n.replace(/^\s+|\s+$/g,"");return r.match(b)||r.match(z)||r.match(/(\[])/)?e.indentUnit*(t.currentIndent-1):t.currentIndent<0?0:t.currentIndent*e.indentUnit},fold:"indent",electricInput:u(),lineComment:"%",blockCommentStart:"/*",blockCommentEnd:"*/"}}),e.defineMIME("text/x-oz","oz")});