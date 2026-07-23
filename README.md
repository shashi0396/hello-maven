# hello-maven
Maven builds &amp; associated cicd's integrations
Maven = Build + Dependency Management + Project Structure


What is Maven?

Maven is a build automation and dependency management tool for Java projects.

In simple words:
Maven helps you build your application and manage libraries automatically.

Why Do We Need Maven?

Before Maven, developers faced problems like:

Without Maven
Manually downloading .jar files
Managing dependencies by hand
Version conflicts (library hell)
Different builds on different machines
Complex compile commands

maven-repo
 ├── pom.xml
 └── src
     ├── main
     │   └── java
     │       └── App.java
     └── test
         └── java
             └── AppTest.java


## Maven Lifecycle - commands
validate
compile
test
package
verify
install
deploy

### mvn clean install

Internally executes:
clean
validate
compile
test
package
verify
install


### Maven Repositories

three types

1. Local repository
~/.m2/repository

2. Central repository
Example: https://repo.maven.apache.org

3. Remote repositories
Example: Nexus Artifactory , JFrog Artifactory

mvn clean
Purpose:
Deletes the previous build artifacts
Removes the target/ directory

Why? Old builds may cause issues.

mvn validate

Purpose:
Checks if the project structure is correct
Verifies pom.xml
Example checks: POM syntax ,required directories

mvn compile

Purpose:

Compiles Java source code

Flow:
src/main/java  →  compiled → target/classes

mvn test

Purpose:
Runs unit tests.
Location:
src/test/java

mvn package

Purpose:
Creates artifact
Examples: jar , war ,ear
Output:
target/myapp-1.0.jar

mvn verify

Purpose:

Runs additional checks
Ensures package is valid

mvn install

Purpose:
Installs artifact to local Maven repository.

Location:

~/.m2/repository

Example stored artifact:

~/.m2/repository/com/demo/app/1.0/app-1.0.jar

mvn deploy
Purpose:
Uploads artifact to remote repository