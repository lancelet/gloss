
-- | Display "Hello World" in a window.
--
import Graphics.Gloss
import Graphics.Gloss.Internals.Interface.Display (displayWithBackend)
import Graphics.Gloss.Internals.Interface.Backend.GLFW (GLFWState)
import Graphics.Gloss.Internals.Interface.Backend.Types (initBackendState)

main :: IO ()
main = displayWithBackend
                (initBackendState :: GLFWState)
                (InWindow
                        "Hello World"     -- window title
                        (400, 150)       -- window size
                        (10, 10))        -- window position
                white
                (pure picture)
                (pure (return ()))

picture :: Picture
picture
        = Translate (-170) (-20) -- shift the text to the middle of the window
        $ Scale 0.5 0.5          -- display it half the original size
        $ Text "Hello World"     -- text to display

