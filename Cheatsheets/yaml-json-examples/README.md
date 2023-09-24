

## YAML
1. YAML stands for Yet Another Markup Language
2. YAML is a human-readable data serialization language.
3. YAML files use indentation to denote structure.
4. Strings do not need to be quoted, but it is recommended.
5. To represent a list, use hyphens (-) to denote each item.
6. To represent a map, use colons (:) to separate keys from values.
7. To denote a comment, use the # symbol.
8. To denote a null or empty value, use the null keyword or simply leave the value empty.
9. To denote a boolean value, use true or false.
10. To denote a number, do not enclose it with quotes or any other characters.
11. To denote a document break, use three hyphens (---) on a line by themselves.


## JSON
1. JSON stands for JavaScript Object Notation. 
2. JSON is a text-based, human-readable format for representing structured data. 
3. JSON files use key-value pairs to represent data.
4. Strings must be enclosed in double quotes (").
5. To represent a list, use square brackets ([ ]) to denote each item.
6. To represent a map, use colons (:) to separate keys from values.
7. To denote a null or empty value, use the null keyword.
8. To denote a boolean value, use true or false.
9. To denote a number, do not enclose it with quotes or any other characters.

#### JQ - Tool for processing JSON on the command line
example
```
cat example.json | jq ".data[0].map.nestedMap.key3[1]"
cat aws_cli_output.json | jq ".Buckets[0].VersioningConfiguration.Status"
```