module Game.Sequoia.Stanza
    ( bold
    , color
    , defaultStanza
    , height
    , italic
    , light
    , monospace
    , oblique
    , toStanza
    , typeface
    ) where

import Game.Sequoia.Color
import Game.Sequoia.Types

defaultStanza :: Stanza
defaultStanza = Stanza {
  stanzaUTF8 = "",
  stanzaColor = black,
  stanzaTypeface = "sans-serif",
  stanzaHeight = 14,
  stanzaWeight = NormalWeight,
  stanzaStyle = NormalStyle
}

toStanza :: String -> Stanza
toStanza utf8 = defaultStanza { stanzaUTF8 = utf8 }

bold :: Stanza -> Stanza
bold txt = txt { stanzaWeight = BoldWeight }

light :: Stanza -> Stanza
light txt = txt { stanzaWeight = LightWeight }

italic :: Stanza -> Stanza
italic txt = txt { stanzaStyle = ItalicStyle }

oblique :: Stanza -> Stanza
oblique txt = txt { stanzaStyle = ObliqueStyle }

color :: Color -> Stanza -> Stanza
color col txt = txt { stanzaColor = col }

monospace :: Stanza -> Stanza
monospace txt = txt { stanzaTypeface = "monospace" }

typeface :: String -> Stanza -> Stanza
typeface face txt = txt { stanzaTypeface = face }

height :: Double -> Stanza -> Stanza
height size txt = txt { stanzaHeight = size }
