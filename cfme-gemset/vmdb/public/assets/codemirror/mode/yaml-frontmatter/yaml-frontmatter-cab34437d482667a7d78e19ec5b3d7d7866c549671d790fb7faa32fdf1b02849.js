// CodeMirror, copyright (c) by Marijn Haverbeke and others
!function(t){"object"==typeof exports&&"object"==typeof module?t(require("../../lib/codemirror"),require("../yaml/yaml")):"function"==typeof define&&define.amd?define(["../../lib/codemirror","../yaml/yaml"],t):t(CodeMirror)}(function(t){var e=0,n=1,r=2;t.defineMode("yaml-frontmatter",function(i,a){function o(t){return t.state==r?u:f}var f=t.getMode(i,"yaml"),u=t.getMode(i,a&&a.base||"gfm");return{startState:function(){return{state:e,inner:t.startState(f)}},copyState:function(e){return{state:e.state,inner:t.copyState(o(e),e.inner)}},token:function(i,a){if(a.state==e)return i.match(/---/,!1)?(a.state=n,f.token(i,a.inner)):(a.state=r,a.inner=t.startState(u),u.token(i,a.inner));if(a.state==n){var o=i.sol()&&i.match(/---/,!1),c=f.token(i,a.inner);return o&&(a.state=r,a.inner=t.startState(u)),c}return u.token(i,a.inner)},innerMode:function(t){return{mode:o(t),state:t.inner}},blankLine:function(t){var e=o(t);if(e.blankLine)return e.blankLine(t.inner)}}})});