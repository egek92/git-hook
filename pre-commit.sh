#!/bin/sh

echo "Running static analysis..."

# Format code using KtLintFormat, run Detekt and KtLint for static analysis
./gradlew app:ktlintFormat app:detektCheck app:ktlint --daemon

status=$?

if [ "$status" = 0 ] ; then
    echo "Static Analysis: Hata Bulunamadı."
    exit 0
else
    echo 1>&2 "Static Analysis: Hatalar Bulundu!"
    exit 1
fi