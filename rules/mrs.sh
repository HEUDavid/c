#!/bin/sh

mihomo="/Applications/Clash Verge.app/Contents/MacOS/verge-mihomo"

curl -sSL https://raw.githubusercontent.com/privacy-protection-tools/dead-horse/master/anti-ad-white-for-clash.yaml -o anti-ad-white.yaml
"${mihomo}" convert-ruleset domain yaml anti-ad-white.yaml anti-ad-white.mrs
rm anti-ad-white.yaml

"${mihomo}" convert-ruleset ipcidr yaml dns.yaml dns.mrs
