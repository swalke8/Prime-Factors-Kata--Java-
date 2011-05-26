export CLASSPATH=/Users/stephenwalker/Projects/junit/junit-4.9b2.jar:/Users/stephenwalker/Projects/junit/tests:/Users/stephenwalker/Projects/Katas/PrimeFactorsKata/Day_10
JFLAGS = -g
JC = javac
.SUFFIXES: .java .class
.java.class:
	$(JC) $(JFLAGS) $*.java

default: test

classes: $(CLASSES:.java=.class)

CLASSES = \
	PrimeFactors.java \
	PrimeFactorsTest.java

clean:
	$(RM) *.class

test: $(CLASSES)
	java org.junit.runner.JUnitCore PrimeFactorsTest
