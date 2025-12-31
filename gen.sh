#!/bin/sh

cd ./rules

mihomo="/Applications/Clash Verge.app/Contents/MacOS/verge-mihomo"

curl -sSL https://raw.githubusercontent.com/privacy-protection-tools/dead-horse/master/anti-ad-white-for-clash.yaml -o anti-ad-white.yaml
"${mihomo}" convert-ruleset domain yaml anti-ad-white.yaml ./mrs/anti-ad-white.mrs
rm anti-ad-white.yaml

for file in *domain.yaml; do
  name=$(basename "$file" .yaml)
  "${mihomo}" convert-ruleset domain yaml "./$file" "./mrs/${name}.mrs"
done

for file in *cidr.yaml; do
  name=$(basename "$file" .yaml)
  "${mihomo}" convert-ruleset ipcidr yaml "./$file" "./mrs/${name}.mrs"
done
