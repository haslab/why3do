
# Network Models

Library modules for reasoning about distributed systems with different
netowkr semantics. Described in the ESOP'2022 paper "Why3-do: The Way
of Harmonious Distributed System Proofs".


## Files 

  * [modelMP.mlw](modelMP.mlw): message-passing network. No packet losses
    or duplications but random order of delivery 
  * [modelMPEnabledTrace.mlw](modelMPEnabledTrace.mlw): idealized
    message-passing with traces and enabling conditions 
  * [modelMPEnabledDupl.mlw](modelMPEnabledTraceDupl.mlw): duplicating
    message-passing, with traces and enabling conditions 
