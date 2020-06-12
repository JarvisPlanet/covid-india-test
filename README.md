# Automation Test for Covid19 REST API using ruby rspec


## Introduction
---
This repo contains automation tests for one of the REST API which is opensource.

The automation tests are in the spec files:
	state_covid_spec.rb
	travel_history_spec.rb



## Steps to run the automation tests
---
* Clone https://github.com/JarvisPlanet/covid-india-test and https://github.com/JarvisPlanet/core-library in the same workspace
* In terminal window go to covid-india-test path and run the below command

	* bundle install (only for first time to install the gems)
	* bundle exec rake test (To run all the test cases in every spec file)
	* bundle exec rake test SPEC=SPEC=spec/integration/state_covid_spec.rb (To run only that particular spec file)
	* bundle exec rake test SPEC=spec/integration/state_covid_spec.rb:15 (To run a particular test case in that spec file)
