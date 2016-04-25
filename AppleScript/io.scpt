set sampleText to "Copyright 2015 Matthew Wyskiel\n\nLicensed under the Apache License, Version 2.0 (the \"License\");\nyou may not use this file except in compliance with the License.\nYou may obtain a copy of the License at\n\n\thttp://www.apache.org/licenses/LICENSE-2.0\n\nUnless required by applicable law or agreed to in writing, software\ndistributed under the License is distributed on an \"AS IS\" BASIS,\nWITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.\nSee the License for the specific language governing permissions and\nlimitations under the License."
on write_to_file(this_data, target_file, append_data) -- (string, file path as string, boolean) - code from a StackOverflow answer
    try
        set myFile to open for access target_file with write permission
        write "hello world" to myFile
        close access myFile
        return true
    on error
        try
            close access file target_file
        end try
        return false
    end try
end write_to_file

write_to_file(sampleText, "/users/matthewwyskiel/Documents/Science Fair 2015/_fileio/AppleScriptFile", true)
log "file written!"

set readText to (read POSIX file "/users/matthewwyskiel/Documents/Science Fair 2015/_fileio/AppleScriptFile")
log "file read!"

log readText
log "done!"
