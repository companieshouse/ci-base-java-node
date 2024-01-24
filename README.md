# ci-cdxgen-image

A Docker image containing Java and Node. Mainly for use in Concourse when both runtimes are required. 
Possible use case is to run [cdxgen](https://github.com/CycloneDX/cdxgen) to create SBOM files (in CycloneDX format) to upload to [DependencyTrack](https://dependencytrack.org/).

cdxgen is a [utility written in Node](https://www.npmjs.com/package/@cyclonedx/cdxgen) and as such requires a Node runtime environment 
(ideally the latest one available) to run. 

To analyse any other Node project, no other runtimes would therefore be needed. 

In any case, to analyse projects written in Java cdxgen further requires both a Java runtime and, for pom.xml, maven.

 - cdxgen is known to freeze with Java 8 or 11, so Java >= 21 is recommended.
