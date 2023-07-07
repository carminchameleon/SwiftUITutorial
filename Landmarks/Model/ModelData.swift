//
//  ModelData.swift
//  Landmarks
//
//  Created by Eunji Hwang on 2023/07/07.
//

import Foundation


var landmarks: [Landmark] = load("landmarkData.json")

// codable한 것만 리턴할 수 있다.
func load<T: Decodable>(_ filename: String) -> T {
    let data: Data
    
    // 앱의 메인 번들에서 주어진 이름과 같은 파일을 로드하는 것
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        fatalError("Couldn't find \(filename) in main bundle")
    }
    
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:  \n\(error)")
    }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}
