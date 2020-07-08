(in-package icfp2020-starterkit)

(defun main ()
  (let* ((server-url (nth 1 sb-ext:*posix-argv*))
         (player-key (nth 2 sb-ext:*posix-argv*))
         (url (format nil "~a?playerKey=~a" server-url player-key)))
    (format t "ServerUrl: ~a; PlayerKey: ~a~%" server-url player-key)
    (multiple-value-bind (body status)
        (drakma:http-request url)
      (case status
        (200
         (format t "~a~%" body)
         (uiop:quit 0))
        (otherwise
         (uiop:quit 1))))))
