//
//  ContentView.swift
//  meeting-five
//
//  Created by Ayush Sagar on 10/21/25.
//

import SwiftUI

// Call the function in a view

struct ContentView: View {
    var body: some View {
        VStack {
            Button("decode") {
                decode()
            }
        }
    }
}


// Define the JSON

let json = """
{
  "orderId": 8765,
  "customer": {
    "id": 301,
    "name": "Jordan Lee",
    "email": "jordan@example.com"
  },
  "items": [
    {
      "productId": 1001,
      "name": "Notebook",
      "quantity": 2,
      "price": 5.99
    },
    {
      "productId": 1002,
      "name": "Pen Set",
      "quantity": 1,
      "price": 9.49
    }
  ],
  "totalAmount": 21.47
}
"""

// Create your structs here
struct Customer: Decodable {
    let id: Int
    let name: String
    let email: String
}

struct Item: Decodable {
    let productId: Int
    let name: String
    let quantity: Int
    let price: Double
}

struct Order: Decodable {
    let orderId: Int
    let customer: Customer
    let items: [Item]
    let totalAmount: Double
}

// (Hint: you'll need at least three: Order, Customer, and Item)

func decode() {
    let data = json.data(using: .utf8)!
    
    // Decode the JSON data
    let decodeOrder: Order = try! JSONDecoder().decode(Order.self, from: data)
    
    // Print the decoded object
    print(decodeOrder)
}

#Preview {
    ContentView()
}
