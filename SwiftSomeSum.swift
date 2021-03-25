#if os(macOS) || os(iOS)
import Darwin
#elseif os(Linux) || CYGWIN
import Glibc
#endif


let N: UInt64 = 60_000
let M: Double = 3

func some_sum(n: UInt64,m: Double) -> Int {
	var s = 0
	for k in 1...n {
		s += Int(pow(Double(k),m))
	}
	return s
}

print(some_sum(n: N, m: M))

var s_3 = pow(Double(N*(N+1)),2)/4 ; print(s_3)

// Result compiled and executed in 2.099 sec(s) // Version 5.1
// 3240108000900000000
// 3.2401080009e+18