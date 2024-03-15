(define (problem test5)
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
node23 - node
node24 - node
box1 - box
box2 - box
box3 - box
agent1 - agent
)

(:init
(isNotBusyNode node1)
(isAbove node1 node6)
(isOnLeft node1 node2)
(isGoalNode node2)
(isNotBusyNode node2)
(isOnRight node2 node1)
(isOnLeft node2 node3)
(isNotBusyNode node3)
(isAbove node3 node7)
(isOnRight node3 node2)
(isOnLeft node3 node4)
(isNotBusyNode node4)
(isAbove node4 node8)
(isOnRight node4 node3)
(isOnLeft node4 node5)
(isNotBusyNode node5)
(isAbove node5 node9)
(isOnRight node5 node4)
(isNotBusyNode node6)
(isBelow node6 node1)
(isAbove node6 node10)
(isBoxOnNode box1 node7)
(isNotBoxOnGoal box1)
(isBusyNode node7)
(isBelow node7 node3)
(isAbove node7 node12)
(isOnLeft node7 node8)
(isNotBusyNode node8)
(isBelow node8 node4)
(isOnRight node8 node7)
(isOnLeft node8 node9)
(isNotBusyNode node9)
(isBelow node9 node5)
(isAbove node9 node13)
(isOnRight node9 node8)
(isNotBusyNode node10)
(isBelow node10 node6)
(isOnLeft node10 node11)
(isBoxOnNode box2 node11)
(isNotBoxOnGoal box2)
(isBusyNode node11)
(isAbove node11 node14)
(isOnRight node11 node10)
(isOnLeft node11 node12)
(isGoalNode node12)
(isNotBusyNode node12)
(isBelow node12 node7)
(isAbove node12 node15)
(isOnRight node12 node11)
(isNotBusyNode node13)
(isBelow node13 node9)
(isAbove node13 node17)
(isGoalNode node14)
(isNotBusyNode node14)
(isBelow node14 node11)
(isAbove node14 node19)
(isOnLeft node14 node15)
(isBoxOnNode box3 node15)
(isNotBoxOnGoal box3)
(isBusyNode node15)
(isBelow node15 node12)
(isAbove node15 node20)
(isOnRight node15 node14)
(isOnLeft node15 node16)
(isAgentOnNode agent1 node16)
(isNotBusyNode node16)
(isOnRight node16 node15)
(isOnLeft node16 node17)
(isNotBusyNode node17)
(isBelow node17 node13)
(isOnRight node17 node16)
(isNotBusyNode node18)
(isAbove node18 node21)
(isNotBusyNode node19)
(isBelow node19 node14)
(isAbove node19 node22)
(isOnLeft node19 node20)
(isNotBusyNode node20)
(isBelow node20 node15)
(isAbove node20 node23)
(isOnRight node20 node19)
(isNotBusyNode node21)
(isBelow node21 node18)
(isAbove node21 node24)
(isNotBusyNode node22)
(isBelow node22 node19)
(isOnLeft node22 node23)
(isNotBusyNode node23)
(isBelow node23 node20)
(isOnRight node23 node22)
(isNotBusyNode node24)
(isBelow node24 node21)
)

(:goal
(and
(isBoxOnGoal box1)
(isBoxOnGoal box2)
(isBoxOnGoal box3)
)
)
)