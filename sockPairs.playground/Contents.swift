import UIKit



typealias SockPairsCount = Int
typealias SockCount = Int

func sockPairs(sockes:String)-> SockPairsCount {
    var sockPairsCount = 0
    var dic:[Character:(SockCount,SockPairsCount)] = [:]
    sockes.forEach { (s) in
        if let _ = dic.index(forKey: s)  {
            dic[s]!.0 += 1
            sockPairsCount -= dic[s]!.1
            dic[s]!.1 = dic[s]!.0 / 2
            sockPairsCount += dic[s]!.1
        }else {
            dic[s] = (1,0)
        }
    }
    
   return sockPairsCount
}





