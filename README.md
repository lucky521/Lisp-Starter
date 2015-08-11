## Lisp Starter

Lisp is an ideal language to learn as a first programming language. 

---


# Basic Grammar
##Variables
Global variable: defparameter

Local variable: let

change variable's value: setf


## IO
print normal: print

print formatted: format


## Boolean
False: NIL
True: others - > T
 



---

##LispWorks
A visual IDE for Lisp

keyboard Interupt from running - ctrl + cmd + comma

####CAPI Library in LispWorks
- display a messagebox -> (capi:display-message "hello")
- prompting for a string -> (capi:prompt-for-string "hello") 
- prompting for a number ->(capi:prompt-for-number "hello")
- Ask for confirm -> (capi:prompt-for-confirmation "hello?")
- Ask for choose -> (capi:prompt-with-list '("1" "2" "3") "hello")
 

##sbcl
Command IDE for Lisp


###Ref
[CAPI](http://www.lispworks.com/products/capi.html)

[Lisp in small parts](http://lisp.plasticki.com/)

