dirs=( 'Hello World' 'Values' 'Variables' 'Constants' 'For' 'If-Else' 'Switch' 'Arrays' 'Slices' 'Maps' 'Range' 'Functions' 'Multiple Return Values' 'Variadic Functions' 'Closures' 'Recursion' 'Pointers' 'Strings and Runes' 'Structs' 'Methods' 'Interfaces' 'Embedding' 'Generics' 'Errors' 'Goroutines' 'Channels' 'Channel Buffering' 'Channel Synchronization' 'Channel Directions' 'Select' 'Timeouts' 'Non-Blocking Channel Operations' 'Closing Channels' 'Range over Channels' 'Timers' 'Tickers' 'Worker Pools' 'WaitGroups' 'Rate Limiting' 'Atomic Counters' 'Mutexes' 'Stateful Goroutines' 'Sorting' 'Sorting by Functions' 'Panic' 'Defer' 'Recover' 'String Functions' 'String Formatting' 'Text Templates' 'Regular Expressions' 'JSON' 'XML' 'Time' 'Epoch' 'Time Formatting - Parsing' 'Random Numbers' 'Number Parsing' 'URL Parsing' 'SHA1 Hashes' 'Base64 Encoding' 'Reading Files' 'Writing Files' 'Line Filters' 'File Paths' 'Directories' 'Temporary Files and Directories' 'Testing and Benchmarking' 'Command-Line Arguments' 'Command-Line Flags' 'Command-Line Subcommands' 'Environment Variables' 'HTTP Clients' 'HTTP Servers' 'Context' 'Spawning Processes' 'Execing Processes' 'Signals' 'Exit' )
RED='\033[0;31m'
NC='\033[0m' 



for i in "${!dirs[@]}"                    #iterrating on dirs array
do
    
    dirname="$i--${dirs[$i]// /-}"
    echo -e "Creating --> ${RED}$dirname${NC}" 
    mkdir "$dirname"                     #Creating directories
    echo -e "Creating --> main.go"
    touch "$dirname/main.go"             #Creating main.go in each directory
    base="package main\n\nimport \"fmt\"\n\nfunc main(){\n\tfmt.Println(\"${dirs[$i]}\")\n}"
    echo -e $base > "$dirname/main.go"
done
