//
//  main.swift
//  큰 수 만들기
//
//  Created by JongHoon on 2023/01/18.
//


let N = Int(readLine()!)!
var tree: [[Int]] = Array(repeating: [], count: N+1)
var parents: [Int] = Array(repeating: 0, count: N+1)
var isVisited: [Bool] = Array(repeating: false, count: N+1)

for _ in 0..<N-1 {
    let input = readLine()!
        .split(separator: " ")
        .map { Int($0)! }

    tree[input[0]].append(input[1])
    tree[input[1]].append(input[0])
}

func bfs(node: Int) {
    isVisited[node] = true
    var queue: [Int] = [node]

    while !queue.isEmpty {
        let n = queue.removeFirst()
        print(n)
        let next = tree[n]
        for i in next {
            if isVisited[i] == true { continue }
            isVisited[i] = true
            parents[i] = n
            queue.append(i)
        }
    }
}

bfs(node: 1)
print(tree)

for i in 2..<N+1 {
    print(parents[i])
}
