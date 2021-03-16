-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module BigStructure.Object.RosettaResults exposing (..)

import BigStructure.InputObject
import BigStructure.Interface
import BigStructure.Object
import BigStructure.Scalar
import BigStructure.ScalarCodecs
import BigStructure.Union
import Graphql.Internal.Builder.Argument as Argument exposing (Argument)
import Graphql.Internal.Builder.Object as Object
import Graphql.Internal.Encode as Encode exposing (Value)
import Graphql.Operation exposing (RootMutation, RootQuery, RootSubscription)
import Graphql.OptionalArgument exposing (OptionalArgument(..))
import Graphql.SelectionSet exposing (SelectionSet)
import Json.Decode as Decode


id : SelectionSet BigStructure.ScalarCodecs.Id BigStructure.Object.RosettaResults
id =
    Object.selectionForField "ScalarCodecs.Id" "id" [] (BigStructure.ScalarCodecs.codecs |> BigStructure.Scalar.unwrapCodecs |> .codecId |> .decoder)


logInfo : SelectionSet String BigStructure.Object.RosettaResults
logInfo =
    Object.selectionForField "String" "logInfo" [] Decode.string


errorInfo : SelectionSet String BigStructure.Object.RosettaResults
errorInfo =
    Object.selectionForField "String" "errorInfo" [] Decode.string


returnCode : SelectionSet Int BigStructure.Object.RosettaResults
returnCode =
    Object.selectionForField "Int" "returnCode" [] Decode.int


dslfFa13 : SelectionSet (Maybe Float) BigStructure.Object.RosettaResults
dslfFa13 =
    Object.selectionForField "(Maybe Float)" "dslfFa13" [] (Decode.float |> Decode.nullable)


faAtr : SelectionSet (Maybe Float) BigStructure.Object.RosettaResults
faAtr =
    Object.selectionForField "(Maybe Float)" "faAtr" [] (Decode.float |> Decode.nullable)


faDun : SelectionSet (Maybe Float) BigStructure.Object.RosettaResults
faDun =
    Object.selectionForField "(Maybe Float)" "faDun" [] (Decode.float |> Decode.nullable)


faElec : SelectionSet (Maybe Float) BigStructure.Object.RosettaResults
faElec =
    Object.selectionForField "(Maybe Float)" "faElec" [] (Decode.float |> Decode.nullable)


faIntraRep : SelectionSet (Maybe Float) BigStructure.Object.RosettaResults
faIntraRep =
    Object.selectionForField "(Maybe Float)" "faIntraRep" [] (Decode.float |> Decode.nullable)


faIntraSolXover4 : SelectionSet (Maybe Float) BigStructure.Object.RosettaResults
faIntraSolXover4 =
    Object.selectionForField "(Maybe Float)" "faIntraSolXover4" [] (Decode.float |> Decode.nullable)


faRep : SelectionSet (Maybe Float) BigStructure.Object.RosettaResults
faRep =
    Object.selectionForField "(Maybe Float)" "faRep" [] (Decode.float |> Decode.nullable)


faSol : SelectionSet (Maybe Float) BigStructure.Object.RosettaResults
faSol =
    Object.selectionForField "(Maybe Float)" "faSol" [] (Decode.float |> Decode.nullable)


hbondBbSc : SelectionSet (Maybe Float) BigStructure.Object.RosettaResults
hbondBbSc =
    Object.selectionForField "(Maybe Float)" "hbondBbSc" [] (Decode.float |> Decode.nullable)


hbondLrBb : SelectionSet (Maybe Float) BigStructure.Object.RosettaResults
hbondLrBb =
    Object.selectionForField "(Maybe Float)" "hbondLrBb" [] (Decode.float |> Decode.nullable)


hbondSc : SelectionSet (Maybe Float) BigStructure.Object.RosettaResults
hbondSc =
    Object.selectionForField "(Maybe Float)" "hbondSc" [] (Decode.float |> Decode.nullable)


hbondSrBb : SelectionSet (Maybe Float) BigStructure.Object.RosettaResults
hbondSrBb =
    Object.selectionForField "(Maybe Float)" "hbondSrBb" [] (Decode.float |> Decode.nullable)


linearChainbreak : SelectionSet (Maybe Float) BigStructure.Object.RosettaResults
linearChainbreak =
    Object.selectionForField "(Maybe Float)" "linearChainbreak" [] (Decode.float |> Decode.nullable)


lkBallWtd : SelectionSet (Maybe Float) BigStructure.Object.RosettaResults
lkBallWtd =
    Object.selectionForField "(Maybe Float)" "lkBallWtd" [] (Decode.float |> Decode.nullable)


omega : SelectionSet (Maybe Float) BigStructure.Object.RosettaResults
omega =
    Object.selectionForField "(Maybe Float)" "omega" [] (Decode.float |> Decode.nullable)


overlapChainbreak : SelectionSet (Maybe Float) BigStructure.Object.RosettaResults
overlapChainbreak =
    Object.selectionForField "(Maybe Float)" "overlapChainbreak" [] (Decode.float |> Decode.nullable)


pAaPp : SelectionSet (Maybe Float) BigStructure.Object.RosettaResults
pAaPp =
    Object.selectionForField "(Maybe Float)" "pAaPp" [] (Decode.float |> Decode.nullable)


proClose : SelectionSet (Maybe Float) BigStructure.Object.RosettaResults
proClose =
    Object.selectionForField "(Maybe Float)" "proClose" [] (Decode.float |> Decode.nullable)


ramaPrepro : SelectionSet (Maybe Float) BigStructure.Object.RosettaResults
ramaPrepro =
    Object.selectionForField "(Maybe Float)" "ramaPrepro" [] (Decode.float |> Decode.nullable)


ref : SelectionSet (Maybe Float) BigStructure.Object.RosettaResults
ref =
    Object.selectionForField "(Maybe Float)" "ref" [] (Decode.float |> Decode.nullable)


score : SelectionSet (Maybe Float) BigStructure.Object.RosettaResults
score =
    Object.selectionForField "(Maybe Float)" "score" [] (Decode.float |> Decode.nullable)


time : SelectionSet (Maybe Float) BigStructure.Object.RosettaResults
time =
    Object.selectionForField "(Maybe Float)" "time" [] (Decode.float |> Decode.nullable)


totalScore : SelectionSet (Maybe Float) BigStructure.Object.RosettaResults
totalScore =
    Object.selectionForField "(Maybe Float)" "totalScore" [] (Decode.float |> Decode.nullable)


yhhPlanarity : SelectionSet (Maybe Float) BigStructure.Object.RosettaResults
yhhPlanarity =
    Object.selectionForField "(Maybe Float)" "yhhPlanarity" [] (Decode.float |> Decode.nullable)


stateId : SelectionSet (Maybe Int) BigStructure.Object.RosettaResults
stateId =
    Object.selectionForField "(Maybe Int)" "stateId" [] (Decode.int |> Decode.nullable)


state :
    SelectionSet decodesTo BigStructure.Object.State
    -> SelectionSet (Maybe decodesTo) BigStructure.Object.RosettaResults
state object____ =
    Object.selectionForCompositeField "state" [] object____ (identity >> Decode.nullable)
