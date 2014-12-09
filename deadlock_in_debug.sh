#!/bin/sh
vagrant ssh -c "cd reactor && git reset --hard 08b83312 && ./gradlew :reactor-core:test --tests '*StreamIdentityProcessorTests.testIdentityProcessor'"
