ATXXB255 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON APR 29, 2014;
 ;;5.1;TAXONOMY;**11**;FEB 04, 1997;Build 48
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1804,F09Z0KZ ",.03)
 ;;31
 ;;9002226.02101,"1804,F09Z0ZZ ",.01)
 ;;F09Z0ZZ 
 ;;9002226.02101,"1804,F09Z0ZZ ",.02)
 ;;F09Z0ZZ 
 ;;9002226.02101,"1804,F09Z0ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,F09Z1KZ ",.01)
 ;;F09Z1KZ 
 ;;9002226.02101,"1804,F09Z1KZ ",.02)
 ;;F09Z1KZ 
 ;;9002226.02101,"1804,F09Z1KZ ",.03)
 ;;31
 ;;9002226.02101,"1804,F09Z1ZZ ",.01)
 ;;F09Z1ZZ 
 ;;9002226.02101,"1804,F09Z1ZZ ",.02)
 ;;F09Z1ZZ 
 ;;9002226.02101,"1804,F09Z1ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,F09Z2KZ ",.01)
 ;;F09Z2KZ 
 ;;9002226.02101,"1804,F09Z2KZ ",.02)
 ;;F09Z2KZ 
 ;;9002226.02101,"1804,F09Z2KZ ",.03)
 ;;31
 ;;9002226.02101,"1804,F09Z2LZ ",.01)
 ;;F09Z2LZ 
 ;;9002226.02101,"1804,F09Z2LZ ",.02)
 ;;F09Z2LZ 
 ;;9002226.02101,"1804,F09Z2LZ ",.03)
 ;;31
 ;;9002226.02101,"1804,F09Z2PZ ",.01)
 ;;F09Z2PZ 
 ;;9002226.02101,"1804,F09Z2PZ ",.02)
 ;;F09Z2PZ 
 ;;9002226.02101,"1804,F09Z2PZ ",.03)
 ;;31
 ;;9002226.02101,"1804,F09Z2YZ ",.01)
 ;;F09Z2YZ 
 ;;9002226.02101,"1804,F09Z2YZ ",.02)
 ;;F09Z2YZ 
 ;;9002226.02101,"1804,F09Z2YZ ",.03)
 ;;31
 ;;9002226.02101,"1804,F09Z2ZZ ",.01)
 ;;F09Z2ZZ 
 ;;9002226.02101,"1804,F09Z2ZZ ",.02)
 ;;F09Z2ZZ 
 ;;9002226.02101,"1804,F09Z2ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,F09Z3XZ ",.01)
 ;;F09Z3XZ 
 ;;9002226.02101,"1804,F09Z3XZ ",.02)
 ;;F09Z3XZ 
 ;;9002226.02101,"1804,F09Z3XZ ",.03)
 ;;31
 ;;9002226.02101,"1804,F09Z3ZZ ",.01)
 ;;F09Z3ZZ 
 ;;9002226.02101,"1804,F09Z3ZZ ",.02)
 ;;F09Z3ZZ 
 ;;9002226.02101,"1804,F09Z3ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,F0BZ01Z ",.01)
 ;;F0BZ01Z 
 ;;9002226.02101,"1804,F0BZ01Z ",.02)
 ;;F0BZ01Z 
 ;;9002226.02101,"1804,F0BZ01Z ",.03)
 ;;31
 ;;9002226.02101,"1804,F0BZ02Z ",.01)
 ;;F0BZ02Z 
 ;;9002226.02101,"1804,F0BZ02Z ",.02)
 ;;F0BZ02Z 
 ;;9002226.02101,"1804,F0BZ02Z ",.03)
 ;;31
 ;;9002226.02101,"1804,F0BZ09Z ",.01)
 ;;F0BZ09Z 
 ;;9002226.02101,"1804,F0BZ09Z ",.02)
 ;;F0BZ09Z 
 ;;9002226.02101,"1804,F0BZ09Z ",.03)
 ;;31
 ;;9002226.02101,"1804,F0BZ0KZ ",.01)
 ;;F0BZ0KZ 
 ;;9002226.02101,"1804,F0BZ0KZ ",.02)
 ;;F0BZ0KZ 
 ;;9002226.02101,"1804,F0BZ0KZ ",.03)
 ;;31
 ;;9002226.02101,"1804,F0BZ0PZ ",.01)
 ;;F0BZ0PZ 
 ;;9002226.02101,"1804,F0BZ0PZ ",.02)
 ;;F0BZ0PZ 
 ;;9002226.02101,"1804,F0BZ0PZ ",.03)
 ;;31
 ;;9002226.02101,"1804,F0BZ0YZ ",.01)
 ;;F0BZ0YZ 
 ;;9002226.02101,"1804,F0BZ0YZ ",.02)
 ;;F0BZ0YZ 
 ;;9002226.02101,"1804,F0BZ0YZ ",.03)
 ;;31
 ;;9002226.02101,"1804,F0C33EZ ",.01)
 ;;F0C33EZ 
 ;;9002226.02101,"1804,F0C33EZ ",.02)
 ;;F0C33EZ 
 ;;9002226.02101,"1804,F0C33EZ ",.03)
 ;;31
 ;;9002226.02101,"1804,F0C33FZ ",.01)
 ;;F0C33FZ 
 ;;9002226.02101,"1804,F0C33FZ ",.02)
 ;;F0C33FZ 
 ;;9002226.02101,"1804,F0C33FZ ",.03)
 ;;31
 ;;9002226.02101,"1804,F0C33UZ ",.01)
 ;;F0C33UZ 
 ;;9002226.02101,"1804,F0C33UZ ",.02)
 ;;F0C33UZ 
 ;;9002226.02101,"1804,F0C33UZ ",.03)
 ;;31
 ;;9002226.02101,"1804,F0C33YZ ",.01)
 ;;F0C33YZ 
 ;;9002226.02101,"1804,F0C33YZ ",.02)
 ;;F0C33YZ 
 ;;9002226.02101,"1804,F0C33YZ ",.03)
 ;;31
 ;;9002226.02101,"1804,F0C33ZZ ",.01)
 ;;F0C33ZZ 
 ;;9002226.02101,"1804,F0C33ZZ ",.02)
 ;;F0C33ZZ 
 ;;9002226.02101,"1804,F0C33ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,F0CH3EZ ",.01)
 ;;F0CH3EZ 
 ;;9002226.02101,"1804,F0CH3EZ ",.02)
 ;;F0CH3EZ 
 ;;9002226.02101,"1804,F0CH3EZ ",.03)
 ;;31
 ;;9002226.02101,"1804,F0CH3FZ ",.01)
 ;;F0CH3FZ 
 ;;9002226.02101,"1804,F0CH3FZ ",.02)
 ;;F0CH3FZ 
 ;;9002226.02101,"1804,F0CH3FZ ",.03)
 ;;31
 ;;9002226.02101,"1804,F0CH3UZ ",.01)
 ;;F0CH3UZ 
 ;;9002226.02101,"1804,F0CH3UZ ",.02)
 ;;F0CH3UZ 
 ;;9002226.02101,"1804,F0CH3UZ ",.03)
 ;;31
 ;;9002226.02101,"1804,F0CH3YZ ",.01)
 ;;F0CH3YZ 
 ;;9002226.02101,"1804,F0CH3YZ ",.02)
 ;;F0CH3YZ 
 ;;9002226.02101,"1804,F0CH3YZ ",.03)
 ;;31
 ;;9002226.02101,"1804,F0CH3ZZ ",.01)
 ;;F0CH3ZZ 
 ;;9002226.02101,"1804,F0CH3ZZ ",.02)
 ;;F0CH3ZZ 
 ;;9002226.02101,"1804,F0CH3ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,F0CM3EZ ",.01)
 ;;F0CM3EZ 
 ;;9002226.02101,"1804,F0CM3EZ ",.02)
 ;;F0CM3EZ 
 ;;9002226.02101,"1804,F0CM3EZ ",.03)
 ;;31
 ;;9002226.02101,"1804,F0CM3FZ ",.01)
 ;;F0CM3FZ 
 ;;9002226.02101,"1804,F0CM3FZ ",.02)
 ;;F0CM3FZ 
 ;;9002226.02101,"1804,F0CM3FZ ",.03)
 ;;31
 ;;9002226.02101,"1804,F0CM3UZ ",.01)
 ;;F0CM3UZ 
 ;;9002226.02101,"1804,F0CM3UZ ",.02)
 ;;F0CM3UZ 
 ;;9002226.02101,"1804,F0CM3UZ ",.03)
 ;;31
 ;;9002226.02101,"1804,F0CM3YZ ",.01)
 ;;F0CM3YZ 
 ;;9002226.02101,"1804,F0CM3YZ ",.02)
 ;;F0CM3YZ 
 ;;9002226.02101,"1804,F0CM3YZ ",.03)
 ;;31
 ;;9002226.02101,"1804,F0CM3ZZ ",.01)
 ;;F0CM3ZZ 
 ;;9002226.02101,"1804,F0CM3ZZ ",.02)
 ;;F0CM3ZZ 
 ;;9002226.02101,"1804,F0CM3ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,F0CZ08Z ",.01)
 ;;F0CZ08Z 
 ;;9002226.02101,"1804,F0CZ08Z ",.02)
 ;;F0CZ08Z 
 ;;9002226.02101,"1804,F0CZ08Z ",.03)
 ;;31
 ;;9002226.02101,"1804,F0CZ0ZZ ",.01)
 ;;F0CZ0ZZ 
 ;;9002226.02101,"1804,F0CZ0ZZ ",.02)
 ;;F0CZ0ZZ 
 ;;9002226.02101,"1804,F0CZ0ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,F0CZ1KZ ",.01)
 ;;F0CZ1KZ 
 ;;9002226.02101,"1804,F0CZ1KZ ",.02)
 ;;F0CZ1KZ 
 ;;9002226.02101,"1804,F0CZ1KZ ",.03)
 ;;31
 ;;9002226.02101,"1804,F0CZ1LZ ",.01)
 ;;F0CZ1LZ 
 ;;9002226.02101,"1804,F0CZ1LZ ",.02)
 ;;F0CZ1LZ 
 ;;9002226.02101,"1804,F0CZ1LZ ",.03)
 ;;31
 ;;9002226.02101,"1804,F0CZ1NZ ",.01)
 ;;F0CZ1NZ 
 ;;9002226.02101,"1804,F0CZ1NZ ",.02)
 ;;F0CZ1NZ 
 ;;9002226.02101,"1804,F0CZ1NZ ",.03)
 ;;31
 ;;9002226.02101,"1804,F0CZ1PZ ",.01)
 ;;F0CZ1PZ 
 ;;9002226.02101,"1804,F0CZ1PZ ",.02)
 ;;F0CZ1PZ 
 ;;9002226.02101,"1804,F0CZ1PZ ",.03)
 ;;31
 ;;9002226.02101,"1804,F0CZ1QZ ",.01)
 ;;F0CZ1QZ 
 ;;9002226.02101,"1804,F0CZ1QZ ",.02)
 ;;F0CZ1QZ 
 ;;9002226.02101,"1804,F0CZ1QZ ",.03)
 ;;31
 ;;9002226.02101,"1804,F0CZ1SZ ",.01)
 ;;F0CZ1SZ 
 ;;9002226.02101,"1804,F0CZ1SZ ",.02)
 ;;F0CZ1SZ 
 ;;9002226.02101,"1804,F0CZ1SZ ",.03)
 ;;31
 ;;9002226.02101,"1804,F0CZ1TZ ",.01)
 ;;F0CZ1TZ 
 ;;9002226.02101,"1804,F0CZ1TZ ",.02)
 ;;F0CZ1TZ 
 ;;9002226.02101,"1804,F0CZ1TZ ",.03)
 ;;31
 ;;9002226.02101,"1804,F0CZ1YZ ",.01)
 ;;F0CZ1YZ 
 ;;9002226.02101,"1804,F0CZ1YZ ",.02)
 ;;F0CZ1YZ 
 ;;9002226.02101,"1804,F0CZ1YZ ",.03)
 ;;31
 ;;9002226.02101,"1804,F0CZ1ZZ ",.01)
 ;;F0CZ1ZZ 
 ;;9002226.02101,"1804,F0CZ1ZZ ",.02)
 ;;F0CZ1ZZ 
 ;;9002226.02101,"1804,F0CZ1ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,F0CZ2KZ ",.01)
 ;;F0CZ2KZ 
 ;;9002226.02101,"1804,F0CZ2KZ ",.02)
 ;;F0CZ2KZ 
 ;;9002226.02101,"1804,F0CZ2KZ ",.03)
 ;;31
 ;;9002226.02101,"1804,F0CZ2LZ ",.01)
 ;;F0CZ2LZ 
 ;;9002226.02101,"1804,F0CZ2LZ ",.02)
 ;;F0CZ2LZ 
 ;;9002226.02101,"1804,F0CZ2LZ ",.03)
 ;;31
 ;;9002226.02101,"1804,F0CZ2NZ ",.01)
 ;;F0CZ2NZ 
 ;;9002226.02101,"1804,F0CZ2NZ ",.02)
 ;;F0CZ2NZ 
 ;;9002226.02101,"1804,F0CZ2NZ ",.03)
 ;;31
 ;;9002226.02101,"1804,F0CZ2PZ ",.01)
 ;;F0CZ2PZ 
 ;;9002226.02101,"1804,F0CZ2PZ ",.02)
 ;;F0CZ2PZ 
 ;;9002226.02101,"1804,F0CZ2PZ ",.03)
 ;;31
 ;;9002226.02101,"1804,F0CZ2QZ ",.01)
 ;;F0CZ2QZ 
 ;;9002226.02101,"1804,F0CZ2QZ ",.02)
 ;;F0CZ2QZ 
 ;;9002226.02101,"1804,F0CZ2QZ ",.03)
 ;;31
 ;;9002226.02101,"1804,F0CZ2SZ ",.01)
 ;;F0CZ2SZ 
 ;;9002226.02101,"1804,F0CZ2SZ ",.02)
 ;;F0CZ2SZ 
 ;;9002226.02101,"1804,F0CZ2SZ ",.03)
 ;;31
 ;;9002226.02101,"1804,F0CZ2TZ ",.01)
 ;;F0CZ2TZ 
 ;;9002226.02101,"1804,F0CZ2TZ ",.02)
 ;;F0CZ2TZ 
 ;;9002226.02101,"1804,F0CZ2TZ ",.03)
 ;;31
 ;;9002226.02101,"1804,F0CZ2YZ ",.01)
 ;;F0CZ2YZ 
 ;;9002226.02101,"1804,F0CZ2YZ ",.02)
 ;;F0CZ2YZ 
 ;;9002226.02101,"1804,F0CZ2YZ ",.03)
 ;;31
 ;;9002226.02101,"1804,F0CZ2ZZ ",.01)
 ;;F0CZ2ZZ 
 ;;9002226.02101,"1804,F0CZ2ZZ ",.02)
 ;;F0CZ2ZZ 
 ;;9002226.02101,"1804,F0CZ2ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,F0DZ05Z ",.01)
 ;;F0DZ05Z 
 ;;9002226.02101,"1804,F0DZ05Z ",.02)
 ;;F0DZ05Z 
 ;;9002226.02101,"1804,F0DZ05Z ",.03)
 ;;31
 ;;9002226.02101,"1804,F0DZ0ZZ ",.01)
 ;;F0DZ0ZZ 
 ;;9002226.02101,"1804,F0DZ0ZZ ",.02)
 ;;F0DZ0ZZ 
 ;;9002226.02101,"1804,F0DZ0ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,F0DZ11Z ",.01)
 ;;F0DZ11Z 
 ;;9002226.02101,"1804,F0DZ11Z ",.02)
 ;;F0DZ11Z 
 ;;9002226.02101,"1804,F0DZ11Z ",.03)
 ;;31
 ;;9002226.02101,"1804,F0DZ12Z ",.01)
 ;;F0DZ12Z 
 ;;9002226.02101,"1804,F0DZ12Z ",.02)
 ;;F0DZ12Z 
 ;;9002226.02101,"1804,F0DZ12Z ",.03)
 ;;31
 ;;9002226.02101,"1804,F0DZ15Z ",.01)
 ;;F0DZ15Z 
 ;;9002226.02101,"1804,F0DZ15Z ",.02)
 ;;F0DZ15Z 
 ;;9002226.02101,"1804,F0DZ15Z ",.03)
 ;;31
 ;;9002226.02101,"1804,F0DZ1KZ ",.01)
 ;;F0DZ1KZ 
 ;;9002226.02101,"1804,F0DZ1KZ ",.02)
 ;;F0DZ1KZ 
 ;;9002226.02101,"1804,F0DZ1KZ ",.03)
 ;;31
 ;;9002226.02101,"1804,F0DZ1LZ ",.01)
 ;;F0DZ1LZ 
 ;;9002226.02101,"1804,F0DZ1LZ ",.02)
 ;;F0DZ1LZ 
 ;;9002226.02101,"1804,F0DZ1LZ ",.03)
 ;;31
 ;;9002226.02101,"1804,F0DZ1ZZ ",.01)
 ;;F0DZ1ZZ 
 ;;9002226.02101,"1804,F0DZ1ZZ ",.02)
 ;;F0DZ1ZZ 
 ;;9002226.02101,"1804,F0DZ1ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,F0DZ21Z ",.01)
 ;;F0DZ21Z 
 ;;9002226.02101,"1804,F0DZ21Z ",.02)
 ;;F0DZ21Z 
 ;;9002226.02101,"1804,F0DZ21Z ",.03)
 ;;31
 ;;9002226.02101,"1804,F0DZ22Z ",.01)
 ;;F0DZ22Z 
 ;;9002226.02101,"1804,F0DZ22Z ",.02)
 ;;F0DZ22Z 
 ;;9002226.02101,"1804,F0DZ22Z ",.03)
 ;;31
 ;;9002226.02101,"1804,F0DZ25Z ",.01)
 ;;F0DZ25Z 
 ;;9002226.02101,"1804,F0DZ25Z ",.02)
 ;;F0DZ25Z 
 ;;9002226.02101,"1804,F0DZ25Z ",.03)
 ;;31
 ;;9002226.02101,"1804,F0DZ2KZ ",.01)
 ;;F0DZ2KZ 
 ;;9002226.02101,"1804,F0DZ2KZ ",.02)
 ;;F0DZ2KZ 
 ;;9002226.02101,"1804,F0DZ2KZ ",.03)
 ;;31
 ;;9002226.02101,"1804,F0DZ2LZ ",.01)
 ;;F0DZ2LZ 
 ;;9002226.02101,"1804,F0DZ2LZ ",.02)
 ;;F0DZ2LZ 
 ;;9002226.02101,"1804,F0DZ2LZ ",.03)
 ;;31
 ;;9002226.02101,"1804,F0DZ2ZZ ",.01)
 ;;F0DZ2ZZ 
 ;;9002226.02101,"1804,F0DZ2ZZ ",.02)
 ;;F0DZ2ZZ 
 ;;9002226.02101,"1804,F0DZ2ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,F0DZ3MZ ",.01)
 ;;F0DZ3MZ 
 ;;9002226.02101,"1804,F0DZ3MZ ",.02)
 ;;F0DZ3MZ 
 ;;9002226.02101,"1804,F0DZ3MZ ",.03)
 ;;31
 ;;9002226.02101,"1804,F0DZ4SZ ",.01)
 ;;F0DZ4SZ 
 ;;9002226.02101,"1804,F0DZ4SZ ",.02)
 ;;F0DZ4SZ 
 ;;9002226.02101,"1804,F0DZ4SZ ",.03)
 ;;31
 ;;9002226.02101,"1804,F0DZ4VZ ",.01)
 ;;F0DZ4VZ 
 ;;9002226.02101,"1804,F0DZ4VZ ",.02)
 ;;F0DZ4VZ 
 ;;9002226.02101,"1804,F0DZ4VZ ",.03)
 ;;31
 ;;9002226.02101,"1804,F0DZ51Z ",.01)
 ;;F0DZ51Z 
 ;;9002226.02101,"1804,F0DZ51Z ",.02)
 ;;F0DZ51Z 
 ;;9002226.02101,"1804,F0DZ51Z ",.03)
 ;;31
 ;;9002226.02101,"1804,F0DZ52Z ",.01)
 ;;F0DZ52Z 
 ;;9002226.02101,"1804,F0DZ52Z ",.02)
 ;;F0DZ52Z 
 ;;9002226.02101,"1804,F0DZ52Z ",.03)
 ;;31
 ;;9002226.02101,"1804,F0DZ55Z ",.01)
 ;;F0DZ55Z 
 ;;9002226.02101,"1804,F0DZ55Z ",.02)
 ;;F0DZ55Z 
 ;;9002226.02101,"1804,F0DZ55Z ",.03)
 ;;31
 ;;9002226.02101,"1804,F0DZ5KZ ",.01)
 ;;F0DZ5KZ 
 ;;9002226.02101,"1804,F0DZ5KZ ",.02)
 ;;F0DZ5KZ 
 ;;9002226.02101,"1804,F0DZ5KZ ",.03)
 ;;31
 ;;9002226.02101,"1804,F0DZ5LZ ",.01)
 ;;F0DZ5LZ 
 ;;9002226.02101,"1804,F0DZ5LZ ",.02)
 ;;F0DZ5LZ 
 ;;9002226.02101,"1804,F0DZ5LZ ",.03)
 ;;31
 ;;9002226.02101,"1804,F0DZ5ZZ ",.01)
 ;;F0DZ5ZZ 
 ;;9002226.02101,"1804,F0DZ5ZZ ",.02)
 ;;F0DZ5ZZ 
 ;;9002226.02101,"1804,F0DZ5ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,F0DZ6EZ ",.01)
 ;;F0DZ6EZ 
 ;;9002226.02101,"1804,F0DZ6EZ ",.02)
 ;;F0DZ6EZ 
 ;;9002226.02101,"1804,F0DZ6EZ ",.03)
 ;;31
 ;;9002226.02101,"1804,F0DZ6FZ ",.01)
 ;;F0DZ6FZ 
 ;;9002226.02101,"1804,F0DZ6FZ ",.02)
 ;;F0DZ6FZ 
 ;;9002226.02101,"1804,F0DZ6FZ ",.03)
 ;;31
 ;;9002226.02101,"1804,F0DZ6UZ ",.01)
 ;;F0DZ6UZ 
 ;;9002226.02101,"1804,F0DZ6UZ ",.02)
 ;;F0DZ6UZ 
 ;;9002226.02101,"1804,F0DZ6UZ ",.03)
 ;;31
 ;;9002226.02101,"1804,F0DZ6ZZ ",.01)
 ;;F0DZ6ZZ 
 ;;9002226.02101,"1804,F0DZ6ZZ ",.02)
 ;;F0DZ6ZZ 
 ;;9002226.02101,"1804,F0DZ6ZZ ",.03)
 ;;31
