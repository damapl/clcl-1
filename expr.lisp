(cl:in-package #:clcl)

(deftype type-designator ()
  '(cons symbol (cons fixnum null)))

(deftype name-designator ()
  'symbol)

(define-list-predicate list-of-names name-designator)
(define-list-predicate list-of-types type-designator)
(define-list-predicate list-of-vars variable-type)

(define-sum-type ocl-type
  (native-type (name type-designator))
  (alias-type (name symbol) (target type-designator))
  (variable-type (name type-designator))
  (user-type (name type-designator)
             (bound-kind list-of-types)
             (free-kind list-of-vars)
             (member-names list-of-names)
             (member-types list-of-types))
  (function-type (name type-designator)
                 (bound-kind list-of-types)
                 (free-kind list-of-vars)
                 (member-names list-of-names)
                 (member-types list-of-types))
  (source-constant (ocl-type type-designator)
                   (value t)))

(define-sum-type expr-repr
  infix
  prefix
  postfix
  function-call)