ATXXB86 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON APR 29, 2014;
 ;;5.1;TAXONOMY;**11**;FEB 04, 1997;Build 48
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1804,0JHT03Z ",.02)
 ;;0JHT03Z 
 ;;9002226.02101,"1804,0JHT03Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0JHT0VZ ",.01)
 ;;0JHT0VZ 
 ;;9002226.02101,"1804,0JHT0VZ ",.02)
 ;;0JHT0VZ 
 ;;9002226.02101,"1804,0JHT0VZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0JHT31Z ",.01)
 ;;0JHT31Z 
 ;;9002226.02101,"1804,0JHT31Z ",.02)
 ;;0JHT31Z 
 ;;9002226.02101,"1804,0JHT31Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0JHT33Z ",.01)
 ;;0JHT33Z 
 ;;9002226.02101,"1804,0JHT33Z ",.02)
 ;;0JHT33Z 
 ;;9002226.02101,"1804,0JHT33Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0JHT3VZ ",.01)
 ;;0JHT3VZ 
 ;;9002226.02101,"1804,0JHT3VZ ",.02)
 ;;0JHT3VZ 
 ;;9002226.02101,"1804,0JHT3VZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0JHV01Z ",.01)
 ;;0JHV01Z 
 ;;9002226.02101,"1804,0JHV01Z ",.02)
 ;;0JHV01Z 
 ;;9002226.02101,"1804,0JHV01Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0JHV03Z ",.01)
 ;;0JHV03Z 
 ;;9002226.02101,"1804,0JHV03Z ",.02)
 ;;0JHV03Z 
 ;;9002226.02101,"1804,0JHV03Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0JHV31Z ",.01)
 ;;0JHV31Z 
 ;;9002226.02101,"1804,0JHV31Z ",.02)
 ;;0JHV31Z 
 ;;9002226.02101,"1804,0JHV31Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0JHV33Z ",.01)
 ;;0JHV33Z 
 ;;9002226.02101,"1804,0JHV33Z ",.02)
 ;;0JHV33Z 
 ;;9002226.02101,"1804,0JHV33Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0JHW01Z ",.01)
 ;;0JHW01Z 
 ;;9002226.02101,"1804,0JHW01Z ",.02)
 ;;0JHW01Z 
 ;;9002226.02101,"1804,0JHW01Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0JHW03Z ",.01)
 ;;0JHW03Z 
 ;;9002226.02101,"1804,0JHW03Z ",.02)
 ;;0JHW03Z 
 ;;9002226.02101,"1804,0JHW03Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0JHW31Z ",.01)
 ;;0JHW31Z 
 ;;9002226.02101,"1804,0JHW31Z ",.02)
 ;;0JHW31Z 
 ;;9002226.02101,"1804,0JHW31Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0JHW33Z ",.01)
 ;;0JHW33Z 
 ;;9002226.02101,"1804,0JHW33Z ",.02)
 ;;0JHW33Z 
 ;;9002226.02101,"1804,0JHW33Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0JJS0ZZ ",.01)
 ;;0JJS0ZZ 
 ;;9002226.02101,"1804,0JJS0ZZ ",.02)
 ;;0JJS0ZZ 
 ;;9002226.02101,"1804,0JJS0ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0JJS3ZZ ",.01)
 ;;0JJS3ZZ 
 ;;9002226.02101,"1804,0JJS3ZZ ",.02)
 ;;0JJS3ZZ 
 ;;9002226.02101,"1804,0JJS3ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0JJSXZZ ",.01)
 ;;0JJSXZZ 
 ;;9002226.02101,"1804,0JJSXZZ ",.02)
 ;;0JJSXZZ 
 ;;9002226.02101,"1804,0JJSXZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0JJT0ZZ ",.01)
 ;;0JJT0ZZ 
 ;;9002226.02101,"1804,0JJT0ZZ ",.02)
 ;;0JJT0ZZ 
 ;;9002226.02101,"1804,0JJT0ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0JJT3ZZ ",.01)
 ;;0JJT3ZZ 
 ;;9002226.02101,"1804,0JJT3ZZ ",.02)
 ;;0JJT3ZZ 
 ;;9002226.02101,"1804,0JJT3ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0JJTXZZ ",.01)
 ;;0JJTXZZ 
 ;;9002226.02101,"1804,0JJTXZZ ",.02)
 ;;0JJTXZZ 
 ;;9002226.02101,"1804,0JJTXZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0JJV0ZZ ",.01)
 ;;0JJV0ZZ 
 ;;9002226.02101,"1804,0JJV0ZZ ",.02)
 ;;0JJV0ZZ 
 ;;9002226.02101,"1804,0JJV0ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0JJV3ZZ ",.01)
 ;;0JJV3ZZ 
 ;;9002226.02101,"1804,0JJV3ZZ ",.02)
 ;;0JJV3ZZ 
 ;;9002226.02101,"1804,0JJV3ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0JJVXZZ ",.01)
 ;;0JJVXZZ 
 ;;9002226.02101,"1804,0JJVXZZ ",.02)
 ;;0JJVXZZ 
 ;;9002226.02101,"1804,0JJVXZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0JJW0ZZ ",.01)
 ;;0JJW0ZZ 
 ;;9002226.02101,"1804,0JJW0ZZ ",.02)
 ;;0JJW0ZZ 
 ;;9002226.02101,"1804,0JJW0ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0JJW3ZZ ",.01)
 ;;0JJW3ZZ 
 ;;9002226.02101,"1804,0JJW3ZZ ",.02)
 ;;0JJW3ZZ 
 ;;9002226.02101,"1804,0JJW3ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0JJWXZZ ",.01)
 ;;0JJWXZZ 
 ;;9002226.02101,"1804,0JJWXZZ ",.02)
 ;;0JJWXZZ 
 ;;9002226.02101,"1804,0JJWXZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0JN0XZZ ",.01)
 ;;0JN0XZZ 
 ;;9002226.02101,"1804,0JN0XZZ ",.02)
 ;;0JN0XZZ 
 ;;9002226.02101,"1804,0JN0XZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0JN1XZZ ",.01)
 ;;0JN1XZZ 
 ;;9002226.02101,"1804,0JN1XZZ ",.02)
 ;;0JN1XZZ 
 ;;9002226.02101,"1804,0JN1XZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0JN4XZZ ",.01)
 ;;0JN4XZZ 
 ;;9002226.02101,"1804,0JN4XZZ ",.02)
 ;;0JN4XZZ 
 ;;9002226.02101,"1804,0JN4XZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0JN5XZZ ",.01)
 ;;0JN5XZZ 
 ;;9002226.02101,"1804,0JN5XZZ ",.02)
 ;;0JN5XZZ 
 ;;9002226.02101,"1804,0JN5XZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0JN6XZZ ",.01)
 ;;0JN6XZZ 
 ;;9002226.02101,"1804,0JN6XZZ ",.02)
 ;;0JN6XZZ 
 ;;9002226.02101,"1804,0JN6XZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0JN7XZZ ",.01)
 ;;0JN7XZZ 
 ;;9002226.02101,"1804,0JN7XZZ ",.02)
 ;;0JN7XZZ 
 ;;9002226.02101,"1804,0JN7XZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0JN8XZZ ",.01)
 ;;0JN8XZZ 
 ;;9002226.02101,"1804,0JN8XZZ ",.02)
 ;;0JN8XZZ 
 ;;9002226.02101,"1804,0JN8XZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0JN9XZZ ",.01)
 ;;0JN9XZZ 
 ;;9002226.02101,"1804,0JN9XZZ ",.02)
 ;;0JN9XZZ 
 ;;9002226.02101,"1804,0JN9XZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0JNBXZZ ",.01)
 ;;0JNBXZZ 
 ;;9002226.02101,"1804,0JNBXZZ ",.02)
 ;;0JNBXZZ 
 ;;9002226.02101,"1804,0JNBXZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0JNCXZZ ",.01)
 ;;0JNCXZZ 
 ;;9002226.02101,"1804,0JNCXZZ ",.02)
 ;;0JNCXZZ 
 ;;9002226.02101,"1804,0JNCXZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0JNDXZZ ",.01)
 ;;0JNDXZZ 
 ;;9002226.02101,"1804,0JNDXZZ ",.02)
 ;;0JNDXZZ 
 ;;9002226.02101,"1804,0JNDXZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0JNFXZZ ",.01)
 ;;0JNFXZZ 
 ;;9002226.02101,"1804,0JNFXZZ ",.02)
 ;;0JNFXZZ 
 ;;9002226.02101,"1804,0JNFXZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0JNGXZZ ",.01)
 ;;0JNGXZZ 
 ;;9002226.02101,"1804,0JNGXZZ ",.02)
 ;;0JNGXZZ 
 ;;9002226.02101,"1804,0JNGXZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0JNHXZZ ",.01)
 ;;0JNHXZZ 
 ;;9002226.02101,"1804,0JNHXZZ ",.02)
 ;;0JNHXZZ 
 ;;9002226.02101,"1804,0JNHXZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0JNJXZZ ",.01)
 ;;0JNJXZZ 
 ;;9002226.02101,"1804,0JNJXZZ ",.02)
 ;;0JNJXZZ 
 ;;9002226.02101,"1804,0JNJXZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0JNKXZZ ",.01)
 ;;0JNKXZZ 
 ;;9002226.02101,"1804,0JNKXZZ ",.02)
 ;;0JNKXZZ 
 ;;9002226.02101,"1804,0JNKXZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0JNLXZZ ",.01)
 ;;0JNLXZZ 
 ;;9002226.02101,"1804,0JNLXZZ ",.02)
 ;;0JNLXZZ 
 ;;9002226.02101,"1804,0JNLXZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0JNMXZZ ",.01)
 ;;0JNMXZZ 
 ;;9002226.02101,"1804,0JNMXZZ ",.02)
 ;;0JNMXZZ 
 ;;9002226.02101,"1804,0JNMXZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0JNNXZZ ",.01)
 ;;0JNNXZZ 
 ;;9002226.02101,"1804,0JNNXZZ ",.02)
 ;;0JNNXZZ 
 ;;9002226.02101,"1804,0JNNXZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0JNPXZZ ",.01)
 ;;0JNPXZZ 
 ;;9002226.02101,"1804,0JNPXZZ ",.02)
 ;;0JNPXZZ 
 ;;9002226.02101,"1804,0JNPXZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0JNQXZZ ",.01)
 ;;0JNQXZZ 
 ;;9002226.02101,"1804,0JNQXZZ ",.02)
 ;;0JNQXZZ 
 ;;9002226.02101,"1804,0JNQXZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0JNRXZZ ",.01)
 ;;0JNRXZZ 
 ;;9002226.02101,"1804,0JNRXZZ ",.02)
 ;;0JNRXZZ 
 ;;9002226.02101,"1804,0JNRXZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0JPS00Z ",.01)
 ;;0JPS00Z 
 ;;9002226.02101,"1804,0JPS00Z ",.02)
 ;;0JPS00Z 
 ;;9002226.02101,"1804,0JPS00Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0JPS01Z ",.01)
 ;;0JPS01Z 
 ;;9002226.02101,"1804,0JPS01Z ",.02)
 ;;0JPS01Z 
 ;;9002226.02101,"1804,0JPS01Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0JPS03Z ",.01)
 ;;0JPS03Z 
 ;;9002226.02101,"1804,0JPS03Z ",.02)
 ;;0JPS03Z 
 ;;9002226.02101,"1804,0JPS03Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0JPS07Z ",.01)
 ;;0JPS07Z 
 ;;9002226.02101,"1804,0JPS07Z ",.02)
 ;;0JPS07Z 
 ;;9002226.02101,"1804,0JPS07Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0JPS0JZ ",.01)
 ;;0JPS0JZ 
 ;;9002226.02101,"1804,0JPS0JZ ",.02)
 ;;0JPS0JZ 
 ;;9002226.02101,"1804,0JPS0JZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0JPS0KZ ",.01)
 ;;0JPS0KZ 
 ;;9002226.02101,"1804,0JPS0KZ ",.02)
 ;;0JPS0KZ 
 ;;9002226.02101,"1804,0JPS0KZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0JPS0NZ ",.01)
 ;;0JPS0NZ 
 ;;9002226.02101,"1804,0JPS0NZ ",.02)
 ;;0JPS0NZ 
 ;;9002226.02101,"1804,0JPS0NZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0JPS30Z ",.01)
 ;;0JPS30Z 
 ;;9002226.02101,"1804,0JPS30Z ",.02)
 ;;0JPS30Z 
 ;;9002226.02101,"1804,0JPS30Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0JPS31Z ",.01)
 ;;0JPS31Z 
 ;;9002226.02101,"1804,0JPS31Z ",.02)
 ;;0JPS31Z 
 ;;9002226.02101,"1804,0JPS31Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0JPS33Z ",.01)
 ;;0JPS33Z 
 ;;9002226.02101,"1804,0JPS33Z ",.02)
 ;;0JPS33Z 
 ;;9002226.02101,"1804,0JPS33Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0JPS37Z ",.01)
 ;;0JPS37Z 
 ;;9002226.02101,"1804,0JPS37Z ",.02)
 ;;0JPS37Z 
 ;;9002226.02101,"1804,0JPS37Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0JPS3JZ ",.01)
 ;;0JPS3JZ 
 ;;9002226.02101,"1804,0JPS3JZ ",.02)
 ;;0JPS3JZ 
 ;;9002226.02101,"1804,0JPS3JZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0JPS3KZ ",.01)
 ;;0JPS3KZ 
 ;;9002226.02101,"1804,0JPS3KZ ",.02)
 ;;0JPS3KZ 
 ;;9002226.02101,"1804,0JPS3KZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0JPS3NZ ",.01)
 ;;0JPS3NZ 
 ;;9002226.02101,"1804,0JPS3NZ ",.02)
 ;;0JPS3NZ 
 ;;9002226.02101,"1804,0JPS3NZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0JPSX0Z ",.01)
 ;;0JPSX0Z 
 ;;9002226.02101,"1804,0JPSX0Z ",.02)
 ;;0JPSX0Z 
 ;;9002226.02101,"1804,0JPSX0Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0JPSX1Z ",.01)
 ;;0JPSX1Z 
 ;;9002226.02101,"1804,0JPSX1Z ",.02)
 ;;0JPSX1Z 
 ;;9002226.02101,"1804,0JPSX1Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0JPSX3Z ",.01)
 ;;0JPSX3Z 
 ;;9002226.02101,"1804,0JPSX3Z ",.02)
 ;;0JPSX3Z 
 ;;9002226.02101,"1804,0JPSX3Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0JPT00Z ",.01)
 ;;0JPT00Z 
 ;;9002226.02101,"1804,0JPT00Z ",.02)
 ;;0JPT00Z 
 ;;9002226.02101,"1804,0JPT00Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0JPT01Z ",.01)
 ;;0JPT01Z 
 ;;9002226.02101,"1804,0JPT01Z ",.02)
 ;;0JPT01Z 
 ;;9002226.02101,"1804,0JPT01Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0JPT02Z ",.01)
 ;;0JPT02Z 
 ;;9002226.02101,"1804,0JPT02Z ",.02)
 ;;0JPT02Z 
 ;;9002226.02101,"1804,0JPT02Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0JPT03Z ",.01)
 ;;0JPT03Z 
 ;;9002226.02101,"1804,0JPT03Z ",.02)
 ;;0JPT03Z 
 ;;9002226.02101,"1804,0JPT03Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0JPT07Z ",.01)
 ;;0JPT07Z 
 ;;9002226.02101,"1804,0JPT07Z ",.02)
 ;;0JPT07Z 
 ;;9002226.02101,"1804,0JPT07Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0JPT0HZ ",.01)
 ;;0JPT0HZ 
 ;;9002226.02101,"1804,0JPT0HZ ",.02)
 ;;0JPT0HZ 
 ;;9002226.02101,"1804,0JPT0HZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0JPT0JZ ",.01)
 ;;0JPT0JZ 
 ;;9002226.02101,"1804,0JPT0JZ ",.02)
 ;;0JPT0JZ 
 ;;9002226.02101,"1804,0JPT0JZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0JPT0KZ ",.01)
 ;;0JPT0KZ 
 ;;9002226.02101,"1804,0JPT0KZ ",.02)
 ;;0JPT0KZ 
 ;;9002226.02101,"1804,0JPT0KZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0JPT0MZ ",.01)
 ;;0JPT0MZ 
 ;;9002226.02101,"1804,0JPT0MZ ",.02)
 ;;0JPT0MZ 
 ;;9002226.02101,"1804,0JPT0MZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0JPT0NZ ",.01)
 ;;0JPT0NZ 
 ;;9002226.02101,"1804,0JPT0NZ ",.02)
 ;;0JPT0NZ 
 ;;9002226.02101,"1804,0JPT0NZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0JPT0VZ ",.01)
 ;;0JPT0VZ 
 ;;9002226.02101,"1804,0JPT0VZ ",.02)
 ;;0JPT0VZ 
 ;;9002226.02101,"1804,0JPT0VZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0JPT0WZ ",.01)
 ;;0JPT0WZ 
 ;;9002226.02101,"1804,0JPT0WZ ",.02)
 ;;0JPT0WZ 
 ;;9002226.02101,"1804,0JPT0WZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0JPT0XZ ",.01)
 ;;0JPT0XZ 
 ;;9002226.02101,"1804,0JPT0XZ ",.02)
 ;;0JPT0XZ 
 ;;9002226.02101,"1804,0JPT0XZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0JPT30Z ",.01)
 ;;0JPT30Z 
 ;;9002226.02101,"1804,0JPT30Z ",.02)
 ;;0JPT30Z 
 ;;9002226.02101,"1804,0JPT30Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0JPT31Z ",.01)
 ;;0JPT31Z 
 ;;9002226.02101,"1804,0JPT31Z ",.02)
 ;;0JPT31Z 
