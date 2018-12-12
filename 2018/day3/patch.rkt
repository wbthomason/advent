#! /usr/bin/env racket
#lang racket

(require racket/string)

(define (parse-patch p)
  (cdr (regexp-match #px"#(\\d+) @ (\\d+),(\\d+): (\\d+)x(\\d+)" p)))

(define test-input (map
                    (curry map string->number)
                    (map parse-patch (string-split "#1 @ 1,3: 4x4
#2 @ 3,1: 4x4
#3 @ 5,5: 2x2" "\n"))))

(define input (map (curry map string->number) (map parse-patch (file->lines "input"))))

(define (part1-and-2 patches)
  (define cells (make-hash))

  (define (add-point point)
    (match-let (((cons id point) point))
      (hash-update! cells point
                    (lambda (v) (append v (list id)))
                    (lambda () '()))))

  (define (patch->points patch)
    (match-let (((list id x y w h) patch))
      (map (curry cons id) (cartesian-product (range x (+ x w)) (range y (+ y h))))))

  (define (add-patch patch)
    (let ((points (patch->points patch)))
      (for-each add-point points)))

  (for-each add-patch patches)
  (let ((conflict-ids (filter (compose (curry < 1) length) (hash-values cells)))
        (free-ids (flatten (filter (compose (curry eqv? 1) length) (hash-values cells)))))
    (list
     (length conflict-ids)
     (set-subtract (apply set free-ids) (apply set (flatten conflict-ids))))))
    
(printf "Parts 1 & 2: ~a\n" (part1-and-2 input))
