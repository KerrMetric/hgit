import System.Process
import System.IO

main = do
    (_,out,_,_) <- runInteractiveProcess "git" ["help"] Nothing Nothing
    hGetContents out >>= putStrLn  
