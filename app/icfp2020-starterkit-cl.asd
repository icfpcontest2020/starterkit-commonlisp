(defsystem icfp2020-starterkit-cl
  :description "Starter kit for ICFP 2020 for Common Lisp"
  :version "0.0.0"
  :serial t
  :license "MIT"
  :depends-on (:drakma :alexandria)
  :components ((:file "package")
               (:file "main")))
