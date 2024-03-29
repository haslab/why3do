# Leader Election 

Formalization, by a two-step refinement, of two versions of Chang and Roberts' algorithm.

## Files 

  * [leaderElect.mlw](leaderElect.mlw): abstract spec of Leader Election problem
  * [leaderElectMax.mlw](leaderElectMax.mlw): specification of Leader Election based on
    node IDs and maximum finding.  
  * [ChangRoberts.mlw](ChangRoberts.mlw): Chang-Roberts algorithm for leader election -
    unidirectional ring topology, message delivery with
    individual message queues (idealized) 
  * [ChangRobertsNetwork.mlw](ChangRobertsNetwork.mlw): Chang-Roberts algorithm for leader election -
    unidirectional ring topology, message delivery with
    centralized packet list (idealized) 
