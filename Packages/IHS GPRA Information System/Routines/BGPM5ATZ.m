BGPM5ATZ ;IHS/MSC/MMT-CREATED BY ^ATXSTX ON AUG 29, 2011;
 ;;11.1;IHS CLINICAL REPORTING SYSTEM;**1**;JUN 27, 2011;Build 106
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;21,"62584057828 ")
 ;;3973
 ;;21,"62584069214 ")
 ;;3974
 ;;21,"62584069301 ")
 ;;3975
 ;;21,"62584069311 ")
 ;;3976
 ;;21,"62584085601 ")
 ;;3977
 ;;21,"62584085701 ")
 ;;3978
 ;;21,"62645010110 ")
 ;;3979
 ;;21,"62645010150 ")
 ;;3980
 ;;21,"62645010210 ")
 ;;3981
 ;;21,"62645010250 ")
 ;;3982
 ;;21,"62645020110 ")
 ;;3983
 ;;21,"62645020150 ")
 ;;3984
 ;;21,"62645020210 ")
 ;;3985
 ;;21,"62645020250 ")
 ;;3986
 ;;21,"62645050110 ")
 ;;3987
 ;;21,"62645050150 ")
 ;;3988
 ;;21,"62645050210 ")
 ;;3989
 ;;21,"62645050250 ")
 ;;3990
 ;;21,"62756029313 ")
 ;;3991
 ;;21,"62756029388 ")
 ;;3992
 ;;21,"62756029413 ")
 ;;3993
 ;;21,"62756029488 ")
 ;;3994
 ;;21,"62778000303 ")
 ;;3995
 ;;21,"62778000402 ")
 ;;3996
 ;;21,"62778000502 ")
 ;;3997
 ;;21,"62778000603 ")
 ;;3998
 ;;21,"62778000702 ")
 ;;3999
 ;;21,"62778000802 ")
 ;;4000
 ;;21,"62778000814 ")
 ;;4001
 ;;21,"62778000903 ")
 ;;4002
 ;;21,"62778001703 ")
 ;;4003
 ;;21,"62778001803 ")
 ;;4004
 ;;21,"62778001903 ")
 ;;4005
 ;;21,"62778002002 ")
 ;;4006
 ;;21,"62778002103 ")
 ;;4007
 ;;21,"62778002202 ")
 ;;4008
 ;;21,"62778003201 ")
 ;;4009
 ;;21,"62780065705 ")
 ;;4010
 ;;21,"62780065805 ")
 ;;4011
 ;;21,"62780065910 ")
 ;;4012
 ;;21,"63126016101 ")
 ;;4013
 ;;21,"63126016105 ")
 ;;4014
 ;;21,"63126016201 ")
 ;;4015
 ;;21,"63126016205 ")
 ;;4016
 ;;21,"63126017101 ")
 ;;4017
 ;;21,"63126017105 ")
 ;;4018
 ;;21,"63126017130 ")
 ;;4019
 ;;21,"63126017201 ")
 ;;4020
 ;;21,"63126017205 ")
 ;;4021
 ;;21,"63126017230 ")
 ;;4022
 ;;21,"63126025110 ")
 ;;4023
 ;;21,"63126025150 ")
 ;;4024
 ;;21,"63126025205 ")
 ;;4025
 ;;21,"63126025250 ")
 ;;4026
 ;;21,"63126025304 ")
 ;;4027
 ;;21,"63126025350 ")
 ;;4028
 ;;21,"63304013010 ")
 ;;4029
 ;;21,"63304013101 ")
 ;;4030
 ;;21,"63304013110 ")
 ;;4031
 ;;21,"63304013204 ")
 ;;4032
 ;;21,"63304013210 ")
 ;;4033
 ;;21,"63304013250 ")
 ;;4034
 ;;21,"63304014801 ")
 ;;4035
 ;;21,"63304014805 ")
 ;;4036
 ;;21,"63304014901 ")
 ;;4037
 ;;21,"63304014905 ")
 ;;4038
 ;;21,"63304014950 ")
 ;;4039
 ;;21,"63304017330 ")
 ;;4040
 ;;21,"63304050901 ")
 ;;4041
 ;;21,"63304050920 ")
 ;;4042
 ;;21,"63304051201 ")
 ;;4043
 ;;21,"63304051250 ")
 ;;4044
 ;;21,"63304051280 ")
 ;;4045
 ;;21,"63304051401 ")
 ;;4046
 ;;21,"63304051405 ")
 ;;4047
 ;;21,"63304051501 ")
 ;;4048
 ;;21,"63304051503 ")
 ;;4049
 ;;21,"63304051504 ")
 ;;4050
 ;;21,"63304051530 ")
 ;;4051
 ;;21,"63304052001 ")
 ;;4052
 ;;21,"63304052020 ")
 ;;4053
 ;;21,"63304052101 ")
 ;;4054
 ;;21,"63304052120 ")
 ;;4055
 ;;21,"63304058201 ")
 ;;4056
 ;;21,"63304058250 ")
 ;;4057
 ;;21,"63304061401 ")
 ;;4058
 ;;21,"63304061405 ")
 ;;4059
 ;;21,"63304061413 ")
 ;;4060
 ;;21,"63304061420 ")
 ;;4061
 ;;21,"63304061501 ")
 ;;4062
 ;;21,"63304061505 ")
 ;;4063
 ;;21,"63304061511 ")
 ;;4064
 ;;21,"63304061601 ")
 ;;4065
 ;;21,"63304061605 ")
 ;;4066
 ;;21,"63304061613 ")
 ;;4067
 ;;21,"63304061620 ")
 ;;4068
 ;;21,"63304064805 ")
 ;;4069
 ;;21,"63304065401 ")
 ;;4070
 ;;21,"63304065405 ")
 ;;4071
 ;;21,"63304065411 ")
 ;;4072
 ;;21,"63304065420 ")
 ;;4073
 ;;21,"63304065430 ")
 ;;4074
 ;;21,"63304065477 ")
 ;;4075
 ;;21,"63304065501 ")
 ;;4076
 ;;21,"63304065505 ")
 ;;4077
 ;;21,"63304065511 ")
 ;;4078
 ;;21,"63304065520 ")
 ;;4079
 ;;21,"63304065530 ")
 ;;4080
 ;;21,"63304065540 ")
 ;;4081
 ;;21,"63304065550 ")
 ;;4082
 ;;21,"63304065577 ")
 ;;4083
 ;;21,"63304065601 ")
 ;;4084
 ;;21,"63304065605 ")
 ;;4085
 ;;21,"63304065627 ")
 ;;4086
 ;;21,"63304065701 ")
 ;;4087
 ;;21,"63304065705 ")
 ;;4088
 ;;21,"63304065727 ")
 ;;4089
 ;;21,"63304065801 ")
 ;;4090
 ;;21,"63304065830 ")
 ;;4091
 ;;21,"63304065901 ")
 ;;4092
 ;;21,"63304065930 ")
 ;;4093
 ;;21,"63304067501 ")
 ;;4094
 ;;21,"63304067505 ")
 ;;4095
 ;;21,"63304067601 ")
 ;;4096
 ;;21,"63304067605 ")
 ;;4097
 ;;21,"63304068801 ")
 ;;4098
 ;;21,"63304068904 ")
 ;;4099
 ;;21,"63304068950 ")
 ;;4100
 ;;21,"63304069201 ")
 ;;4101
 ;;21,"63304069205 ")
 ;;4102
 ;;21,"63304069277 ")
 ;;4103
 ;;21,"63304069301 ")
 ;;4104
 ;;21,"63304069316 ")
 ;;4105
 ;;21,"63304069377 ")
 ;;4106
 ;;21,"63304069401 ")
 ;;4107
 ;;21,"63304069405 ")
 ;;4108
 ;;21,"63304069501 ")
 ;;4109
 ;;21,"63304069505 ")
 ;;4110
 ;;21,"63304069605 ")
 ;;4111
 ;;21,"63304069650 ")
 ;;4112
 ;;21,"63304069701 ")
 ;;4113
 ;;21,"63304069705 ")
 ;;4114
 ;;21,"63304069801 ")
 ;;4115
 ;;21,"63304069805 ")
 ;;4116
 ;;21,"63304069905 ")
 ;;4117
 ;;21,"63304069950 ")
 ;;4118
 ;;21,"63304070901 ")
 ;;4119
 ;;21,"63304070905 ")
 ;;4120
 ;;21,"63304070913 ")
 ;;4121
 ;;21,"63304070914 ")
 ;;4122
 ;;21,"63304070980 ")
 ;;4123
 ;;21,"63304071001 ")
 ;;4124
 ;;21,"63304071005 ")
 ;;4125
 ;;21,"63304071013 ")
 ;;4126
 ;;21,"63304071014 ")
 ;;4127
 ;;21,"63304071080 ")
 ;;4128
 ;;21,"63304071101 ")
 ;;4129
 ;;21,"63304071105 ")
 ;;4130
 ;;21,"63304071113 ")
 ;;4131
 ;;21,"63304071114 ")
 ;;4132
 ;;21,"63304071150 ")
 ;;4133
 ;;21,"63304071180 ")
 ;;4134
 ;;21,"63304071320 ")
 ;;4135
 ;;21,"63304071505 ")
 ;;4136
 ;;21,"63304071514 ")
 ;;4137
 ;;21,"63304071550 ")
 ;;4138
 ;;21,"63304071605 ")
 ;;4139
 ;;21,"63304071614 ")
 ;;4140
 ;;21,"63304071650 ")
 ;;4141
 ;;21,"63304071701 ")
 ;;4142
 ;;21,"63304071705 ")
 ;;4143
 ;;21,"63304071714 ")
 ;;4144
 ;;21,"63304071750 ")
 ;;4145
 ;;21,"63304072501 ")
 ;;4146
 ;;21,"63304072505 ")
 ;;4147
 ;;21,"63304072511 ")
 ;;4148
 ;;21,"63304072560 ")
 ;;4149
 ;;21,"63304072577 ")
 ;;4150
 ;;21,"63304072582 ")
 ;;4151
 ;;21,"63304072601 ")
 ;;4152
 ;;21,"63304072605 ")
 ;;4153
 ;;21,"63304072611 ")
 ;;4154
 ;;21,"63304072660 ")
 ;;4155
 ;;21,"63304072677 ")
 ;;4156
 ;;21,"63304072682 ")
 ;;4157
 ;;21,"63304075001 ")
 ;;4158
 ;;21,"63304075060 ")
 ;;4159
 ;;21,"63304075101 ")
 ;;4160
 ;;21,"63304075120 ")
 ;;4161
 ;;21,"63304075160 ")
 ;;4162
 ;;21,"63304075201 ")
 ;;4163
 ;;21,"63304075220 ")
 ;;4164
 ;;21,"63304075260 ")
 ;;4165
 ;;21,"63304075301 ")
 ;;4166
 ;;21,"63304075303 ")
 ;;4167
 ;;21,"63304075320 ")
 ;;4168
 ;;21,"63304075321 ")
 ;;4169
 ;;21,"63304075401 ")
 ;;4170
 ;;21,"63304075403 ")
 ;;4171
 ;;21,"63304075420 ")
 ;;4172
 ;;21,"63304075421 ")
 ;;4173
 ;;21,"63304076001 ")
 ;;4174
 ;;21,"63304076005 ")
 ;;4175
 ;;21,"63304076020 ")
 ;;4176
 ;;21,"63304076101 ")
 ;;4177
 ;;21,"63304076105 ")
 ;;4178
 ;;21,"63304076120 ")
 ;;4179
 ;;21,"63304076201 ")
 ;;4180
 ;;21,"63304076205 ")
 ;;4181
 ;;21,"63304076213 ")
 ;;4182
 ;;21,"63304076220 ")
 ;;4183
 ;;21,"63304076282 ")
 ;;4184
 ;;21,"63304076301 ")
 ;;4185
 ;;21,"63304076305 ")
 ;;4186
 ;;21,"63304076313 ")
 ;;4187
 ;;21,"63304076320 ")
 ;;4188
 ;;21,"63304076382 ")
 ;;4189
 ;;21,"63304076801 ")
 ;;4190
 ;;21,"63304076802 ")
 ;;4191
 ;;21,"63304076803 ")
 ;;4192
 ;;21,"63304076804 ")
 ;;4193
 ;;21,"63304076807 ")
 ;;4194
 ;;21,"63304076850 ")
 ;;4195
 ;;21,"63304082103 ")
 ;;4196
 ;;21,"63304082104 ")
 ;;4197
 ;;21,"63304082203 ")
 ;;4198
 ;;21,"63304082204 ")
 ;;4199
 ;;21,"63304083104 ")
 ;;4200
 ;;21,"63304083111 ")
 ;;4201
 ;;21,"63304083130 ")
 ;;4202
 ;;21,"63304083177 ")
 ;;4203
 ;;21,"63304083205 ")
 ;;4204
 ;;21,"63304083211 ")
 ;;4205
 ;;21,"63304083220 ")
 ;;4206
 ;;21,"63304083277 ")
 ;;4207
 ;;21,"63304083305 ")
 ;;4208
 ;;21,"63304083311 ")
 ;;4209
 ;;21,"63304083320 ")
 ;;4210
 ;;21,"63304083360 ")
 ;;4211
 ;;21,"63304083377 ")
 ;;4212
 ;;21,"63304094025 ")
 ;;4213
 ;;21,"63304094110 ")
 ;;4214
 ;;21,"63304094725 ")
 ;;4215
 ;;21,"63304094810 ")
 ;;4216
 ;;21,"63304095401 ")
 ;;4217
 ;;21,"63304095402 ")
 ;;4218
 ;;21,"63304095503 ")
 ;;4219
 ;;21,"63304095504 ")
 ;;4220
 ;;21,"63304095601 ")
 ;;4221
 ;;21,"63304095602 ")
 ;;4222
 ;;21,"63304095703 ")
 ;;4223
 ;;21,"63304095704 ")
 ;;4224
 ;;21,"63304095801 ")
 ;;4225
 ;;21,"63304095802 ")
 ;;4226
 ;;21,"63304095901 ")
 ;;4227
 ;;21,"63304095902 ")
 ;;4228
 ;;21,"63304096001 ")
 ;;4229
 ;;21,"63304096003 ")
 ;;4230
 ;;21,"63304096004 ")
 ;;4231
 ;;21,"63304096101 ")
 ;;4232
 ;;21,"63304096103 ")
 ;;4233
 ;;21,"63304096104 ")
 ;;4234
 ;;21,"63304096304 ")
 ;;4235
 ;;21,"63304096403 ")
 ;;4236
 ;;21,"63304096404 ")
 ;;4237
 ;;21,"63304096501 ")
 ;;4238
 ;;21,"63304096503 ")
 ;;4239
 ;;21,"63304096504 ")
 ;;4240
 ;;21,"63304096601 ")
 ;;4241
 ;;21,"63304096603 ")
 ;;4242
 ;;21,"63304096604 ")
 ;;4243
 ;;21,"63304096901 ")
 ;;4244
 ;;21,"63304096903 ")
 ;;4245
 ;;21,"63304096904 ")
 ;;4246
 ;;21,"63304097001 ")
 ;;4247
 ;;21,"63304097003 ")
 ;;4248
 ;;21,"63304097004 ")
 ;;4249
 ;;21,"63304097105 ")
 ;;4250
 ;;21,"63304097114 ")
 ;;4251
 ;;21,"63304097170 ")
 ;;4252
 ;;21,"63304097204 ")
 ;;4253
 ;;21,"63304097303 ")
 ;;4254
 ;;21,"63304097304 ")
 ;;4255
 ;;21,"63304097401 ")
 ;;4256
 ;;21,"63304097404 ")
 ;;4257
 ;;21,"63304097701 ")
 ;;4258
 ;;21,"63304097703 ")
 ;;4259
 ;;21,"63304097704 ")
 ;;4260
 ;;21,"63304097901 ")
 ;;4261
 ;;21,"63304097903 ")
 ;;4262
 ;;21,"63304097904 ")
 ;;4263
 ;;21,"63323013010 ")
 ;;4264
 ;;21,"63323013011 ")
 ;;4265
 ;;21,"63323023610 ")
 ;;4266
 ;;21,"63323023710 ")
 ;;4267
 ;;21,"63323023861 ")
 ;;4268
 ;;21,"63323028202 ")
 ;;4269
 ;;21,"63323028204 ")
 ;;4270
 ;;21,"63323028206 ")
 ;;4271
 ;;21,"63323028260 ")
 ;;4272
 ;;21,"63323031220 ")
 ;;4273
 ;;21,"63323031361 ")
 ;;4274
 ;;21,"63323032320 ")
 ;;4275
 ;;21,"63323032462 ")
 ;;4276
 ;;21,"63323034410 ")
 ;;4277
 ;;21,"63323034510 ")
 ;;4278
 ;;21,"63323034610 ")
 ;;4279
 ;;21,"63323034720 ")
 ;;4280
 ;;21,"63323034861 ")
 ;;4281
 ;;21,"63323035320 ")
 ;;4282
 ;;21,"63323035345 ")
 ;;4283
 ;;21,"63323035445 ")
 ;;4284
 ;;21,"63323035461 ")
 ;;4285
 ;;21,"63323036820 ")
 ;;4286
 ;;21,"63323036920 ")
 ;;4287
 ;;21,"63323037062 ")
 ;;4288
 ;;21,"63323038710 ")
 ;;4289
 ;;21,"63323038810 ")
 ;;4290
 ;;21,"63323038910 ")
 ;;4291
 ;;21,"63323039810 ")
 ;;4292
 ;;21,"63323039812 ")
 ;;4293
 ;;21,"63323039923 ")
 ;;4294
 ;;21,"63323044661 ")
 ;;4295
 ;;21,"63323044666 ")
 ;;4296
 ;;21,"63552014070 ")
 ;;4297
 ;;21,"63629123600 ")
 ;;4298
 ;;21,"63629123601 ")
 ;;4299
 ;;21,"63629123602 ")
 ;;4300
 ;;21,"63629123603 ")
 ;;4301
 ;;21,"63629123604 ")
 ;;4302
 ;;21,"63629123605 ")
 ;;4303
 ;;21,"63629123606 ")
 ;;4304
 ;;21,"63629123607 ")
 ;;4305
 ;;21,"63629123608 ")
 ;;4306
 ;;21,"63629123609 ")
 ;;4307
 ;;21,"63629124801 ")
 ;;4308
 ;;21,"63629124802 ")
 ;;4309
 ;;21,"63629124803 ")
 ;;4310
 ;;21,"63629124804 ")
 ;;4311
 ;;21,"63629125701 ")
 ;;4312
 ;;21,"63629125702 ")
 ;;4313
 ;;21,"63629125703 ")
 ;;4314
 ;;21,"63629128401 ")
 ;;4315
 ;;21,"63629128402 ")
 ;;4316
 ;;21,"63629128403 ")
 ;;4317
 ;;21,"63629130501 ")
 ;;4318
 ;;21,"63629130502 ")
 ;;4319
 ;;21,"63629130503 ")
 ;;4320
 ;;21,"63629130504 ")
 ;;4321
 ;;21,"63629130505 ")
 ;;4322
 ;;21,"63629131701 ")
 ;;4323
 ;;21,"63629131702 ")
 ;;4324
