ATXD3S5 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON OCT 28, 2013;
 ;;5.1;TAXONOMY;**11**;FEB 04, 1997;Build 48
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;21,"O69.89X5 ")
 ;;1851
 ;;21,"O69.89X9 ")
 ;;1852
 ;;21,"O69.9XX0 ")
 ;;1853
 ;;21,"O69.9XX1 ")
 ;;1854
 ;;21,"O69.9XX2 ")
 ;;1855
 ;;21,"O69.9XX3 ")
 ;;1856
 ;;21,"O69.9XX4 ")
 ;;1857
 ;;21,"O69.9XX5 ")
 ;;1858
 ;;21,"O69.9XX9 ")
 ;;1859
 ;;21,"O71.00 ")
 ;;1860
 ;;21,"O71.02 ")
 ;;1861
 ;;21,"O71.03 ")
 ;;1862
 ;;21,"O71.1 ")
 ;;1863
 ;;21,"O71.89 ")
 ;;1864
 ;;21,"O71.9 ")
 ;;1865
 ;;21,"O74.0 ")
 ;;1866
 ;;21,"O74.1 ")
 ;;1867
 ;;21,"O74.2 ")
 ;;1868
 ;;21,"O74.3 ")
 ;;1869
 ;;21,"O74.4 ")
 ;;1870
 ;;21,"O74.5 ")
 ;;1871
 ;;21,"O74.6 ")
 ;;1872
 ;;21,"O74.7 ")
 ;;1873
 ;;21,"O74.8 ")
 ;;1874
 ;;21,"O74.9 ")
 ;;1875
 ;;21,"O75.0 ")
 ;;1876
 ;;21,"O75.1 ")
 ;;1877
 ;;21,"O75.2 ")
 ;;1878
 ;;21,"O75.3 ")
 ;;1879
 ;;21,"O75.4 ")
 ;;1880
 ;;21,"O75.5 ")
 ;;1881
 ;;21,"O75.81 ")
 ;;1882
 ;;21,"O75.89 ")
 ;;1883
 ;;21,"O75.9 ")
 ;;1884
 ;;21,"O76. ")
 ;;1885
 ;;21,"O77.0 ")
 ;;1886
 ;;21,"O77.1 ")
 ;;1887
 ;;21,"O77.8 ")
 ;;1888
 ;;21,"O77.9 ")
 ;;1889
 ;;21,"O88.011 ")
 ;;1890
 ;;21,"O88.012 ")
 ;;1891
 ;;21,"O88.013 ")
 ;;1892
 ;;21,"O88.019 ")
 ;;1893
 ;;21,"O88.02 ")
 ;;1894
 ;;21,"O88.111 ")
 ;;1895
 ;;21,"O88.112 ")
 ;;1896
 ;;21,"O88.113 ")
 ;;1897
 ;;21,"O88.119 ")
 ;;1898
 ;;21,"O88.12 ")
 ;;1899
 ;;21,"O88.211 ")
 ;;1900
 ;;21,"O88.212 ")
 ;;1901
 ;;21,"O88.213 ")
 ;;1902
 ;;21,"O88.219 ")
 ;;1903
 ;;21,"O88.22 ")
 ;;1904
 ;;21,"O88.311 ")
 ;;1905
 ;;21,"O88.312 ")
 ;;1906
 ;;21,"O88.313 ")
 ;;1907
 ;;21,"O88.319 ")
 ;;1908
 ;;21,"O88.32 ")
 ;;1909
 ;;21,"O88.811 ")
 ;;1910
 ;;21,"O88.812 ")
 ;;1911
 ;;21,"O88.813 ")
 ;;1912
 ;;21,"O88.819 ")
 ;;1913
 ;;21,"O88.82 ")
 ;;1914
 ;;21,"O90.3 ")
 ;;1915
 ;;21,"O91.011 ")
 ;;1916
 ;;21,"O91.012 ")
 ;;1917
 ;;21,"O91.013 ")
 ;;1918
 ;;21,"O91.019 ")
 ;;1919
 ;;21,"O91.111 ")
 ;;1920
 ;;21,"O91.112 ")
 ;;1921
 ;;21,"O91.113 ")
 ;;1922
 ;;21,"O91.119 ")
 ;;1923
 ;;21,"O91.211 ")
 ;;1924
 ;;21,"O91.212 ")
 ;;1925
 ;;21,"O91.213 ")
 ;;1926
 ;;21,"O91.219 ")
 ;;1927
 ;;21,"O92.011 ")
 ;;1928
 ;;21,"O92.012 ")
 ;;1929
 ;;21,"O92.013 ")
 ;;1930
 ;;21,"O92.019 ")
 ;;1931
 ;;21,"O92.20 ")
 ;;1932
 ;;21,"O92.29 ")
 ;;1933
 ;;21,"O98.011 ")
 ;;1934
 ;;21,"O98.012 ")
 ;;1935
 ;;21,"O98.013 ")
 ;;1936
 ;;21,"O98.019 ")
 ;;1937
 ;;21,"O98.02 ")
 ;;1938
 ;;21,"O98.111 ")
 ;;1939
 ;;21,"O98.112 ")
 ;;1940
 ;;21,"O98.113 ")
 ;;1941
 ;;21,"O98.119 ")
 ;;1942
 ;;21,"O98.12 ")
 ;;1943
 ;;21,"O98.211 ")
 ;;1944
 ;;21,"O98.212 ")
 ;;1945
 ;;21,"O98.213 ")
 ;;1946
 ;;21,"O98.219 ")
 ;;1947
 ;;21,"O98.22 ")
 ;;1948
 ;;21,"O98.311 ")
 ;;1949
 ;;21,"O98.312 ")
 ;;1950
 ;;21,"O98.313 ")
 ;;1951
 ;;21,"O98.319 ")
 ;;1952
 ;;21,"O98.32 ")
 ;;1953
 ;;21,"O98.411 ")
 ;;1954
 ;;21,"O98.412 ")
 ;;1955
 ;;21,"O98.413 ")
 ;;1956
 ;;21,"O98.419 ")
 ;;1957
 ;;21,"O98.42 ")
 ;;1958
 ;;21,"O98.511 ")
 ;;1959
 ;;21,"O98.512 ")
 ;;1960
 ;;21,"O98.513 ")
 ;;1961
 ;;21,"O98.519 ")
 ;;1962
 ;;21,"O98.52 ")
 ;;1963
 ;;21,"O98.611 ")
 ;;1964
 ;;21,"O98.612 ")
 ;;1965
 ;;21,"O98.613 ")
 ;;1966
 ;;21,"O98.619 ")
 ;;1967
 ;;21,"O98.62 ")
 ;;1968
 ;;21,"O98.711 ")
 ;;1969
 ;;21,"O98.712 ")
 ;;1970
 ;;21,"O98.713 ")
 ;;1971
 ;;21,"O98.719 ")
 ;;1972
 ;;21,"O98.72 ")
 ;;1973
 ;;21,"O98.811 ")
 ;;1974
 ;;21,"O98.812 ")
 ;;1975
 ;;21,"O98.813 ")
 ;;1976
 ;;21,"O98.819 ")
 ;;1977
 ;;21,"O98.82 ")
 ;;1978
 ;;21,"O98.911 ")
 ;;1979
 ;;21,"O98.912 ")
 ;;1980
 ;;21,"O98.913 ")
 ;;1981
 ;;21,"O98.919 ")
 ;;1982
 ;;21,"O98.92 ")
 ;;1983
 ;;21,"O99.011 ")
 ;;1984
 ;;21,"O99.012 ")
 ;;1985
 ;;21,"O99.013 ")
 ;;1986
 ;;21,"O99.019 ")
 ;;1987
 ;;21,"O99.02 ")
 ;;1988
 ;;21,"O99.111 ")
 ;;1989
 ;;21,"O99.112 ")
 ;;1990
 ;;21,"O99.113 ")
 ;;1991
 ;;21,"O99.119 ")
 ;;1992
 ;;21,"O99.12 ")
 ;;1993
 ;;21,"O99.210 ")
 ;;1994
 ;;21,"O99.211 ")
 ;;1995
 ;;21,"O99.212 ")
 ;;1996
 ;;21,"O99.213 ")
 ;;1997
 ;;21,"O99.214 ")
 ;;1998
 ;;21,"O99.280 ")
 ;;1999
 ;;21,"O99.281 ")
 ;;2000
 ;;21,"O99.282 ")
 ;;2001
 ;;21,"O99.283 ")
 ;;2002
 ;;21,"O99.284 ")
 ;;2003
 ;;21,"O99.310 ")
 ;;2004
 ;;21,"O99.311 ")
 ;;2005
 ;;21,"O99.312 ")
 ;;2006
 ;;21,"O99.313 ")
 ;;2007
 ;;21,"O99.314 ")
 ;;2008
 ;;21,"O99.320 ")
 ;;2009
 ;;21,"O99.321 ")
 ;;2010
 ;;21,"O99.322 ")
 ;;2011
 ;;21,"O99.323 ")
 ;;2012
 ;;21,"O99.324 ")
 ;;2013
 ;;21,"O99.330 ")
 ;;2014
 ;;21,"O99.331 ")
 ;;2015
 ;;21,"O99.332 ")
 ;;2016
 ;;21,"O99.333 ")
 ;;2017
 ;;21,"O99.334 ")
 ;;2018
 ;;21,"O99.340 ")
 ;;2019
 ;;21,"O99.341 ")
 ;;2020
 ;;21,"O99.342 ")
 ;;2021
 ;;21,"O99.343 ")
 ;;2022
 ;;21,"O99.344 ")
 ;;2023
 ;;21,"O99.350 ")
 ;;2024
 ;;21,"O99.351 ")
 ;;2025
 ;;21,"O99.352 ")
 ;;2026
 ;;21,"O99.353 ")
 ;;2027
 ;;21,"O99.354 ")
 ;;2028
 ;;21,"O99.411 ")
 ;;2029
 ;;21,"O99.412 ")
 ;;2030
 ;;21,"O99.413 ")
 ;;2031
 ;;21,"O99.419 ")
 ;;2032
 ;;21,"O99.511 ")
 ;;2033
 ;;21,"O99.512 ")
 ;;2034
 ;;21,"O99.513 ")
 ;;2035
 ;;21,"O99.519 ")
 ;;2036
 ;;21,"O99.52 ")
 ;;2037
 ;;21,"O99.611 ")
 ;;2038
 ;;21,"O99.612 ")
 ;;2039
 ;;21,"O99.613 ")
 ;;2040
 ;;21,"O99.619 ")
 ;;2041
 ;;21,"O99.62 ")
 ;;2042
 ;;21,"O99.711 ")
 ;;2043
 ;;21,"O99.712 ")
 ;;2044
 ;;21,"O99.713 ")
 ;;2045
 ;;21,"O99.719 ")
 ;;2046
 ;;21,"O99.72 ")
 ;;2047
 ;;21,"O99.810 ")
 ;;2048
 ;;21,"O99.814 ")
 ;;2049
 ;;21,"O99.820 ")
 ;;2050
 ;;21,"O99.824 ")
 ;;2051
 ;;21,"O99.830 ")
 ;;2052
 ;;21,"O99.834 ")
 ;;2053
 ;;21,"O99.840 ")
 ;;2054
 ;;21,"O99.841 ")
 ;;2055
 ;;21,"O99.842 ")
 ;;2056
 ;;21,"O99.843 ")
 ;;2057
 ;;21,"O99.844 ")
 ;;2058
 ;;21,"O99.89 ")
 ;;2059
 ;;21,"O9A.111 ")
 ;;2060
 ;;21,"O9A.112 ")
 ;;2061
 ;;21,"O9A.113 ")
 ;;2062
 ;;21,"O9A.119 ")
 ;;2063
 ;;21,"O9A.12 ")
 ;;2064
 ;;21,"O9A.211 ")
 ;;2065
 ;;21,"O9A.212 ")
 ;;2066
 ;;21,"O9A.213 ")
 ;;2067
 ;;21,"O9A.219 ")
 ;;2068
 ;;21,"O9A.22 ")
 ;;2069
 ;;21,"O9A.311 ")
 ;;2070
 ;;21,"O9A.312 ")
 ;;2071
 ;;21,"O9A.313 ")
 ;;2072
 ;;21,"O9A.319 ")
 ;;2073
 ;;21,"O9A.32 ")
 ;;2074
 ;;21,"O9A.411 ")
 ;;2075
 ;;21,"O9A.412 ")
 ;;2076
 ;;21,"O9A.413 ")
 ;;2077
 ;;21,"O9A.419 ")
 ;;2078
 ;;21,"O9A.42 ")
 ;;2079
 ;;21,"O9A.511 ")
 ;;2080
 ;;21,"O9A.512 ")
 ;;2081
 ;;21,"O9A.513 ")
 ;;2082
 ;;21,"O9A.519 ")
 ;;2083
 ;;21,"O9A.52 ")
 ;;2084
 ;;21,"V22.0 ")
 ;;2085
 ;;21,"V28.81 ")
 ;;2086
 ;;21,"V72.42 ")
 ;;2087
 ;;21,"V89.01 ")
 ;;2088
 ;;21,"Z03.71 ")
 ;;2089
 ;;21,"Z03.72 ")
 ;;2090
 ;;21,"Z03.73 ")
 ;;2091
 ;;21,"Z03.74 ")
 ;;2092
 ;;21,"Z03.75 ")
 ;;2093
 ;;21,"Z03.79 ")
 ;;2094
 ;;21,"Z32.01 ")
 ;;2095
 ;;21,"Z33.1 ")
 ;;2096
 ;;21,"Z34.00 ")
 ;;2097
 ;;21,"Z34.01 ")
 ;;2098
 ;;21,"Z34.02 ")
 ;;2099
 ;;21,"Z34.03 ")
 ;;2100
 ;;21,"Z34.80 ")
 ;;2101
 ;;21,"Z34.81 ")
 ;;2102
 ;;21,"Z34.82 ")
 ;;2103
 ;;21,"Z34.83 ")
 ;;2104
 ;;21,"Z34.90 ")
 ;;2105
 ;;21,"Z34.91 ")
 ;;2106
 ;;21,"Z34.92 ")
 ;;2107
 ;;21,"Z34.93 ")
 ;;2108
 ;;21,"Z36. ")
 ;;2109
 ;;9002226,1011,.01)
 ;;BGP PREGNANCY DIAGNOSES 2
 ;;9002226,1011,.02)
 ;;@
 ;;9002226,1011,.04)
 ;;n
 ;;9002226,1011,.06)
 ;;@
 ;;9002226,1011,.08)
 ;;0
 ;;9002226,1011,.09)
 ;;3130521
 ;;9002226,1011,.11)
 ;;@
 ;;9002226,1011,.12)
 ;;31
 ;;9002226,1011,.13)
 ;;1
 ;;9002226,1011,.14)
 ;;@
 ;;9002226,1011,.15)
 ;;80
 ;;9002226,1011,.16)
 ;;@
 ;;9002226,1011,.17)
 ;;@
 ;;9002226,1011,3101)
 ;;@
 ;;9002226.02101,"1011,640.03 ",.01)
 ;;640.03 
 ;;9002226.02101,"1011,640.03 ",.02)
 ;;640.03 
 ;;9002226.02101,"1011,640.03 ",.03)
 ;;1
 ;;9002226.02101,"1011,640.83 ",.01)
 ;;640.83 
 ;;9002226.02101,"1011,640.83 ",.02)
 ;;640.83 
 ;;9002226.02101,"1011,640.83 ",.03)
 ;;1
 ;;9002226.02101,"1011,640.93 ",.01)
 ;;640.93 
 ;;9002226.02101,"1011,640.93 ",.02)
 ;;640.93 
 ;;9002226.02101,"1011,640.93 ",.03)
 ;;1
 ;;9002226.02101,"1011,641.03 ",.01)
 ;;641.03 
 ;;9002226.02101,"1011,641.03 ",.02)
 ;;641.03 
 ;;9002226.02101,"1011,641.03 ",.03)
 ;;1
 ;;9002226.02101,"1011,641.13 ",.01)
 ;;641.13 
 ;;9002226.02101,"1011,641.13 ",.02)
 ;;641.13 
 ;;9002226.02101,"1011,641.13 ",.03)
 ;;1
 ;;9002226.02101,"1011,641.23 ",.01)
 ;;641.23 
 ;;9002226.02101,"1011,641.23 ",.02)
 ;;641.23 
 ;;9002226.02101,"1011,641.23 ",.03)
 ;;1
 ;;9002226.02101,"1011,641.33 ",.01)
 ;;641.33 
 ;;9002226.02101,"1011,641.33 ",.02)
 ;;641.33 
 ;;9002226.02101,"1011,641.33 ",.03)
 ;;1
 ;;9002226.02101,"1011,641.83 ",.01)
 ;;641.83 
 ;;9002226.02101,"1011,641.83 ",.02)
 ;;641.83 
 ;;9002226.02101,"1011,641.83 ",.03)
 ;;1
 ;;9002226.02101,"1011,641.93 ",.01)
 ;;641.93 
 ;;9002226.02101,"1011,641.93 ",.02)
 ;;641.93 
 ;;9002226.02101,"1011,641.93 ",.03)
 ;;1
 ;;9002226.02101,"1011,642.03 ",.01)
 ;;642.03 
 ;;9002226.02101,"1011,642.03 ",.02)
 ;;642.03 
 ;;9002226.02101,"1011,642.03 ",.03)
 ;;1
 ;;9002226.02101,"1011,642.13 ",.01)
 ;;642.13 
 ;;9002226.02101,"1011,642.13 ",.02)
 ;;642.13 
 ;;9002226.02101,"1011,642.13 ",.03)
 ;;1
 ;;9002226.02101,"1011,642.23 ",.01)
 ;;642.23 
 ;;9002226.02101,"1011,642.23 ",.02)
 ;;642.23 
 ;;9002226.02101,"1011,642.23 ",.03)
 ;;1
 ;;9002226.02101,"1011,642.33 ",.01)
 ;;642.33 
 ;;9002226.02101,"1011,642.33 ",.02)
 ;;642.33 
 ;;9002226.02101,"1011,642.33 ",.03)
 ;;1
 ;;9002226.02101,"1011,642.43 ",.01)
 ;;642.43 
 ;;9002226.02101,"1011,642.43 ",.02)
 ;;642.43 
 ;;9002226.02101,"1011,642.43 ",.03)
 ;;1
 ;;9002226.02101,"1011,642.53 ",.01)
 ;;642.53 
 ;;9002226.02101,"1011,642.53 ",.02)
 ;;642.53 
 ;;9002226.02101,"1011,642.53 ",.03)
 ;;1
 ;;9002226.02101,"1011,642.63 ",.01)
 ;;642.63 
 ;;9002226.02101,"1011,642.63 ",.02)
 ;;642.63 
 ;;9002226.02101,"1011,642.63 ",.03)
 ;;1
 ;;9002226.02101,"1011,642.73 ",.01)
 ;;642.73 
 ;;9002226.02101,"1011,642.73 ",.02)
 ;;642.73 
 ;;9002226.02101,"1011,642.73 ",.03)
 ;;1
 ;;9002226.02101,"1011,642.93 ",.01)
 ;;642.93 
 ;;9002226.02101,"1011,642.93 ",.02)
 ;;642.93 
 ;;9002226.02101,"1011,642.93 ",.03)
 ;;1
 ;;9002226.02101,"1011,643.03 ",.01)
 ;;643.03 
 ;;9002226.02101,"1011,643.03 ",.02)
 ;;643.03 
 ;;9002226.02101,"1011,643.03 ",.03)
 ;;1
 ;;9002226.02101,"1011,643.13 ",.01)
 ;;643.13 
 ;;9002226.02101,"1011,643.13 ",.02)
 ;;643.13 
 ;;9002226.02101,"1011,643.13 ",.03)
 ;;1
 ;;9002226.02101,"1011,643.23 ",.01)
 ;;643.23 
 ;;9002226.02101,"1011,643.23 ",.02)
 ;;643.23 
 ;;9002226.02101,"1011,643.23 ",.03)
 ;;1
 ;;9002226.02101,"1011,643.83 ",.01)
 ;;643.83 
 ;;9002226.02101,"1011,643.83 ",.02)
 ;;643.83 
 ;;9002226.02101,"1011,643.83 ",.03)
 ;;1
 ;;9002226.02101,"1011,643.93 ",.01)
 ;;643.93 
 ;;9002226.02101,"1011,643.93 ",.02)
 ;;643.93 
 ;;9002226.02101,"1011,643.93 ",.03)
 ;;1
 ;;9002226.02101,"1011,644.03 ",.01)
 ;;644.03 
 ;;9002226.02101,"1011,644.03 ",.02)
 ;;644.03 
 ;;9002226.02101,"1011,644.03 ",.03)
 ;;1
 ;;9002226.02101,"1011,644.13 ",.01)
 ;;644.13 
 ;;9002226.02101,"1011,644.13 ",.02)
 ;;644.13 
 ;;9002226.02101,"1011,644.13 ",.03)
 ;;1
 ;;9002226.02101,"1011,645.13 ",.01)
 ;;645.13 
 ;;9002226.02101,"1011,645.13 ",.02)
 ;;645.13 
 ;;9002226.02101,"1011,645.13 ",.03)
 ;;1
 ;;9002226.02101,"1011,645.23 ",.01)
 ;;645.23 
 ;;9002226.02101,"1011,645.23 ",.02)
 ;;645.23 
 ;;9002226.02101,"1011,645.23 ",.03)
 ;;1
 ;;9002226.02101,"1011,646.03 ",.01)
 ;;646.03 
 ;;9002226.02101,"1011,646.03 ",.02)
 ;;646.03 
 ;;9002226.02101,"1011,646.03 ",.03)
 ;;1
 ;;9002226.02101,"1011,646.13 ",.01)
 ;;646.13 
 ;;9002226.02101,"1011,646.13 ",.02)
 ;;646.13 
 ;;9002226.02101,"1011,646.13 ",.03)
 ;;1
 ;;9002226.02101,"1011,646.23 ",.01)
 ;;646.23 
 ;;9002226.02101,"1011,646.23 ",.02)
 ;;646.23 
 ;;9002226.02101,"1011,646.23 ",.03)
 ;;1
 ;;9002226.02101,"1011,646.33 ",.01)
 ;;646.33 
 ;;9002226.02101,"1011,646.33 ",.02)
 ;;646.33 
 ;;9002226.02101,"1011,646.33 ",.03)
 ;;1
 ;;9002226.02101,"1011,646.43 ",.01)
 ;;646.43 
 ;;9002226.02101,"1011,646.43 ",.02)
 ;;646.43 
 ;;9002226.02101,"1011,646.43 ",.03)
 ;;1
 ;;9002226.02101,"1011,646.53 ",.01)
 ;;646.53 
 ;;9002226.02101,"1011,646.53 ",.02)
 ;;646.53 
 ;;9002226.02101,"1011,646.53 ",.03)
 ;;1
 ;;9002226.02101,"1011,646.63 ",.01)
 ;;646.63 
 ;;9002226.02101,"1011,646.63 ",.02)
 ;;646.63 
 ;;9002226.02101,"1011,646.63 ",.03)
 ;;1
 ;;9002226.02101,"1011,646.73 ",.01)
 ;;646.73 
 ;;9002226.02101,"1011,646.73 ",.02)
 ;;646.73 
 ;;9002226.02101,"1011,646.73 ",.03)
 ;;1
 ;;9002226.02101,"1011,646.83 ",.01)
 ;;646.83 
 ;;9002226.02101,"1011,646.83 ",.02)
 ;;646.83 
 ;;9002226.02101,"1011,646.83 ",.03)
 ;;1
 ;;9002226.02101,"1011,646.93 ",.01)
 ;;646.93 
 ;;9002226.02101,"1011,646.93 ",.02)
 ;;646.93 
 ;;9002226.02101,"1011,646.93 ",.03)
 ;;1
 ;;9002226.02101,"1011,647.03 ",.01)
 ;;647.03 
 ;;9002226.02101,"1011,647.03 ",.02)
 ;;647.03 
 ;;9002226.02101,"1011,647.03 ",.03)
 ;;1
 ;;9002226.02101,"1011,647.13 ",.01)
 ;;647.13 
 ;;9002226.02101,"1011,647.13 ",.02)
 ;;647.13 
