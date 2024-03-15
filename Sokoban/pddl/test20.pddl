(define (problem test20)
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
node25 - node
node26 - node
node27 - node
node28 - node
node29 - node
node30 - node
node31 - node
node32 - node
node33 - node
box1 - box
box2 - box
box3 - box
agent1 - agent
box4 - box
)

(:init
(isNotBusyNode node1)
(isAbove node1 node3)
(isOnLeft node1 node2)
(isNotBusyNode node2)
(isAbove node2 node4)
(isOnRight node2 node1)
(isNotBusyNode node3)
(isBelow node3 node1)
(isAbove node3 node7)
(isOnLeft node3 node4)
(isNotBusyNode node4)
(isBelow node4 node2)
(isAbove node4 node8)
(isOnRight node4 node3)
(isNotBusyNode node5)
(isAbove node5 node9)
(isOnLeft node5 node6)
(isNotBusyNode node6)
(isAbove node6 node10)
(isOnRight node6 node5)
(isNotBusyNode node7)
(isBelow node7 node3)
(isOnLeft node7 node8)
(isNotBusyNode node8)
(isBelow node8 node4)
(isOnRight node8 node7)
(isNotBusyNode node9)
(isBelow node9 node5)
(isAbove node9 node13)
(isOnLeft node9 node10)
(isGoalNode node10)
(isNotBusyNode node10)
(isBelow node10 node6)
(isAbove node10 node14)
(isOnRight node10 node9)
(isOnLeft node10 node11)
(isNotBusyNode node11)
(isAbove node11 node15)
(isOnRight node11 node10)
(isOnLeft node11 node12)
(isNotBusyNode node12)
(isAbove node12 node16)
(isOnRight node12 node11)
(isBoxOnNode box1 node13)
(isNotBoxOnGoal box1)
(isBusyNode node13)
(isBelow node13 node9)
(isAbove node13 node19)
(isOnLeft node13 node14)
(isGoalNode node14)
(isNotBusyNode node14)
(isBelow node14 node10)
(isAbove node14 node20)
(isOnRight node14 node13)
(isOnLeft node14 node15)
(isNotBusyNode node15)
(isBelow node15 node11)
(isAbove node15 node21)
(isOnRight node15 node14)
(isOnLeft node15 node16)
(isNotBusyNode node16)
(isBelow node16 node12)
(isOnRight node16 node15)
(isNotBusyNode node17)
(isAbove node17 node22)
(isOnLeft node17 node18)
(isNotBusyNode node18)
(isAbove node18 node23)
(isOnRight node18 node17)
(isOnLeft node18 node19)
(isBoxOnNode box2 node19)
(isNotBoxOnGoal box2)
(isBusyNode node19)
(isBelow node19 node13)
(isAbove node19 node24)
(isOnRight node19 node18)
(isOnLeft node19 node20)
(isGoalNode node20)
(isNotBusyNode node20)
(isBelow node20 node14)
(isAbove node20 node25)
(isOnRight node20 node19)
(isOnLeft node20 node21)
(isNotBusyNode node21)
(isBelow node21 node15)
(isOnRight node21 node20)
(isNotBusyNode node22)
(isBelow node22 node17)
(isOnLeft node22 node23)
(isNotBusyNode node23)
(isBelow node23 node18)
(isOnRight node23 node22)
(isOnLeft node23 node24)
(isBoxOnNode box3 node24)
(isNotBoxOnGoal box3)
(isBusyNode node24)
(isBelow node24 node19)
(isAbove node24 node26)
(isOnRight node24 node23)
(isOnLeft node24 node25)
(isGoalNode node25)
(isNotBusyNode node25)
(isBelow node25 node20)
(isAbove node25 node27)
(isOnRight node25 node24)
(isAgentOnNode agent1 node26)
(isNotBusyNode node26)
(isBelow node26 node24)
(isAbove node26 node30)
(isOnLeft node26 node27)
(isBoxOnNode box4 node27)
(isNotBoxOnGoal box4)
(isBusyNode node27)
(isBelow node27 node25)
(isAbove node27 node31)
(isOnRight node27 node26)
(isNotBusyNode node28)
(isAbove node28 node32)
(isOnLeft node28 node29)
(isNotBusyNode node29)
(isAbove node29 node33)
(isOnRight node29 node28)
(isNotBusyNode node30)
(isBelow node30 node26)
(isOnLeft node30 node31)
(isNotBusyNode node31)
(isBelow node31 node27)
(isOnRight node31 node30)
(isNotBusyNode node32)
(isBelow node32 node28)
(isOnLeft node32 node33)
(isNotBusyNode node33)
(isBelow node33 node29)
(isOnRight node33 node32)
)

(:goal
(
and
(isBoxOnGoal box1)
(isBoxOnGoal box2)
(isBoxOnGoal box3)
(isBoxOnGoal box4)
)
)
)