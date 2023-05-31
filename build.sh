#!/bin/zsh

cargo build --release -p wgsl_analyzer

cp target/release/wgsl_analyzer editors/code/out/

(cd editors/code && npm run package -- --target darwin-arm64 -o wgsl_analyzer-darwin-arm64.vsix)

# Here's how the *.vsix file was installed:
#  (cd editors/code && code --install-extension wgsl_analyzer-darwin-arm64.vsix)
