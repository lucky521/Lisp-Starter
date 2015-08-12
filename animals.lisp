
#|
lucky
|#

; start

(defparameter animals-tree '("Does it live in the sea?" "a dolphin" "a horse"))


(defun learn-animal (animal new-animal) ;two input
  (let ((question
         (capi:prompt-for-string
          (format nil "Give me a yes/no question to distinguish between ~a and ~a"
                  new-animal animal))))
    (if (capi:prompt-for-confirmation
         (format nil "What would the answer be for ~a?" new-animal))
        (list question animal new-animal))
    (list question new-animal animal)))


(defun ask-question (tree)
  (if (capi:prompt-for-confirmation (first tree))
      (list (first tree) (animals (second tree)) (third tree))
    (list (first tree) (second tree) (animals (third tree)))))



(defun make-guess (animal)
  (if (capi:prompt-for-confirmation (format nil "Is it ~a?" animal))
      (progn
        (capi:display-message "Ho ho!")
        animal)
    (learn-animal animal (capi:prompt-for-string "What were you thinking of?"))))



(defun animals (tree)
  (if (listp tree)
      (ask-question tree)
    (make-guess tree)))



(defun play-animals ( )
  (setf animals-tree (animals animals-tree)))
