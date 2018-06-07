module Bob exposing (hey)

import Regex


hey : String -> String
hey remark =
    if Regex.contains silence remark then
        "Fine. Be that way!"
    else if Regex.contains forcefulQuestion remark then
        "Calm down, I know what I'm doing!"
    else if Regex.contains shout remark then
        "Whoa, chill out!"
    else if Regex.contains question remark then
        "Sure."
    else
        "Whatever."


shout : Regex.Regex
shout =
    Regex.regex "^[A-Z0-9\\W]*[A-Z]+[A-Z0-9\\W]*$"


question : Regex.Regex
question =
    Regex.regex "^[\\w\\W]+[?]+$"


forcefulQuestion : Regex.Regex
forcefulQuestion =
    Regex.regex "^[A-Z0-9\\W]*[A-Z]+[A-Z0-9\\W]+[?]+$"


silence : Regex.Regex
silence =
    Regex.regex "^[\\s]*$"
