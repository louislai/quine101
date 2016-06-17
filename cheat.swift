// File is named cheat.swift
import Foundation
let fm = NSFileManager.defaultManager()
let path = fm.currentDirectoryPath.stringByAppendingString("/cheat.swift")
let data = try! String(contentsOfFile: path)
print(data, terminator: "")
