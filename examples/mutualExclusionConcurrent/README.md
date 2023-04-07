# Mutual Exclusion between two concurrent processes 

Formalization, by specification refinement, of concurrent mutual exclusion algorithms.

## Files 

  * [mutexAbstractN](mutexAbstractN.mlw): abstract specification of
  N-process mutual exclusion problem
  * [mutexAbstract](mutexAbstract.mlw): abstract specification of
  two-process mutual exclusion problem. Refines mutexAbstractN
  * [simpleMutex](simpleMutex.mlw): simple algorithm using just a
    "trying" variable for each process (may deadlock). Refines mutexAbstract
  * [Peterson](Peterson.mlw): Petersons's algorithm. Refines mutexAbstract
  * [PetersonAtomic](PetersonAtomic.mlw): a variant of Petersons's
  algorithm. Refines Peterson 
  * [BakeryAtomic](BakeryAtomic.mlw): simplified version of Lamport's
    Bakery algorithm. Refines mutexAbstractN

