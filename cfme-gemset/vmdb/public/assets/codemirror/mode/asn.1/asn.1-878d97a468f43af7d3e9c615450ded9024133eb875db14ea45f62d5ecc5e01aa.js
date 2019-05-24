// CodeMirror, copyright (c) by Marijn Haverbeke and others
!function(e){"object"==typeof exports&&"object"==typeof module?e(require("../../lib/codemirror")):"function"==typeof define&&define.amd?define(["../../lib/codemirror"],e):e(CodeMirror)}(function(e){"use strict";function t(e){for(var t={},n=e.split(" "),r=0;r<n.length;++r)t[n[r]]=!0;return t}e.defineMode("asn.1",function(e,t){function n(e,t){var n=e.next();if('"'==n||"'"==n)return t.tokenize=r(n),t.tokenize(e,t);if(/[\[\]\(\){}:=,;]/.test(n))return O=n,"punctuation";if("-"==n&&e.eat("-"))return e.skipToEnd(),"comment";if(/\d/.test(n))return e.eatWhile(/[\w\.]/),"number";if(m.test(n))return e.eatWhile(m),"operator";e.eatWhile(/[\w\-]/);var i=e.current();return s.propertyIsEnumerable(i)?"keyword":I.propertyIsEnumerable(i)?"variable cmipVerbs":T.propertyIsEnumerable(i)?"atom compareTypes":u.propertyIsEnumerable(i)?"comment status":S.propertyIsEnumerable(i)?"variable-3 tags":l.propertyIsEnumerable(i)?"builtin storage":c.propertyIsEnumerable(i)?"string-2 modifier":A.propertyIsEnumerable(i)?"atom accessTypes":"variable"}function r(e){return function(t,n){for(var r=!1,i,o=!1;null!=(i=t.next());){if(i==e&&!r){var E=t.peek();E&&(E=E.toLowerCase(),"b"!=E&&"h"!=E&&"o"!=E||t.next()),o=!0;break}r=!r&&"\\"==i}return(o||!r&&!p)&&(n.tokenize=null),"string"}}function i(e,t,n,r,i){this.indented=e,this.column=t,this.type=n,this.align=r,this.prev=i}function o(e,t,n){var r=e.indented;return e.context&&"statement"==e.context.type&&(r=e.context.indented),e.context=new i(r,t,n,null,e.context)}function E(e){var t=e.context.type;return")"!=t&&"]"!=t&&"}"!=t||(e.indented=e.context.indented),e.context=e.context.prev}var a=e.indentUnit,s=t.keywords||{},I=t.cmipVerbs||{},T=t.compareTypes||{},u=t.status||{},S=t.tags||{},l=t.storage||{},c=t.modifier||{},A=t.accessTypes||{},p=t.multiLineStrings,N=t.indentStatements!==!1,m=/[\|\^]/,O;return{startState:function(e){return{tokenize:null,context:new i((e||0)-a,0,"top",!1),indented:0,startOfLine:!0}},token:function(e,t){var r=t.context;if(e.sol()&&(null==r.align&&(r.align=!1),t.indented=e.indentation(),t.startOfLine=!0),e.eatSpace())return null;O=null;var i=(t.tokenize||n)(e,t);if("comment"==i)return i;if(null==r.align&&(r.align=!0),";"!=O&&":"!=O&&","!=O||"statement"!=r.type)if("{"==O)o(t,e.column(),"}");else if("["==O)o(t,e.column(),"]");else if("("==O)o(t,e.column(),")");else if("}"==O){for(;"statement"==r.type;)r=E(t);for("}"==r.type&&(r=E(t));"statement"==r.type;)r=E(t)}else O==r.type?E(t):N&&(("}"==r.type||"top"==r.type)&&";"!=O||"statement"==r.type&&"newstatement"==O)&&o(t,e.column(),"statement");else E(t);return t.startOfLine=!1,i},electricChars:"{}",lineComment:"--",fold:"brace"}}),e.defineMIME("text/x-ttcn-asn",{name:"asn.1",keywords:t("DEFINITIONS OBJECTS IF DERIVED INFORMATION ACTION REPLY ANY NAMED CHARACTERIZED BEHAVIOUR REGISTERED WITH AS IDENTIFIED CONSTRAINED BY PRESENT BEGIN IMPORTS FROM UNITS SYNTAX MIN-ACCESS MAX-ACCESS MINACCESS MAXACCESS REVISION STATUS DESCRIPTION SEQUENCE SET COMPONENTS OF CHOICE DistinguishedName ENUMERATED SIZE MODULE END INDEX AUGMENTS EXTENSIBILITY IMPLIED EXPORTS"),cmipVerbs:t("ACTIONS ADD GET NOTIFICATIONS REPLACE REMOVE"),compareTypes:t("OPTIONAL DEFAULT MANAGED MODULE-TYPE MODULE_IDENTITY MODULE-COMPLIANCE OBJECT-TYPE OBJECT-IDENTITY OBJECT-COMPLIANCE MODE CONFIRMED CONDITIONAL SUBORDINATE SUPERIOR CLASS TRUE FALSE NULL TEXTUAL-CONVENTION"),status:t("current deprecated mandatory obsolete"),tags:t("APPLICATION AUTOMATIC EXPLICIT IMPLICIT PRIVATE TAGS UNIVERSAL"),storage:t("BOOLEAN INTEGER OBJECT IDENTIFIER BIT OCTET STRING UTCTime InterfaceIndex IANAifType CMIP-Attribute REAL PACKAGE PACKAGES IpAddress PhysAddress NetworkAddress BITS BMPString TimeStamp TimeTicks TruthValue RowStatus DisplayString GeneralString GraphicString IA5String NumericString PrintableString SnmpAdminAtring TeletexString UTF8String VideotexString VisibleString StringStore ISO646String T61String UniversalString Unsigned32 Integer32 Gauge Gauge32 Counter Counter32 Counter64"),modifier:t("ATTRIBUTE ATTRIBUTES MANDATORY-GROUP MANDATORY-GROUPS GROUP GROUPS ELEMENTS EQUALITY ORDERING SUBSTRINGS DEFINED"),accessTypes:t("not-accessible accessible-for-notify read-only read-create read-write"),multiLineStrings:!0})});