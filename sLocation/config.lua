Config = {
    Voitures = {
        locationVoitures = true, -- true si vous voulez la location des voitures / false si vous ne voulez pas la location des voitures
        BlipSprite = 315, -- type du blips
        BlipScale = 0.8, -- taille du blips
        BlipDisplay = 4, -- affichage du blips,minicarte/Grande Carte
        BlipColor = 4, -- couleurs du blip
        BlipLabel = "Location de voitures", --Nom du blips
        NotifMarker = "Appuyez sur [~b~E~s~] pour louer une voiture",-- la notif en haut à gauche
        PedType = "cs_andreas",--le type de ped 
        TextVoitures = "~b~↓ Voici les voitures ↓~s~",
        VoituresListe = {
            {posSpawn = vector3(177.56, 6570.19, 30.84),heading = 110.54, name = "blista", label = "Blista" , kmhmax = 25, plaque = "Stax",  price = 500, pricelabel = "~g~500 $~s~"},
            {posSpawn = vector3(177.56, 6570.19, 30.84),heading = 110.54, name = "sultan", label = "Sultan" , kmhmax = 25, plaque = "Stax", price = 5000, pricelabel = "~g~5 000 $~s~"},
        },
    },
    Motos = {
        locationMotos = true, -- true si vous voulez la location des motos / false si vous ne voulez pas la location des motos
        BlipSprite = 127, -- type du blips
        BlipScale = 0.8, -- taille du blips
        BlipDisplay = 4, -- affichage du blips,minicarte/Grande Carte
        BlipColor = 3, -- couleurs du blip
        BlipLabel = "Location de motos", --Nom du blips
        NotifMarker = "Appuyez sur [~b~E~s~] pour louer une moto",-- la notif en haut à gauche
        PedType = "cs_andreas",--le type de ped 
        TextMotos = "~b~↓ Voici les motos ↓~s~",
        MotosListe = {
            {posSpawn = vector3(-639.19, 5088.73, 131.78),heading = 261.74, name = "sanchez", label = "Sanchez" , kmhmax = 25, plaque = "Stax",  price = 500, pricelabel = "~g~500 $~s~"},
            {posSpawn = vector3(-639.19, 5088.73, 131.78),heading = 261.74, name = "cliffhanger", label = "Cliffhanger" , kmhmax = 25, plaque = "Stax", price = 5000, pricelabel = "~g~5 000 $~s~"},
        },
    },
    Bateaux = {
        locationBateaux = true,
        BlipSprite = 316, -- type du blips
        BlipScale = 0.8, -- taille du blips
        BlipDisplay = 4, -- affichage du blips,minicarte/Grande Carte
        BlipColor = 2, -- couleurs du blip
        BlipLabel = "Location de bateaux", --Nom du blips
        NotifMarker = "Appuyez sur [~b~E~s~] pour louer un bateau",-- la notif en haut à gauche
        PedType = "cs_andreas",--le type de ped 
        TextBateaux = "~b~↓ Voici les bateaux ↓~s~",
        BateauxListe = {
            {posSpawn = vector3(-1636.36, -1156.32, -0.20),heading = 146.37, name = "speeder", label = "Speeder" , kmhmax = 25, plaque = "Stax",  price = 50000, pricelabel = "~g~50 000 $~s~"},
            {posSpawn = vector3(-1636.36, -1156.32, 0.80),heading = 146.37, name = "seashark3", label = "JetSki" , kmhmax = 25, plaque = "Stax", price = 10000, pricelabel = "~g~10 000 $~s~"},
        },
    },
    Avions = {
        locationAvions = true,
        BlipSprite = 314, -- type du blips
        BlipScale = 0.8, -- taille du blips
        BlipDisplay = 4, -- affichage du blips,minicarte/Grande Carte
        BlipColor = 6, -- couleurs du blip
        BlipLabel = "Location d'avions", --Nom du blips
        NotifMarker = "Appuyez sur [~b~E~s~] pour louer un avion/hélicoptère", -- la notif en haut à gauche
        PedType = "cs_andreas",--le type de ped 
        TextAvions = "~b~↓ Voici les avions ↓~s~",
        AvionsHelicoptereListe = {
            {posSpawn = vector3(-1123.64, -3401.19, 13.94),heading = 277.25, name = "velum2", label = "Velum 2" , kmhmax = 25, plaque = "Stax",  price = 60000, pricelabel = "~g~60 000 $~s~"},
            {posSpawn = vector3(-1123.64, -3401.19, 13.94),heading = 277.25, name = "buzzard2", label = "Buzzard 2" , kmhmax = 25, plaque = "Stax", price = 100000, pricelabel = "~g~100 000 $~s~"},
        },
    },
    TextSeparator = "~r~Tu viens de sortir un véhicule ! ~s~",
    Coords = {
        {pos = vector3(169.69, 6575.26, 30.82), heading = 208.36, Type = "Voitures"}, -- Posistions PED & Marker
        {pos = vector3(-1604.735, -1138.79, 1.14), heading = 136.32, Type = "Bateaux"}, -- Posistions PED & Marker
        {pos = vector3(-1132.19, -3417.71, 12.94), heading = 332.32, Type = "Avions"}, -- Posistions PED & Marker
        {pos = vector3(-634.31, 5081.20, 130.62), heading = 7.45, Type = "Motos"}, -- Posistions PED & Marker
    },
    Camera = {
        Voiture = {
            {PositionCamVoiture = vector3(170.35,6571.99,32.79), HeadingCamVoiture = 252.57},
            {PositionCamVoiture = vector3(170.35,6571.99,32.79), HeadingCamVoiture = 252.57}, 
        },
        Motos = {
            {PositionCamMoto = vector3(-636.63, 5085.07, 132.71), HeadingCamMoto = 35.33}, 
            {PositionCamMoto = vector3(-636.63, 5085.07, 132.71), HeadingCamMoto = 35.33}, 
        },
        Bateaux = {
            {PositionCamBateau = vector3(-1624.45, -1137.13, 3.47), HeadingCamBateau = 356.35}, 
            {PositionCamBateau = vector3(-1638.45, -1169.13, 3.47), HeadingCamBateau = 356.35}, 
        },
        Avions = {
            {PositionCamAvion = vector3(-1113.31, -3405.16, 14.94), HeadingCamAvion = 65.49}, 
            {PositionCamAvion = vector3(-1113.31, -3405.16, 14.94), HeadingCamAvion = 65.49}, 
        },
    },
}
