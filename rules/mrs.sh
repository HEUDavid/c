#!/bin/sh

mihomo="/Applications/Clash Verge.app/Contents/MacOS/verge-mihomo"

curl -sSL https://raw.githubusercontent.com/privacy-protection-tools/dead-horse/master/anti-ad-white-for-clash.yaml -o anti-ad-white.yaml
"${mihomo}" convert-ruleset domain yaml anti-ad-white.yaml ./mrs/anti-ad-white.mrs
rm anti-ad-white.yaml

"${mihomo}" convert-ruleset ipcidr yaml dns.yaml ./mrs/dns.mrs
"${mihomo}" convert-ruleset domain yaml direct-domain.yaml ./mrs/direct-domain.mrs
"${mihomo}" convert-ruleset domain yaml proxy-domain.yaml ./mrs/proxy-domain.mrs
"${mihomo}" convert-ruleset domain yaml proxy-white.yaml ./mrs/proxy-white.mrs
"${mihomo}" convert-ruleset domain yaml reject-domain.yaml ./mrs/reject-domain.mrs
