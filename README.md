# BatchJobs

## Core features of BatchJobs
* Create, submit and control [R](http://www.r-project.org/) jobs on batch systems
* Supported batch systems include Torque/PBS, SGE, SLURM and LSF
* Provides the functional programming tools Map, Reduce and Filter to operate on the cluster
* Reduce or Filter results of batch jobs into R data structures
* Further Map and Reduce results from previous jobs as batch jobs
* Optional mail sending using [sendmailR](http://cran.r-project.org/web/packages/sendmailR) after job completion
* Query status of jobs and display log files inside R
* Chunk small, fast tasks together to one batch job
* Possibility to write your own simple cluster interface if your architecture is not supported
* The [BatchExperiments](https://github.com/tudo-r/Batchexperiments) package extends this package with functionality required for comprehensive computer experiments
  and simulation studies.


## Quickstart and Documentation
To install the latest stable release from CRAN:
```splus
install.packages("BatchJobs")
```
You can install the development version using the [devtools](http://cran.r-project.org/web/packages/devtools) package:
```splus
library(devtools)
install_github("BatchJobs", username="tudo-r")
```
Sometimes it might be required to update BatchJobs' dependencies as well.
If you encounter errors during installation, try upgrading by [BBmisc](https://github.com/berndbischl/BBmisc) and [fail](https://github.com/mllg/fail) before filing a bug report:
```splus
library(devtools)
install_github("BBmisc", username="berndbischl")
install_github("fail", username="mllg")
```
A fresh installation defaults to a local execution mode.
Proceed to [Configuration](../../wiki/Configuration) to set up cluster execution.

Currently the best introduction to the package is our [technical report](http://sfb876.tu-dortmund.de/PublicPublicationFiles/bischl_etal_2012a.pdf).
For more detailed information on the functions please use the [R documentation](http://tudo-r.github.io/BatchJobs/).

We also have a [mailing list](http://groups.google.com/group/batchjobs).

[![Build Status](https://travis-ci.org/tudo-r/BatchJobs.png)](https://travis-ci.org/tudo-r/BatchJobs)
