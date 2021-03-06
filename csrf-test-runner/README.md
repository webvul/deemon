# CSRF-TEST-RUNNER

The csrf test runner executes the tests generated by Testermanager and generates (similiar to the trace acquisition) data split between the http data and 
the xdebug dumps that later on still need to be analyzed. We provide a script in the main folder to ease the use of the tool as it requires a running
instance of mosgi and consequently correct set-up procedure can become complicated for the uninitiated. Resulting databases are created in the `~/.vilanoo/`
folder.


The bash script to run the tests behaves and feels similar to the `./run-test.sh` script.

```./run-csrf-test.sh <vm-name> <vm-ip> <test-name> <start-state-name> <csrf-test-db> <mosgi-port> <selenese-login-tc> <firefox-path>
```

Using the python program itselve is slightly unwieldy as it requires a fair amount of derivative information.


```test-runner.py [-h] [-b IP] -t INT [-p IP[:PORT]] [-M IP] [-P PORT]
                      [--no-mosgi] [--replace-cookie] -d PATH -S PATH
                      [-l PATH] [--selenese-args ARGS] [-w SEC]

CSRF test runner

optional arguments:
  -h, --help            show this help message and exit
  -b IP, --base-url IP  Base URL for the generation of testcases
  -t INT, --test_id INT
                        ID of the test to run
  -p IP[:PORT], --proxy IP[:PORT]
                        HTTP Proxy, e.g., 127.0.0.1:8080
  -M IP, --mosgi-address IP
                        MOSGI listening address.
  -P PORT, --mosgi-port PORT
                        MOSGI TCP port.
  --no-mosgi            By default, MOSGI is enabled. Use this option to
                        disable MOSGI.
  --replace-cookie      Replace test cases cookies with freshes. When not
                        used, test cases cookies are updated.
  -d PATH, --database PATH
                        Database containing test cases
  -S PATH, --selenese PATH
                        Specify the Selenese test case to login
  -l PATH, --selenese-log PATH
                        the file which is the selense log for the current run
  --selenese-args ARGS  Use this parameter to pass additional CLI arguments to
                        selenese-runner-java
  -w SEC, --wait SEC    Waiting time in seconds before the next Selenese
                        command is executed.```
