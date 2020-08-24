import delimited "https://raw.githubusercontent.com/korenmiklos/dc-economics-data/master/data/web/gdp.csv", clear
reshape long gdp, i(countrycode) j(year)
label variable gdp "gdp_per_capita"
rename gdp gdp_per_capita
save "derived/gdp_per_capita.dta"
