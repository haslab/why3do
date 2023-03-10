# Concurrent Counter

Refinement of implementation of a counter, using a lock, from an
abstract specification that assumes atomic updates.

This example is a WhyML adaptation of a TLA+ example available online
in a [blog post](https://www.hillelwayne.com/post/refinement/) by
Hyllel Wayne. 

## Files 

  * [counter.mlw](counter.mlw): abstract specification of a concurrent
    counter, can be seen as implementation assuming that updates are
    atomic
  * [counter_lock.mlw](counter_lock.mlw): implementation using a lock
    to control access to shared variable, proved by refinement from
    abstract spec
