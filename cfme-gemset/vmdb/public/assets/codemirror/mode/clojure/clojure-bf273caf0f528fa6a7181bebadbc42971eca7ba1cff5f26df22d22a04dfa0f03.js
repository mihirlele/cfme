// CodeMirror, copyright (c) by Marijn Haverbeke and others
!function(e){"object"==typeof exports&&"object"==typeof module?e(require("../../lib/codemirror")):"function"==typeof define&&define.amd?define(["../../lib/codemirror"],e):e(CodeMirror)}(function(e){"use strict";e.defineMode("clojure",function(e){function t(e){for(var t={},n=e.split(" "),r=0;r<n.length;++r)t[n[r]]=!0;return t}function n(e,t,n){this.indent=e,this.type=t,this.prev=n}function r(e,t,r){e.indentStack=new n(t,r,e.indentStack)}function a(e){e.indentStack=e.indentStack.prev}function o(e,t){return"0"===e&&t.eat(/x/i)?(t.eatWhile(x.hex),!0):("+"!=e&&"-"!=e||!x.digit.test(t.peek())||(t.eat(x.sign),e=t.next()),!!x.digit.test(e)&&(t.eat(e),t.eatWhile(x.digit),"."==t.peek()?(t.eat("."),t.eatWhile(x.digit)):"/"==t.peek()&&(t.eat("/"),t.eatWhile(x.digit)),t.eat(x.exponent)&&(t.eat(x.sign),t.eatWhile(x.digit)),!0))}function i(e){var t=e.next();t&&t.match(/[a-z]/)&&e.match(/[a-z]+/,!0)||"u"===t&&e.match(/[0-9a-z]{4}/i,!0)}var s="builtin",d="comment",c="string",l="string-2",u="atom",f="number",p="bracket",h="keyword",m="variable",y=e.indentUnit||2,g=e.indentUnit||2,b=t("true false nil"),k=t("defn defn- def def- defonce defmulti defmethod defmacro defstruct deftype defprotocol defrecord defproject deftest slice defalias defhinted defmacro- defn-memo defnk defnk defonce- defunbound defunbound- defvar defvar- let letfn do case cond condp for loop recur when when-not when-let when-first if if-let if-not . .. -> ->> doto and or dosync doseq dotimes dorun doall load import unimport ns in-ns refer try catch finally throw with-open with-local-vars binding gen-class gen-and-load-class gen-and-save-class handler-case handle"),v=t("* *' *1 *2 *3 *agent* *allow-unresolved-vars* *assert* *clojure-version* *command-line-args* *compile-files* *compile-path* *compiler-options* *data-readers* *e *err* *file* *flush-on-newline* *fn-loader* *in* *math-context* *ns* *out* *print-dup* *print-length* *print-level* *print-meta* *print-readably* *read-eval* *source-path* *unchecked-math* *use-context-classloader* *verbose-defrecords* *warn-on-reflection* + +' - -' -> ->> ->ArrayChunk ->Vec ->VecNode ->VecSeq -cache-protocol-fn -reset-methods .. / < <= = == > >= EMPTY-NODE accessor aclone add-classpath add-watch agent agent-error agent-errors aget alength alias all-ns alter alter-meta! alter-var-root amap ancestors and apply areduce array-map aset aset-boolean aset-byte aset-char aset-double aset-float aset-int aset-long aset-short assert assoc assoc! assoc-in associative? atom await await-for await1 bases bean bigdec bigint biginteger binding bit-and bit-and-not bit-clear bit-flip bit-not bit-or bit-set bit-shift-left bit-shift-right bit-test bit-xor boolean boolean-array booleans bound-fn bound-fn* bound? butlast byte byte-array bytes case cat cast char char-array char-escape-string char-name-string char? chars chunk chunk-append chunk-buffer chunk-cons chunk-first chunk-next chunk-rest chunked-seq? class class? clear-agent-errors clojure-version coll? comment commute comp comparator compare compare-and-set! compile complement completing concat cond condp conj conj! cons constantly construct-proxy contains? count counted? create-ns create-struct cycle dec dec' decimal? declare dedupe default-data-readers definline definterface defmacro defmethod defmulti defn defn- defonce defprotocol defrecord defstruct deftype delay delay? deliver denominator deref derive descendants destructure disj disj! dissoc dissoc! distinct distinct? doall dorun doseq dosync dotimes doto double double-array doubles drop drop-last drop-while eduction empty empty? ensure enumeration-seq error-handler error-mode eval even? every-pred every? ex-data ex-info extend extend-protocol extend-type extenders extends? false? ffirst file-seq filter filterv find find-keyword find-ns find-protocol-impl find-protocol-method find-var first flatten float float-array float? floats flush fn fn? fnext fnil for force format frequencies future future-call future-cancel future-cancelled? future-done? future? gen-class gen-interface gensym get get-in get-method get-proxy-class get-thread-bindings get-validator group-by hash hash-combine hash-map hash-set identical? identity if-let if-not ifn? import in-ns inc inc' init-proxy instance? int int-array integer? interleave intern interpose into into-array ints io! isa? iterate iterator-seq juxt keep keep-indexed key keys keyword keyword? last lazy-cat lazy-seq let letfn line-seq list list* list? load load-file load-reader load-string loaded-libs locking long long-array longs loop macroexpand macroexpand-1 make-array make-hierarchy map map-indexed map? mapcat mapv max max-key memfn memoize merge merge-with meta method-sig methods min min-key mod munge name namespace namespace-munge neg? newline next nfirst nil? nnext not not-any? not-empty not-every? not= ns ns-aliases ns-imports ns-interns ns-map ns-name ns-publics ns-refers ns-resolve ns-unalias ns-unmap nth nthnext nthrest num number? numerator object-array odd? or parents partial partition partition-all partition-by pcalls peek persistent! pmap pop pop! pop-thread-bindings pos? pr pr-str prefer-method prefers primitives-classnames print print-ctor print-dup print-method print-simple print-str printf println println-str prn prn-str promise proxy proxy-call-with-super proxy-mappings proxy-name proxy-super push-thread-bindings pvalues quot rand rand-int rand-nth random-sample range ratio? rational? rationalize re-find re-groups re-matcher re-matches re-pattern re-seq read read-line read-string realized? reduce reduce-kv reductions ref ref-history-count ref-max-history ref-min-history ref-set refer refer-clojure reify release-pending-sends rem remove remove-all-methods remove-method remove-ns remove-watch repeat repeatedly replace replicate require reset! reset-meta! resolve rest restart-agent resultset-seq reverse reversible? rseq rsubseq satisfies? second select-keys send send-off seq seq? seque sequence sequential? set set-error-handler! set-error-mode! set-validator! set? short short-array shorts shuffle shutdown-agents slurp some some-fn sort sort-by sorted-map sorted-map-by sorted-set sorted-set-by sorted? special-symbol? spit split-at split-with str string? struct struct-map subs subseq subvec supers swap! symbol symbol? sync take take-last take-nth take-while test the-ns thread-bound? time to-array to-array-2d trampoline transduce transient tree-seq true? type unchecked-add unchecked-add-int unchecked-byte unchecked-char unchecked-dec unchecked-dec-int unchecked-divide-int unchecked-double unchecked-float unchecked-inc unchecked-inc-int unchecked-int unchecked-long unchecked-multiply unchecked-multiply-int unchecked-negate unchecked-negate-int unchecked-remainder-int unchecked-short unchecked-subtract unchecked-subtract-int underive unquote unquote-splicing update update-in update-proxy use val vals var-get var-set var? vary-meta vec vector vector-of vector? volatile! volatile? vreset! vswap! when when-first when-let when-not while with-bindings with-bindings* with-in-str with-loading-context with-local-vars with-meta with-open with-out-str with-precision with-redefs with-redefs-fn xml-seq zero? zipmap *default-data-reader-fn* as-> cond-> cond->> reduced reduced? send-via set-agent-send-executor! set-agent-send-off-executor! some-> some->>"),w=t("ns fn def defn defmethod bound-fn if if-not case condp when while when-not when-first do future comment doto locking proxy with-open with-precision reify deftype defrecord defprotocol extend extend-protocol extend-type try catch let letfn binding loop for doseq dotimes when-let if-let defstruct struct-map assoc testing deftest handler-case handle dotrace deftrace"),x={digit:/\d/,digit_or_colon:/[\d:]/,hex:/[0-9a-f]/i,sign:/[+-]/,exponent:/e/i,keyword_char:/[^\s\(\[\;\)\]]/,symbol:/[\w*+!\-\._?:<>\/\xa1-\uffff]/,block_indent:/^(?:def|with)[^\/]+$|\/(?:def|with)/};return{startState:function(){return{indentStack:null,indentation:0,mode:!1}},token:function(e,t){if(null==t.indentStack&&e.sol()&&(t.indentation=e.indentation()),"string"!=t.mode&&e.eatSpace())return null;var n=null;switch(t.mode){case"string":for(var q,j=!1;null!=(q=e.next());){if('"'==q&&!j){t.mode=!1;break}j=!j&&"\\"==q}n=c;break;default:var S=e.next();if('"'==S)t.mode="string",n=c;else if("\\"==S)i(e),n=l;else if("'"!=S||x.digit_or_colon.test(e.peek()))if(";"==S)e.skipToEnd(),n=d;else if(o(S,e))n=f;else if("("==S||"["==S||"{"==S){var z="",E=e.column(),M;if("("==S)for(;null!=(M=e.eat(x.keyword_char));)z+=M;z.length>0&&(w.propertyIsEnumerable(z)||x.block_indent.test(z))?r(t,E+y,S):(e.eatSpace(),e.eol()||";"==e.peek()?r(t,E+g,S):r(t,E+e.current().length,S)),e.backUp(e.current().length-1),n=p}else if(")"==S||"]"==S||"}"==S)n=p,null!=t.indentStack&&t.indentStack.type==(")"==S?"(":"]"==S?"[":"{")&&a(t);else{if(":"==S)return e.eatWhile(x.symbol),u;e.eatWhile(x.symbol),n=k&&k.propertyIsEnumerable(e.current())?h:v&&v.propertyIsEnumerable(e.current())?s:b&&b.propertyIsEnumerable(e.current())?u:m}else n=u}return n},indent:function(e){return null==e.indentStack?e.indentation:e.indentStack.indent},closeBrackets:{pairs:'()[]{}""'},lineComment:";;"}}),e.defineMIME("text/x-clojure","clojure"),e.defineMIME("text/x-clojurescript","clojure"),e.defineMIME("application/edn","clojure")});