struct SwiftyMetrics {
    public func memoryMetrics() {
        let memory = Memory()
        func getMemory() -> UInt64{
            memory.getMemory()
        }
        func startMemory() {
            memory.startMemory()
        }
        func endMemory() -> UInt64{
            memory.endMemory()
        }
    }
    public class timeMetrics() {
        let timer = Timer()
        func startTimer(){
            timer.startTimer()
        }
        func endTimer() -> Double{
            timer.endTimer()
        }
    }
}
