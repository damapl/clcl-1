(cl:defpackage #:clcl
  (:use #:cl #:alexandria  #:closer-mop #:iterate #:x.let-star #:optima)
  (:shadowing-import-from #:closer-mop
                          #:defmethod #:defgeneric #:standard-generic-function)
  (:shadowing-import-from #:x.let-star #:let*))
