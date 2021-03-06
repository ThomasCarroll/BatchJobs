library(BatchJobs)
source("helpers.R")

runTests = function(staged.queries) {
  conf = BatchJobs:::getBatchJobsConf()
  conf$mail.start = conf$mail.done = conf$mail.error = "none"
  conf$staged.queries = staged.queries
  
  conf$cluster.functions = makeClusterFunctionsInteractive()
  doExternalTest(whitespace=FALSE)
  
  conf$cluster.functions = makeClusterFunctionsLocal()
  doExternalTest(whitespace=FALSE)
  
  conf$cluster.functions = makeClusterFunctionsLSF("~bischl/batchjobs/BatchJobs/examples/cfLSF/simple.tmpl")
  doExternalTest(whitespace=FALSE, sleep.master=15)
  doKillTest()
}

runTests(staged.queries=FALSE)
runTests(staged.queries=TRUE)