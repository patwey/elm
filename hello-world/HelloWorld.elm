module HelloWorld exposing (helloWorld)


helloWorld : Maybe String -> String
helloWorld name =
    let
        greetee : String
        greetee =
            case name of
                Just n ->
                    n

                Nothing ->
                    "World"
    in
        "Hello, " ++ greetee ++ "!"
