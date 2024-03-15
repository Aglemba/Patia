(define (problem test26)
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
node38 - node
node39 - node
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
(isOnLeft node3 node4)
(isNotBusyNode node4)
(isBelow node4 node2)
(isOnRight node4 node3)
(isNotBusyNode node5)
(isAbove node5 node7)
(isOnLeft node5 node6)
(isNotBusyNode node6)
(isAbove node6 node8)
(isOnRight node6 node5)
(isNotBusyNode node7)
(isBelow node7 node5)
(isAbove node7 node13)
(isOnLeft node7 node8)
(isBoxOnNode box1 node8)
(isNotBoxOnGoal box1)
(isGoalNode node8)
(isBusyNode node8)
(isBelow node8 node6)
(isAbove node8 node14)
(isOnRight node8 node7)
(isOnLeft node8 node9)
(isGoalNode node9)
(isNotBusyNode node9)
(isOnRight node9 node8)
(isOnLeft node9 node10)
(isNotBusyNode node10)
(isAbove node10 node15)
(isOnRight node10 node9)
(isNotBusyNode node11)
(isAbove node11 node19)
(isOnLeft node11 node12)
(isNotBusyNode node12)
(isAbove node12 node20)
(isOnRight node12 node11)
(isOnLeft node12 node13)
(isGoalNode node13)
(isNotBusyNode node13)
(isBelow node13 node7)
(isAbove node13 node21)
(isOnRight node13 node12)
(isOnLeft node13 node14)
(isNotBusyNode node14)
(isBelow node14 node8)
(isAbove node14 node22)
(isOnRight node14 node13)
(isNotBusyNode node15)
(isBelow node15 node10)
(isAbove node15 node24)
(isOnLeft node15 node16)
(isBoxOnNode box2 node16)
(isNotBoxOnGoal box2)
(isBusyNode node16)
(isAbove node16 node25)
(isOnRight node16 node15)
(isOnLeft node16 node17)
(isNotBusyNode node17)
(isAbove node17 node26)
(isOnRight node17 node16)
(isOnLeft node17 node18)
(isNotBusyNode node18)
(isAbove node18 node27)
(isOnRight node18 node17)
(isNotBusyNode node19)
(isBelow node19 node11)
(isOnLeft node19 node20)
(isNotBusyNode node20)
(isBelow node20 node12)
(isOnRight node20 node19)
(isOnLeft node20 node21)
(isBoxOnNode box3 node21)
(isNotBoxOnGoal box3)
(isGoalNode node21)
(isBusyNode node21)
(isBelow node21 node13)
(isAbove node21 node28)
(isOnRight node21 node20)
(isOnLeft node21 node22)
(isNotBusyNode node22)
(isBelow node22 node14)
(isAbove node22 node29)
(isOnRight node22 node21)
(isOnLeft node22 node23)
(isNotBusyNode node23)
(isOnRight node23 node22)
(isOnLeft node23 node24)
(isBoxOnNode box4 node24)
(isNotBoxOnGoal box4)
(isBusyNode node24)
(isBelow node24 node15)
(isOnRight node24 node23)
(isOnLeft node24 node25)
(isNotBusyNode node25)
(isBelow node25 node16)
(isOnRight node25 node24)
(isOnLeft node25 node26)
(isNotBusyNode node26)
(isBelow node26 node17)
(isOnRight node26 node25)
(isOnLeft node26 node27)
(isNotBusyNode node27)
(isBelow node27 node18)
(isOnRight node27 node26)
(isBoxOnNode box5 node28)
(isNotBoxOnGoal box5)
(isGoalNode node28)
(isBusyNode node28)
(isBelow node28 node21)
(isAbove node28 node32)
(isOnLeft node28 node29)
(isNotBusyNode node29)
(isBelow node29 node22)
(isAbove node29 node33)
(isOnRight node29 node28)
(isNotBusyNode node30)
(isAbove node30 node34)
(isOnLeft node30 node31)
(isNotBusyNode node31)
(isAbove node31 node35)
(isOnRight node31 node30)
(isNotBusyNode node32)
(isBelow node32 node28)
(isAbove node32 node36)
(isOnLeft node32 node33)
(isAgentOnNode agent1 node33)
(isNotBusyNode node33)
(isBelow node33 node29)
(isAbove node33 node37)
(isOnRight node33 node32)
(isNotBusyNode node34)
(isBelow node34 node30)
(isAbove node34 node38)
(isOnLeft node34 node35)
(isNotBusyNode node35)
(isBelow node35 node31)
(isAbove node35 node39)
(isOnRight node35 node34)
(isNotBusyNode node36)
(isBelow node36 node32)
(isOnLeft node36 node37)
(isNotBusyNode node37)
(isBelow node37 node33)
(isOnRight node37 node36)
(isNotBusyNode node38)
(isBelow node38 node34)
(isOnLeft node38 node39)
(isNotBusyNode node39)
(isBelow node39 node35)
(isOnRight node39 node38)
)

(:goal
(
and
(isBoxOnGoal box1)
(isBoxOnGoal box2)
(isBoxOnGoal box3)
(isBoxOnGoal box4)
(isBoxOnGoal box5)
)
)
)