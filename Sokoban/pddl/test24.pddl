(define (problem test24)
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
node34 - node
node35 - node
node36 - node
node37 - node
box1 - box
box2 - box
box3 - box
box4 - box
box5 - box
agent1 - agent
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
(isAbove node3 node10)
(isOnLeft node3 node4)
(isNotBusyNode node4)
(isBelow node4 node2)
(isOnRight node4 node3)
(isNotBusyNode node5)
(isAbove node5 node11)
(isOnLeft node5 node6)
(isNotBusyNode node6)
(isOnRight node6 node5)
(isOnLeft node6 node7)
(isNotBusyNode node7)
(isOnRight node7 node6)
(isOnLeft node7 node8)
(isNotBusyNode node8)
(isOnRight node8 node7)
(isOnLeft node8 node9)
(isNotBusyNode node9)
(isAbove node9 node12)
(isOnRight node9 node8)
(isNotBusyNode node10)
(isBelow node10 node3)
(isNotBusyNode node11)
(isBelow node11 node5)
(isAbove node11 node14)
(isNotBusyNode node12)
(isBelow node12 node9)
(isAbove node12 node17)
(isNotBusyNode node13)
(isAbove node13 node19)
(isOnLeft node13 node14)
(isNotBusyNode node14)
(isBelow node14 node11)
(isAbove node14 node20)
(isOnRight node14 node13)
(isOnLeft node14 node15)
(isNotBusyNode node15)
(isAbove node15 node21)
(isOnRight node15 node14)
(isOnLeft node15 node16)
(isNotBusyNode node16)
(isAbove node16 node22)
(isOnRight node16 node15)
(isNotBusyNode node17)
(isBelow node17 node12)
(isAbove node17 node24)
(isNotBusyNode node18)
(isAbove node18 node25)
(isOnLeft node18 node19)
(isBoxOnNode box1 node19)
(isNotBoxOnGoal box1)
(isBusyNode node19)
(isBelow node19 node13)
(isAbove node19 node26)
(isOnRight node19 node18)
(isOnLeft node19 node20)
(isBoxOnNode box2 node20)
(isNotBoxOnGoal box2)
(isGoalNode node20)
(isBusyNode node20)
(isBelow node20 node14)
(isAbove node20 node27)
(isOnRight node20 node19)
(isOnLeft node20 node21)
(isBoxOnNode box3 node21)
(isNotBoxOnGoal box3)
(isGoalNode node21)
(isBusyNode node21)
(isBelow node21 node15)
(isAbove node21 node28)
(isOnRight node21 node20)
(isOnLeft node21 node22)
(isBoxOnNode box4 node22)
(isNotBoxOnGoal box4)
(isGoalNode node22)
(isBusyNode node22)
(isBelow node22 node16)
(isAbove node22 node29)
(isOnRight node22 node21)
(isOnLeft node22 node23)
(isBoxOnNode box5 node23)
(isNotBoxOnGoal box5)
(isGoalNode node23)
(isBusyNode node23)
(isOnRight node23 node22)
(isOnLeft node23 node24)
(isAgentOnNode agent1 node24)
(isNotBusyNode node24)
(isGoalNode node24)
(isBelow node24 node17)
(isAbove node24 node30)
(isOnRight node24 node23)
(isNotBusyNode node25)
(isBelow node25 node18)
(isAbove node25 node31)
(isOnLeft node25 node26)
(isNotBusyNode node26)
(isBelow node26 node19)
(isAbove node26 node32)
(isOnRight node26 node25)
(isOnLeft node26 node27)
(isNotBusyNode node27)
(isBelow node27 node20)
(isOnRight node27 node26)
(isOnLeft node27 node28)
(isNotBusyNode node28)
(isBelow node28 node21)
(isOnRight node28 node27)
(isOnLeft node28 node29)
(isNotBusyNode node29)
(isBelow node29 node22)
(isAbove node29 node33)
(isOnRight node29 node28)
(isNotBusyNode node30)
(isBelow node30 node24)
(isAbove node30 node35)
(isNotBusyNode node31)
(isBelow node31 node25)
(isAbove node31 node36)
(isOnLeft node31 node32)
(isNotBusyNode node32)
(isBelow node32 node26)
(isAbove node32 node37)
(isOnRight node32 node31)
(isNotBusyNode node33)
(isBelow node33 node29)
(isOnLeft node33 node34)
(isNotBusyNode node34)
(isOnRight node34 node33)
(isOnLeft node34 node35)
(isNotBusyNode node35)
(isBelow node35 node30)
(isOnRight node35 node34)
(isNotBusyNode node36)
(isBelow node36 node31)
(isOnLeft node36 node37)
(isNotBusyNode node37)
(isBelow node37 node32)
(isOnRight node37 node36)
)

(:goal
(and
(isBoxOnGoal box1)
(isBoxOnGoal box2)
(isBoxOnGoal box3)
(isBoxOnGoal box4)
(isBoxOnGoal box5)
)
)
)