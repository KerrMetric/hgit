import System.Process
import System.IO
import Data.List

main = do
    (_,out,_,_) <- runInteractiveProcess "git" ["help"] Nothing Nothing
    contents <- hGetContents out
    mapM_ putStrLn (filterTarget (lines contents))

-- clone を filter してみる
filterTarget :: [String] -> [String]
filterTarget = filter (\line -> "clone" `isInfixOf` line)
