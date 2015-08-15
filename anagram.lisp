
;lucky

; read from file
(defparameter wordlist
  (with-open-file (stream (capi:prompt-for-file "WordList:" :operation :open))
    (read stream)))


(defparameter dict (make-hash-table :test 'string=))

; make-hash-table
; gethash


(defun sorted (word)
  (sort (copy-seq word) 'char<))

(defun add-word (word)
  (let* ( (sword (sorted word)) )
    (setf (gethash sword dict) (cons word (gethash sword dict)))))


(defun add-words-to-dict (wlist)
  (if (null wlist) 
      nil
    (let ( (word (first wlist)) )
      (add-word word)
      (add-words-to-dict (rest wlist)))))

(defun find-anagram (word)
  (gethash (sorted word) dict))

(defun anagram ()
  (capi:prompt-with-list
   (find-anagram (capi:prompt-for-string "Find anagram:"))
   "Anargams"))

