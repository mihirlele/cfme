// CodeMirror, copyright (c) by Marijn Haverbeke and others
!function(t){"object"==typeof exports&&"object"==typeof module?t(require("../../lib/codemirror"),require("../htmlmixed/htmlmixed")):"function"==typeof define&&define.amd?define(["../../lib/codemirror","../htmlmixed/htmlmixed"],t):t(CodeMirror)}(function(t){"use strict";var e=["template","literal","msg","fallbackmsg","let","if","elseif","else","switch","case","default","foreach","ifempty","for","call","param","deltemplate","delcall","log"];t.defineMode("soy",function(n){function a(t){return t[t.length-1]}function i(t,e,n){var a=t.string,i=n.exec(a.substr(t.pos));i&&(t.string=a.substr(0,t.pos+i.index));var l=t.hideFirstChars(e.indent,function(){return e.localMode.token(t,e.localState)});return t.string=a,l}var l=t.getMode(n,"text/plain"),o={html:t.getMode(n,{name:"text/html",multilineTagIndentFactor:2,multilineTagIndentPastTag:!1}),attributes:l,text:l,uri:l,css:t.getMode(n,"text/css"),js:t.getMode(n,{name:"text/javascript",statementIndent:2*n.indentUnit})};return{startState:function(){return{kind:[],kindTag:[],soyState:[],indent:0,localMode:o.html,localState:t.startState(o.html)}},copyState:function(e){return{tag:e.tag,kind:e.kind.concat([]),kindTag:e.kindTag.concat([]),soyState:e.soyState.concat([]),indent:e.indent,localMode:e.localMode,localState:t.copyState(e.localMode,e.localState)}},token:function(l,s){var r;switch(a(s.soyState)){case"comment":return l.match(/^.*?\*\//)?s.soyState.pop():l.skipToEnd(),"comment";case"variable":return l.match(/^}/)?(s.indent-=2*n.indentUnit,s.soyState.pop(),"variable-2"):(l.next(),null);case"tag":if(l.match(/^\/?}/))return"/template"==s.tag||"/deltemplate"==s.tag?s.indent=0:s.indent-=("/}"==l.current()||e.indexOf(s.tag)==-1?2:1)*n.indentUnit,s.soyState.pop(),"keyword";if(l.match(/^([\w?]+)(?==)/)){if("kind"==l.current()&&(r=l.match(/^="([^"]+)/,!1))){var c=r[1];s.kind.push(c),s.kindTag.push(s.tag),s.localMode=o[c]||o.html,s.localState=t.startState(s.localMode)}return"attribute"}return l.match(/^"/)?(s.soyState.push("string"),"string"):(l.next(),null);case"literal":return l.match(/^(?=\{\/literal})/)?(s.indent-=n.indentUnit,s.soyState.pop(),this.token(l,s)):i(l,s,/\{\/literal}/);case"string":var r=l.match(/^.*?("|\\[\s\S])/);return r?'"'==r[1]&&s.soyState.pop():l.skipToEnd(),"string"}return l.match(/^\/\*/)?(s.soyState.push("comment"),"comment"):l.match(l.sol()?/^\s*\/\/.*/:/^\s+\/\/.*/)?"comment":l.match(/^\{\$[\w?]*/)?(s.indent+=2*n.indentUnit,s.soyState.push("variable"),"variable-2"):l.match(/^\{literal}/)?(s.indent+=n.indentUnit,s.soyState.push("literal"),"keyword"):(r=l.match(/^\{([\/@\\]?[\w?]*)/))?("/switch"!=r[1]&&(s.indent+=(/^(\/|(else|elseif|case|default)$)/.test(r[1])&&"switch"!=s.tag?1:2)*n.indentUnit),s.tag=r[1],s.tag=="/"+a(s.kindTag)&&(s.kind.pop(),s.kindTag.pop(),s.localMode=o[a(s.kind)]||o.html,s.localState=t.startState(s.localMode)),s.soyState.push("tag"),"keyword"):i(l,s,/\{|\s+\/\/|\/\*/)},indent:function(e,i){var l=e.indent,o=a(e.soyState);if("comment"==o)return t.Pass;if("literal"==o)/^\{\/literal}/.test(i)&&(l-=n.indentUnit);else{if(/^\s*\{\/(template|deltemplate)\b/.test(i))return 0;/^\{(\/|(fallbackmsg|elseif|else|ifempty)\b)/.test(i)&&(l-=n.indentUnit),"switch"!=e.tag&&/^\{(case|default)\b/.test(i)&&(l-=n.indentUnit),/^\{\/switch\b/.test(i)&&(l-=n.indentUnit)}return l&&e.localMode.indent&&(l+=e.localMode.indent(e.localState,i)),l},innerMode:function(t){return t.soyState.length&&"literal"!=a(t.soyState)?null:{state:t.localState,mode:t.localMode}},electricInput:/^\s*\{(\/|\/template|\/deltemplate|\/switch|fallbackmsg|elseif|else|case|default|ifempty|\/literal\})$/,lineComment:"//",blockCommentStart:"/*",blockCommentEnd:"*/",blockCommentContinue:" * ",fold:"indent"}},"htmlmixed"),t.registerHelper("hintWords","soy",e.concat(["delpackage","namespace","alias","print","css","debugger"])),t.defineMIME("text/x-soy","soy")});