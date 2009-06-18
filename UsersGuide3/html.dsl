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
  Last changed:  11/26/2001
  Description:   This stylesheet generates document in the form of multiple
		 HTML files


  For explanations of these, and definitions of other elements see
  DocBook documentation coming with Norman Walsh'es docbook-dsssl
  package

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
  "../css/users_guide_3.css"
)

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


<!--   Navigation bars  -->
(define %gentext-nav-tblwidth%
  ;; If using tables for navigation, how wide should the tables be?
  "90%")

<!--
(define nochunks
  ;; Suppress chunking of output pages
  #f)
-->

<!--
 (define %use-id-as-filename%
  ;; Use ID attributes as name for component HTML files?
  #t)
-->

</style-specification-body>
</style-specification>
<external-specification id="docbook" document="dbstyle">
</style-sheet>


