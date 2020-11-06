# berdcsc

`berdcsc` is a package with conventions and standards for statistical analysis and modeling, data visualization and reporting. This package is developed at the [UC Irvine Institute for Clinical & Translational Science: Biostatistcs, Epideiemology & Research Design](https://www.icts.uci.edu/services/berd1.php) and the [UC Irvine Center for Statistical Consulting](https://statconsulting.uci.edu/).

## Installation

Run the below command within R or RStudio

```
devtools::install_github("antchau/berdcsc")
```

Please note that installing the package downloads the package from GitHub and saves it in your local computer. After installing, you can load and attach the package with `library(berdcsc)`. 

## Contributing

First, you will need a local copy of the package. You can clone the package with:

```
git clone https://github.com/antchau/berdcsc.git
```

Run the above to create a new folder with all the files in the package. From there, you can add functions, write tests, author documentation and vignettes, etc. It is advisable to create a new branch to make your changes. Then, you can submit a pull request to integrate your branch into the `main` branch.

## Style Guideline

`berdcsc` follows the style guidelines outlined by the [Tidyverse Style Guideline](https://style.tidyverse.org/)

## Upcoming features

The table summarizes upcoming features in development for release. Features are grouped into the following categories: code, documentation, and templates. 

Features in the code category focus on providing functions to assist with common programming and scripting tasks done throughout a project. The functions can fall under a few categories such as data management, data visualization, and theming/branding functions. Functions are tested beforehand to ensure correctness and robustness.

Features in the documentation category focus on providing documentation to illustrate how to use various aspects of the package. The documentation serves to allow users to use the package to improve their workflow and producitivity.

Lastly, features in the templates cateogry provide custom R Markdown templates to standardize any artifacts and deliverables sent to clients. These templates provide the structure formatting for a document. The content is filled out by the end user.


|             Feature             | Type     | Priority | Timeframe          |
|:-------------------------------:|----------|----------|--------------------|
| R Reporting Template            | Template | High     | Now - Nov 16, 2020 |
| Stata Reporting Template        | Template | High     | Now - Nov 16, 2020 |
| ggplot2 custom theming function | Code     | High     | Now - Nov 16, 2020 |
| Custom table theming function   | Code     | High     | Now - Nov 16, 2020 |
