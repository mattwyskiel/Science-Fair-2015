import Foundation

let file = "Science Fair 2015/_fileio/SwiftFile"
let string = "Copyright 2015 Matthew Wyskiel\n\nLicensed under the Apache License, Version 2.0 (the \"License\");\nyou may not use this file except in compliance with the License.\nYou may obtain a copy of the License at\n\n\thttp://www.apache.org/licenses/LICENSE-2.0\n\nUnless required by applicable law or agreed to in writing, software\ndistributed under the License is distributed on an \"AS IS\" BASIS,\nWITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.\nSee the License for the specific language governing permissions and\nlimitations under the License."

if let dir : NSString = NSSearchPathForDirectoriesInDomains(NSSearchPathDirectory.DocumentDirectory, NSSearchPathDomainMask.AllDomainsMask, true).first {
    let path = dir.stringByAppendingPathComponent(file);

    //writing
    do {
        try string.writeToFile(path, atomically: false, encoding: NSUTF8StringEncoding)
        print("file written!")
    }
    catch {
      fatalError("Error!")
    }

    //reading
    do {
        let textread = try NSString(contentsOfFile: path, encoding: NSUTF8StringEncoding)
        print("file read!")
        print(textread)
        print("done!")
    }
    catch {
      fatalError("Error!")
    }
}
