local indicator gdp
local long_name gdp_per_capita
local label "gdp_per_capita_(USD)"

import delimited "https://raw.githubusercontent.com/korenmiklos/dc-economics-data/master/data/web/`indicator'.csv", varnames(1) bindquotes(strict) encoding("utf-8") clear
reshape long `indicator', i(countrycode) j(year)
label variable `indicator' "`label'"
rename `indicator' `long_name'
save "data/derived/gdp_per_capita.dta", replace
