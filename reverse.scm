; MzScheme version of Reverse game
; See http://e-scribe.com/news/193
; My first Scheme program; I'm sure this will be embarassing later

(begin 
  (define (shuffle seq)
                    (if (null? seq) '()
                        (let ((pick (+ 1 (random (length seq)))))
                          (cons (list-ref seq (- pick 1)) (shuffle (drop-nth seq pick)))
                        )))
  
  (define (drop-nth seq n)
    (append (left-slice seq (- n 1)) (list-tail seq n)))
                        
  (define (sorted? seq)
                    (if (or (null? seq) (null? (cdr seq))) #t
                        (and (< (car seq) (cadr seq))
                             (sorted? (cdr seq)))))
  
  (define (left-slice seq n)
                       (reverse (list-tail (reverse seq) (- (length seq) n))))
  
  (define (flip seq n)
                 (append (reverse (left-slice seq n)) (list-tail seq n)))
  
  (define (play numbers count)
                 (display numbers)
                 (newline)
                 (display "How many to flip? ")
                 (let ((howmany (read)))
                   (set! numbers (flip numbers howmany)))
                 (if (sorted? numbers) 
                   (display (string-append "Done! That took you " (number->string count) " steps."))
                   (play numbers (+ 1 count))))

  (play (shuffle '(1 2 3 4 5 6 7 8 9)) 1))