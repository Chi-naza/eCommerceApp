//
//  String+Ext.swift
//  eCommerceApp
//
//  Created by Chinaza Ugwuoke on 6/8/24.
//

import Foundation
import RegexBuilder

extension String {
    
    var isValidEmail: Bool {
        let emailFormat         = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let emailPredicate      = NSPredicate(format: "SELF MATCHES %@", emailFormat)
        return emailPredicate.evaluate(with: self)

//        let emailRegex = Regex {
//            OneOrMore {
//                CharacterClass(
//                    .anyOf("._%+-"),
//                    ("A"..."Z"),
//                    ("0"..."9"),
//                    ("a"..."z")
//                )
//            }
//            "@"
//            OneOrMore {
//                CharacterClass(
//                    .anyOf("-"),
//                    ("A"..."Z"),
//                    ("a"..."z"),
//                    ("0"..."9")
//                )
//            }
//            "."
//            Repeat(2...64) {
//                CharacterClass(
//                    ("A"..."Z"),
//                    ("a"..."z")
//                )
//            }
//        }
//
//        return self.wholeMatch(of: emailRegex) !=  nil
    }
}








/* https://www.youtube.com/redirect?event=video_description&redir_token=QUFFLUhqbm12VUo2cklMUG5WeDFSWjZhQXRISTZScVlhQXxBQ3Jtc0ttLUNsVmcwNVd2VlRGajV4WlY3YmstajFRZnNjcTZ4VU05N1did3loTnFMa3NGN2pEY0dueTRZck9XZE81WkQ0eUYwX1czNklRanB6YVVZOHBRSmJkcHpoWmJyT2liZ3JZczNlR1ZXNE94TkpTZzFCRQ&q=https%3A%2F%2Fwww.dropbox.com%2Fscl%2Ffo%2F0h5kub6len9jkghiwj6gz%2Fh%3Frlkey%3Duf04zyhvww722jksfrech2up4%26dl%3D0&v=b1oC7sLIgpI

*/

