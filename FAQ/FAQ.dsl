<!DOCTYPE style-sheet PUBLIC "-//James Clark//DTD DSSSL Style Sheet//EN" [
<!ENTITY dbstyle SYSTEM "/usr/share/sgml/docbook/dsssl-stylesheets/html/docbook.dsl" CDATA DSSSL>
]>

<!--

  Custom DocBook stylesheet for producing Firewall Builder FAQ
  
  
  Author:        Vadim Kurland 
  Build date:    11/26/2001
  Last changed:  11/26/2001
  Description:   This stylesheet generates FAQ in the form of single 
		 HTML file


  For explanations of these, and definitions of other elements see
  DocBook documentation coming with Norman Walsh'es docbook-dsssl
  package

-->


<style-sheet>
<style-specification use="docbook">
<style-specification-body>  

(define %html40%
  ;; Generate HTML 4.0
  #t)  

(define %css-decoration%
  ;; Enable CSS decoration of elements
  #f)

(define %css-liststyle-alist%
  ;; Map DocBook OVERRIDE and MARK attributes to CSS
  '(("bullet" "disc")
    ("box" "square")))


(define %generate-article-toc%
  ;; Should a Table of Contents be produced for Articles?
  #t)

(define ($generate-qandaset-toc$)
  ;;  Should a QandASet Table of Contents be produced?
  #t)

(define %section-autolabel%
  ;; Are sections enumerated?
  #t)

(define %qanda-inherit-numeration%
  ;; Should numbered questions inherit the surrounding numeration?
  #t) 

<!-- CALS tables are those defined by author as part of the text -->
 (define %cals-table-class%
  ;; Class attribute for CALS tables
  "CALSTABLE")


<!--   Navigation bars -->
(define %gentext-nav-tblwidth%
  ;; If using tables for navigation, how wide should the tables be?
  "90%")


(define %html-ext%
  ;; Default extension for HTML output files
  ".html") 

<!--
(define %html-header-tags%
  ;; What additional HEAD tags should be generated?
  '(("LINK" ("REL" "STYLESHEET") ("TYPE" "text/css") ("HREF" "../../fwbuilder.css")))
)
-->

<!--
(define %stylesheet%
  ;; Name of the stylesheet to use
  "../../fwbuilder.css"
)
-->

<!-- the following parameter forces output to be a single HTML page -->
(define nochunks
  ;; Suppress chunking of output pages
  #t)

(define rootchunk
  ;; Make a chunk for the root element when nochunks is used
  #t)


 (define %use-id-as-filename%
  ;; Use ID attributes as name for component HTML files?
  #t)


</style-specification-body>
</style-specification>
<external-specification id="docbook" document="dbstyle">
</style-sheet>


