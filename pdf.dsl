<!DOCTYPE style-sheet PUBLIC "-//James Clark//DTD DSSSL Style Sheet//EN" [
<!ENTITY dbstyle SYSTEM "/usr/share/sgml/docbook/utils-0.6.9/docbook-utils.dsl" CDATA DSSSL>
]>

<!--
<!ENTITY dbstyle PUBLIC "-//Norman Walsh//DOCUMENT DocBook Print Stylesheet//EN" CDATA DSSSL>
<!ENTITY docbook.dsl PUBLIC "-//Norman Walsh//DOCUMENT DocBook Print Stylesheet//EN" CDATA DSSSL>
<!ENTITY dbstyle SYSTEM "/usr/share/sgml/docbook/utils-0.6.9/docbook-utils.dsl" CDATA DSSSL>
-->

<!--

  Custom DocBook stylesheet for producing Firewall Builder Tutorial
  
  
  Author:        Vadim Kurland 
  Build date:    09/01/2002
  Last changed:  09/01/2002
  Description:   This stylesheet modifies parameters to achieve proper document
                 formatting 

-->

<style-sheet>
<style-specification use="docbook">
<style-specification-body>


;; customize the print stylesheet

(define %section-autolabel%
  ;; Are sections enumerated?
  #t)

<!--

 visual-acuity defines the font size as follows:

(define %bf-size%
 (case %visual-acuity%
    (("tiny") 8pt)
    (("normal") 10pt)
    (("presbyopic") 12pt)
    (("large-type") 24pt)))

-->

(define %visual-acuity% "normal")
(define %left-margin%   4pi)
(define %right-margin%  3pi)
(define %top-margin%    3pi)
(define %bottom-margin% 3pi)
<!-- (define %paper-type% "A5")   -->


</style-specification-body>
</style-specification>

<external-specification id="docbook" document="dbstyle">

</style-sheet>



