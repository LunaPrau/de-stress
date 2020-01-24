port module Ports exposing
    ( deleteDesign
    , deleteReferenceSet
    , deleteSpecification
    , getDesign
    , getReferenceSet
    , getSpecification
    , setFocussedDesign
    , setFocussedSpecification
    , storeDesign
    , storeReferenceSet
    , storeRunState
    , storeSpecification
    , updateDesignMetricsRD
    , vegaPlot
    , viewStructure
    )

import Codec exposing (Value)
import VegaLite as VL



-- {{{ Outgoing


port outgoing : { action : String, data : Value } -> Cmd msg



-- Run State


storeRunState : Value -> Cmd msg
storeRunState storedStateValue =
    outgoing
        { action = "STORE_STATE"
        , data = storedStateValue
        }



-- Design


storeDesign : Value -> Cmd msg
storeDesign designAndKey =
    outgoing
        { action = "STORE_DESIGN"
        , data = designAndKey
        }


updateDesignMetricsRD : Value -> Cmd msg
updateDesignMetricsRD metricsAndKey =
    outgoing
        { action = "UPDATE_DESIGN_METRICS"
        , data = metricsAndKey
        }


getDesign : Value -> Cmd msg
getDesign uuidValue =
    outgoing
        { action = "GET_DESIGN"
        , data = uuidValue
        }


deleteDesign : Value -> Cmd msg
deleteDesign uuidValue =
    outgoing
        { action = "DELETE_DESIGN"
        , data = uuidValue
        }


viewStructure : Value -> Cmd msg
viewStructure pdbStringValue =
    outgoing
        { action = "VIEW_STRUCTURE"
        , data = pdbStringValue
        }



-- Reference Set


storeReferenceSet : Value -> Cmd msg
storeReferenceSet referenceSetValue =
    outgoing
        { action = "STORE_REFERENCE_SET"
        , data = referenceSetValue
        }


getReferenceSet : Value -> Cmd msg
getReferenceSet uuidValue =
    outgoing
        { action = "GET_REFERENCE_SET"
        , data = uuidValue
        }


deleteReferenceSet : Value -> Cmd msg
deleteReferenceSet uuidValue =
    outgoing
        { action = "DELETE_REFERENCE_SET"
        , data = uuidValue
        }



-- Specifications


storeSpecification : Value -> Cmd msg
storeSpecification specValue =
    outgoing
        { action = "STORE_SPECIFICATION"
        , data = specValue
        }


getSpecification : Value -> Cmd msg
getSpecification uuidValue =
    outgoing
        { action = "GET_SPECIFICATION"
        , data = uuidValue
        }


deleteSpecification : Value -> Cmd msg
deleteSpecification uuidValue =
    outgoing
        { action = "DELETE_SPECIFICATION"
        , data = uuidValue
        }



-- Vega Lite


port vegaPlot : { plotId : String, spec : VL.Spec } -> Cmd msg



-- }}}
-- {{{ Incoming


port setFocussedDesign : (Value -> msg) -> Sub msg


port setFocussedReferenceSet : (Value -> msg) -> Sub msg


port setFocussedSpecification : (Value -> msg) -> Sub msg



-- }}}
