gwt-maven-archetypes
====================

This project contains Maven archetypes for modular GWT projects.

How to use
----------

### Generate a project from original repo

    mvn archetype:generate \
       -DarchetypeGroupId=net.ltgt.gwt.archetypes \
       -DarchetypeVersion=LATEST \
       -DarchetypeArtifactId=modular-webapp


Alternatively, and/or if you want to hack on / contribute to the archetypes,
you can clone and install the project locally:

    git clone https://github.com/tbroyer/gwt-maven-archetypes.git
    cd gwt-maven-archetypes && mvn clean install

You'll then use the `mvn archetype:generate` command from above, except for the
`-DarchetypeVersion` argument which you'll replace with `HEAD-SNAPSHOT`.

       mvn archetype:generate \
                  -DarchetypeGroupId=studio.volare.gwt.archetypes \
                  -DarchetypeVersion=HEAD-SNAPSHOT \
                  -DarchetypeArtifactId=modular-webapp \
                  -DgroupId=studio.volare.<name> \
                  -DartifactId=<name> \
                  -Dpackage=studio.volare.<name> \
                  -Dmodule-short-name=app \
                  -Dversion=1.0.0 

where <name> is the name of project


### Start the development mode

Change directory to your generated project and issue the following commands:


1. In one terminal window: `mvn -Dmaven.tomcat.port=8080 tomcat7:run -pl *-server -am -Denv=dev `
2. In another terminal window: `mvn gwt:codeserver -pl *-client -am`

