These are some chef recipes [Cloud City Deveopment](http://www.cloudcitydevelopment.com) has found useful to supplement [pivotal_workstation](https://github.com/pivotal/pivotal_workstation) for use with [soloist](https://github.com/mkocher/soloist).

This is primarily meant to be included as a git submodule next to your other cookbooks. For development and internal use it's set-up so if it lives in a sibling folder of pivotal_workstation (and possibly later opscode cookbooks if I need any) then it can be run on it's own via soloist.

If you run it on it's own, put it in an isolated folder (I made the soloistrc check ../ for cookbooks) next to pivotal_workstation

* gem install bundler
* bundle (I checked in a .bundle/config with binstubs, so if ./bin is in your path, which it will be after the first run)
* soloist

If you check the docs for soloist you will see that the [soloistrc](https://github.com/timocratic/ccd_workstation/blob/master/soloistrc) file determines which recipes get run. ;)