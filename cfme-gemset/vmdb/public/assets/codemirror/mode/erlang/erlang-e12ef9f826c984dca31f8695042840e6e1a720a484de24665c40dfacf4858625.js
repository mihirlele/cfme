// CodeMirror, copyright (c) by Marijn Haverbeke and others
!function(e){"object"==typeof exports&&"object"==typeof module?e(require("../../lib/codemirror")):"function"==typeof define&&define.amd?define(["../../lib/codemirror"],e):e(CodeMirror)}(function(e){"use strict";e.defineMIME("text/x-erlang","erlang"),e.defineMode("erlang",function(t){function n(e,t){if(t.in_string)return t.in_string=!o(e),l(t,e,"string");if(t.in_atom)return t.in_atom=!a(e),l(t,e,"atom");if(e.eatSpace())return l(t,e,"whitespace");if(!m(t)&&e.match(/-\s*[a-z\xdf-\xf6\xf8-\xff][\w\xd8-\xde\xc0-\xd6\xdf-\xf6\xf8-\xff]*/))return s(e.current(),W)?l(t,e,"type"):l(t,e,"attribute");var n=e.next();if("%"==n)return e.skipToEnd(),l(t,e,"comment");if(":"==n)return l(t,e,"colon");if("?"==n)return e.eatSpace(),e.eatWhile($),l(t,e,"macro");if("#"==n)return e.eatSpace(),e.eatWhile($),l(t,e,"record");if("$"==n)return"\\"!=e.next()||e.match(B)?l(t,e,"number"):l(t,e,"error");if("."==n)return l(t,e,"dot");if("'"==n){if(!(t.in_atom=!a(e))){if(e.match(/\s*\/\s*[0-9]/,!1))return e.match(/\s*\/\s*[0-9]/,!0),l(t,e,"fun");if(e.match(/\s*\(/,!1)||e.match(/\s*:/,!1))return l(t,e,"function")}return l(t,e,"atom")}if('"'==n)return t.in_string=!o(e),l(t,e,"string");if(/[A-Z_\xd8-\xde\xc0-\xd6]/.test(n))return e.eatWhile($),l(t,e,"variable");if(/[a-z_\xdf-\xf6\xf8-\xff]/.test(n)){if(e.eatWhile($),e.match(/\s*\/\s*[0-9]/,!1))return e.match(/\s*\/\s*[0-9]/,!0),l(t,e,"fun");var c=e.current();return s(c,U)?l(t,e,"keyword"):s(c,Z)?l(t,e,"operator"):e.match(/\s*\(/,!1)?!s(c,T)||":"==m(t).token&&"erlang"!=m(t,2).token?s(c,O)?l(t,e,"guard"):l(t,e,"function"):l(t,e,"builtin"):":"==u(e)?"erlang"==c?l(t,e,"builtin"):l(t,e,"function"):s(c,["true","false"])?l(t,e,"boolean"):l(t,e,"atom")}var _=/[0-9]/,f=/[0-9a-zA-Z]/;return _.test(n)?(e.eatWhile(_),e.eat("#")?e.eatWhile(f)||e.backUp(1):e.eat(".")&&(e.eatWhile(_)?e.eat(/[eE]/)&&(e.eat(/[-+]/)?e.eatWhile(_)||e.backUp(2):e.eatWhile(_)||e.backUp(1)):e.backUp(1)),l(t,e,"number")):r(e,P,j)?l(t,e,"open_paren"):r(e,C,I)?l(t,e,"close_paren"):i(e,E,A)?l(t,e,"separator"):i(e,M,q)?l(t,e,"operator"):l(t,e,null)}function r(e,t,n){if(1==e.current().length&&t.test(e.current())){for(e.backUp(1);t.test(e.peek());)if(e.next(),s(e.current(),n))return!0;e.backUp(e.current().length-1)}return!1}function i(e,t,n){if(1==e.current().length&&t.test(e.current())){for(;t.test(e.peek());)e.next();for(;0<e.current().length;){if(s(e.current(),n))return!0;e.backUp(1)}e.next()}return!1}function o(e){return c(e,'"',"\\")}function a(e){return c(e,"'","\\")}function c(e,t,n){for(;!e.eol();){var r=e.next();if(r==t)return!0;r==n&&e.next()}return!1}function u(e){var t=e.match(/([\n\s]+|%[^\n]*\n)*(.)/,!1);return t?t.pop():""}function s(e,t){return-1<t.indexOf(e)}function l(e,t,n){switch(d(e,f(n,t)),n){case"atom":return"atom";case"attribute":return"attribute";case"boolean":return"atom";case"builtin":return"builtin";case"close_paren":return null;case"colon":return null;case"comment":return"comment";case"dot":return null;case"error":return"error";case"fun":return"meta";case"function":return"tag";case"guard":return"property";case"keyword":return"keyword";case"macro":return"variable-2";case"number":return"number";case"open_paren":return null;case"operator":return"operator";case"record":return"bracket";case"separator":return null;case"string":return"string";case"type":return"def";case"variable":return"variable";default:return null}}function _(e,t,n,r){return{token:e,column:t,indent:n,type:r}}function f(e,t){return _(t.current(),t.column(),t.indentation(),e)}function p(e){return _(e,0,0,e)}function m(e,t){var n=e.tokenStack.length,r=t?t:1;return!(n<r)&&e.tokenStack[n-r]}function d(e,t){"comment"!=t.type&&"whitespace"!=t.type&&(e.tokenStack=b(e.tokenStack,t),e.tokenStack=g(e.tokenStack))}function b(e,t){var n=e.length-1;return 0<n&&"record"===e[n].type&&"dot"===t.type?e.pop():0<n&&"group"===e[n].type?(e.pop(),e.push(t)):e.push(t),e}function g(e){if(!e.length)return e;var t=e.length-1;if("dot"===e[t].type)return[];if(t>1&&"fun"===e[t].type&&"fun"===e[t-1].token)return e.slice(0,t-1);switch(e[t].token){case"}":return k(e,{g:["{"]});case"]":return k(e,{i:["["]});case")":return k(e,{i:["("]});case">>":return k(e,{i:["<<"]});case"end":return k(e,{i:["begin","case","fun","if","receive","try"]});case",":return k(e,{e:["begin","try","when","->",",","(","[","{","<<"]});case"->":return k(e,{r:["when"],m:["try","if","case","receive"]});case";":return k(e,{E:["case","fun","if","receive","try","when"]});case"catch":return k(e,{e:["try"]});case"of":return k(e,{e:["case"]});case"after":return k(e,{e:["receive","try"]});default:return e}}function k(e,t){for(var n in t)for(var r=e.length-1,i=t[n],o=r-1;-1<o;o--)if(s(e[o].token,i)){var a=e.slice(0,o);switch(n){case"m":return a.concat(e[o]).concat(e[r]);case"r":return a.concat(e[r]);case"i":return a;case"g":return a.concat(p("group"));case"E":return a.concat(e[o]);case"e":return a.concat(e[o])}}return"E"==n?[]:e}function h(n,r){var i,o=t.indentUnit,a=y(r),c=m(n,1),u=m(n,2);return n.in_string||n.in_atom?e.Pass:u?"when"==c.token?c.column+o:"when"===a&&"function"===u.type?u.indent+o:"("===a&&"fun"===c.token?c.column+3:"catch"===a&&(i=x(n,["try"]))?i.column:s(a,["end","after","of"])?(i=x(n,["begin","case","fun","if","receive","try"]),i?i.column:e.Pass):s(a,I)?(i=x(n,j),i?i.column:e.Pass):s(c.token,[",","|","||"])||s(a,[",","|","||"])?(i=v(n),i?i.column+i.token.length:o):"->"==c.token?s(u.token,["receive","case","if","try"])?u.column+o+o:u.column+o:s(c.token,j)?c.column+c.token.length:(i=w(n),z(i)?i.column+o:0):0}function y(e){var t=e.match(/,|[a-z]+|\}|\]|\)|>>|\|+|\(/);return z(t)&&0===t.index?t[0]:""}function v(e){var t=e.tokenStack.slice(0,-1),n=S(t,"type",["open_paren"]);return!!z(t[n])&&t[n]}function w(e){var t=e.tokenStack,n=S(t,"type",["open_paren","separator","keyword"]),r=S(t,"type",["operator"]);return z(n)&&z(r)&&n<r?t[n+1]:!!z(n)&&t[n]}function x(e,t){var n=e.tokenStack,r=S(n,"token",t);return!!z(n[r])&&n[r]}function S(e,t,n){for(var r=e.length-1;-1<r;r--)if(s(e[r][t],n))return r;return!1}function z(e){return e!==!1&&null!=e}var W=["-type","-spec","-export_type","-opaque"],U=["after","begin","catch","case","cond","end","fun","if","let","of","query","receive","try","when"],E=/[\->,;]/,A=["->",";",","],Z=["and","andalso","band","bnot","bor","bsl","bsr","bxor","div","not","or","orelse","rem","xor"],M=/[\+\-\*\/<>=\|:!]/,q=["=","+","-","*","/",">",">=","<","=<","=:=","==","=/=","/=","||","<-","!"],P=/[<\(\[\{]/,j=["<<","(","[","{"],C=/[>\)\]\}]/,I=["}","]",")",">>"],O=["is_atom","is_binary","is_bitstring","is_boolean","is_float","is_function","is_integer","is_list","is_number","is_pid","is_port","is_record","is_reference","is_tuple","atom","binary","bitstring","boolean","function","integer","list","number","pid","port","record","reference","tuple"],T=["abs","adler32","adler32_combine","alive","apply","atom_to_binary","atom_to_list","binary_to_atom","binary_to_existing_atom","binary_to_list","binary_to_term","bit_size","bitstring_to_list","byte_size","check_process_code","contact_binary","crc32","crc32_combine","date","decode_packet","delete_module","disconnect_node","element","erase","exit","float","float_to_list","garbage_collect","get","get_keys","group_leader","halt","hd","integer_to_list","internal_bif","iolist_size","iolist_to_binary","is_alive","is_atom","is_binary","is_bitstring","is_boolean","is_float","is_function","is_integer","is_list","is_number","is_pid","is_port","is_process_alive","is_record","is_reference","is_tuple","length","link","list_to_atom","list_to_binary","list_to_bitstring","list_to_existing_atom","list_to_float","list_to_integer","list_to_pid","list_to_tuple","load_module","make_ref","module_loaded","monitor_node","node","node_link","node_unlink","nodes","notalive","now","open_port","pid_to_list","port_close","port_command","port_connect","port_control","pre_loaded","process_flag","process_info","processes","purge_module","put","register","registered","round","self","setelement","size","spawn","spawn_link","spawn_monitor","spawn_opt","split_binary","statistics","term_to_binary","time","throw","tl","trunc","tuple_size","tuple_to_list","unlink","unregister","whereis"],$=/[\w@\xd8-\xde\xc0-\xd6\xdf-\xf6\xf8-\xff]/,B=/[0-7]{1,3}|[bdefnrstv\\"']|\^[a-zA-Z]|x[0-9a-zA-Z]{2}|x{[0-9a-zA-Z]+}/;return{startState:function(){return{tokenStack:[],in_string:!1,in_atom:!1}},token:function(e,t){return n(e,t)},indent:function(e,t){return h(e,t)},lineComment:"%"}})});