import Foundation

public final class Bumper {
    private static let previousVersionKey = "Bumper_PreviousVersion"
    private static let needToExecuteKey = "Bumper_NeedToExecute"

    public static func launch() {
        guard var current = Bundle.main.object(forInfoDictionaryKey: "CFBundleShortVersionString") as? String else {
            return
        }

        // Sanitize the version string to always have three parts.
        var parts = current.split(separator: ".")
        if parts.count < 3 {
            for _ in parts.count..<3 {
                parts.append("0")
            }
        }
        current = parts.joined(separator: ".")

        let defaults = UserDefaults.standard

        if let previous = defaults.object(forKey: Bumper.previousVersionKey) as? String {
            if previous.compare(current, options: .numeric) == .orderedAscending {
                defaults.set(true, forKey: Bumper.needToExecuteKey)
                defaults.set(current, forKey: Bumper.previousVersionKey)
                defaults.synchronize()
            }
        } else {
            defaults.set(current, forKey: Bumper.previousVersionKey)
            defaults.synchronize()
        }
    }

    public static func tryToExecute(completion: () -> Void) {
        let defaults = UserDefaults.standard

        if defaults.object(forKey: Bumper.needToExecuteKey) != nil &&
            defaults.bool(forKey: Bumper.needToExecuteKey) {
            defaults.set(false, forKey: Bumper.needToExecuteKey)
            defaults.synchronize()
            completion()
        }
    }
}
