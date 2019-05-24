// CodeMirror, copyright (c) by Marijn Haverbeke and others
!function(e){"object"==typeof exports&&"object"==typeof module?e(require("../../lib/codemirror")):"function"==typeof define&&define.amd?define(["../../lib/codemirror"],e):e(CodeMirror)}(function(e){"use strict";e.defineMode("sass",function(e){function t(e){return new RegExp("^"+e.join("|"))}function r(e,t){var r=e.peek();return")"===r?(e.next(),t.tokenizer=f,"operator"):"("===r?(e.next(),e.eatSpace(),"operator"):"'"===r||'"'===r?(t.tokenizer=o(e.next()),"string"):(t.tokenizer=o(")",!1),"string")}function n(e,t){return function(r,n){return r.sol()&&r.indentation()<=e?(n.tokenizer=f,f(r,n)):(t&&r.skipTo("*/")?(r.next(),r.next(),n.tokenizer=f):r.skipToEnd(),"comment")}}function o(e,t){function r(n,o){var a=n.next(),u=n.peek(),c=n.string.charAt(n.pos-2),s="\\"!==a&&u===e||a===e&&"\\"!==c;return s?(a!==e&&t&&n.next(),o.tokenizer=f,"string"):"#"===a&&"{"===u?(o.tokenizer=i(r),n.next(),"operator"):"string"}return null==t&&(t=!0),r}function i(e){return function(t,r){return"}"===t.peek()?(t.next(),r.tokenizer=e,"operator"):f(t,r)}}function a(t){if(0==t.indentCount){t.indentCount++;var r=t.scopes[0].offset,n=r+e.indentUnit;t.scopes.unshift({offset:n})}}function u(e){1!=e.scopes.length&&e.scopes.shift()}function f(e,t){var c=e.peek();if(e.match("/*"))return t.tokenizer=n(e.indentation(),!0),t.tokenizer(e,t);if(e.match("//"))return t.tokenizer=n(e.indentation(),!1),t.tokenizer(e,t);if(e.match("#{"))return t.tokenizer=i(f),"operator";if('"'===c||"'"===c)return e.next(),t.tokenizer=o(c),"string";if(t.cursorHalf){if("#"===c&&(e.next(),e.match(/[0-9a-fA-F]{6}|[0-9a-fA-F]{3}/)))return e.peek()||(t.cursorHalf=0),"number";if(e.match(/^-?[0-9\.]+/))return e.peek()||(t.cursorHalf=0),"number";if(e.match(/^(px|em|in)\b/))return e.peek()||(t.cursorHalf=0),"unit";if(e.match(p))return e.peek()||(t.cursorHalf=0),"keyword";if(e.match(/^url/)&&"("===e.peek())return t.tokenizer=r,e.peek()||(t.cursorHalf=0),"atom";if("$"===c)return e.next(),e.eatWhile(/[\w-]/),e.peek()||(t.cursorHalf=0),"variable-3";if("!"===c)return e.next(),e.peek()||(t.cursorHalf=0),e.match(/^[\w]+/)?"keyword":"operator";if(e.match(l))return e.peek()||(t.cursorHalf=0),"operator";if(e.eatWhile(/[\w-]/))return e.peek()||(t.cursorHalf=0),"attribute";if(!e.peek())return t.cursorHalf=0,null}else{if("."===c){if(e.next(),e.match(/^[\w-]+/))return a(t),"atom";if("#"===e.peek())return a(t),"atom"}if("#"===c){if(e.next(),e.match(/^[\w-]+/))return a(t),"atom";if("#"===e.peek())return a(t),"atom"}if("$"===c)return e.next(),e.eatWhile(/[\w-]/),"variable-2";if(e.match(/^-?[0-9\.]+/))return"number";if(e.match(/^(px|em|in)\b/))return"unit";if(e.match(p))return"keyword";if(e.match(/^url/)&&"("===e.peek())return t.tokenizer=r,"atom";if("="===c&&e.match(/^=[\w-]+/))return a(t),"meta";if("+"===c&&e.match(/^\+[\w-]+/))return"variable-3";if("@"===c&&e.match(/@extend/)&&(e.match(/\s*[\w]/)||u(t)),e.match(/^@(else if|if|media|else|for|each|while|mixin|function)/))return a(t),"meta";if("@"===c)return e.next(),e.eatWhile(/[\w-]/),"meta";if(e.eatWhile(/[\w-]/))return e.match(/ *: *[\w-\+\$#!\("']/,!1)?"property":e.match(/ *:/,!1)?(a(t),t.cursorHalf=1,"atom"):e.match(/ *,/,!1)?"atom":(a(t),"atom");if(":"===c)return e.match(k)?"keyword":(e.next(),t.cursorHalf=1,"operator")}return e.match(l)?"operator":(e.next(),null)}function c(t,r){t.sol()&&(r.indentCount=0);var n=r.tokenizer(t,r),o=t.current();if("@return"!==o&&"}"!==o||u(r),null!==n){for(var i=t.pos-o.length,a=i+e.indentUnit*r.indentCount,f=[],c=0;c<r.scopes.length;c++){var s=r.scopes[c];s.offset<=a&&f.push(s)}r.scopes=f}return n}var s=["true","false","null","auto"],p=new RegExp("^"+s.join("|")),m=["\\(","\\)","=",">","<","==",">=","<=","\\+","-","\\!=","/","\\*","%","and","or","not",";","\\{","\\}",":"],l=t(m),k=/^::?[a-zA-Z_][\w\-]*/;return{startState:function(){return{tokenizer:f,scopes:[{offset:0,type:"sass"}],indentCount:0,cursorHalf:0,definedVars:[],definedMixins:[]}},token:function(e,t){var r=c(e,t);return t.lastToken={style:r,content:e.current()},r},indent:function(e){return e.scopes[0].offset}}}),e.defineMIME("text/x-sass","sass")});