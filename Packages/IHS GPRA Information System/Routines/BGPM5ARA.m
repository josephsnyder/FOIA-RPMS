BGPM5ARA ;IHS/MSC/SAT-CREATED BY ^ATXSTX ON AUG 16, 2011;
 ;;11.1;IHS CLINICAL REPORTING SYSTEM;**1**;JUN 27, 2011;Build 106
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1005,51129227401 ",.02)
 ;;51129227401
 ;;9002226.02101,"1005,51129239101 ",.01)
 ;;51129239101
 ;;9002226.02101,"1005,51129239101 ",.02)
 ;;51129239101
 ;;9002226.02101,"1005,51129239201 ",.01)
 ;;51129239201
 ;;9002226.02101,"1005,51129239201 ",.02)
 ;;51129239201
 ;;9002226.02101,"1005,51129240101 ",.01)
 ;;51129240101
 ;;9002226.02101,"1005,51129240101 ",.02)
 ;;51129240101
 ;;9002226.02101,"1005,51129254001 ",.01)
 ;;51129254001
 ;;9002226.02101,"1005,51129254001 ",.02)
 ;;51129254001
 ;;9002226.02101,"1005,51129255501 ",.01)
 ;;51129255501
 ;;9002226.02101,"1005,51129255501 ",.02)
 ;;51129255501
 ;;9002226.02101,"1005,51129267901 ",.01)
 ;;51129267901
 ;;9002226.02101,"1005,51129267901 ",.02)
 ;;51129267901
 ;;9002226.02101,"1005,51129268001 ",.01)
 ;;51129268001
 ;;9002226.02101,"1005,51129268001 ",.02)
 ;;51129268001
 ;;9002226.02101,"1005,51129273901 ",.01)
 ;;51129273901
 ;;9002226.02101,"1005,51129273901 ",.02)
 ;;51129273901
 ;;9002226.02101,"1005,51129276001 ",.01)
 ;;51129276001
 ;;9002226.02101,"1005,51129276001 ",.02)
 ;;51129276001
 ;;9002226.02101,"1005,51129277001 ",.01)
 ;;51129277001
 ;;9002226.02101,"1005,51129277001 ",.02)
 ;;51129277001
 ;;9002226.02101,"1005,51129277601 ",.01)
 ;;51129277601
 ;;9002226.02101,"1005,51129277601 ",.02)
 ;;51129277601
 ;;9002226.02101,"1005,51129280701 ",.01)
 ;;51129280701
 ;;9002226.02101,"1005,51129280701 ",.02)
 ;;51129280701
 ;;9002226.02101,"1005,51129284601 ",.01)
 ;;51129284601
 ;;9002226.02101,"1005,51129284601 ",.02)
 ;;51129284601
 ;;9002226.02101,"1005,51129284602 ",.01)
 ;;51129284602
 ;;9002226.02101,"1005,51129284602 ",.02)
 ;;51129284602
 ;;9002226.02101,"1005,51129286501 ",.01)
 ;;51129286501
 ;;9002226.02101,"1005,51129286501 ",.02)
 ;;51129286501
 ;;9002226.02101,"1005,51129286502 ",.01)
 ;;51129286502
 ;;9002226.02101,"1005,51129286502 ",.02)
 ;;51129286502
 ;;9002226.02101,"1005,51129287001 ",.01)
 ;;51129287001
 ;;9002226.02101,"1005,51129287001 ",.02)
 ;;51129287001
 ;;9002226.02101,"1005,51129287002 ",.01)
 ;;51129287002
 ;;9002226.02101,"1005,51129287002 ",.02)
 ;;51129287002
 ;;9002226.02101,"1005,51129287401 ",.01)
 ;;51129287401
 ;;9002226.02101,"1005,51129287401 ",.02)
 ;;51129287401
 ;;9002226.02101,"1005,51129291301 ",.01)
 ;;51129291301
 ;;9002226.02101,"1005,51129291301 ",.02)
 ;;51129291301
 ;;9002226.02101,"1005,51129291302 ",.01)
 ;;51129291302
 ;;9002226.02101,"1005,51129291302 ",.02)
 ;;51129291302
 ;;9002226.02101,"1005,51129295601 ",.01)
 ;;51129295601
 ;;9002226.02101,"1005,51129295601 ",.02)
 ;;51129295601
 ;;9002226.02101,"1005,51129300001 ",.01)
 ;;51129300001
 ;;9002226.02101,"1005,51129300001 ",.02)
 ;;51129300001
 ;;9002226.02101,"1005,51129300002 ",.01)
 ;;51129300002
 ;;9002226.02101,"1005,51129300002 ",.02)
 ;;51129300002
 ;;9002226.02101,"1005,51129303301 ",.01)
 ;;51129303301
 ;;9002226.02101,"1005,51129303301 ",.02)
 ;;51129303301
 ;;9002226.02101,"1005,51129303302 ",.01)
 ;;51129303302
 ;;9002226.02101,"1005,51129303302 ",.02)
 ;;51129303302
 ;;9002226.02101,"1005,51129304301 ",.01)
 ;;51129304301
 ;;9002226.02101,"1005,51129304301 ",.02)
 ;;51129304301
 ;;9002226.02101,"1005,51129304302 ",.01)
 ;;51129304302
 ;;9002226.02101,"1005,51129304302 ",.02)
 ;;51129304302
 ;;9002226.02101,"1005,51129306501 ",.01)
 ;;51129306501
 ;;9002226.02101,"1005,51129306501 ",.02)
 ;;51129306501
 ;;9002226.02101,"1005,51129306502 ",.01)
 ;;51129306502
 ;;9002226.02101,"1005,51129306502 ",.02)
 ;;51129306502
 ;;9002226.02101,"1005,51129307001 ",.01)
 ;;51129307001
 ;;9002226.02101,"1005,51129307001 ",.02)
 ;;51129307001
 ;;9002226.02101,"1005,51129307002 ",.01)
 ;;51129307002
 ;;9002226.02101,"1005,51129307002 ",.02)
 ;;51129307002
 ;;9002226.02101,"1005,51129307201 ",.01)
 ;;51129307201
 ;;9002226.02101,"1005,51129307201 ",.02)
 ;;51129307201
 ;;9002226.02101,"1005,51129307202 ",.01)
 ;;51129307202
 ;;9002226.02101,"1005,51129307202 ",.02)
 ;;51129307202
 ;;9002226.02101,"1005,51129308601 ",.01)
 ;;51129308601
 ;;9002226.02101,"1005,51129308601 ",.02)
 ;;51129308601
 ;;9002226.02101,"1005,51129308602 ",.01)
 ;;51129308602
 ;;9002226.02101,"1005,51129308602 ",.02)
 ;;51129308602
 ;;9002226.02101,"1005,51129309401 ",.01)
 ;;51129309401
 ;;9002226.02101,"1005,51129309401 ",.02)
 ;;51129309401
 ;;9002226.02101,"1005,51129309402 ",.01)
 ;;51129309402
 ;;9002226.02101,"1005,51129309402 ",.02)
 ;;51129309402
 ;;9002226.02101,"1005,51129309701 ",.01)
 ;;51129309701
 ;;9002226.02101,"1005,51129309701 ",.02)
 ;;51129309701
 ;;9002226.02101,"1005,51129310801 ",.01)
 ;;51129310801
 ;;9002226.02101,"1005,51129310801 ",.02)
 ;;51129310801
 ;;9002226.02101,"1005,51129310802 ",.01)
 ;;51129310802
 ;;9002226.02101,"1005,51129310802 ",.02)
 ;;51129310802
 ;;9002226.02101,"1005,51129314701 ",.01)
 ;;51129314701
 ;;9002226.02101,"1005,51129314701 ",.02)
 ;;51129314701
 ;;9002226.02101,"1005,51129314702 ",.01)
 ;;51129314702
 ;;9002226.02101,"1005,51129314702 ",.02)
 ;;51129314702
 ;;9002226.02101,"1005,51129316101 ",.01)
 ;;51129316101
 ;;9002226.02101,"1005,51129316101 ",.02)
 ;;51129316101
 ;;9002226.02101,"1005,51129316102 ",.01)
 ;;51129316102
 ;;9002226.02101,"1005,51129316102 ",.02)
 ;;51129316102
 ;;9002226.02101,"1005,51129316601 ",.01)
 ;;51129316601
 ;;9002226.02101,"1005,51129316601 ",.02)
 ;;51129316601
 ;;9002226.02101,"1005,51129316602 ",.01)
 ;;51129316602
 ;;9002226.02101,"1005,51129316602 ",.02)
 ;;51129316602
 ;;9002226.02101,"1005,51129329801 ",.01)
 ;;51129329801
 ;;9002226.02101,"1005,51129329801 ",.02)
 ;;51129329801
 ;;9002226.02101,"1005,51129329802 ",.01)
 ;;51129329802
 ;;9002226.02101,"1005,51129329802 ",.02)
 ;;51129329802
 ;;9002226.02101,"1005,51129330701 ",.01)
 ;;51129330701
 ;;9002226.02101,"1005,51129330701 ",.02)
 ;;51129330701
 ;;9002226.02101,"1005,51129330702 ",.01)
 ;;51129330702
 ;;9002226.02101,"1005,51129330702 ",.02)
 ;;51129330702
 ;;9002226.02101,"1005,51129332001 ",.01)
 ;;51129332001
 ;;9002226.02101,"1005,51129332001 ",.02)
 ;;51129332001
 ;;9002226.02101,"1005,51129332002 ",.01)
 ;;51129332002
 ;;9002226.02101,"1005,51129332002 ",.02)
 ;;51129332002
 ;;9002226.02101,"1005,51129334501 ",.01)
 ;;51129334501
 ;;9002226.02101,"1005,51129334501 ",.02)
 ;;51129334501
 ;;9002226.02101,"1005,51129334502 ",.01)
 ;;51129334502
 ;;9002226.02101,"1005,51129334502 ",.02)
 ;;51129334502
 ;;9002226.02101,"1005,51129345001 ",.01)
 ;;51129345001
 ;;9002226.02101,"1005,51129345001 ",.02)
 ;;51129345001
 ;;9002226.02101,"1005,51129345002 ",.01)
 ;;51129345002
 ;;9002226.02101,"1005,51129345002 ",.02)
 ;;51129345002
 ;;9002226.02101,"1005,51129347601 ",.01)
 ;;51129347601
 ;;9002226.02101,"1005,51129347601 ",.02)
 ;;51129347601
 ;;9002226.02101,"1005,51129347602 ",.01)
 ;;51129347602
 ;;9002226.02101,"1005,51129347602 ",.02)
 ;;51129347602
 ;;9002226.02101,"1005,51129348201 ",.01)
 ;;51129348201
 ;;9002226.02101,"1005,51129348201 ",.02)
 ;;51129348201
 ;;9002226.02101,"1005,51129348202 ",.01)
 ;;51129348202
 ;;9002226.02101,"1005,51129348202 ",.02)
 ;;51129348202
 ;;9002226.02101,"1005,51129351801 ",.01)
 ;;51129351801
 ;;9002226.02101,"1005,51129351801 ",.02)
 ;;51129351801
 ;;9002226.02101,"1005,51129351802 ",.01)
 ;;51129351802
 ;;9002226.02101,"1005,51129351802 ",.02)
 ;;51129351802
 ;;9002226.02101,"1005,51129353301 ",.01)
 ;;51129353301
 ;;9002226.02101,"1005,51129353301 ",.02)
 ;;51129353301
 ;;9002226.02101,"1005,51129353302 ",.01)
 ;;51129353302
 ;;9002226.02101,"1005,51129353302 ",.02)
 ;;51129353302
 ;;9002226.02101,"1005,51129355701 ",.01)
 ;;51129355701
 ;;9002226.02101,"1005,51129355701 ",.02)
 ;;51129355701
 ;;9002226.02101,"1005,51129355702 ",.01)
 ;;51129355702
 ;;9002226.02101,"1005,51129355702 ",.02)
 ;;51129355702
 ;;9002226.02101,"1005,51129367301 ",.01)
 ;;51129367301
 ;;9002226.02101,"1005,51129367301 ",.02)
 ;;51129367301
 ;;9002226.02101,"1005,51129367302 ",.01)
 ;;51129367302
 ;;9002226.02101,"1005,51129367302 ",.02)
 ;;51129367302
 ;;9002226.02101,"1005,51129371501 ",.01)
 ;;51129371501
 ;;9002226.02101,"1005,51129371501 ",.02)
 ;;51129371501
 ;;9002226.02101,"1005,51129371502 ",.01)
 ;;51129371502
 ;;9002226.02101,"1005,51129371502 ",.02)
 ;;51129371502
 ;;9002226.02101,"1005,51129373801 ",.01)
 ;;51129373801
 ;;9002226.02101,"1005,51129373801 ",.02)
 ;;51129373801
 ;;9002226.02101,"1005,51129373802 ",.01)
 ;;51129373802
 ;;9002226.02101,"1005,51129373802 ",.02)
 ;;51129373802
 ;;9002226.02101,"1005,51129374501 ",.01)
 ;;51129374501
 ;;9002226.02101,"1005,51129374501 ",.02)
 ;;51129374501
 ;;9002226.02101,"1005,51129374502 ",.01)
 ;;51129374502
 ;;9002226.02101,"1005,51129374502 ",.02)
 ;;51129374502
 ;;9002226.02101,"1005,51129374601 ",.01)
 ;;51129374601
 ;;9002226.02101,"1005,51129374601 ",.02)
 ;;51129374601
 ;;9002226.02101,"1005,51129374602 ",.01)
 ;;51129374602
 ;;9002226.02101,"1005,51129374602 ",.02)
 ;;51129374602
 ;;9002226.02101,"1005,51129374701 ",.01)
 ;;51129374701
 ;;9002226.02101,"1005,51129374701 ",.02)
 ;;51129374701
 ;;9002226.02101,"1005,51129374702 ",.01)
 ;;51129374702
 ;;9002226.02101,"1005,51129374702 ",.02)
 ;;51129374702
 ;;9002226.02101,"1005,51129377301 ",.01)
 ;;51129377301
 ;;9002226.02101,"1005,51129377301 ",.02)
 ;;51129377301
 ;;9002226.02101,"1005,51129377302 ",.01)
 ;;51129377302
 ;;9002226.02101,"1005,51129377302 ",.02)
 ;;51129377302
 ;;9002226.02101,"1005,51129380701 ",.01)
 ;;51129380701
 ;;9002226.02101,"1005,51129380701 ",.02)
 ;;51129380701
 ;;9002226.02101,"1005,51129380702 ",.01)
 ;;51129380702
 ;;9002226.02101,"1005,51129380702 ",.02)
 ;;51129380702
 ;;9002226.02101,"1005,51129382301 ",.01)
 ;;51129382301
 ;;9002226.02101,"1005,51129382301 ",.02)
 ;;51129382301
 ;;9002226.02101,"1005,51129382302 ",.01)
 ;;51129382302
 ;;9002226.02101,"1005,51129382302 ",.02)
 ;;51129382302
 ;;9002226.02101,"1005,51129383001 ",.01)
 ;;51129383001
 ;;9002226.02101,"1005,51129383001 ",.02)
 ;;51129383001
 ;;9002226.02101,"1005,51129383002 ",.01)
 ;;51129383002
 ;;9002226.02101,"1005,51129383002 ",.02)
 ;;51129383002
 ;;9002226.02101,"1005,51129387201 ",.01)
 ;;51129387201
 ;;9002226.02101,"1005,51129387201 ",.02)
 ;;51129387201
 ;;9002226.02101,"1005,51129387202 ",.01)
 ;;51129387202
 ;;9002226.02101,"1005,51129387202 ",.02)
 ;;51129387202
 ;;9002226.02101,"1005,51129387701 ",.01)
 ;;51129387701
 ;;9002226.02101,"1005,51129387701 ",.02)
 ;;51129387701
 ;;9002226.02101,"1005,51129387702 ",.01)
 ;;51129387702
 ;;9002226.02101,"1005,51129387702 ",.02)
 ;;51129387702
 ;;9002226.02101,"1005,51129390001 ",.01)
 ;;51129390001
 ;;9002226.02101,"1005,51129390001 ",.02)
 ;;51129390001
 ;;9002226.02101,"1005,51129390002 ",.01)
 ;;51129390002
 ;;9002226.02101,"1005,51129390002 ",.02)
 ;;51129390002
 ;;9002226.02101,"1005,51129390901 ",.01)
 ;;51129390901
 ;;9002226.02101,"1005,51129390901 ",.02)
 ;;51129390901
 ;;9002226.02101,"1005,51129390902 ",.01)
 ;;51129390902
 ;;9002226.02101,"1005,51129390902 ",.02)
 ;;51129390902
 ;;9002226.02101,"1005,51129394001 ",.01)
 ;;51129394001
 ;;9002226.02101,"1005,51129394001 ",.02)
 ;;51129394001
 ;;9002226.02101,"1005,51129394002 ",.01)
 ;;51129394002
 ;;9002226.02101,"1005,51129394002 ",.02)
 ;;51129394002
 ;;9002226.02101,"1005,51129394101 ",.01)
 ;;51129394101
 ;;9002226.02101,"1005,51129394101 ",.02)
 ;;51129394101
 ;;9002226.02101,"1005,51129394102 ",.01)
 ;;51129394102
 ;;9002226.02101,"1005,51129394102 ",.02)
 ;;51129394102
 ;;9002226.02101,"1005,51129397601 ",.01)
 ;;51129397601
 ;;9002226.02101,"1005,51129397601 ",.02)
 ;;51129397601
