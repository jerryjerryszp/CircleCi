# CircleCi
The repo for Circle Ci integration

Original idea:
Set up CircleCi to trigger Device Farm <- QA supports
Setup CircleCi workflow
From fastlane, activate test cases
Getting builds through CircleCi

What to ask ourselves: 
Can we include a test cases when there is a bug fix or new feature

Fastlane:
[sudo] bundle update
To run fastlane: bundle exec fastlane [lane]
On CircleCi, add bundle install as the first build step
To update fastlane: [sudo] bundle update fastlane
Exact steps follow CircleCi setup via link
Sometimes there might be issues with bundle install and missing gems, some gems were manually installed but once they are in the system, fastlane passes
Set locale to UTF-8 in the shell file
We can run tests through fastlane that’s integrated in CircleCi build
Bundle exec fastlane scan
If the XCTest fails, fastlane would fail and the CircleCi build would fail along with it
bundle install --path vendor/bundle 

CircleCi setup:
Inside the working directory, create folder /.circleci
Inside /.circleci folder, create config.yml file 
Trigger CircleCi builds thru pushing to repo
/config.yml file should be following this doc
By default, CircleCi automatically builds a project whenever you push changes, but we want certain branches to skip the CircleCi build such as the dev.vice branch.
Two ways:
Add [ci skip] or [skip ci] tag to the commit message. The tag could be in either title or description of the commit.
Branch level execution thru /.circleci/config.yml
Specify jobs to run with job_name, and when adding the jobs to the
workflow, set branch filters to ignore certain branches or allow only certain 
branches.
One can have multiple jobs in the same workflow, and under workflow, we specify what branches and tags and requirements that the job should be having.
One thing I noticed when I included cocoapods update to the config file, the run time dramatically increased. (with 1 pod in the project it takes up to 10 min, and with 2 pods it takes 11 )
To resolve the Pods taking too long to install issue, fetch CocoaPods specs first and then install the pods. (Should take around 3 min in total for all the pods, which is much faster than just pod install)
