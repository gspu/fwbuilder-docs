<!DOCTYPE style-sheet PUBLIC "-//James Clark//DTD DSSSL Style Sheet//EN" [
<!ENTITY dbstyle SYSTEM "docbook/utils-0.6.9/docbook-utils.dsl" CDATA DSSSL>
]>

<!--

  Custom DocBook stylesheet for producing Firewall Builder Tutorial
  
  
  Author:        Vadim Kurland 
  Build date:    09/01/2002
  Last changed:  05/08/2003
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
<!--
(define %top-margin%    2pi)
(define %bottom-margin% 2pi)
-->


</style-specification-body>
</style-specification>

<external-specification id="docbook" document="dbstyle">

</style-sheet>



