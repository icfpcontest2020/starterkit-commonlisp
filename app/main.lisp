(in-package icfp2020-starterkit)

(defun main ()
  (let* ((server-url (nth 1 sb-ext:*posix-argv*))
         (player-key (nth 2 sb-ext:*posix-argv*)))
    (format t "ServerUrl: ~a; PlayerKey: ~a~%" server-url player-key)
    (multiple-value-bind (body status)
        (drakma:http-request server-url :method :post :content player-key)
      (case status
        (200
         (format t "Server response: ~a~%" body)
         (uiop:quit 0))
        (otherwise
         (format t "Unexpected server response:~%HTTP code: ~a~%Response body: ~a~%" status body)
         (uiop:quit 2))))))
