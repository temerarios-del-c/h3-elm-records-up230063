module Helper exposing (..)

import Html exposing (Html, div, h1, li, text, ul)



-- SIMPLE EXERCISES


add2 : Int -> Int -> Int
add2 int1 int2 =
    int1 + int2


add3 : Float -> Float -> Float -> Float
add3 int1 int2 int3 =
    int1 + int2 + int3


calc : Int -> Int -> (Int -> Int -> Int) -> Int
calc int1 int2 operator =
    operator int1 int2



-- RECORDS 1


type alias ProgrammingLanguage =
    { name : String
    , releaseYear : Int
    , currentVersion : String
    }


languages : List ProgrammingLanguage
languages =
    [ { name = "Elm", releaseYear = 2012, currentVersion = "0.19.1" }
    , { name = "JavaScript", releaseYear = 1995, currentVersion = "ECMAScript 2025" }
    ]


languageNames : List ProgrammingLanguage -> List String
languageNames list =
    List.map .name list



-- RECORDS 2


type alias User =
    { name : String
    , uType : String
    }


users : List User
users =
    [ { name = "Roberto", uType = "Student" }
    , { name = "Mitsiu", uType = "Professor" }
    , { name = "Ana", uType = "Student" }
    ]


onlyStudents : List User -> List String
onlyStudents list =
    List.map
        (\user ->
            if user.uType == "Student" then
                user.name
            else
                ""
        )
        list



-- ALIAS EXERCISE


type alias Videogame =
    { title : String
    , releaseYear : Int
    , available : Bool
    , downloads : Int
    , genres : List String
    }


games : List Videogame
games =
    [ { title = "Minecraft"
      , releaseYear = 2011
      , available = True
      , downloads = 20
      , genres = [ "Sandbox", "Survival" ]
      }
    , { title = "Among Us"
      , releaseYear = 2018
      , available = True
      , downloads = 10
      , genres = [ "Party", "Social deduction" ]
      }
    ]


getVideogameGenres : List Videogame -> List (List String)
getVideogameGenres videogames =
    List.map .genres videogames



-- HTML EXERCISE


type alias Computer =
    { ram : String
    , model : String
    , brand : String
    , screenSize : String
    }


myLaptop : Computer
myLaptop =
    { ram = "16GB"
    , model = "Predator Helios"
    , brand = "Acer"
    , screenSize = "17.3"
    }


main : Html msg
main =
    div []
        [ h1 [] [ text "My laptop" ]
        , div []
            [ ul []
                [ li [] [ text ("Ram: " ++ myLaptop.ram) ]
                , li [] [ text ("Modelo: " ++ myLaptop.model) ]
                , li [] [ text ("Marca: " ++ myLaptop.brand) ]
                , li [] [ text ("Pulgadas: " ++ myLaptop.screenSize) ]
                ]
            ]
        ]
