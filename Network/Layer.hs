module Network.Layer
( LayerDefinition(..)

, Connectivity
) where

import Network.Neuron

data LayerDefinition a = LayerDefinition (Neuron a) Int (Connectivity a)

type Connectivity a = Int -> Int -> [[a]]

-- connectFully
-- parameters
--   i is the count of input neurons for a layer
--   j is the count of the output neurons for a layer
-- returns
--   a i by j connectivity matrix
--   elements of matrix in {0, 1}
--   (or it could return boolean values)
connectFully :: Num a => Int -> Int -> [[a]]
connectFully i j = take i (repeat (take j (repeat 1)))
