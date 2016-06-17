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
"func printObjc() {",
"   for i in 40..<48 {",
"       print(data[i])",
"   }",
"   print((data.map({\"@\\\"\\(escape($0))\\\"\"})+[\"NULL\"]).joinWithSeparator(\",\\n\"))",
"   for i in 48..<84 {",
"       print(data[i])",
"   }",
"}",
"func printSwift() {",
"   for i in 1..<3 {",
"       print(data[i])",
"   }",
"   print(data.map({\"\\\"\\(escape($0))\\\"\"}).joinWithSeparator(\",\\n\"))",
"   for i in 3..<39 {",
"       print(data[i])",
"   }",
"}",
"if Process.arguments.count > 1 {",
"   printObjc()",
"} else {",
"   printSwift()",
"}",
"=== Objective C Codes ===",
"#import \"Foundation/Foundation.h\"",
"#define NSLog(FORMAT, ...) printf(\"%s\\n\", [[NSString stringWithFormat:FORMAT, ##__VA_ARGS__] UTF8String])",
"void printSwift(NSArray *);",
"void printObjc(NSArray *);",
"int main (int argc, const char * argv[])",
"{",
"  NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];",
" NSArray *data = [NSArray arrayWithObjects: ",
"];",
"  if (argc > 1) {",
"    printSwift(data);",
"  } else {",
"    printObjc(data);",
"  }",
"[pool drain];",
"return 0;",
"}",
"void printSwift(NSArray *data) {",
"    for (int i = 1; i < 3; i++) {",
"    NSLog(@\"%@\", data[i]);",
"    }",
"    for (int i = 0; i < [data count]; i++) {",
"      if (i != [data count] - 1) {",
"        NSLog(@\"\\\"%@\\\",\", [[[data[i] stringByReplacingOccurrencesOfString:@\"\\\\\" withString:@\"\\\\\\\\\"] stringByReplacingOccurrencesOfString:@\"\\n\" withString:@\"\\\\n\"] stringByReplacingOccurrencesOfString:@\"\\\"\" withString:@\"\\\\\\\"\"]);",
"      } else {",
"        NSLog(@\"\\\"%@\\\"\", [[[data[i] stringByReplacingOccurrencesOfString:@\"\\\\\" withString:@\"\\\\\\\\\"] stringByReplacingOccurrencesOfString:@\"\\n\" withString:@\"\\\\n\"] stringByReplacingOccurrencesOfString:@\"\\\"\" withString:@\"\\\\\\\"\"]);",
"      }",
"    }",
"    for (int i = 3; i < 39; i++) {",
"      NSLog(@\"%@\", data[i]);",
"    }",
"}",
"void printObjc(NSArray *data) {",
"    for (int i = 40; i < 48; i++) {",
"    NSLog(@\"%@\", data[i]);",
"    }",
"    for (int i = 0; i < [data count]; i++) {",
"      NSLog(@\"@\\\"%@\\\",\", [[[data[i] stringByReplacingOccurrencesOfString:@\"\\\\\" withString:@\"\\\\\\\\\"] stringByReplacingOccurrencesOfString:@\"\\n\" withString:@\"\\\\n\"] stringByReplacingOccurrencesOfString:@\"\\\"\" withString:@\"\\\\\\\"\"]);",
"    }",
"    NSLog(@\"NULL\");",
"    for (int i = 48; i < 84; i++) {",
"      NSLog(@\"%@\", data[i]);",
"    }",
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
func printObjc() {
   for i in 40..<48 {
       print(data[i])
   }
   print((data.map({"@\"\(escape($0))\""})+["NULL"]).joinWithSeparator(",\n"))
   for i in 48..<84 {
       print(data[i])
   }
}
func printSwift() {
   for i in 1..<3 {
       print(data[i])
   }
   print(data.map({"\"\(escape($0))\""}).joinWithSeparator(",\n"))
   for i in 3..<39 {
       print(data[i])
   }
}
if Process.arguments.count > 1 {
   printObjc()
} else {
   printSwift()
}
