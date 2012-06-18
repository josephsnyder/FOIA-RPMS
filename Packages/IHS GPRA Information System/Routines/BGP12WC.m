BGP12WC ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON APR 14, 2011 ;
 ;;11.1;IHS CLINICAL REPORTING SYSTEM;;JUN 27, 2011;Build 33
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;21,"49999-0614-01 ")
 ;;202
 ;;21,"49999-0614-12 ")
 ;;203
 ;;21,"49999-0819-60 ")
 ;;38
 ;;21,"49999-0884-30 ")
 ;;294
 ;;21,"49999-0884-90 ")
 ;;295
 ;;21,"49999-0921-30 ")
 ;;413
 ;;21,"49999-0952-30 ")
 ;;296
 ;;21,"49999-0984-60 ")
 ;;39
 ;;21,"49999-0985-60 ")
 ;;40
 ;;21,"50111-0459-01 ")
 ;;414
 ;;21,"50111-0459-02 ")
 ;;415
 ;;21,"50111-0459-03 ")
 ;;416
 ;;21,"50111-0482-01 ")
 ;;417
 ;;21,"50111-0482-02 ")
 ;;418
 ;;21,"50111-0482-03 ")
 ;;419
 ;;21,"50111-0483-01 ")
 ;;420
 ;;21,"50111-0483-02 ")
 ;;421
 ;;21,"50111-0518-01 ")
 ;;422
 ;;21,"50242-0040-62 ")
 ;;561
 ;;21,"50383-0806-16 ")
 ;;162
 ;;21,"50474-0100-01 ")
 ;;330
 ;;21,"50474-0200-01 ")
 ;;331
 ;;21,"50474-0200-50 ")
 ;;332
 ;;21,"50474-0300-01 ")
 ;;333
 ;;21,"50474-0300-50 ")
 ;;334
 ;;21,"50474-0400-01 ")
 ;;335
 ;;21,"50991-0200-16 ")
 ;;143
 ;;21,"50991-0214-16 ")
 ;;145
 ;;21,"50991-0400-01 ")
 ;;144
 ;;21,"50991-0413-01 ")
 ;;146
 ;;21,"51991-0536-01 ")
 ;;159
 ;;21,"52959-0131-00 ")
 ;;68
 ;;21,"52959-0279-30 ")
 ;;479
 ;;21,"52959-0286-03 ")
 ;;108
 ;;21,"53265-0380-10 ")
 ;;480
 ;;21,"53265-0380-50 ")
 ;;481
 ;;21,"53265-0382-10 ")
 ;;482
 ;;21,"54569-0049-00 ")
 ;;223
 ;;21,"54569-0053-00 ")
 ;;109
 ;;21,"54569-0062-02 ")
 ;;383
 ;;21,"54569-0065-01 ")
 ;;483
 ;;21,"54569-0065-02 ")
 ;;484
 ;;21,"54569-0065-05 ")
 ;;485
 ;;21,"54569-0318-01 ")
 ;;384
 ;;21,"54569-1012-00 ")
 ;;224
 ;;21,"54569-1013-00 ")
 ;;69
 ;;21,"54569-1666-00 ")
 ;;336
 ;;21,"54569-3976-00 ")
 ;;75
 ;;21,"54569-4549-00 ")
 ;;131
 ;;21,"54569-4602-00 ")
 ;;182
 ;;21,"54569-4603-00 ")
 ;;183
 ;;21,"54569-4604-01 ")
 ;;16
 ;;21,"54569-4605-00 ")
 ;;297
 ;;21,"54569-4736-00 ")
 ;;298
 ;;21,"54569-4741-00 ")
 ;;252
 ;;21,"54569-4772-00 ")
 ;;132
 ;;21,"54569-4863-00 ")
 ;;184
 ;;21,"54569-5162-00 ")
 ;;247
 ;;21,"54569-5163-00 ")
 ;;248
 ;;21,"54569-5241-00 ")
 ;;41
 ;;21,"54569-5242-00 ")
 ;;42
 ;;21,"54569-5243-00 ")
 ;;43
 ;;21,"54569-5663-00 ")
 ;;204
 ;;21,"54569-5671-00 ")
 ;;205
 ;;21,"54569-5702-00 ")
 ;;206
 ;;21,"54569-5928-00 ")
 ;;242
 ;;21,"54569-8580-00 ")
 ;;385
 ;;21,"54569-8586-00 ")
 ;;386
 ;;21,"54838-0513-80 ")
 ;;156
 ;;21,"54839-0513-80 ")
 ;;157
 ;;21,"54868-0028-00 ")
 ;;486
 ;;21,"54868-0028-01 ")
 ;;487
 ;;21,"54868-0028-02 ")
 ;;488
 ;;21,"54868-0028-03 ")
 ;;489
 ;;21,"54868-0028-05 ")
 ;;490
 ;;21,"54868-0028-06 ")
 ;;491
 ;;21,"54868-0029-00 ")
 ;;492
 ;;21,"54868-0029-02 ")
 ;;493
 ;;21,"54868-0029-03 ")
 ;;494
 ;;21,"54868-0029-05 ")
 ;;495
 ;;21,"54868-0029-06 ")
 ;;496
 ;;21,"54868-0029-07 ")
 ;;497
 ;;21,"54868-1268-01 ")
 ;;110
 ;;21,"54868-1438-00 ")
 ;;555
 ;;21,"54868-1438-01 ")
 ;;556
 ;;21,"54868-1461-01 ")
 ;;498
 ;;21,"54868-1461-02 ")
 ;;499
 ;;21,"54868-1883-01 ")
 ;;70
 ;;21,"54868-1894-02 ")
 ;;225
 ;;21,"54868-2710-00 ")
 ;;337
 ;;21,"54868-2710-01 ")
 ;;338
 ;;21,"54868-2822-00 ")
 ;;226
 ;;21,"54868-3283-00 ")
 ;;299
 ;;21,"54868-3283-01 ")
 ;;300
 ;;21,"54868-3283-02 ")
 ;;301
 ;;21,"54868-3550-00 ")
 ;;117
 ;;21,"54868-3555-00 ")
 ;;133
 ;;21,"54868-4172-00 ")
 ;;17
 ;;21,"54868-4172-01 ")
 ;;18
 ;;21,"54868-4172-02 ")
 ;;19
 ;;21,"54868-4182-00 ")
 ;;185
 ;;21,"54868-4264-00 ")
 ;;186
 ;;21,"54868-4295-00 ")
 ;;253
 ;;21,"54868-4392-00 ")
 ;;187
 ;;21,"54868-4516-00 ")
 ;;44
 ;;21,"54868-4517-00 ")
 ;;45
 ;;21,"54868-4518-00 ")
 ;;46
 ;;21,"54868-4630-00 ")
 ;;302
 ;;21,"54868-4847-00 ")
 ;;303
 ;;21,"54868-5294-00 ")
 ;;76
 ;;21,"54868-5362-00 ")
 ;;207
 ;;21,"54868-5531-00 ")
 ;;500
 ;;21,"54868-5531-01 ")
 ;;501
 ;;21,"54868-5547-00 ")
 ;;101
 ;;21,"54868-5547-01 ")
 ;;102
 ;;21,"54868-5621-00 ")
 ;;249
 ;;21,"54868-5637-00 ")
 ;;208
 ;;21,"54868-5774-00 ")
 ;;250
 ;;21,"54868-5844-00 ")
 ;;243
 ;;21,"54868-5857-00 ")
 ;;257
 ;;21,"54868-5858-00 ")
 ;;258
 ;;21,"54868-5936-00 ")
 ;;328
 ;;21,"54868-5937-00 ")
 ;;329
 ;;21,"54868-5989-00 ")
 ;;80
 ;;21,"54868-5990-00 ")
 ;;81
 ;;21,"54868-5995-00 ")
 ;;209
 ;;21,"55045-1868-03 ")
 ;;71
 ;;21,"55045-2520-07 ")
 ;;77
 ;;21,"55045-2819-00 ")
 ;;188
 ;;21,"55045-2919-01 ")
 ;;189
 ;;21,"55045-3054-01 ")
 ;;190
 ;;21,"55045-3063-00 ")
 ;;259
 ;;21,"55045-3351-00 ")
 ;;210
 ;;21,"55045-3354-00 ")
 ;;211
 ;;21,"55045-3388-01 ")
 ;;47
 ;;21,"55045-3416-00 ")
 ;;212
 ;;21,"55045-3686-01 ")
 ;;48
 ;;21,"55045-3695-08 ")
 ;;260
 ;;21,"55045-3768-08 ")
 ;;502
 ;;21,"55289-0003-60 ")
 ;;387
 ;;21,"55289-0155-97 ")
 ;;388
 ;;21,"55289-0259-01 ")
 ;;423
 ;;21,"55289-0259-30 ")
 ;;424
 ;;21,"55289-0259-60 ")
 ;;425
 ;;21,"55289-0260-01 ")
 ;;426
 ;;21,"55289-0260-06 ")
 ;;427
 ;;21,"55289-0260-20 ")
 ;;428
 ;;21,"55289-0260-30 ")
 ;;429
 ;;21,"55289-0260-60 ")
 ;;430
 ;;21,"55289-0789-30 ")
 ;;557
 ;;21,"55289-0961-15 ")
 ;;304
 ;;21,"55289-0961-30 ")
 ;;305
 ;;21,"55289-0989-21 ")
 ;;306
 ;;21,"55289-0989-30 ")
 ;;307
