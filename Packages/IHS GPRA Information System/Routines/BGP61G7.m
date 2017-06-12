BGP61G7 ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON AUG 18, 2015 ;
 ;;16.1;IHS CLINICAL REPORTING;;MAR 22, 2016;Build 170
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;21,"68084-0603-11 ")
 ;;2180
 ;;21,"68084-0603-21 ")
 ;;2181
 ;;21,"68084-0665-01 ")
 ;;2182
 ;;21,"68084-0665-11 ")
 ;;2183
 ;;21,"68084-0674-01 ")
 ;;2184
 ;;21,"68084-0674-11 ")
 ;;2185
 ;;21,"68084-0682-01 ")
 ;;2186
 ;;21,"68084-0682-11 ")
 ;;2187
 ;;21,"68084-0726-32 ")
 ;;2188
 ;;21,"68084-0726-33 ")
 ;;2189
 ;;21,"68180-0196-06 ")
 ;;2190
 ;;21,"68180-0197-06 ")
 ;;2191
 ;;21,"68180-0198-06 ")
 ;;2192
 ;;21,"68180-0199-06 ")
 ;;2193
 ;;21,"68180-0750-09 ")
 ;;2194
 ;;21,"68180-0751-03 ")
 ;;2195
 ;;21,"68180-0751-09 ")
 ;;2196
 ;;21,"68180-0752-03 ")
 ;;2197
 ;;21,"68180-0752-09 ")
 ;;2198
 ;;21,"68180-0755-01 ")
 ;;2199
 ;;21,"68180-0756-01 ")
 ;;2200
 ;;21,"68180-0756-02 ")
 ;;2201
 ;;21,"68180-0757-01 ")
 ;;2202
 ;;21,"68180-0757-02 ")
 ;;2203
 ;;21,"68180-0758-01 ")
 ;;2204
 ;;21,"68180-0758-02 ")
 ;;2205
 ;;21,"68180-0759-01 ")
 ;;2206
 ;;21,"68180-0760-01 ")
 ;;2207
 ;;21,"68180-0764-06 ")
 ;;2208
 ;;21,"68180-0765-06 ")
 ;;2209
 ;;21,"68180-0766-06 ")
 ;;2210
 ;;21,"68180-0767-06 ")
 ;;2211
 ;;21,"68180-0771-06 ")
 ;;2212
 ;;21,"68180-0771-09 ")
 ;;2213
 ;;21,"68180-0772-06 ")
 ;;2214
 ;;21,"68180-0772-09 ")
 ;;2215
 ;;21,"68180-0773-06 ")
 ;;2216
 ;;21,"68180-0773-09 ")
 ;;2217
 ;;21,"68180-0774-06 ")
 ;;2218
 ;;21,"68180-0774-09 ")
 ;;2219
 ;;21,"68180-0775-06 ")
 ;;2220
 ;;21,"68180-0775-09 ")
 ;;2221
 ;;21,"68258-6014-03 ")
 ;;2222
 ;;21,"68258-6014-06 ")
 ;;2223
 ;;21,"68258-6024-03 ")
 ;;2224
 ;;21,"68258-6024-09 ")
 ;;2225
 ;;21,"68258-6025-03 ")
 ;;2226
 ;;21,"68258-6025-06 ")
 ;;2227
 ;;21,"68258-6025-09 ")
 ;;2228
 ;;21,"68258-6046-03 ")
 ;;2229
 ;;21,"68258-6046-09 ")
 ;;2230
 ;;21,"68258-6051-09 ")
 ;;2231
 ;;21,"68258-6060-03 ")
 ;;2232
 ;;21,"68258-6069-03 ")
 ;;2233
 ;;21,"68258-6069-06 ")
 ;;2234
 ;;21,"68258-6069-09 ")
 ;;2235
 ;;21,"68258-6070-03 ")
 ;;2236
 ;;21,"68258-6070-06 ")
 ;;2237
 ;;21,"68258-6070-09 ")
 ;;2238
 ;;21,"68258-6074-03 ")
 ;;2239
 ;;21,"68258-6083-03 ")
 ;;2240
 ;;21,"68258-6978-03 ")
 ;;2241
 ;;21,"68382-0121-01 ")
 ;;2242
 ;;21,"68382-0121-05 ")
 ;;2243
 ;;21,"68382-0121-16 ")
 ;;2244
 ;;21,"68382-0122-01 ")
 ;;2245
 ;;21,"68382-0122-05 ")
 ;;2246
 ;;21,"68382-0122-16 ")
 ;;2247
 ;;21,"68382-0123-01 ")
 ;;2248
 ;;21,"68382-0123-05 ")
 ;;2249
 ;;21,"68382-0123-16 ")
 ;;2250
 ;;21,"68462-0210-10 ")
 ;;2251
 ;;21,"68462-0211-10 ")
 ;;2252
 ;;21,"68462-0212-10 ")
 ;;2253
 ;;21,"68462-0233-01 ")
 ;;2254
 ;;21,"68462-0234-01 ")
 ;;2255
 ;;21,"68462-0235-01 ")
 ;;2256
 ;;21,"68462-0260-01 ")
 ;;2257
 ;;21,"68462-0260-05 ")
 ;;2258
 ;;21,"68462-0292-01 ")
 ;;2259
 ;;21,"68462-0293-01 ")
 ;;2260
 ;;21,"68462-0293-05 ")
 ;;2261
 ;;21,"68462-0294-01 ")
 ;;2262
 ;;21,"68462-0295-01 ")
 ;;2263
 ;;21,"68462-0296-01 ")
 ;;2264
 ;;21,"68462-0329-01 ")
 ;;2265
 ;;21,"68645-0444-70 ")
 ;;2266
 ;;21,"68645-0445-70 ")
 ;;2267
 ;;21,"68682-0367-90 ")
 ;;2268
 ;;21,"68682-0368-90 ")
 ;;2269
 ;;21,"68682-0369-90 ")
 ;;2270
 ;;21,"68682-0370-90 ")
 ;;2271
 ;;21,"68682-0371-90 ")
 ;;2272
 ;;21,"68682-0372-90 ")
 ;;2273
 ;;21,"68682-0521-01 ")
 ;;2274
 ;;21,"68682-0705-30 ")
 ;;2275
 ;;21,"68682-0705-90 ")
 ;;2276
 ;;21,"68682-0706-30 ")
 ;;2277
 ;;21,"68682-0706-90 ")
 ;;2278
 ;;21,"68682-0707-30 ")
 ;;2279
 ;;21,"68682-0707-90 ")
 ;;2280
 ;;21,"68682-0708-30 ")
 ;;2281
 ;;21,"68682-0708-90 ")
 ;;2282
 ;;21,"68682-0709-30 ")
 ;;2283
 ;;21,"68682-0709-90 ")
 ;;2284
 ;;21,"68682-0993-98 ")
 ;;2285
 ;;21,"68682-0994-98 ")
 ;;2286
 ;;21,"68682-0997-98 ")
 ;;2287
 ;;21,"68682-0998-98 ")
 ;;2288
 ;;21,"68788-1737-03 ")
 ;;2289
 ;;21,"68788-1738-03 ")
 ;;2290
 ;;21,"69097-0126-05 ")
 ;;2291
 ;;21,"69097-0126-15 ")
 ;;2292
 ;;21,"69097-0127-05 ")
 ;;2293
 ;;21,"69097-0127-15 ")
 ;;2294
 ;;21,"69097-0128-05 ")
 ;;2295
 ;;21,"69097-0128-15 ")
 ;;2296
 ;;21,"76282-0237-05 ")
 ;;2297
 ;;21,"76282-0237-10 ")
 ;;2298
 ;;21,"76282-0237-90 ")
 ;;2299
 ;;21,"76282-0238-05 ")
 ;;2300
 ;;21,"76282-0238-10 ")
 ;;2301
 ;;21,"76282-0238-90 ")
 ;;2302
 ;;21,"76282-0239-05 ")
 ;;2303
 ;;21,"76282-0239-10 ")
 ;;2304
 ;;21,"76282-0239-90 ")
 ;;2305
 ;;9002226,1220,.01)
 ;;BGP PQA CCB NDC
 ;;9002226,1220,.02)
 ;;@
 ;;9002226,1220,.04)
 ;;n
 ;;9002226,1220,.06)
 ;;@
 ;;9002226,1220,.08)
 ;;@
 ;;9002226,1220,.09)
 ;;3150818
 ;;9002226,1220,.11)
 ;;@
 ;;9002226,1220,.12)
 ;;@
 ;;9002226,1220,.13)
 ;;1
 ;;9002226,1220,.14)
 ;;@
 ;;9002226,1220,.15)
 ;;50.67
 ;;9002226,1220,.16)
 ;;@
 ;;9002226,1220,.17)
 ;;@
 ;;9002226,1220,3101)
 ;;@
 ;;9002226.02101,"1220,00025-1851-31 ",.01)
 ;;00025-1851-31
 ;;9002226.02101,"1220,00025-1851-31 ",.02)
 ;;00025-1851-31
 ;;9002226.02101,"1220,00025-1861-31 ",.01)
 ;;00025-1861-31
 ;;9002226.02101,"1220,00025-1861-31 ",.02)
 ;;00025-1861-31
 ;;9002226.02101,"1220,00025-1891-31 ",.01)
 ;;00025-1891-31
 ;;9002226.02101,"1220,00025-1891-31 ",.02)
 ;;00025-1891-31
 ;;9002226.02101,"1220,00025-1891-34 ",.01)
 ;;00025-1891-34
 ;;9002226.02101,"1220,00025-1891-34 ",.02)
 ;;00025-1891-34
 ;;9002226.02101,"1220,00025-1891-51 ",.01)
 ;;00025-1891-51
 ;;9002226.02101,"1220,00025-1891-51 ",.02)
 ;;00025-1891-51
 ;;9002226.02101,"1220,00025-1901-31 ",.01)
 ;;00025-1901-31
 ;;9002226.02101,"1220,00025-1901-31 ",.02)
 ;;00025-1901-31
 ;;9002226.02101,"1220,00025-1911-31 ",.01)
 ;;00025-1911-31
 ;;9002226.02101,"1220,00025-1911-31 ",.02)
 ;;00025-1911-31
 ;;9002226.02101,"1220,00025-2011-31 ",.01)
 ;;00025-2011-31
 ;;9002226.02101,"1220,00025-2011-31 ",.02)
 ;;00025-2011-31
 ;;9002226.02101,"1220,00025-2011-34 ",.01)
 ;;00025-2011-34
 ;;9002226.02101,"1220,00025-2011-34 ",.02)
 ;;00025-2011-34
 ;;9002226.02101,"1220,00025-2021-31 ",.01)
 ;;00025-2021-31
 ;;9002226.02101,"1220,00025-2021-31 ",.02)
 ;;00025-2021-31
 ;;9002226.02101,"1220,00025-2021-34 ",.01)
 ;;00025-2021-34
 ;;9002226.02101,"1220,00025-2021-34 ",.02)
 ;;00025-2021-34
 ;;9002226.02101,"1220,00054-0100-22 ",.01)
 ;;00054-0100-22
 ;;9002226.02101,"1220,00054-0100-22 ",.02)
 ;;00054-0100-22
 ;;9002226.02101,"1220,00054-0100-31 ",.01)
 ;;00054-0100-31
 ;;9002226.02101,"1220,00054-0100-31 ",.02)
 ;;00054-0100-31
 ;;9002226.02101,"1220,00054-0101-20 ",.01)
 ;;00054-0101-20
 ;;9002226.02101,"1220,00054-0101-20 ",.02)
 ;;00054-0101-20
 ;;9002226.02101,"1220,00054-0101-22 ",.01)
 ;;00054-0101-22
 ;;9002226.02101,"1220,00054-0101-22 ",.02)
 ;;00054-0101-22
 ;;9002226.02101,"1220,00054-0101-28 ",.01)
 ;;00054-0101-28
 ;;9002226.02101,"1220,00054-0101-28 ",.02)
 ;;00054-0101-28
 ;;9002226.02101,"1220,00054-0101-31 ",.01)
 ;;00054-0101-31
 ;;9002226.02101,"1220,00054-0101-31 ",.02)
 ;;00054-0101-31
 ;;9002226.02101,"1220,00054-0102-20 ",.01)
 ;;00054-0102-20
 ;;9002226.02101,"1220,00054-0102-20 ",.02)
 ;;00054-0102-20
 ;;9002226.02101,"1220,00054-0102-22 ",.01)
 ;;00054-0102-22
 ;;9002226.02101,"1220,00054-0102-22 ",.02)
 ;;00054-0102-22
 ;;9002226.02101,"1220,00054-0102-28 ",.01)
 ;;00054-0102-28
 ;;9002226.02101,"1220,00054-0102-28 ",.02)
 ;;00054-0102-28
 ;;9002226.02101,"1220,00054-0102-31 ",.01)
 ;;00054-0102-31
 ;;9002226.02101,"1220,00054-0102-31 ",.02)
 ;;00054-0102-31
 ;;9002226.02101,"1220,00069-1520-68 ",.01)
 ;;00069-1520-68
 ;;9002226.02101,"1220,00069-1520-68 ",.02)
 ;;00069-1520-68
 ;;9002226.02101,"1220,00069-1530-41 ",.01)
 ;;00069-1530-41
 ;;9002226.02101,"1220,00069-1530-41 ",.02)
 ;;00069-1530-41
 ;;9002226.02101,"1220,00069-1530-68 ",.01)
 ;;00069-1530-68
 ;;9002226.02101,"1220,00069-1530-68 ",.02)
 ;;00069-1530-68
 ;;9002226.02101,"1220,00069-1530-72 ",.01)
 ;;00069-1530-72
 ;;9002226.02101,"1220,00069-1530-72 ",.02)
 ;;00069-1530-72
 ;;9002226.02101,"1220,00069-1540-41 ",.01)
 ;;00069-1540-41
 ;;9002226.02101,"1220,00069-1540-41 ",.02)
 ;;00069-1540-41
 ;;9002226.02101,"1220,00069-1540-68 ",.01)
 ;;00069-1540-68
 ;;9002226.02101,"1220,00069-1540-68 ",.02)
 ;;00069-1540-68
 ;;9002226.02101,"1220,00069-2150-30 ",.01)
 ;;00069-2150-30
 ;;9002226.02101,"1220,00069-2150-30 ",.02)
 ;;00069-2150-30
 ;;9002226.02101,"1220,00069-2160-30 ",.01)
 ;;00069-2160-30
 ;;9002226.02101,"1220,00069-2160-30 ",.02)
 ;;00069-2160-30
 ;;9002226.02101,"1220,00069-2170-30 ",.01)
 ;;00069-2170-30
 ;;9002226.02101,"1220,00069-2170-30 ",.02)
 ;;00069-2170-30
 ;;9002226.02101,"1220,00069-2180-30 ",.01)
 ;;00069-2180-30
 ;;9002226.02101,"1220,00069-2180-30 ",.02)
 ;;00069-2180-30
 ;;9002226.02101,"1220,00069-2190-30 ",.01)
 ;;00069-2190-30
 ;;9002226.02101,"1220,00069-2190-30 ",.02)
 ;;00069-2190-30
 ;;9002226.02101,"1220,00069-2250-30 ",.01)
 ;;00069-2250-30
 ;;9002226.02101,"1220,00069-2250-30 ",.02)
 ;;00069-2250-30
 ;;9002226.02101,"1220,00069-2260-30 ",.01)
 ;;00069-2260-30
 ;;9002226.02101,"1220,00069-2260-30 ",.02)
 ;;00069-2260-30
 ;;9002226.02101,"1220,00069-2270-30 ",.01)
 ;;00069-2270-30
 ;;9002226.02101,"1220,00069-2270-30 ",.02)
 ;;00069-2270-30
 ;;9002226.02101,"1220,00069-2650-41 ",.01)
 ;;00069-2650-41
 ;;9002226.02101,"1220,00069-2650-41 ",.02)
 ;;00069-2650-41
 ;;9002226.02101,"1220,00069-2650-66 ",.01)
 ;;00069-2650-66
 ;;9002226.02101,"1220,00069-2650-66 ",.02)
 ;;00069-2650-66
 ;;9002226.02101,"1220,00069-2650-72 ",.01)
 ;;00069-2650-72
 ;;9002226.02101,"1220,00069-2650-72 ",.02)
 ;;00069-2650-72
 ;;9002226.02101,"1220,00069-2660-41 ",.01)
 ;;00069-2660-41
 ;;9002226.02101,"1220,00069-2660-41 ",.02)
 ;;00069-2660-41
 ;;9002226.02101,"1220,00069-2660-66 ",.01)
 ;;00069-2660-66
 ;;9002226.02101,"1220,00069-2660-66 ",.02)
 ;;00069-2660-66
 ;;9002226.02101,"1220,00069-2660-72 ",.01)
 ;;00069-2660-72
 ;;9002226.02101,"1220,00069-2660-72 ",.02)
 ;;00069-2660-72
 ;;9002226.02101,"1220,00069-2670-66 ",.01)
 ;;00069-2670-66
 ;;9002226.02101,"1220,00069-2670-66 ",.02)
 ;;00069-2670-66
 ;;9002226.02101,"1220,00069-2960-30 ",.01)
 ;;00069-2960-30
 ;;9002226.02101,"1220,00069-2960-30 ",.02)
 ;;00069-2960-30
 ;;9002226.02101,"1220,00069-2970-30 ",.01)
 ;;00069-2970-30
 ;;9002226.02101,"1220,00069-2970-30 ",.02)
 ;;00069-2970-30
 ;;9002226.02101,"1220,00069-2980-30 ",.01)
 ;;00069-2980-30
 ;;9002226.02101,"1220,00069-2980-30 ",.02)
 ;;00069-2980-30
 ;;9002226.02101,"1220,00074-3045-30 ",.01)
 ;;00074-3045-30
 ;;9002226.02101,"1220,00074-3045-30 ",.02)
 ;;00074-3045-30
 ;;9002226.02101,"1220,00074-3045-90 ",.01)
 ;;00074-3045-90
 ;;9002226.02101,"1220,00074-3045-90 ",.02)
 ;;00074-3045-90
 ;;9002226.02101,"1220,00074-3061-30 ",.01)
 ;;00074-3061-30
 ;;9002226.02101,"1220,00074-3061-30 ",.02)
 ;;00074-3061-30
 ;;9002226.02101,"1220,00074-3061-90 ",.01)
 ;;00074-3061-90
 ;;9002226.02101,"1220,00074-3061-90 ",.02)
 ;;00074-3061-90
 ;;9002226.02101,"1220,00074-3062-30 ",.01)
 ;;00074-3062-30
 ;;9002226.02101,"1220,00074-3062-30 ",.02)
 ;;00074-3062-30
 ;;9002226.02101,"1220,00074-3062-90 ",.01)
 ;;00074-3062-90
 ;;9002226.02101,"1220,00074-3062-90 ",.02)
 ;;00074-3062-90
 ;;9002226.02101,"1220,00074-3063-30 ",.01)
 ;;00074-3063-30
 ;;9002226.02101,"1220,00074-3063-30 ",.02)
 ;;00074-3063-30
 ;;9002226.02101,"1220,00074-3063-90 ",.01)
 ;;00074-3063-90
 ;;9002226.02101,"1220,00074-3063-90 ",.02)
 ;;00074-3063-90
 ;;9002226.02101,"1220,00074-3064-30 ",.01)
 ;;00074-3064-30
 ;;9002226.02101,"1220,00074-3064-30 ",.02)
 ;;00074-3064-30
 ;;9002226.02101,"1220,00074-3064-90 ",.01)
 ;;00074-3064-90
 ;;9002226.02101,"1220,00074-3064-90 ",.02)
 ;;00074-3064-90
 ;;9002226.02101,"1220,00074-3069-30 ",.01)
 ;;00074-3069-30
 ;;9002226.02101,"1220,00074-3069-30 ",.02)
 ;;00074-3069-30
 ;;9002226.02101,"1220,00074-3069-90 ",.01)
 ;;00074-3069-90
 ;;9002226.02101,"1220,00074-3069-90 ",.02)
 ;;00074-3069-90
 ;;9002226.02101,"1220,00074-3287-13 ",.01)
 ;;00074-3287-13
 ;;9002226.02101,"1220,00074-3287-13 ",.02)
 ;;00074-3287-13
 ;;9002226.02101,"1220,00074-3288-13 ",.01)
 ;;00074-3288-13
 ;;9002226.02101,"1220,00074-3288-13 ",.02)
 ;;00074-3288-13
 ;;9002226.02101,"1220,00074-3289-13 ",.01)
 ;;00074-3289-13
 ;;9002226.02101,"1220,00074-3289-13 ",.02)
 ;;00074-3289-13
 ;;9002226.02101,"1220,00074-3290-13 ",.01)
 ;;00074-3290-13
 ;;9002226.02101,"1220,00074-3290-13 ",.02)
 ;;00074-3290-13
 ;;9002226.02101,"1220,00078-0364-05 ",.01)
 ;;00078-0364-05
 ;;9002226.02101,"1220,00078-0364-05 ",.02)
 ;;00078-0364-05
 ;;9002226.02101,"1220,00078-0379-05 ",.01)
 ;;00078-0379-05
 ;;9002226.02101,"1220,00078-0379-05 ",.02)
 ;;00078-0379-05
