#!/bin/sh
echo 'Press CTRL-\ to dump threads in current console.'
vagrant ssh -c "cd reactor && git reset --hard 08b83312 && ./gradlew :reactor-core:test --tests '*StreamIdentityProcessorTests.testIdentityProcessor'"
