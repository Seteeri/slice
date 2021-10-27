(de ... (L J K Step . @)

  (let (Len (length L)
        J (if J
              (if (< J 0) (+ Len J) J)
              1)
        K (if K
              (if (< K 0) (- K) ( - Len K))
              Len)
        Flip (< Step 0))

    (when Flip (setq Step (- Step)))

    (if (>= J K)

        ()

        (setq K (- K J -1))

        # adjust J for step
        (when (> Step 1)
          (inc 'J (dec Step)))

        (make
          (for
              ((N . X)
              (let Q (nth L J)
                (if Flip (reverse Q) Q))
              (and (<= (* N Step) K) X) # when stepping, N not valid
              (nth X (inc Step)))
            (link (car X)))))))

# String
(de s... (L J K Step)
  (pack (l... (chop L) J K Step)))
