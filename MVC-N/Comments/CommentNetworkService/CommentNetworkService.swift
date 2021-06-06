//
//  CommentNetworkService.swift
//  MVC-N
//
//  Created by Nikita on 06.06.21.
//

import Foundation

class CommentNetworkService {
    private init() { }
    
    static func getComments(compeletion: @escaping(GetCommentResponse) -> ()) {
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts/1/comments") else { return }
        
        NetworkService.shared.getData(url: url) { json in
            do {
                let response = try GetCommentResponse(json: json)
                compeletion(response)
            } catch {
                print(error)
            }
        }
    }
}
