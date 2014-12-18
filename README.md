## Cartridge for bpmPaaS with Generic Loan Demo

This cartridge provides the **_Red Hat JBoss BPM Suite_** for easy deployment to OpenShift based bpmPaaS with pre-loaded Generic Loan Demo.


Install with one click in xPaaS (bpmPaaS)
-----------------------------------------
After clicking button, ensure `Gear` size is set to `medium`:

[![Click to install OpenShift](http://launch-shifter.rhcloud.com/launch/light/Click to
install.svg)](https://openshift.redhat.com/app/console/application_type/custom?&cartridges[]=https://raw.githubusercontent.com/jbossdemocentral/cartridge-bpmPaaS-generic-loan-demo/master/metadata/manifest.yml&name=bpmpaasgenericloan&gear_profile=medium&initial_git_url=)

Once installed you can use the JBoss BPM Suite logins: 

   * u:erics   p: bpmsuite  (admin)

   * u: alan   p: bpmsuite  (analyst)

   * u: daniel p: bpmsuite (developer)

   * u: ursla  p: bpmsuite (user)

   * u: mary   p: bpmsuite (manager)


Important Note
--------------
You need the ability to setup MEDIUM gears, which is freely available if you [upgrade your account to Bronze here] (https://www.openshift.com/products/pricing). 


Manual setup on OpenShift
-------------------------
Or if you want to use the [rhc command line](https://www.openshift.com/developers/rhc-client-tools-install) type:

    rhc app create -g medium <APP NAME> https://raw.githubusercontent.com/jbossdemocentral/cartridge-bpmPaaS-generic-loan-demo/master/metadata/manifest.yml

For more information on the [Generic Loan Demo see here] (https://github.com/jbossdemocentral/bpms-generic-loan-demo).

Supporting Articles
-------------------

[Red Hat OpenShift bpmPaaS - Generic Loan Demo now available in the Cloud] (http://www.schabell.org/2014/05/redhat-openshift-bpmPaaS-genericloan-demo.html)


Released versions
-----------------

See the tagged releases for the following versions of the product:

- v1.2 - moved to JBoss Demo Central, added one click install button.

- v1.1 - bpmPaaS on OpenShift cartridge, JBoss BPM Suite 6.0.2 and Generic Loan demo installed.

- v1.0 - bpmPaaS on OpenShift cartridge, JBoss BPM Suite 6.0.1 and Generic Loan demo installed.

![Loan Process](https://github.com/jbossdemocentral/bpms-generic-loan-demo/blob/master/docs/demo-images/generic-loan-process.png?raw=true)

![Process & Task Dashboard](https://github.com/jbossdemocentral/bpms-generic-loan-demo/blob/master/docs/demo-images/mock-bpm-data.png?raw=true)

![Digital Sign bpmPaaS](https://github.com/jbossdemocentral/bpms-generic-loan-demo/blob/master/docs/demo-images/bpmpaas-sign.png?raw=true)

![Digital Sign Annoucement](https://github.com/jbossdemocentral/bpms-generic-loan-demo/blob/master/docs/demo-images/announce-sign.png?raw=true)

