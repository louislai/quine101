import Foundation
let data = [
"=== Swift Codes ===",
"import Foundation",
"let data = [",
"]",
"func escape(input: String) -> String {",
"    var str = \"\"",
"    for c in input.characters {",
"        switch c {",
"        case \"\\\\\": str += \"\\\\\\\\\"",
"        case \"\\\"\": str += \"\\\\\\\"\"",
"        case \"\\n\": str += \"\\\\n\"",
"        default:   str += String(c)",
"        }",
"    }",
"    return str",
"}",
"for i in 24..<30 {",
"  print(data[i])",
"}",
"print((data.map({\"@\\\"\\(escape($0))\\\"\"})+[\"NULL\"]).joinWithSeparator(\",\\n\"))",
"for i in 30..<47 {",
" print(data[i])",
"}",
"=== Objective C Codes ===",
"#import \"Foundation/Foundation.h\"",
"#define NSLog(FORMAT, ...) printf(\"%s\\n\", [[NSString stringWithFormat:FORMAT, ##__VA_ARGS__] UTF8String])",
"int main (int argc, const char * argv[])",
"{",
"  NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];",
" NSArray *data = [NSArray arrayWithObjects: ",
"];",
"for (int i = 1; i < 3; i++) {",
"  NSLog(@\"%@\", data[i]);",
"}",
"for (int i = 0; i < [data count]; i++) {",
"  if (i != [data count] - 1) {",
"    NSLog(@\"\\\"%@\\\",\", [[[data[i] stringByReplacingOccurrencesOfString:@\"\\\\\" withString:@\"\\\\\\\\\"] stringByReplacingOccurrencesOfString:@\"\\n\" withString:@\"\\\\n\"] stringByReplacingOccurrencesOfString:@\"\\\"\" withString:@\"\\\\\\\"\"]);",
"  } else {",
"    NSLog(@\"\\\"%@\\\"\", [[[data[i] stringByReplacingOccurrencesOfString:@\"\\\\\" withString:@\"\\\\\\\\\"] stringByReplacingOccurrencesOfString:@\"\\n\" withString:@\"\\\\n\"] stringByReplacingOccurrencesOfString:@\"\\\"\" withString:@\"\\\\\\\"\"]);",
" }",
"}",
"for (int i = 3; i < 23; i++) {",
"  NSLog(@\"%@\", data[i]);",
"}",
"[pool drain];",
"return 0;",
"}"
]
func escape(input: String) -> String {
    var str = ""
    for c in input.characters {
        switch c {
        case "\\": str += "\\\\"
        case "\"": str += "\\\""
        case "\n": str += "\\n"
        default:   str += String(c)
        }
    }
    return str
}
for i in 24..<30 {
  print(data[i])
}
print((data.map({"@\"\(escape($0))\""})+["NULL"]).joinWithSeparator(",\n"))
for i in 30..<47 {
 print(data[i])
}

