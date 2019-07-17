extension String {
    
    public func snake_cased() -> String? {
        let pattern = "([a-z0-9])([A-Z])"
        
        let regex = try? NSRegularExpression(pattern: pattern, options: [])
        let range = NSRange(location: 0, length: count)
        return regex?
            .stringByReplacingMatches(in: self, options: [], range: range, withTemplate: "$1_$2")
            .replacingOccurrences(of: " ", with: "_")
            .lowercased()
    }
    
}
