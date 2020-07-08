#!/bin/sh

export HOME=/solution
pwd
sbcl --eval '(push "/solution/app/" ql:*local-project-directories*)' \
     --eval "(ql:quickload '(icfp2020-starterkit-cl))" \
     --eval '(sb-ext:save-lisp-and-die "/solution/run" :executable t :toplevel (function icfp2020-starterkit:main))'


