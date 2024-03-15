(define (problem test2)
(:domain domain_sokoban)
(:objects
node1 - node
node2 - node
node3 - node
node4 - node
node5 - node
node6 - node
node7 - node
node8 - node
node9 - node
node10 - node
node11 - node
node12 - node
node13 - node
node14 - node
node15 - node
node16 - node
node17 - node
node18 - node
node19 - node
node20 - node
node21 - node
node22 - node
box1 - box
box2 - box
box3 - box
agent1 - agent
)

(:init
(isNotBusyNode node1)
(isAbove node1 node5)
(isOnLeft node1 node2)
(isNotBusyNode node2)
(isOnRight node2 node1)
(isOnLeft node2 node3)
(isNotBusyNode node3)
(isAbove node3 node6)
(isOnRight node3 node2)
(isOnLeft node3 node4)
(isNotBusyNode node4)
(isAbove node4 node7)
(isOnRight node4 node3)
(isNotBusyNode node5)
(isBelow node5 node1)
(isAbove node5 node8)
(isGoalNode node6)
(isNotBusyNode node6)
(isBelow node6 node3)
(isAbove node6 node10)
(isOnLeft node6 node7)
(isNotBusyNode node7)
(isBelow node7 node4)
(isAbove node7 node11)
(isOnRight node7 node6)
(isNotBusyNode node8)
(isBelow node8 node5)
(isOnLeft node8 node9)
(isNotBusyNode node9)
(isOnRight node9 node8)
(isOnLeft node9 node10)
(isBoxOnNode box1 node10)
(isNotBoxOnGoal box1)
(isBusyNode node10)
(isBelow node10 node6)
(isAbove node10 node13)
(isOnRight node10 node9)
(isOnLeft node10 node11)
(isBoxOnNode box2 node11)
(isNotBoxOnGoal box2)
(isBusyNode node11)
(isBelow node11 node7)
(isAbove node11 node14)
(isOnRight node11 node10)
(isOnLeft node11 node12)
(isNotBusyNode node12)
(isAbove node12 node15)
(isOnRight node12 node11)
(isBoxOnNode box3 node13)
(isNotBoxOnGoal box3)
(isGoalNode node13)
(isBusyNode node13)
(isBelow node13 node10)
(isAbove node13 node18)
(isOnLeft node13 node14)
(isAgentOnNode agent1 node14)
(isNotBusyNode node14)
(isGoalNode node14)
(isBelow node14 node11)
(isAbove node14 node19)
(isOnRight node14 node13)
(isOnLeft node14 node15)
(isNotBusyNode node15)
(isBelow node15 node12)
(isAbove node15 node20)
(isOnRight node15 node14)
(isNotBusyNode node16)
(isAbove node16 node21)
(isOnLeft node16 node17)
(isNotBusyNode node17)
(isAbove node17 node22)
(isOnRight node17 node16)
(isNotBusyNode node18)
(isBelow node18 node13)
(isOnLeft node18 node19)
(isNotBusyNode node19)
(isBelow node19 node14)
(isOnRight node19 node18)
(isOnLeft node19 node20)
(isNotBusyNode node20)
(isBelow node20 node15)
(isOnRight node20 node19)
(isNotBusyNode node21)
(isBelow node21 node16)
(isOnLeft node21 node22)
(isNotBusyNode node22)
(isBelow node22 node17)
(isOnRight node22 node21)
)

(:goal
(and
(isBoxOnGoal box1)
(isBoxOnGoal box2)
(isBoxOnGoal box3)
)
)
)