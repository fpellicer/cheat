---
tags: [ formatter,processor ]
---
# To pretty print the json:
jq "." < filename.json

# To access the value at key "foo":
jq '.foo'

# To access first list item:
jq '.[0]'

# To access at key "title" inside "bar" index 0, inside key "foo"
jq .foo.bar[0].title

# to slice and dice:
jq '.[2:4]'
jq '.[:3]'
jq '.[-2:]'

# Add two filters separated by comma
jq '.foo .bar[]'
