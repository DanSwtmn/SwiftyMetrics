# SwiftyMetrics

CocoaPod and Swift Package for getting time and memory data.

## Usage
---
First : `import SwiftyMetrics`
### Timer
To start the timer call the `.startTimer()`
To end the timer call the  `.endTimer()`. This will return a Double with the total time.
### Memory
You can either get a memory difference from the start and end of your function, or just
get the total amount of used memory.

For memory difference, at the begining of your functon call, `.startMemory()`.
At the end of the function call `.endMemory()`. This will return a UInt64.

To just get the current memory use jsut call `.getMemory()`. This will return an UInt64.

## Install
---
### Swift Package Manager
Add this to your Package.swift file under dependencies:
`.Package(url: "https://github.com/DanSwtmn/SwiftyMetrics.git", majorVersion: 1),`
### CocoaPod
`pod 'SwiftyMetrics'`
