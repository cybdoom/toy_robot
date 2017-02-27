# Solution structure

Base executable is ruby simulator.rb file in the root.
It should be executed as regular ruby script. At least one command line argument is required to run simpulator successfully. It should be a string with path to input instuctions file.
So something like this is rather legal (being in the root folder):

> ruby simulator.rb ./test/examples/2.txt

# Bundling things up

To configure basic environment for running tests or production code you will need to run something like:

> bundle install/

meaning that You are in the root folder and You have Bundle gem installed (http://bundler.io/)


# Testing

We are using RSpec gem in this example to fix basic exected behavior of our new system
To run some spec follow the common rspec syntax like

> rspec
