BGP61F6 ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON AUG 18, 2015 ;
 ;;16.1;IHS CLINICAL REPORTING;;MAR 22, 2016;Build 170
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;21,"47463-0220-30 ")
 ;;1821
 ;;21,"47463-0221-30 ")
 ;;1822
 ;;21,"47463-0222-30 ")
 ;;1823
 ;;21,"47463-0223-30 ")
 ;;1824
 ;;21,"47463-0250-30 ")
 ;;1825
 ;;21,"47463-0251-30 ")
 ;;1826
 ;;21,"47463-0252-30 ")
 ;;1827
 ;;21,"47463-0253-30 ")
 ;;1828
 ;;21,"47463-0375-30 ")
 ;;1829
 ;;21,"47463-0376-30 ")
 ;;1830
 ;;21,"47463-0387-30 ")
 ;;1831
 ;;21,"47463-0387-60 ")
 ;;1832
 ;;21,"47463-0387-90 ")
 ;;1833
 ;;21,"47463-0388-30 ")
 ;;1834
 ;;21,"47463-0388-60 ")
 ;;1835
 ;;21,"47463-0388-90 ")
 ;;1836
 ;;21,"47463-0389-30 ")
 ;;1837
 ;;21,"47463-0390-30 ")
 ;;1838
 ;;21,"47463-0390-60 ")
 ;;1839
 ;;21,"47463-0409-30 ")
 ;;1840
 ;;21,"47463-0410-30 ")
 ;;1841
 ;;21,"47463-0410-90 ")
 ;;1842
 ;;21,"47463-0429-30 ")
 ;;1843
 ;;21,"47463-0618-30 ")
 ;;1844
 ;;21,"47463-0619-30 ")
 ;;1845
 ;;21,"47463-0620-30 ")
 ;;1846
 ;;21,"49158-0500-01 ")
 ;;1847
 ;;21,"49158-0500-10 ")
 ;;1848
 ;;21,"49158-0501-01 ")
 ;;1849
 ;;21,"49158-0501-10 ")
 ;;1850
 ;;21,"49158-0502-01 ")
 ;;1851
 ;;21,"49158-0502-10 ")
 ;;1852
 ;;21,"49158-0503-01 ")
 ;;1853
 ;;21,"49158-0503-10 ")
 ;;1854
 ;;21,"49848-0008-90 ")
 ;;1855
 ;;21,"49884-0172-09 ")
 ;;1856
 ;;21,"49884-0172-11 ")
 ;;1857
 ;;21,"49884-0173-09 ")
 ;;1858
 ;;21,"49884-0173-11 ")
 ;;1859
 ;;21,"49884-0174-09 ")
 ;;1860
 ;;21,"49884-0174-11 ")
 ;;1861
 ;;21,"49884-0175-09 ")
 ;;1862
 ;;21,"49884-0175-11 ")
 ;;1863
 ;;21,"49884-0185-09 ")
 ;;1864
 ;;21,"49884-0185-11 ")
 ;;1865
 ;;21,"49884-0574-11 ")
 ;;1866
 ;;21,"49884-0575-11 ")
 ;;1867
 ;;21,"49884-0576-11 ")
 ;;1868
 ;;21,"49884-0577-11 ")
 ;;1869
 ;;21,"49884-0658-09 ")
 ;;1870
 ;;21,"49884-0659-09 ")
 ;;1871
 ;;21,"49884-0660-09 ")
 ;;1872
 ;;21,"49884-0661-09 ")
 ;;1873
 ;;21,"49884-0662-09 ")
 ;;1874
 ;;21,"49884-0663-09 ")
 ;;1875
 ;;21,"49884-0664-09 ")
 ;;1876
 ;;21,"49884-0929-01 ")
 ;;1877
 ;;21,"49884-0929-05 ")
 ;;1878
 ;;21,"49884-0930-01 ")
 ;;1879
 ;;21,"49884-0930-05 ")
 ;;1880
 ;;21,"49884-0931-01 ")
 ;;1881
 ;;21,"49884-0931-05 ")
 ;;1882
 ;;21,"49884-0932-01 ")
 ;;1883
 ;;21,"49884-0932-05 ")
 ;;1884
 ;;21,"49884-0952-01 ")
 ;;1885
 ;;21,"49884-0952-05 ")
 ;;1886
 ;;21,"49884-0953-01 ")
 ;;1887
 ;;21,"49884-0953-05 ")
 ;;1888
 ;;21,"49999-0105-00 ")
 ;;1889
 ;;21,"49999-0105-10 ")
 ;;1890
 ;;21,"49999-0105-30 ")
 ;;1891
 ;;21,"49999-0105-60 ")
 ;;1892
 ;;21,"49999-0182-10 ")
 ;;1893
 ;;21,"49999-0182-30 ")
 ;;1894
 ;;21,"49999-0182-60 ")
 ;;1895
 ;;21,"49999-0182-90 ")
 ;;1896
 ;;21,"49999-0183-10 ")
 ;;1897
 ;;21,"49999-0183-30 ")
 ;;1898
 ;;21,"49999-0183-60 ")
 ;;1899
 ;;21,"49999-0183-90 ")
 ;;1900
 ;;21,"49999-0239-00 ")
 ;;1901
 ;;21,"49999-0239-30 ")
 ;;1902
 ;;21,"49999-0239-60 ")
 ;;1903
 ;;21,"49999-0240-00 ")
 ;;1904
 ;;21,"49999-0240-30 ")
 ;;1905
 ;;21,"49999-0287-30 ")
 ;;1906
 ;;21,"49999-0294-30 ")
 ;;1907
 ;;21,"49999-0295-00 ")
 ;;1908
 ;;21,"49999-0295-10 ")
 ;;1909
 ;;21,"49999-0295-30 ")
 ;;1910
 ;;21,"49999-0295-90 ")
 ;;1911
 ;;21,"49999-0305-30 ")
 ;;1912
 ;;21,"49999-0321-00 ")
 ;;1913
 ;;21,"49999-0321-30 ")
 ;;1914
 ;;21,"49999-0321-60 ")
 ;;1915
 ;;21,"49999-0345-00 ")
 ;;1916
 ;;21,"49999-0345-30 ")
 ;;1917
 ;;21,"49999-0469-10 ")
 ;;1918
 ;;21,"49999-0469-30 ")
 ;;1919
 ;;21,"49999-0469-60 ")
 ;;1920
 ;;21,"49999-0469-90 ")
 ;;1921
 ;;21,"49999-0511-30 ")
 ;;1922
 ;;21,"49999-0511-60 ")
 ;;1923
 ;;21,"49999-0543-00 ")
 ;;1924
 ;;21,"49999-0543-30 ")
 ;;1925
 ;;21,"49999-0759-30 ")
 ;;1926
 ;;21,"49999-0761-00 ")
 ;;1927
 ;;21,"49999-0761-30 ")
 ;;1928
 ;;21,"49999-0815-30 ")
 ;;1929
 ;;21,"49999-0815-90 ")
 ;;1930
 ;;21,"49999-0823-00 ")
 ;;1931
 ;;21,"49999-0823-30 ")
 ;;1932
 ;;21,"49999-0823-60 ")
 ;;1933
 ;;21,"49999-0823-90 ")
 ;;1934
 ;;21,"49999-0870-00 ")
 ;;1935
 ;;21,"49999-0870-30 ")
 ;;1936
 ;;21,"49999-0870-60 ")
 ;;1937
 ;;21,"49999-0870-90 ")
 ;;1938
 ;;21,"49999-0871-30 ")
 ;;1939
 ;;21,"49999-0871-90 ")
 ;;1940
 ;;21,"49999-0877-00 ")
 ;;1941
 ;;21,"49999-0877-30 ")
 ;;1942
 ;;21,"49999-0877-90 ")
 ;;1943
 ;;21,"49999-0878-30 ")
 ;;1944
 ;;21,"49999-0878-90 ")
 ;;1945
 ;;21,"49999-0879-00 ")
 ;;1946
 ;;21,"49999-0879-30 ")
 ;;1947
 ;;21,"49999-0880-00 ")
 ;;1948
 ;;21,"49999-0880-30 ")
 ;;1949
 ;;21,"49999-0880-90 ")
 ;;1950
 ;;21,"49999-0924-00 ")
 ;;1951
 ;;21,"49999-0924-10 ")
 ;;1952
 ;;21,"49999-0924-30 ")
 ;;1953
 ;;21,"49999-0924-60 ")
 ;;1954
 ;;21,"49999-0924-90 ")
 ;;1955
 ;;21,"49999-0934-30 ")
 ;;1956
 ;;21,"49999-0940-30 ")
 ;;1957
 ;;21,"49999-0940-90 ")
 ;;1958
 ;;21,"49999-0943-00 ")
 ;;1959
 ;;21,"49999-0943-90 ")
 ;;1960
 ;;21,"49999-0946-30 ")
 ;;1961
 ;;21,"49999-0947-30 ")
 ;;1962
 ;;21,"49999-0948-30 ")
 ;;1963
 ;;21,"49999-0988-30 ")
 ;;1964
 ;;21,"49999-0991-90 ")
 ;;1965
 ;;21,"50268-0109-11 ")
 ;;1966
 ;;21,"50268-0109-15 ")
 ;;1967
 ;;21,"50268-0110-11 ")
 ;;1968
 ;;21,"50268-0110-15 ")
 ;;1969
 ;;21,"50268-0111-11 ")
 ;;1970
 ;;21,"50268-0111-15 ")
 ;;1971
 ;;21,"50268-0112-11 ")
 ;;1972
 ;;21,"50268-0112-15 ")
 ;;1973
 ;;21,"50268-0513-11 ")
 ;;1974
 ;;21,"50268-0513-15 ")
 ;;1975
 ;;21,"50268-0514-11 ")
 ;;1976
 ;;21,"50268-0514-15 ")
 ;;1977
 ;;21,"50268-0515-11 ")
 ;;1978
 ;;21,"50268-0515-15 ")
 ;;1979
 ;;21,"50268-0516-11 ")
 ;;1980
 ;;21,"50268-0516-15 ")
 ;;1981
 ;;21,"50268-0517-11 ")
 ;;1982
 ;;21,"50268-0517-15 ")
 ;;1983
 ;;21,"50268-0518-11 ")
 ;;1984
 ;;21,"50268-0518-15 ")
 ;;1985
 ;;21,"50268-0688-11 ")
 ;;1986
 ;;21,"50268-0688-15 ")
 ;;1987
 ;;21,"50268-0689-11 ")
 ;;1988
 ;;21,"50268-0689-15 ")
 ;;1989
 ;;21,"50268-0690-11 ")
 ;;1990
 ;;21,"50268-0690-15 ")
 ;;1991
 ;;21,"50268-0691-11 ")
 ;;1992
 ;;21,"50268-0691-15 ")
 ;;1993
 ;;21,"50436-5000-01 ")
 ;;1994
 ;;21,"51079-0145-01 ")
 ;;1995
 ;;21,"51079-0145-20 ")
 ;;1996
 ;;21,"51079-0146-01 ")
 ;;1997
 ;;21,"51079-0146-20 ")
 ;;1998
 ;;21,"51079-0192-01 ")
 ;;1999
 ;;21,"51079-0192-03 ")
 ;;2000
 ;;21,"51079-0193-01 ")
 ;;2001
 ;;21,"51079-0193-03 ")
 ;;2002
 ;;21,"51079-0194-01 ")
 ;;2003
 ;;21,"51079-0194-03 ")
 ;;2004
 ;;21,"51079-0256-40 ")
 ;;2005
 ;;21,"51079-0261-40 ")
 ;;2006
 ;;21,"51079-0697-40 ")
 ;;2007
 ;;21,"51079-0698-40 ")
 ;;2008
 ;;21,"51079-0699-40 ")
 ;;2009
 ;;21,"51079-0863-01 ")
 ;;2010
 ;;21,"51079-0863-20 ")
 ;;2011
 ;;21,"51079-0864-01 ")
 ;;2012
 ;;21,"51079-0864-20 ")
 ;;2013
 ;;21,"51079-0950-01 ")
 ;;2014
 ;;21,"51079-0950-20 ")
 ;;2015
 ;;21,"51079-0951-01 ")
 ;;2016
 ;;21,"51079-0951-20 ")
 ;;2017
 ;;21,"51079-0952-01 ")
 ;;2018
 ;;21,"51079-0952-20 ")
 ;;2019
 ;;21,"51079-0953-01 ")
 ;;2020
 ;;21,"51079-0953-20 ")
 ;;2021
 ;;21,"51079-0981-01 ")
 ;;2022
 ;;21,"51079-0981-20 ")
 ;;2023
 ;;21,"51079-0981-30 ")
 ;;2024
 ;;21,"51079-0981-40 ")
 ;;2025
 ;;21,"51079-0981-56 ")
 ;;2026
 ;;21,"51079-0981-60 ")
 ;;2027
 ;;21,"51079-0982-01 ")
 ;;2028
 ;;21,"51079-0982-17 ")
 ;;2029
 ;;21,"51079-0982-19 ")
 ;;2030
 ;;21,"51079-0982-20 ")
 ;;2031
 ;;21,"51079-0982-30 ")
 ;;2032
 ;;21,"51079-0982-40 ")
 ;;2033
 ;;21,"51079-0982-56 ")
 ;;2034
 ;;21,"51079-0982-60 ")
 ;;2035
 ;;21,"51079-0983-01 ")
 ;;2036
 ;;21,"51079-0983-17 ")
 ;;2037
 ;;21,"51079-0983-19 ")
 ;;2038
 ;;21,"51079-0983-20 ")
 ;;2039
 ;;21,"51079-0983-30 ")
 ;;2040
 ;;21,"51079-0983-40 ")
 ;;2041
 ;;21,"51079-0983-56 ")
 ;;2042
 ;;21,"51079-0983-60 ")
 ;;2043
 ;;21,"51079-0984-01 ")
 ;;2044
 ;;21,"51079-0984-20 ")
 ;;2045
 ;;21,"51079-0984-40 ")
 ;;2046
 ;;21,"51138-0013-30 ")
 ;;2047
 ;;21,"51138-0014-30 ")
 ;;2048
 ;;21,"51138-0015-30 ")
 ;;2049
 ;;21,"51138-0016-30 ")
 ;;2050
 ;;21,"51138-0033-30 ")
 ;;2051
 ;;21,"51138-0034-30 ")
 ;;2052
 ;;21,"51138-0035-30 ")
 ;;2053
 ;;21,"51138-0036-30 ")
 ;;2054
 ;;21,"51138-0063-30 ")
 ;;2055
 ;;21,"51138-0064-30 ")
 ;;2056
 ;;21,"51138-0065-30 ")
 ;;2057
 ;;21,"51138-0066-30 ")
 ;;2058
 ;;21,"51138-0067-30 ")
 ;;2059
 ;;21,"51138-0068-30 ")
 ;;2060
 ;;21,"51138-0134-30 ")
 ;;2061
 ;;21,"51138-0135-30 ")
 ;;2062
 ;;21,"51138-0136-30 ")
 ;;2063
 ;;21,"51138-0137-30 ")
 ;;2064
 ;;21,"51138-0138-30 ")
 ;;2065
 ;;21,"51138-0139-30 ")
 ;;2066
 ;;21,"51138-0211-30 ")
 ;;2067
 ;;21,"51138-0212-30 ")
 ;;2068
 ;;21,"51138-0213-30 ")
 ;;2069
 ;;21,"51138-0217-30 ")
 ;;2070
 ;;21,"51138-0217-60 ")
 ;;2071
 ;;21,"51138-0218-30 ")
 ;;2072
 ;;21,"51138-0218-60 ")
 ;;2073
 ;;21,"51138-0219-30 ")
 ;;2074
 ;;21,"51138-0219-60 ")
 ;;2075
 ;;21,"51138-0224-30 ")
 ;;2076
 ;;21,"51138-0225-30 ")
 ;;2077
 ;;21,"51138-0226-30 ")
 ;;2078
 ;;21,"51138-0231-30 ")
 ;;2079
 ;;21,"51138-0232-30 ")
 ;;2080
 ;;21,"51138-0306-10 ")
 ;;2081
 ;;21,"51138-0306-30 ")
 ;;2082
 ;;21,"51138-0307-10 ")
 ;;2083
 ;;21,"51138-0307-30 ")
 ;;2084
 ;;21,"51138-0308-30 ")
 ;;2085
 ;;21,"51138-0309-30 ")
 ;;2086
 ;;21,"51138-0310-30 ")
 ;;2087
 ;;21,"51138-0327-30 ")
 ;;2088
 ;;21,"51138-0328-30 ")
 ;;2089
 ;;21,"51138-0329-30 ")
 ;;2090
 ;;21,"51138-0330-30 ")
 ;;2091
 ;;21,"51138-0331-30 ")
 ;;2092
 ;;21,"51138-0332-30 ")
 ;;2093
 ;;21,"51138-0333-30 ")
 ;;2094
 ;;21,"51138-0334-30 ")
 ;;2095
 ;;21,"51138-0335-30 ")
 ;;2096
 ;;21,"51138-0336-30 ")
 ;;2097
 ;;21,"51138-0348-30 ")
 ;;2098
 ;;21,"51138-0349-30 ")
 ;;2099
 ;;21,"51138-0350-30 ")
 ;;2100
 ;;21,"51138-0351-30 ")
 ;;2101
 ;;21,"51138-0357-30 ")
 ;;2102
 ;;21,"51138-0358-10 ")
 ;;2103
 ;;21,"51138-0358-30 ")
 ;;2104
 ;;21,"51138-0359-30 ")
 ;;2105
 ;;21,"51138-0379-30 ")
 ;;2106
 ;;21,"51138-0380-30 ")
 ;;2107
 ;;21,"51138-0381-30 ")
 ;;2108
 ;;21,"51138-0382-30 ")
 ;;2109
 ;;21,"51138-0392-30 ")
 ;;2110
 ;;21,"51138-0393-30 ")
 ;;2111
 ;;21,"51138-0394-30 ")
 ;;2112
 ;;21,"51138-0395-30 ")
 ;;2113
 ;;21,"51138-0396-30 ")
 ;;2114
 ;;21,"51138-0397-30 ")
 ;;2115
 ;;21,"51138-0398-30 ")
 ;;2116
 ;;21,"51138-0399-30 ")
 ;;2117
 ;;21,"51138-0418-30 ")
 ;;2118
 ;;21,"51138-0419-30 ")
 ;;2119
 ;;21,"51138-0420-30 ")
 ;;2120
 ;;21,"51138-0422-30 ")
 ;;2121
 ;;21,"51138-0424-30 ")
 ;;2122
 ;;21,"51138-0425-30 ")
 ;;2123
 ;;21,"51138-0426-10 ")
 ;;2124
 ;;21,"51138-0426-30 ")
 ;;2125
 ;;21,"51138-0427-10 ")
 ;;2126
 ;;21,"51138-0427-30 ")
 ;;2127
 ;;21,"51138-0432-30 ")
 ;;2128
 ;;21,"51138-0433-30 ")
 ;;2129
 ;;21,"51138-0434-30 ")
 ;;2130
 ;;21,"51138-0435-30 ")
 ;;2131
 ;;21,"51138-0443-30 ")
 ;;2132
 ;;21,"51138-0444-30 ")
 ;;2133
 ;;21,"51138-0476-30 ")
 ;;2134
 ;;21,"51138-0477-30 ")
 ;;2135
 ;;21,"51138-0478-30 ")
 ;;2136
 ;;21,"51138-0493-30 ")
 ;;2137
 ;;21,"51138-0494-30 ")
 ;;2138
 ;;21,"51138-0505-15 ")
 ;;2139
 ;;21,"51138-0505-30 ")
 ;;2140
 ;;21,"51138-0506-30 ")
 ;;2141
 ;;21,"51138-0507-30 ")
 ;;2142
 ;;21,"51138-0508-20 ")
 ;;2143
 ;;21,"51138-0508-45 ")
 ;;2144
 ;;21,"51138-0515-30 ")
 ;;2145
 ;;21,"51138-0516-30 ")
 ;;2146
 ;;21,"51138-0517-30 ")
 ;;2147
 ;;21,"51138-0520-30 ")
 ;;2148
 ;;21,"51138-0521-30 ")
 ;;2149
 ;;21,"51138-0522-30 ")
 ;;2150
 ;;21,"51138-0531-10 ")
 ;;2151
 ;;21,"51138-0531-30 ")
 ;;2152
 ;;21,"51138-0532-10 ")
 ;;2153
 ;;21,"51138-0532-30 ")
 ;;2154
 ;;21,"51138-0533-10 ")
 ;;2155
 ;;21,"51138-0533-30 ")
 ;;2156
 ;;21,"51138-0534-10 ")
 ;;2157
 ;;21,"51138-0534-30 ")
 ;;2158
 ;;21,"51138-0535-10 ")
 ;;2159
 ;;21,"51138-0535-30 ")
 ;;2160
 ;;21,"51138-0536-10 ")
 ;;2161
 ;;21,"51138-0536-30 ")
 ;;2162
 ;;21,"51138-0551-30 ")
 ;;2163
 ;;21,"51138-0552-30 ")
 ;;2164
 ;;21,"51138-0553-30 ")
 ;;2165
 ;;21,"51138-0554-30 ")
 ;;2166
 ;;21,"51138-0555-30 ")
 ;;2167
 ;;21,"51138-0556-30 ")
 ;;2168
 ;;21,"51138-0573-30 ")
 ;;2169
 ;;21,"51138-0574-30 ")
 ;;2170
 ;;21,"51138-0575-10 ")
 ;;2171
 ;;21,"51138-0575-30 ")
 ;;2172
 ;;21,"51660-0140-30 ")
 ;;2173
 ;;21,"51660-0141-90 ")
 ;;2174
 ;;21,"51660-0142-90 ")
 ;;2175
 ;;21,"51660-0143-90 ")
 ;;2176
 ;;21,"51672-4037-01 ")
 ;;2177
 ;;21,"51672-4037-03 ")
 ;;2178
 ;;21,"51672-4038-01 ")
 ;;2179
