<!DOCTYPE style-sheet PUBLIC "-//James Clark//DTD DSSSL Style Sheet//EN" [
<!ENTITY dbstyle PUBLIC "-//Norman Walsh//DOCUMENT DocBook HTML Stylesheet//EN" CDATA dsssl>
]>


<!--
<!ENTITY dbstyle SYSTEM "html/docbook.dsl" CDATA DSSSL>
<!ENTITY dbstyle PUBLIC "-//Norman Walsh//DOCUMENT DocBook HTML Stylesheet//EN" CDATA dsssl>
<!ENTITY dbstyle SYSTEM "/usr/share/sgml/docbook/dsssl-stylesheets/html/docbook.dsl" CDATA DSSSL>
<!ENTITY dbstyle SYSTEM "/usr/share/sgml/docbook/utils-0.6.9/docbook-utils.dsl" CDATA DSSSL>
-->

<!--

  Custom DocBook stylesheet for producing Firewall Builder Tutorial
  
  
  Author:        Vadim Kurland 
  Build date:    11/26/2001
  Last changed:  01/12/2010
  Description:   This stylesheet generates document in the form of multiple
		 HTML files


  For explanations of these, and definitions of other elements see
  DocBook documentation coming with Norman Walsh'es docbook-dsssl
  package

  See  /usr/share/sgml/docbook/stylesheet/dsssl/modular/html/dbparam.dsl 
  for the list of all possible parameters

-->


<style-sheet>
<style-specification use="docbook">
<style-specification-body>  


(define %visual-acuity% "normal")
(define %admon-graphics%  #f)

<!-- there seems to be a bug in docbook-utils-0.6.9 where it uses undefined font family %admon-font-family% -->
(define %admon-font-family%
 "Courier New")



(define %html40%
  ;; Generate HTML 4.0
  #t)  

(define %css-decoration%
  ;; Enable CSS decoration of elements
  #t)

(define %stylesheet%
  ;; Name of the stylesheet to use
  "users_guide_4.css"
)

<!--
 no need to do this anymore, using @import in users_guide_3.css instead

(define ($user-html-header$ #!optional
                            (home (empty-node-list))
                            (up (empty-node-list))
                            (prev (empty-node-list))
                            (next (empty-node-list)))
  (make empty-element gi: "LINK"
        attributes: (list (list "REL" "STYLESHEET")
                          (list "TYPE" "TEXT/CSS")
                          (list "HREF" "users_guide_3.css")))
)
-->

(define %header-navigation%
  ;; REFENTRY header-navigation
  ;; PURP Should navigation links be added to the top of each page?
  ;; DESC
  ;; If '#t', navigation links will be added to the top of each page.
  ;; If '#f', no navigation links will be added. Note that this has
  ;; no effect on '($user-header-navigation$)', which will still be
  ;; called (but does nothing by default).
  ;; /DESC
  ;; AUTHOR N/A
  ;; /REFENTRY
  #t)

(define %css-liststyle-alist%
  ;; Map DocBook OVERRIDE and MARK attributes to CSS
  '(("bullet" "disc")
    ("box" "square")))


(define %generate-article-toc%
  ;; Should a Table of Contents be produced for Articles?
  #t)

(define $generate-chapter-toc$ (lambda ()  #f))

(define %generate-part-toc-on-titlepage%   #t)

(define %section-autolabel%
  ;; Are sections enumerated?
  #t)

<!-- CALS tables are those defined by author as part of the text -->

 (define %cals-table-class%
  ;; Class attribute for CALS tables
  "CALSTABLE")


(define %gentext-nav-use-tables%
  ;; REFENTRY gentext-nav-use-tables
  ;; PURP Use tables to build the navigation headers and footers?
  ;; DESC
  ;; If true, HTML TABLEs will be used to format the header and footer
  ;; navigation information.
  ;; /DESC
  ;; AUTHOR N/A
  ;; /REFENTRY
  #t)


<!--   Navigation bars  -->
(define %gentext-nav-tblwidth%
  ;; If using tables for navigation, how wide should the tables be?
  "60%")



<!--
(define nochunks
  ;; Suppress chunking of output pages
  #f)
-->


(define (chunk-section-depth)
  ;; To make sect1 and sect2 go into separate chunks
  2)

(define %use-id-as-filename%
  ;; Use ID attributes as name for component HTML files?
  #t)


<!--
 $html-body-start$ inserts text right after opening <body> tag before
the first <div> added by docbook. Text inside literal() is interpreted
as XML so "< ! - - ... - - >" gets eaten. See
http://sources.redhat.com/ml/docbook-apps/2000-q4/msg00336.html
-->

(define ($html-body-start$)
  (make sequence
    (make formatting-instruction data: "&#60!--")
    (literal "#include virtual=\"/ios_getting_started_page_header.html\"")
    (make formatting-instruction data: "-->")))

(define ($html-body-end$)
  (make sequence
    (make formatting-instruction data: "&#60!--")
    (literal "#include virtual=\"/getting_started_page_footer.html\"")
    (make formatting-instruction data: "-->")))



</style-specification-body>
</style-specification>
<external-specification id="docbook" document="dbstyle">
</style-sheet>


