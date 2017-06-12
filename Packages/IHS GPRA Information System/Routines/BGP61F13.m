BGP61F13 ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON AUG 18, 2015 ;
 ;;16.1;IHS CLINICAL REPORTING;;MAR 22, 2016;Build 170
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;21,"68258-6048-03 ")
 ;;4334
 ;;21,"68258-6048-09 ")
 ;;4335
 ;;21,"68258-6053-03 ")
 ;;4336
 ;;21,"68258-6056-03 ")
 ;;4337
 ;;21,"68258-6058-03 ")
 ;;4338
 ;;21,"68258-6059-03 ")
 ;;4339
 ;;21,"68258-6060-03 ")
 ;;4340
 ;;21,"68258-6066-03 ")
 ;;4341
 ;;21,"68258-6066-06 ")
 ;;4342
 ;;21,"68258-6069-03 ")
 ;;4343
 ;;21,"68258-6069-06 ")
 ;;4344
 ;;21,"68258-6069-09 ")
 ;;4345
 ;;21,"68258-6070-03 ")
 ;;4346
 ;;21,"68258-6070-06 ")
 ;;4347
 ;;21,"68258-6070-09 ")
 ;;4348
 ;;21,"68258-6071-03 ")
 ;;4349
 ;;21,"68258-6075-03 ")
 ;;4350
 ;;21,"68258-6078-03 ")
 ;;4351
 ;;21,"68258-6094-03 ")
 ;;4352
 ;;21,"68258-6094-09 ")
 ;;4353
 ;;21,"68258-6095-03 ")
 ;;4354
 ;;21,"68258-6095-09 ")
 ;;4355
 ;;21,"68258-6096-03 ")
 ;;4356
 ;;21,"68258-6096-09 ")
 ;;4357
 ;;21,"68258-6097-03 ")
 ;;4358
 ;;21,"68258-6097-09 ")
 ;;4359
 ;;21,"68258-6098-03 ")
 ;;4360
 ;;21,"68258-6098-09 ")
 ;;4361
 ;;21,"68258-6100-03 ")
 ;;4362
 ;;21,"68258-6106-03 ")
 ;;4363
 ;;21,"68258-6965-09 ")
 ;;4364
 ;;21,"68258-6966-09 ")
 ;;4365
 ;;21,"68258-6967-09 ")
 ;;4366
 ;;21,"68258-6968-09 ")
 ;;4367
 ;;21,"68258-6969-09 ")
 ;;4368
 ;;21,"68258-6973-03 ")
 ;;4369
 ;;21,"68258-6978-03 ")
 ;;4370
 ;;21,"68258-6979-03 ")
 ;;4371
 ;;21,"68258-6986-03 ")
 ;;4372
 ;;21,"68258-6989-03 ")
 ;;4373
 ;;21,"68258-6990-03 ")
 ;;4374
 ;;21,"68258-6994-09 ")
 ;;4375
 ;;21,"68258-6995-03 ")
 ;;4376
 ;;21,"68382-0135-01 ")
 ;;4377
 ;;21,"68382-0135-06 ")
 ;;4378
 ;;21,"68382-0135-10 ")
 ;;4379
 ;;21,"68382-0135-16 ")
 ;;4380
 ;;21,"68382-0136-01 ")
 ;;4381
 ;;21,"68382-0136-06 ")
 ;;4382
 ;;21,"68382-0136-10 ")
 ;;4383
 ;;21,"68382-0136-16 ")
 ;;4384
 ;;21,"68382-0137-01 ")
 ;;4385
 ;;21,"68382-0137-06 ")
 ;;4386
 ;;21,"68382-0137-10 ")
 ;;4387
 ;;21,"68382-0137-16 ")
 ;;4388
 ;;21,"68382-0142-06 ")
 ;;4389
 ;;21,"68382-0142-10 ")
 ;;4390
 ;;21,"68382-0142-16 ")
 ;;4391
 ;;21,"68382-0143-06 ")
 ;;4392
 ;;21,"68382-0143-10 ")
 ;;4393
 ;;21,"68382-0143-16 ")
 ;;4394
 ;;21,"68382-0144-01 ")
 ;;4395
 ;;21,"68382-0144-05 ")
 ;;4396
 ;;21,"68382-0144-06 ")
 ;;4397
 ;;21,"68382-0145-01 ")
 ;;4398
 ;;21,"68382-0145-05 ")
 ;;4399
 ;;21,"68382-0145-06 ")
 ;;4400
 ;;21,"68382-0146-01 ")
 ;;4401
 ;;21,"68382-0146-05 ")
 ;;4402
 ;;21,"68382-0146-06 ")
 ;;4403
 ;;21,"68382-0147-01 ")
 ;;4404
 ;;21,"68382-0147-05 ")
 ;;4405
 ;;21,"68382-0147-06 ")
 ;;4406
 ;;21,"68382-0471-78 ")
 ;;4407
 ;;21,"68382-0472-78 ")
 ;;4408
 ;;21,"68382-0473-78 ")
 ;;4409
 ;;21,"68387-0543-30 ")
 ;;4410
 ;;21,"68462-0199-11 ")
 ;;4411
 ;;21,"68462-0199-13 ")
 ;;4412
 ;;21,"68462-0200-11 ")
 ;;4413
 ;;21,"68462-0200-13 ")
 ;;4414
 ;;21,"68462-0201-11 ")
 ;;4415
 ;;21,"68462-0201-13 ")
 ;;4416
 ;;21,"68462-0205-01 ")
 ;;4417
 ;;21,"68462-0206-01 ")
 ;;4418
 ;;21,"68462-0207-01 ")
 ;;4419
 ;;21,"68462-0208-01 ")
 ;;4420
 ;;21,"68462-0209-01 ")
 ;;4421
 ;;21,"68462-0294-01 ")
 ;;4422
 ;;21,"68462-0295-01 ")
 ;;4423
 ;;21,"68462-0296-01 ")
 ;;4424
 ;;21,"68462-0329-01 ")
 ;;4425
 ;;21,"68462-0367-10 ")
 ;;4426
 ;;21,"68462-0367-90 ")
 ;;4427
 ;;21,"68462-0368-10 ")
 ;;4428
 ;;21,"68462-0368-90 ")
 ;;4429
 ;;21,"68462-0369-10 ")
 ;;4430
 ;;21,"68462-0369-90 ")
 ;;4431
 ;;21,"68462-0554-01 ")
 ;;4432
 ;;21,"68462-0555-01 ")
 ;;4433
 ;;21,"68645-0160-59 ")
 ;;4434
 ;;21,"68645-0161-59 ")
 ;;4435
 ;;21,"68645-0162-59 ")
 ;;4436
 ;;21,"68645-0163-59 ")
 ;;4437
 ;;21,"68645-0272-54 ")
 ;;4438
 ;;21,"68645-0404-70 ")
 ;;4439
 ;;21,"68645-0405-70 ")
 ;;4440
 ;;21,"68645-0406-70 ")
 ;;4441
 ;;21,"68645-0407-70 ")
 ;;4442
 ;;21,"68645-0408-70 ")
 ;;4443
 ;;21,"68645-0409-70 ")
 ;;4444
 ;;21,"68645-0410-70 ")
 ;;4445
 ;;21,"68645-0411-70 ")
 ;;4446
 ;;21,"68645-0454-90 ")
 ;;4447
 ;;21,"68645-0455-90 ")
 ;;4448
 ;;21,"68645-0456-90 ")
 ;;4449
 ;;21,"68645-0457-90 ")
 ;;4450
 ;;21,"68645-0469-54 ")
 ;;4451
 ;;21,"68645-0486-54 ")
 ;;4452
 ;;21,"68645-0494-54 ")
 ;;4453
 ;;21,"68682-0146-01 ")
 ;;4454
 ;;21,"68788-0048-03 ")
 ;;4455
 ;;21,"68788-7365-03 ")
 ;;4456
 ;;21,"68788-9050-03 ")
 ;;4457
 ;;21,"68788-9051-09 ")
 ;;4458
 ;;21,"68788-9053-03 ")
 ;;4459
 ;;21,"68788-9411-03 ")
 ;;4460
 ;;21,"68788-9527-03 ")
 ;;4461
 ;;21,"68788-9536-03 ")
 ;;4462
 ;;21,"68788-9661-03 ")
 ;;4463
 ;;21,"68788-9712-03 ")
 ;;4464
 ;;21,"68788-9750-03 ")
 ;;4465
 ;;21,"68788-9807-03 ")
 ;;4466
 ;;21,"68788-9808-03 ")
 ;;4467
 ;;21,"68788-9809-03 ")
 ;;4468
 ;;21,"68788-9821-03 ")
 ;;4469
 ;;21,"68788-9822-03 ")
 ;;4470
 ;;21,"68788-9823-03 ")
 ;;4471
 ;;21,"68788-9910-03 ")
 ;;4472
 ;;21,"68788-9911-03 ")
 ;;4473
 ;;21,"68788-9912-03 ")
 ;;4474
 ;;21,"68788-9933-03 ")
 ;;4475
 ;;21,"68788-9945-03 ")
 ;;4476
 ;;21,"68788-9947-09 ")
 ;;4477
 ;;21,"76234-0001-01 ")
 ;;4478
 ;;21,"76234-0002-01 ")
 ;;4479
 ;;21,"76282-0200-10 ")
 ;;4480
 ;;21,"76282-0200-90 ")
 ;;4481
 ;;21,"76282-0201-10 ")
 ;;4482
 ;;21,"76282-0201-90 ")
 ;;4483
 ;;21,"76282-0202-10 ")
 ;;4484
 ;;21,"76282-0202-90 ")
 ;;4485
 ;;21,"76282-0271-01 ")
 ;;4486
 ;;21,"76282-0272-01 ")
 ;;4487
 ;;21,"76282-0272-05 ")
 ;;4488
 ;;21,"76282-0273-01 ")
 ;;4489
 ;;21,"76282-0273-05 ")
 ;;4490
 ;;21,"76282-0274-01 ")
 ;;4491
 ;;21,"76282-0274-05 ")
 ;;4492
 ;;21,"76282-0417-05 ")
 ;;4493
 ;;21,"76282-0418-10 ")
 ;;4494
 ;;21,"76282-0418-45 ")
 ;;4495
 ;;21,"76282-0418-90 ")
 ;;4496
 ;;21,"76282-0419-10 ")
 ;;4497
 ;;21,"76282-0419-45 ")
 ;;4498
 ;;21,"76282-0419-90 ")
 ;;4499
 ;;21,"76282-0420-10 ")
 ;;4500
 ;;21,"76282-0420-18 ")
 ;;4501
 ;;21,"76282-0420-45 ")
 ;;4502
 ;;21,"76282-0420-90 ")
 ;;4503
 ;;21,"76282-0421-01 ")
 ;;4504
 ;;21,"76282-0422-05 ")
 ;;4505
 ;;21,"76282-0422-10 ")
 ;;4506
 ;;21,"76282-0422-18 ")
 ;;4507
 ;;21,"76282-0422-45 ")
 ;;4508
 ;;21,"76282-0422-90 ")
 ;;4509
 ;;21,"76439-0140-11 ")
 ;;4510
 ;;21,"76439-0140-90 ")
 ;;4511
 ;;21,"76439-0141-11 ")
 ;;4512
 ;;21,"76439-0141-30 ")
 ;;4513
 ;;21,"76439-0141-90 ")
 ;;4514
 ;;21,"76439-0142-11 ")
 ;;4515
 ;;21,"76439-0142-30 ")
 ;;4516
 ;;21,"76439-0142-90 ")
 ;;4517
 ;;9002226,1733,.01)
 ;;BGP PQA RASA NDC
 ;;9002226,1733,.02)
 ;;RASA NDC
 ;;9002226,1733,.04)
 ;;n
 ;;9002226,1733,.06)
 ;;@
 ;;9002226,1733,.08)
 ;;@
 ;;9002226,1733,.09)
 ;;3150818
 ;;9002226,1733,.11)
 ;;@
 ;;9002226,1733,.12)
 ;;@
 ;;9002226,1733,.13)
 ;;1
 ;;9002226,1733,.14)
 ;;@
 ;;9002226,1733,.15)
 ;;50.67
 ;;9002226,1733,.16)
 ;;@
 ;;9002226,1733,.17)
 ;;@
 ;;9002226,1733,3101)
 ;;@
 ;;9002226.02101,"1733,00006-0019-54 ",.01)
 ;;00006-0019-54
 ;;9002226.02101,"1733,00006-0019-54 ",.02)
 ;;00006-0019-54
 ;;9002226.02101,"1733,00006-0106-54 ",.01)
 ;;00006-0106-54
 ;;9002226.02101,"1733,00006-0106-54 ",.02)
 ;;00006-0106-54
 ;;9002226.02101,"1733,00006-0207-54 ",.01)
 ;;00006-0207-54
 ;;9002226.02101,"1733,00006-0207-54 ",.02)
 ;;00006-0207-54
 ;;9002226.02101,"1733,00006-0717-31 ",.01)
 ;;00006-0717-31
 ;;9002226.02101,"1733,00006-0717-31 ",.02)
 ;;00006-0717-31
 ;;9002226.02101,"1733,00006-0717-54 ",.01)
 ;;00006-0717-54
 ;;9002226.02101,"1733,00006-0717-54 ",.02)
 ;;00006-0717-54
 ;;9002226.02101,"1733,00006-0717-82 ",.01)
 ;;00006-0717-82
 ;;9002226.02101,"1733,00006-0717-82 ",.02)
 ;;00006-0717-82
 ;;9002226.02101,"1733,00006-0745-31 ",.01)
 ;;00006-0745-31
 ;;9002226.02101,"1733,00006-0745-31 ",.02)
 ;;00006-0745-31
 ;;9002226.02101,"1733,00006-0745-54 ",.01)
 ;;00006-0745-54
 ;;9002226.02101,"1733,00006-0745-54 ",.02)
 ;;00006-0745-54
 ;;9002226.02101,"1733,00006-0745-82 ",.01)
 ;;00006-0745-82
 ;;9002226.02101,"1733,00006-0745-82 ",.02)
 ;;00006-0745-82
 ;;9002226.02101,"1733,00006-0747-31 ",.01)
 ;;00006-0747-31
 ;;9002226.02101,"1733,00006-0747-31 ",.02)
 ;;00006-0747-31
 ;;9002226.02101,"1733,00006-0747-54 ",.01)
 ;;00006-0747-54
 ;;9002226.02101,"1733,00006-0747-54 ",.02)
 ;;00006-0747-54
 ;;9002226.02101,"1733,00006-0747-82 ",.01)
 ;;00006-0747-82
 ;;9002226.02101,"1733,00006-0747-82 ",.02)
 ;;00006-0747-82
 ;;9002226.02101,"1733,00006-0951-54 ",.01)
 ;;00006-0951-54
 ;;9002226.02101,"1733,00006-0951-54 ",.02)
 ;;00006-0951-54
 ;;9002226.02101,"1733,00006-0951-82 ",.01)
 ;;00006-0951-82
 ;;9002226.02101,"1733,00006-0951-82 ",.02)
 ;;00006-0951-82
 ;;9002226.02101,"1733,00006-0951-87 ",.01)
 ;;00006-0951-87
 ;;9002226.02101,"1733,00006-0951-87 ",.02)
 ;;00006-0951-87
 ;;9002226.02101,"1733,00006-0952-31 ",.01)
 ;;00006-0952-31
 ;;9002226.02101,"1733,00006-0952-31 ",.02)
 ;;00006-0952-31
 ;;9002226.02101,"1733,00006-0952-54 ",.01)
 ;;00006-0952-54
 ;;9002226.02101,"1733,00006-0952-54 ",.02)
 ;;00006-0952-54
 ;;9002226.02101,"1733,00006-0952-82 ",.01)
 ;;00006-0952-82
 ;;9002226.02101,"1733,00006-0952-82 ",.02)
 ;;00006-0952-82
 ;;9002226.02101,"1733,00006-0960-31 ",.01)
 ;;00006-0960-31
 ;;9002226.02101,"1733,00006-0960-31 ",.02)
 ;;00006-0960-31
 ;;9002226.02101,"1733,00006-0960-54 ",.01)
 ;;00006-0960-54
 ;;9002226.02101,"1733,00006-0960-54 ",.02)
 ;;00006-0960-54
 ;;9002226.02101,"1733,00006-0960-82 ",.01)
 ;;00006-0960-82
 ;;9002226.02101,"1733,00006-0960-82 ",.02)
 ;;00006-0960-82
 ;;9002226.02101,"1733,00024-5850-30 ",.01)
 ;;00024-5850-30
 ;;9002226.02101,"1733,00024-5850-30 ",.02)
 ;;00024-5850-30
 ;;9002226.02101,"1733,00024-5850-90 ",.01)
 ;;00024-5850-90
 ;;9002226.02101,"1733,00024-5850-90 ",.02)
 ;;00024-5850-90
 ;;9002226.02101,"1733,00024-5851-30 ",.01)
 ;;00024-5851-30
 ;;9002226.02101,"1733,00024-5851-30 ",.02)
 ;;00024-5851-30
 ;;9002226.02101,"1733,00024-5851-90 ",.01)
 ;;00024-5851-90
 ;;9002226.02101,"1733,00024-5851-90 ",.02)
 ;;00024-5851-90
 ;;9002226.02101,"1733,00024-5852-30 ",.01)
 ;;00024-5852-30
 ;;9002226.02101,"1733,00024-5852-30 ",.02)
 ;;00024-5852-30
 ;;9002226.02101,"1733,00024-5852-90 ",.01)
 ;;00024-5852-90
 ;;9002226.02101,"1733,00024-5852-90 ",.02)
 ;;00024-5852-90
 ;;9002226.02101,"1733,00024-5855-30 ",.01)
 ;;00024-5855-30
 ;;9002226.02101,"1733,00024-5855-30 ",.02)
 ;;00024-5855-30
 ;;9002226.02101,"1733,00024-5855-90 ",.01)
 ;;00024-5855-90
 ;;9002226.02101,"1733,00024-5855-90 ",.02)
 ;;00024-5855-90
 ;;9002226.02101,"1733,00024-5856-30 ",.01)
 ;;00024-5856-30
 ;;9002226.02101,"1733,00024-5856-30 ",.02)
 ;;00024-5856-30
 ;;9002226.02101,"1733,00024-5856-90 ",.01)
 ;;00024-5856-90
 ;;9002226.02101,"1733,00024-5856-90 ",.02)
 ;;00024-5856-90
 ;;9002226.02101,"1733,00032-1101-01 ",.01)
 ;;00032-1101-01
 ;;9002226.02101,"1733,00032-1101-01 ",.02)
 ;;00032-1101-01
 ;;9002226.02101,"1733,00032-1102-01 ",.01)
 ;;00032-1102-01
 ;;9002226.02101,"1733,00032-1102-01 ",.02)
 ;;00032-1102-01
 ;;9002226.02101,"1733,00032-1103-01 ",.01)
 ;;00032-1103-01
 ;;9002226.02101,"1733,00032-1103-01 ",.02)
 ;;00032-1103-01
 ;;9002226.02101,"1733,00054-0106-25 ",.01)
 ;;00054-0106-25
 ;;9002226.02101,"1733,00054-0106-25 ",.02)
 ;;00054-0106-25
 ;;9002226.02101,"1733,00054-0107-20 ",.01)
 ;;00054-0107-20
 ;;9002226.02101,"1733,00054-0107-20 ",.02)
 ;;00054-0107-20
 ;;9002226.02101,"1733,00054-0107-25 ",.01)
 ;;00054-0107-25
 ;;9002226.02101,"1733,00054-0107-25 ",.02)
 ;;00054-0107-25
 ;;9002226.02101,"1733,00054-0107-29 ",.01)
 ;;00054-0107-29
 ;;9002226.02101,"1733,00054-0107-29 ",.02)
 ;;00054-0107-29
 ;;9002226.02101,"1733,00054-0108-20 ",.01)
 ;;00054-0108-20
 ;;9002226.02101,"1733,00054-0108-20 ",.02)
 ;;00054-0108-20
 ;;9002226.02101,"1733,00054-0108-25 ",.01)
 ;;00054-0108-25
 ;;9002226.02101,"1733,00054-0108-25 ",.02)
 ;;00054-0108-25
 ;;9002226.02101,"1733,00054-0108-29 ",.01)
 ;;00054-0108-29
 ;;9002226.02101,"1733,00054-0108-29 ",.02)
 ;;00054-0108-29
 ;;9002226.02101,"1733,00054-0109-25 ",.01)
 ;;00054-0109-25
 ;;9002226.02101,"1733,00054-0109-25 ",.02)
 ;;00054-0109-25
 ;;9002226.02101,"1733,00054-0109-29 ",.01)
 ;;00054-0109-29
 ;;9002226.02101,"1733,00054-0109-29 ",.02)
 ;;00054-0109-29
 ;;9002226.02101,"1733,00054-0110-25 ",.01)
 ;;00054-0110-25
 ;;9002226.02101,"1733,00054-0110-25 ",.02)
 ;;00054-0110-25
 ;;9002226.02101,"1733,00054-0111-25 ",.01)
 ;;00054-0111-25
 ;;9002226.02101,"1733,00054-0111-25 ",.02)
 ;;00054-0111-25
 ;;9002226.02101,"1733,00054-0112-25 ",.01)
 ;;00054-0112-25
 ;;9002226.02101,"1733,00054-0112-25 ",.02)
 ;;00054-0112-25
 ;;9002226.02101,"1733,00054-0123-22 ",.01)
 ;;00054-0123-22
