;;; emacs-hnreader-test.el --- Tests for emacs-hnreader
(ert-deftest-async test/promise-dom (done)
                   (promise-done
                    (promise-chain
                        (hnreader--promise-dom "https://www.google.com")
                      (then (lambda (result)
                              (should (listp result))
                              ;; (message "%s" result)
                              (funcall done)))
                      (promise-catch done))))
;;; emacs-hnreader-test.el ends here
