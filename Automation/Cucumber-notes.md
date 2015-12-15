#Intro to Cucumber

##What is cucumber?
Executable, human-readable specifications

*We need to make sure the human readable aspect has a point.

##Cucumber
env.rb
require

#Tags

###Tags can be used for

* Running specific sets of scenarios.
* Mapping scenarios to JIRA tickets etc.
* Handling setup and teardown.
* Aiding development

####Example tags

|Tag| Purpose |
-----|---------
|@wip|Work in progress|
|@not_started|Tag any feature or scenarios that you havent started working on|
|@failing|Test code is correct, but is failing due to a bug in the application.|
|@manual|A feature or scenario that is manually tested. This should only be set once an attempt has been made to automate te test|
|@smoke|core features and tests for brittle parts of the system
|@jira-abc123|used as a reference to a particular JIRA ticekt. Any feature or scenario can be tagged, but @failing tests must also be tagged with a jira tag|
@slow|Any features that are nccassay and should be run in full coverage but are very slow to run routinely. Scenarios with complex UI-driven setup/teardowns are a good example|

##more on hooks :fish:
```ruby
Before do |scenario|
puts scenario.name
end

After do |scenario|
puts "Oh no!" if scenario.failed?
end
```
##Bad cucumbers

* Flaky/Flickerign scenarios - a bug in the system that occasionally makes the code work and the rest it doesnt work or vice-versa
* Brittle Scenarios - things that break easily
* Slow Scenarios - optimise execution speed
* Bored Stakeholders 

###Leaky Scenarios
Each scneario must make sense and must be able to run independaly of other scenarios

###Race Conditions :flag:
When conditions try to race eachother

###Levels

**Expressing the systems Behaviour**

###Imperative vs Declarative 
pg 90 & 94

###ubiquiotius language