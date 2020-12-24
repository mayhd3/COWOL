       IDENTIFICATION DIVISION.
      *
       PROGRAM-ID.    FIZZBUZZ.
       AUTHOR.        STUDENT.

       ENVIRONMENT DIVISION.
      *
       DATA DIVISION.
      *
       WORKING-STORAGE SECTION.
       01 COUNTER PIC 999 VALUE 0.
       01 FIZZING PIC 99 VALUE 0.
       01 BUZZING PIC 99 VALUE 0.
       01 DISCARD PIC 9 VALUE 0.

       PROCEDURE DIVISION.
      *
           PERFORM VARYING COUNTER FROM 1 BY 1 UNTIL COUNTER > 100
              DIVIDE COUNTER BY 3 GIVING DISCARD REMAINDER FIZZING
              DIVIDE COUNTER BY 5 GIVING DISCARD REMAINDER BUZZING
              IF FIZZING = 0 AND BUZZING = 0 THEN DISPLAY "FizzBuzz"
                 ELSE IF FIZZING = 0 THEN DISPLAY "Fizz"
                    ELSE IF BUZZING = 0 THEN DISPLAY "Buzz"
                       ELSE DISPLAY COUNTER
                    END-IF
                 END-IF
              END-IF
           END-PERFORM
           STOP RUN.
