(define (problem test16)
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
agent1 - agent
box1 - box
box2 - box
box3 - box
box4 - box
)

(:init
(isNotBusyNode node1)
(isNodesConnected node1 node3)
(isAbove node1 node3)
(isNodesConnected node1 node2)
(isOnLeft node1 node2)
(isNotBusyNode node2)
(isNodesConnected node2 node4)
(isAbove node2 node4)
(isNodesConnected node2 node1)
(isOnRight node2 node1)
(isNotBusyNode node3)
(isNodesConnected node3 node1)
(isBelow node3 node1)
(isNodesConnected node3 node4)
(isOnLeft node3 node4)
(isNotBusyNode node4)
(isNodesConnected node4 node2)
(isBelow node4 node2)
(isNodesConnected node4 node3)
(isOnRight node4 node3)
(isNotBusyNode node5)
(isNodesConnected node5 node7)
(isAbove node5 node7)
(isNodesConnected node5 node6)
(isOnLeft node5 node6)
(isNotBusyNode node6)
(isNodesConnected node6 node8)
(isAbove node6 node8)
(isNodesConnected node6 node5)
(isOnRight node6 node5)
(isNotBusyNode node7)
(isNodesConnected node7 node5)
(isBelow node7 node5)
(isNodesConnected node7 node11)
(isAbove node7 node11)
(isNodesConnected node7 node8)
(isOnLeft node7 node8)
(isAgentOnNode agent1 node8)
(isNotBusyNode node8)
(isNodesConnected node8 node6)
(isBelow node8 node6)
(isNodesConnected node8 node12)
(isAbove node8 node12)
(isNodesConnected node8 node7)
(isOnRight node8 node7)
(isNotBusyNode node9)
(isNodesConnected node9 node13)
(isAbove node9 node13)
(isNodesConnected node9 node10)
(isOnLeft node9 node10)
(isGoalNode node10)
(isNotBusyNode node10)
(isNodesConnected node10 node14)
(isAbove node10 node14)
(isNodesConnected node10 node9)
(isOnRight node10 node9)
(isNodesConnected node10 node11)
(isOnLeft node10 node11)
(isBoxOnNode box1 node11)
(isNotBoxOnGoal box1)
(isGoalNode node11)
(isBusyNode node11)
(isNodesConnected node11 node7)
(isBelow node11 node7)
(isNodesConnected node11 node15)
(isAbove node11 node15)
(isNodesConnected node11 node10)
(isOnRight node11 node10)
(isNodesConnected node11 node12)
(isOnLeft node11 node12)
(isBoxOnNode box2 node12)
(isNotBoxOnGoal box2)
(isBusyNode node12)
(isNodesConnected node12 node8)
(isBelow node12 node8)
(isNodesConnected node12 node16)
(isAbove node12 node16)
(isNodesConnected node12 node11)
(isOnRight node12 node11)
(isNotBusyNode node13)
(isNodesConnected node13 node9)
(isBelow node13 node9)
(isNodesConnected node13 node14)
(isOnLeft node13 node14)
(isNotBusyNode node14)
(isNodesConnected node14 node10)
(isBelow node14 node10)
(isNodesConnected node14 node19)
(isAbove node14 node19)
(isNodesConnected node14 node13)
(isOnRight node14 node13)
(isNodesConnected node14 node15)
(isOnLeft node14 node15)
(isBoxOnNode box3 node15)
(isNotBoxOnGoal box3)
(isBusyNode node15)
(isNodesConnected node15 node11)
(isBelow node15 node11)
(isNodesConnected node15 node20)
(isAbove node15 node20)
(isNodesConnected node15 node14)
(isOnRight node15 node14)
(isNodesConnected node15 node16)
(isOnLeft node15 node16)
(isGoalNode node16)
(isNotBusyNode node16)
(isNodesConnected node16 node12)
(isBelow node16 node12)
(isNodesConnected node16 node21)
(isAbove node16 node21)
(isNodesConnected node16 node15)
(isOnRight node16 node15)
(isNodesConnected node16 node17)
(isOnLeft node16 node17)
(isGoalNode node17)
(isNotBusyNode node17)
(isNodesConnected node17 node22)
(isAbove node17 node22)
(isNodesConnected node17 node16)
(isOnRight node17 node16)
(isNodesConnected node17 node18)
(isOnLeft node17 node18)
(isNotBusyNode node18)
(isNodesConnected node18 node23)
(isAbove node18 node23)
(isNodesConnected node18 node17)
(isOnRight node18 node17)
(isNotBusyNode node19)
(isNodesConnected node19 node14)
(isBelow node19 node14)
(isNodesConnected node19 node20)
(isOnLeft node19 node20)
(isNotBusyNode node20)
(isNodesConnected node20 node15)
(isBelow node20 node15)
(isNodesConnected node20 node25)
(isAbove node20 node25)
(isNodesConnected node20 node19)
(isOnRight node20 node19)
(isNodesConnected node20 node21)
(isOnLeft node20 node21)
(isNotBusyNode node21)
(isNodesConnected node21 node16)
(isBelow node21 node16)
(isNodesConnected node21 node26)
(isAbove node21 node26)
(isNodesConnected node21 node20)
(isOnRight node21 node20)
(isNodesConnected node21 node22)
(isOnLeft node21 node22)
(isNotBusyNode node22)
(isNodesConnected node22 node17)
(isBelow node22 node17)
(isNodesConnected node22 node21)
(isOnRight node22 node21)
(isNodesConnected node22 node23)
(isOnLeft node22 node23)
(isNotBusyNode node23)
(isNodesConnected node23 node18)
(isBelow node23 node18)
(isNodesConnected node23 node22)
(isOnRight node23 node22)
(isNotBusyNode node24)
(isNodesConnected node24 node27)
(isAbove node24 node27)
(isNotBusyNode node25)
(isNodesConnected node25 node20)
(isBelow node25 node20)
(isNodesConnected node25 node29)
(isAbove node25 node29)
(isNodesConnected node25 node26)
(isOnLeft node25 node26)
(isBoxOnNode box4 node26)
(isNotBoxOnGoal box4)
(isBusyNode node26)
(isNodesConnected node26 node21)
(isBelow node26 node21)
(isNodesConnected node26 node30)
(isAbove node26 node30)
(isNodesConnected node26 node25)
(isOnRight node26 node25)
(isNotBusyNode node27)
(isNodesConnected node27 node24)
(isBelow node27 node24)
(isNodesConnected node27 node31)
(isAbove node27 node31)
(isNodesConnected node27 node28)
(isOnLeft node27 node28)
(isNotBusyNode node28)
(isNodesConnected node28 node32)
(isAbove node28 node32)
(isNodesConnected node28 node27)
(isOnRight node28 node27)
(isNotBusyNode node29)
(isNodesConnected node29 node25)
(isBelow node29 node25)
(isNodesConnected node29 node30)
(isOnLeft node29 node30)
(isNotBusyNode node30)
(isNodesConnected node30 node26)
(isBelow node30 node26)
(isNodesConnected node30 node29)
(isOnRight node30 node29)
(isNotBusyNode node31)
(isNodesConnected node31 node27)
(isBelow node31 node27)
(isNodesConnected node31 node32)
(isOnLeft node31 node32)
(isNotBusyNode node32)
(isNodesConnected node32 node28)
(isBelow node32 node28)
(isNodesConnected node32 node31)
(isOnRight node32 node31)
(isDifferentNode node1 node2)
(isDifferentNode node1 node3)
(isDifferentNode node1 node4)
(isDifferentNode node1 node5)
(isDifferentNode node1 node6)
(isDifferentNode node1 node7)
(isDifferentNode node1 node8)
(isDifferentNode node1 node9)
(isDifferentNode node1 node10)
(isDifferentNode node1 node11)
(isDifferentNode node1 node12)
(isDifferentNode node1 node13)
(isDifferentNode node1 node14)
(isDifferentNode node1 node15)
(isDifferentNode node1 node16)
(isDifferentNode node1 node17)
(isDifferentNode node1 node18)
(isDifferentNode node1 node19)
(isDifferentNode node1 node20)
(isDifferentNode node1 node21)
(isDifferentNode node1 node22)
(isDifferentNode node1 node23)
(isDifferentNode node1 node24)
(isDifferentNode node1 node25)
(isDifferentNode node1 node26)
(isDifferentNode node1 node27)
(isDifferentNode node1 node28)
(isDifferentNode node1 node29)
(isDifferentNode node1 node30)
(isDifferentNode node1 node31)
(isDifferentNode node1 node32)
(isDifferentNode node2 node1)
(isDifferentNode node2 node3)
(isDifferentNode node2 node4)
(isDifferentNode node2 node5)
(isDifferentNode node2 node6)
(isDifferentNode node2 node7)
(isDifferentNode node2 node8)
(isDifferentNode node2 node9)
(isDifferentNode node2 node10)
(isDifferentNode node2 node11)
(isDifferentNode node2 node12)
(isDifferentNode node2 node13)
(isDifferentNode node2 node14)
(isDifferentNode node2 node15)
(isDifferentNode node2 node16)
(isDifferentNode node2 node17)
(isDifferentNode node2 node18)
(isDifferentNode node2 node19)
(isDifferentNode node2 node20)
(isDifferentNode node2 node21)
(isDifferentNode node2 node22)
(isDifferentNode node2 node23)
(isDifferentNode node2 node24)
(isDifferentNode node2 node25)
(isDifferentNode node2 node26)
(isDifferentNode node2 node27)
(isDifferentNode node2 node28)
(isDifferentNode node2 node29)
(isDifferentNode node2 node30)
(isDifferentNode node2 node31)
(isDifferentNode node2 node32)
(isDifferentNode node3 node1)
(isDifferentNode node3 node2)
(isDifferentNode node3 node4)
(isDifferentNode node3 node5)
(isDifferentNode node3 node6)
(isDifferentNode node3 node7)
(isDifferentNode node3 node8)
(isDifferentNode node3 node9)
(isDifferentNode node3 node10)
(isDifferentNode node3 node11)
(isDifferentNode node3 node12)
(isDifferentNode node3 node13)
(isDifferentNode node3 node14)
(isDifferentNode node3 node15)
(isDifferentNode node3 node16)
(isDifferentNode node3 node17)
(isDifferentNode node3 node18)
(isDifferentNode node3 node19)
(isDifferentNode node3 node20)
(isDifferentNode node3 node21)
(isDifferentNode node3 node22)
(isDifferentNode node3 node23)
(isDifferentNode node3 node24)
(isDifferentNode node3 node25)
(isDifferentNode node3 node26)
(isDifferentNode node3 node27)
(isDifferentNode node3 node28)
(isDifferentNode node3 node29)
(isDifferentNode node3 node30)
(isDifferentNode node3 node31)
(isDifferentNode node3 node32)
(isDifferentNode node4 node1)
(isDifferentNode node4 node2)
(isDifferentNode node4 node3)
(isDifferentNode node4 node5)
(isDifferentNode node4 node6)
(isDifferentNode node4 node7)
(isDifferentNode node4 node8)
(isDifferentNode node4 node9)
(isDifferentNode node4 node10)
(isDifferentNode node4 node11)
(isDifferentNode node4 node12)
(isDifferentNode node4 node13)
(isDifferentNode node4 node14)
(isDifferentNode node4 node15)
(isDifferentNode node4 node16)
(isDifferentNode node4 node17)
(isDifferentNode node4 node18)
(isDifferentNode node4 node19)
(isDifferentNode node4 node20)
(isDifferentNode node4 node21)
(isDifferentNode node4 node22)
(isDifferentNode node4 node23)
(isDifferentNode node4 node24)
(isDifferentNode node4 node25)
(isDifferentNode node4 node26)
(isDifferentNode node4 node27)
(isDifferentNode node4 node28)
(isDifferentNode node4 node29)
(isDifferentNode node4 node30)
(isDifferentNode node4 node31)
(isDifferentNode node4 node32)
(isDifferentNode node5 node1)
(isDifferentNode node5 node2)
(isDifferentNode node5 node3)
(isDifferentNode node5 node4)
(isDifferentNode node5 node6)
(isDifferentNode node5 node7)
(isDifferentNode node5 node8)
(isDifferentNode node5 node9)
(isDifferentNode node5 node10)
(isDifferentNode node5 node11)
(isDifferentNode node5 node12)
(isDifferentNode node5 node13)
(isDifferentNode node5 node14)
(isDifferentNode node5 node15)
(isDifferentNode node5 node16)
(isDifferentNode node5 node17)
(isDifferentNode node5 node18)
(isDifferentNode node5 node19)
(isDifferentNode node5 node20)
(isDifferentNode node5 node21)
(isDifferentNode node5 node22)
(isDifferentNode node5 node23)
(isDifferentNode node5 node24)
(isDifferentNode node5 node25)
(isDifferentNode node5 node26)
(isDifferentNode node5 node27)
(isDifferentNode node5 node28)
(isDifferentNode node5 node29)
(isDifferentNode node5 node30)
(isDifferentNode node5 node31)
(isDifferentNode node5 node32)
(isDifferentNode node6 node1)
(isDifferentNode node6 node2)
(isDifferentNode node6 node3)
(isDifferentNode node6 node4)
(isDifferentNode node6 node5)
(isDifferentNode node6 node7)
(isDifferentNode node6 node8)
(isDifferentNode node6 node9)
(isDifferentNode node6 node10)
(isDifferentNode node6 node11)
(isDifferentNode node6 node12)
(isDifferentNode node6 node13)
(isDifferentNode node6 node14)
(isDifferentNode node6 node15)
(isDifferentNode node6 node16)
(isDifferentNode node6 node17)
(isDifferentNode node6 node18)
(isDifferentNode node6 node19)
(isDifferentNode node6 node20)
(isDifferentNode node6 node21)
(isDifferentNode node6 node22)
(isDifferentNode node6 node23)
(isDifferentNode node6 node24)
(isDifferentNode node6 node25)
(isDifferentNode node6 node26)
(isDifferentNode node6 node27)
(isDifferentNode node6 node28)
(isDifferentNode node6 node29)
(isDifferentNode node6 node30)
(isDifferentNode node6 node31)
(isDifferentNode node6 node32)
(isDifferentNode node7 node1)
(isDifferentNode node7 node2)
(isDifferentNode node7 node3)
(isDifferentNode node7 node4)
(isDifferentNode node7 node5)
(isDifferentNode node7 node6)
(isDifferentNode node7 node8)
(isDifferentNode node7 node9)
(isDifferentNode node7 node10)
(isDifferentNode node7 node11)
(isDifferentNode node7 node12)
(isDifferentNode node7 node13)
(isDifferentNode node7 node14)
(isDifferentNode node7 node15)
(isDifferentNode node7 node16)
(isDifferentNode node7 node17)
(isDifferentNode node7 node18)
(isDifferentNode node7 node19)
(isDifferentNode node7 node20)
(isDifferentNode node7 node21)
(isDifferentNode node7 node22)
(isDifferentNode node7 node23)
(isDifferentNode node7 node24)
(isDifferentNode node7 node25)
(isDifferentNode node7 node26)
(isDifferentNode node7 node27)
(isDifferentNode node7 node28)
(isDifferentNode node7 node29)
(isDifferentNode node7 node30)
(isDifferentNode node7 node31)
(isDifferentNode node7 node32)
(isDifferentNode node8 node1)
(isDifferentNode node8 node2)
(isDifferentNode node8 node3)
(isDifferentNode node8 node4)
(isDifferentNode node8 node5)
(isDifferentNode node8 node6)
(isDifferentNode node8 node7)
(isDifferentNode node8 node9)
(isDifferentNode node8 node10)
(isDifferentNode node8 node11)
(isDifferentNode node8 node12)
(isDifferentNode node8 node13)
(isDifferentNode node8 node14)
(isDifferentNode node8 node15)
(isDifferentNode node8 node16)
(isDifferentNode node8 node17)
(isDifferentNode node8 node18)
(isDifferentNode node8 node19)
(isDifferentNode node8 node20)
(isDifferentNode node8 node21)
(isDifferentNode node8 node22)
(isDifferentNode node8 node23)
(isDifferentNode node8 node24)
(isDifferentNode node8 node25)
(isDifferentNode node8 node26)
(isDifferentNode node8 node27)
(isDifferentNode node8 node28)
(isDifferentNode node8 node29)
(isDifferentNode node8 node30)
(isDifferentNode node8 node31)
(isDifferentNode node8 node32)
(isDifferentNode node9 node1)
(isDifferentNode node9 node2)
(isDifferentNode node9 node3)
(isDifferentNode node9 node4)
(isDifferentNode node9 node5)
(isDifferentNode node9 node6)
(isDifferentNode node9 node7)
(isDifferentNode node9 node8)
(isDifferentNode node9 node10)
(isDifferentNode node9 node11)
(isDifferentNode node9 node12)
(isDifferentNode node9 node13)
(isDifferentNode node9 node14)
(isDifferentNode node9 node15)
(isDifferentNode node9 node16)
(isDifferentNode node9 node17)
(isDifferentNode node9 node18)
(isDifferentNode node9 node19)
(isDifferentNode node9 node20)
(isDifferentNode node9 node21)
(isDifferentNode node9 node22)
(isDifferentNode node9 node23)
(isDifferentNode node9 node24)
(isDifferentNode node9 node25)
(isDifferentNode node9 node26)
(isDifferentNode node9 node27)
(isDifferentNode node9 node28)
(isDifferentNode node9 node29)
(isDifferentNode node9 node30)
(isDifferentNode node9 node31)
(isDifferentNode node9 node32)
(isDifferentNode node10 node1)
(isDifferentNode node10 node2)
(isDifferentNode node10 node3)
(isDifferentNode node10 node4)
(isDifferentNode node10 node5)
(isDifferentNode node10 node6)
(isDifferentNode node10 node7)
(isDifferentNode node10 node8)
(isDifferentNode node10 node9)
(isDifferentNode node10 node11)
(isDifferentNode node10 node12)
(isDifferentNode node10 node13)
(isDifferentNode node10 node14)
(isDifferentNode node10 node15)
(isDifferentNode node10 node16)
(isDifferentNode node10 node17)
(isDifferentNode node10 node18)
(isDifferentNode node10 node19)
(isDifferentNode node10 node20)
(isDifferentNode node10 node21)
(isDifferentNode node10 node22)
(isDifferentNode node10 node23)
(isDifferentNode node10 node24)
(isDifferentNode node10 node25)
(isDifferentNode node10 node26)
(isDifferentNode node10 node27)
(isDifferentNode node10 node28)
(isDifferentNode node10 node29)
(isDifferentNode node10 node30)
(isDifferentNode node10 node31)
(isDifferentNode node10 node32)
(isDifferentNode node11 node1)
(isDifferentNode node11 node2)
(isDifferentNode node11 node3)
(isDifferentNode node11 node4)
(isDifferentNode node11 node5)
(isDifferentNode node11 node6)
(isDifferentNode node11 node7)
(isDifferentNode node11 node8)
(isDifferentNode node11 node9)
(isDifferentNode node11 node10)
(isDifferentNode node11 node12)
(isDifferentNode node11 node13)
(isDifferentNode node11 node14)
(isDifferentNode node11 node15)
(isDifferentNode node11 node16)
(isDifferentNode node11 node17)
(isDifferentNode node11 node18)
(isDifferentNode node11 node19)
(isDifferentNode node11 node20)
(isDifferentNode node11 node21)
(isDifferentNode node11 node22)
(isDifferentNode node11 node23)
(isDifferentNode node11 node24)
(isDifferentNode node11 node25)
(isDifferentNode node11 node26)
(isDifferentNode node11 node27)
(isDifferentNode node11 node28)
(isDifferentNode node11 node29)
(isDifferentNode node11 node30)
(isDifferentNode node11 node31)
(isDifferentNode node11 node32)
(isDifferentNode node12 node1)
(isDifferentNode node12 node2)
(isDifferentNode node12 node3)
(isDifferentNode node12 node4)
(isDifferentNode node12 node5)
(isDifferentNode node12 node6)
(isDifferentNode node12 node7)
(isDifferentNode node12 node8)
(isDifferentNode node12 node9)
(isDifferentNode node12 node10)
(isDifferentNode node12 node11)
(isDifferentNode node12 node13)
(isDifferentNode node12 node14)
(isDifferentNode node12 node15)
(isDifferentNode node12 node16)
(isDifferentNode node12 node17)
(isDifferentNode node12 node18)
(isDifferentNode node12 node19)
(isDifferentNode node12 node20)
(isDifferentNode node12 node21)
(isDifferentNode node12 node22)
(isDifferentNode node12 node23)
(isDifferentNode node12 node24)
(isDifferentNode node12 node25)
(isDifferentNode node12 node26)
(isDifferentNode node12 node27)
(isDifferentNode node12 node28)
(isDifferentNode node12 node29)
(isDifferentNode node12 node30)
(isDifferentNode node12 node31)
(isDifferentNode node12 node32)
(isDifferentNode node13 node1)
(isDifferentNode node13 node2)
(isDifferentNode node13 node3)
(isDifferentNode node13 node4)
(isDifferentNode node13 node5)
(isDifferentNode node13 node6)
(isDifferentNode node13 node7)
(isDifferentNode node13 node8)
(isDifferentNode node13 node9)
(isDifferentNode node13 node10)
(isDifferentNode node13 node11)
(isDifferentNode node13 node12)
(isDifferentNode node13 node14)
(isDifferentNode node13 node15)
(isDifferentNode node13 node16)
(isDifferentNode node13 node17)
(isDifferentNode node13 node18)
(isDifferentNode node13 node19)
(isDifferentNode node13 node20)
(isDifferentNode node13 node21)
(isDifferentNode node13 node22)
(isDifferentNode node13 node23)
(isDifferentNode node13 node24)
(isDifferentNode node13 node25)
(isDifferentNode node13 node26)
(isDifferentNode node13 node27)
(isDifferentNode node13 node28)
(isDifferentNode node13 node29)
(isDifferentNode node13 node30)
(isDifferentNode node13 node31)
(isDifferentNode node13 node32)
(isDifferentNode node14 node1)
(isDifferentNode node14 node2)
(isDifferentNode node14 node3)
(isDifferentNode node14 node4)
(isDifferentNode node14 node5)
(isDifferentNode node14 node6)
(isDifferentNode node14 node7)
(isDifferentNode node14 node8)
(isDifferentNode node14 node9)
(isDifferentNode node14 node10)
(isDifferentNode node14 node11)
(isDifferentNode node14 node12)
(isDifferentNode node14 node13)
(isDifferentNode node14 node15)
(isDifferentNode node14 node16)
(isDifferentNode node14 node17)
(isDifferentNode node14 node18)
(isDifferentNode node14 node19)
(isDifferentNode node14 node20)
(isDifferentNode node14 node21)
(isDifferentNode node14 node22)
(isDifferentNode node14 node23)
(isDifferentNode node14 node24)
(isDifferentNode node14 node25)
(isDifferentNode node14 node26)
(isDifferentNode node14 node27)
(isDifferentNode node14 node28)
(isDifferentNode node14 node29)
(isDifferentNode node14 node30)
(isDifferentNode node14 node31)
(isDifferentNode node14 node32)
(isDifferentNode node15 node1)
(isDifferentNode node15 node2)
(isDifferentNode node15 node3)
(isDifferentNode node15 node4)
(isDifferentNode node15 node5)
(isDifferentNode node15 node6)
(isDifferentNode node15 node7)
(isDifferentNode node15 node8)
(isDifferentNode node15 node9)
(isDifferentNode node15 node10)
(isDifferentNode node15 node11)
(isDifferentNode node15 node12)
(isDifferentNode node15 node13)
(isDifferentNode node15 node14)
(isDifferentNode node15 node16)
(isDifferentNode node15 node17)
(isDifferentNode node15 node18)
(isDifferentNode node15 node19)
(isDifferentNode node15 node20)
(isDifferentNode node15 node21)
(isDifferentNode node15 node22)
(isDifferentNode node15 node23)
(isDifferentNode node15 node24)
(isDifferentNode node15 node25)
(isDifferentNode node15 node26)
(isDifferentNode node15 node27)
(isDifferentNode node15 node28)
(isDifferentNode node15 node29)
(isDifferentNode node15 node30)
(isDifferentNode node15 node31)
(isDifferentNode node15 node32)
(isDifferentNode node16 node1)
(isDifferentNode node16 node2)
(isDifferentNode node16 node3)
(isDifferentNode node16 node4)
(isDifferentNode node16 node5)
(isDifferentNode node16 node6)
(isDifferentNode node16 node7)
(isDifferentNode node16 node8)
(isDifferentNode node16 node9)
(isDifferentNode node16 node10)
(isDifferentNode node16 node11)
(isDifferentNode node16 node12)
(isDifferentNode node16 node13)
(isDifferentNode node16 node14)
(isDifferentNode node16 node15)
(isDifferentNode node16 node17)
(isDifferentNode node16 node18)
(isDifferentNode node16 node19)
(isDifferentNode node16 node20)
(isDifferentNode node16 node21)
(isDifferentNode node16 node22)
(isDifferentNode node16 node23)
(isDifferentNode node16 node24)
(isDifferentNode node16 node25)
(isDifferentNode node16 node26)
(isDifferentNode node16 node27)
(isDifferentNode node16 node28)
(isDifferentNode node16 node29)
(isDifferentNode node16 node30)
(isDifferentNode node16 node31)
(isDifferentNode node16 node32)
(isDifferentNode node17 node1)
(isDifferentNode node17 node2)
(isDifferentNode node17 node3)
(isDifferentNode node17 node4)
(isDifferentNode node17 node5)
(isDifferentNode node17 node6)
(isDifferentNode node17 node7)
(isDifferentNode node17 node8)
(isDifferentNode node17 node9)
(isDifferentNode node17 node10)
(isDifferentNode node17 node11)
(isDifferentNode node17 node12)
(isDifferentNode node17 node13)
(isDifferentNode node17 node14)
(isDifferentNode node17 node15)
(isDifferentNode node17 node16)
(isDifferentNode node17 node18)
(isDifferentNode node17 node19)
(isDifferentNode node17 node20)
(isDifferentNode node17 node21)
(isDifferentNode node17 node22)
(isDifferentNode node17 node23)
(isDifferentNode node17 node24)
(isDifferentNode node17 node25)
(isDifferentNode node17 node26)
(isDifferentNode node17 node27)
(isDifferentNode node17 node28)
(isDifferentNode node17 node29)
(isDifferentNode node17 node30)
(isDifferentNode node17 node31)
(isDifferentNode node17 node32)
(isDifferentNode node18 node1)
(isDifferentNode node18 node2)
(isDifferentNode node18 node3)
(isDifferentNode node18 node4)
(isDifferentNode node18 node5)
(isDifferentNode node18 node6)
(isDifferentNode node18 node7)
(isDifferentNode node18 node8)
(isDifferentNode node18 node9)
(isDifferentNode node18 node10)
(isDifferentNode node18 node11)
(isDifferentNode node18 node12)
(isDifferentNode node18 node13)
(isDifferentNode node18 node14)
(isDifferentNode node18 node15)
(isDifferentNode node18 node16)
(isDifferentNode node18 node17)
(isDifferentNode node18 node19)
(isDifferentNode node18 node20)
(isDifferentNode node18 node21)
(isDifferentNode node18 node22)
(isDifferentNode node18 node23)
(isDifferentNode node18 node24)
(isDifferentNode node18 node25)
(isDifferentNode node18 node26)
(isDifferentNode node18 node27)
(isDifferentNode node18 node28)
(isDifferentNode node18 node29)
(isDifferentNode node18 node30)
(isDifferentNode node18 node31)
(isDifferentNode node18 node32)
(isDifferentNode node19 node1)
(isDifferentNode node19 node2)
(isDifferentNode node19 node3)
(isDifferentNode node19 node4)
(isDifferentNode node19 node5)
(isDifferentNode node19 node6)
(isDifferentNode node19 node7)
(isDifferentNode node19 node8)
(isDifferentNode node19 node9)
(isDifferentNode node19 node10)
(isDifferentNode node19 node11)
(isDifferentNode node19 node12)
(isDifferentNode node19 node13)
(isDifferentNode node19 node14)
(isDifferentNode node19 node15)
(isDifferentNode node19 node16)
(isDifferentNode node19 node17)
(isDifferentNode node19 node18)
(isDifferentNode node19 node20)
(isDifferentNode node19 node21)
(isDifferentNode node19 node22)
(isDifferentNode node19 node23)
(isDifferentNode node19 node24)
(isDifferentNode node19 node25)
(isDifferentNode node19 node26)
(isDifferentNode node19 node27)
(isDifferentNode node19 node28)
(isDifferentNode node19 node29)
(isDifferentNode node19 node30)
(isDifferentNode node19 node31)
(isDifferentNode node19 node32)
(isDifferentNode node20 node1)
(isDifferentNode node20 node2)
(isDifferentNode node20 node3)
(isDifferentNode node20 node4)
(isDifferentNode node20 node5)
(isDifferentNode node20 node6)
(isDifferentNode node20 node7)
(isDifferentNode node20 node8)
(isDifferentNode node20 node9)
(isDifferentNode node20 node10)
(isDifferentNode node20 node11)
(isDifferentNode node20 node12)
(isDifferentNode node20 node13)
(isDifferentNode node20 node14)
(isDifferentNode node20 node15)
(isDifferentNode node20 node16)
(isDifferentNode node20 node17)
(isDifferentNode node20 node18)
(isDifferentNode node20 node19)
(isDifferentNode node20 node21)
(isDifferentNode node20 node22)
(isDifferentNode node20 node23)
(isDifferentNode node20 node24)
(isDifferentNode node20 node25)
(isDifferentNode node20 node26)
(isDifferentNode node20 node27)
(isDifferentNode node20 node28)
(isDifferentNode node20 node29)
(isDifferentNode node20 node30)
(isDifferentNode node20 node31)
(isDifferentNode node20 node32)
(isDifferentNode node21 node1)
(isDifferentNode node21 node2)
(isDifferentNode node21 node3)
(isDifferentNode node21 node4)
(isDifferentNode node21 node5)
(isDifferentNode node21 node6)
(isDifferentNode node21 node7)
(isDifferentNode node21 node8)
(isDifferentNode node21 node9)
(isDifferentNode node21 node10)
(isDifferentNode node21 node11)
(isDifferentNode node21 node12)
(isDifferentNode node21 node13)
(isDifferentNode node21 node14)
(isDifferentNode node21 node15)
(isDifferentNode node21 node16)
(isDifferentNode node21 node17)
(isDifferentNode node21 node18)
(isDifferentNode node21 node19)
(isDifferentNode node21 node20)
(isDifferentNode node21 node22)
(isDifferentNode node21 node23)
(isDifferentNode node21 node24)
(isDifferentNode node21 node25)
(isDifferentNode node21 node26)
(isDifferentNode node21 node27)
(isDifferentNode node21 node28)
(isDifferentNode node21 node29)
(isDifferentNode node21 node30)
(isDifferentNode node21 node31)
(isDifferentNode node21 node32)
(isDifferentNode node22 node1)
(isDifferentNode node22 node2)
(isDifferentNode node22 node3)
(isDifferentNode node22 node4)
(isDifferentNode node22 node5)
(isDifferentNode node22 node6)
(isDifferentNode node22 node7)
(isDifferentNode node22 node8)
(isDifferentNode node22 node9)
(isDifferentNode node22 node10)
(isDifferentNode node22 node11)
(isDifferentNode node22 node12)
(isDifferentNode node22 node13)
(isDifferentNode node22 node14)
(isDifferentNode node22 node15)
(isDifferentNode node22 node16)
(isDifferentNode node22 node17)
(isDifferentNode node22 node18)
(isDifferentNode node22 node19)
(isDifferentNode node22 node20)
(isDifferentNode node22 node21)
(isDifferentNode node22 node23)
(isDifferentNode node22 node24)
(isDifferentNode node22 node25)
(isDifferentNode node22 node26)
(isDifferentNode node22 node27)
(isDifferentNode node22 node28)
(isDifferentNode node22 node29)
(isDifferentNode node22 node30)
(isDifferentNode node22 node31)
(isDifferentNode node22 node32)
(isDifferentNode node23 node1)
(isDifferentNode node23 node2)
(isDifferentNode node23 node3)
(isDifferentNode node23 node4)
(isDifferentNode node23 node5)
(isDifferentNode node23 node6)
(isDifferentNode node23 node7)
(isDifferentNode node23 node8)
(isDifferentNode node23 node9)
(isDifferentNode node23 node10)
(isDifferentNode node23 node11)
(isDifferentNode node23 node12)
(isDifferentNode node23 node13)
(isDifferentNode node23 node14)
(isDifferentNode node23 node15)
(isDifferentNode node23 node16)
(isDifferentNode node23 node17)
(isDifferentNode node23 node18)
(isDifferentNode node23 node19)
(isDifferentNode node23 node20)
(isDifferentNode node23 node21)
(isDifferentNode node23 node22)
(isDifferentNode node23 node24)
(isDifferentNode node23 node25)
(isDifferentNode node23 node26)
(isDifferentNode node23 node27)
(isDifferentNode node23 node28)
(isDifferentNode node23 node29)
(isDifferentNode node23 node30)
(isDifferentNode node23 node31)
(isDifferentNode node23 node32)
(isDifferentNode node24 node1)
(isDifferentNode node24 node2)
(isDifferentNode node24 node3)
(isDifferentNode node24 node4)
(isDifferentNode node24 node5)
(isDifferentNode node24 node6)
(isDifferentNode node24 node7)
(isDifferentNode node24 node8)
(isDifferentNode node24 node9)
(isDifferentNode node24 node10)
(isDifferentNode node24 node11)
(isDifferentNode node24 node12)
(isDifferentNode node24 node13)
(isDifferentNode node24 node14)
(isDifferentNode node24 node15)
(isDifferentNode node24 node16)
(isDifferentNode node24 node17)
(isDifferentNode node24 node18)
(isDifferentNode node24 node19)
(isDifferentNode node24 node20)
(isDifferentNode node24 node21)
(isDifferentNode node24 node22)
(isDifferentNode node24 node23)
(isDifferentNode node24 node25)
(isDifferentNode node24 node26)
(isDifferentNode node24 node27)
(isDifferentNode node24 node28)
(isDifferentNode node24 node29)
(isDifferentNode node24 node30)
(isDifferentNode node24 node31)
(isDifferentNode node24 node32)
(isDifferentNode node25 node1)
(isDifferentNode node25 node2)
(isDifferentNode node25 node3)
(isDifferentNode node25 node4)
(isDifferentNode node25 node5)
(isDifferentNode node25 node6)
(isDifferentNode node25 node7)
(isDifferentNode node25 node8)
(isDifferentNode node25 node9)
(isDifferentNode node25 node10)
(isDifferentNode node25 node11)
(isDifferentNode node25 node12)
(isDifferentNode node25 node13)
(isDifferentNode node25 node14)
(isDifferentNode node25 node15)
(isDifferentNode node25 node16)
(isDifferentNode node25 node17)
(isDifferentNode node25 node18)
(isDifferentNode node25 node19)
(isDifferentNode node25 node20)
(isDifferentNode node25 node21)
(isDifferentNode node25 node22)
(isDifferentNode node25 node23)
(isDifferentNode node25 node24)
(isDifferentNode node25 node26)
(isDifferentNode node25 node27)
(isDifferentNode node25 node28)
(isDifferentNode node25 node29)
(isDifferentNode node25 node30)
(isDifferentNode node25 node31)
(isDifferentNode node25 node32)
(isDifferentNode node26 node1)
(isDifferentNode node26 node2)
(isDifferentNode node26 node3)
(isDifferentNode node26 node4)
(isDifferentNode node26 node5)
(isDifferentNode node26 node6)
(isDifferentNode node26 node7)
(isDifferentNode node26 node8)
(isDifferentNode node26 node9)
(isDifferentNode node26 node10)
(isDifferentNode node26 node11)
(isDifferentNode node26 node12)
(isDifferentNode node26 node13)
(isDifferentNode node26 node14)
(isDifferentNode node26 node15)
(isDifferentNode node26 node16)
(isDifferentNode node26 node17)
(isDifferentNode node26 node18)
(isDifferentNode node26 node19)
(isDifferentNode node26 node20)
(isDifferentNode node26 node21)
(isDifferentNode node26 node22)
(isDifferentNode node26 node23)
(isDifferentNode node26 node24)
(isDifferentNode node26 node25)
(isDifferentNode node26 node27)
(isDifferentNode node26 node28)
(isDifferentNode node26 node29)
(isDifferentNode node26 node30)
(isDifferentNode node26 node31)
(isDifferentNode node26 node32)
(isDifferentNode node27 node1)
(isDifferentNode node27 node2)
(isDifferentNode node27 node3)
(isDifferentNode node27 node4)
(isDifferentNode node27 node5)
(isDifferentNode node27 node6)
(isDifferentNode node27 node7)
(isDifferentNode node27 node8)
(isDifferentNode node27 node9)
(isDifferentNode node27 node10)
(isDifferentNode node27 node11)
(isDifferentNode node27 node12)
(isDifferentNode node27 node13)
(isDifferentNode node27 node14)
(isDifferentNode node27 node15)
(isDifferentNode node27 node16)
(isDifferentNode node27 node17)
(isDifferentNode node27 node18)
(isDifferentNode node27 node19)
(isDifferentNode node27 node20)
(isDifferentNode node27 node21)
(isDifferentNode node27 node22)
(isDifferentNode node27 node23)
(isDifferentNode node27 node24)
(isDifferentNode node27 node25)
(isDifferentNode node27 node26)
(isDifferentNode node27 node28)
(isDifferentNode node27 node29)
(isDifferentNode node27 node30)
(isDifferentNode node27 node31)
(isDifferentNode node27 node32)
(isDifferentNode node28 node1)
(isDifferentNode node28 node2)
(isDifferentNode node28 node3)
(isDifferentNode node28 node4)
(isDifferentNode node28 node5)
(isDifferentNode node28 node6)
(isDifferentNode node28 node7)
(isDifferentNode node28 node8)
(isDifferentNode node28 node9)
(isDifferentNode node28 node10)
(isDifferentNode node28 node11)
(isDifferentNode node28 node12)
(isDifferentNode node28 node13)
(isDifferentNode node28 node14)
(isDifferentNode node28 node15)
(isDifferentNode node28 node16)
(isDifferentNode node28 node17)
(isDifferentNode node28 node18)
(isDifferentNode node28 node19)
(isDifferentNode node28 node20)
(isDifferentNode node28 node21)
(isDifferentNode node28 node22)
(isDifferentNode node28 node23)
(isDifferentNode node28 node24)
(isDifferentNode node28 node25)
(isDifferentNode node28 node26)
(isDifferentNode node28 node27)
(isDifferentNode node28 node29)
(isDifferentNode node28 node30)
(isDifferentNode node28 node31)
(isDifferentNode node28 node32)
(isDifferentNode node29 node1)
(isDifferentNode node29 node2)
(isDifferentNode node29 node3)
(isDifferentNode node29 node4)
(isDifferentNode node29 node5)
(isDifferentNode node29 node6)
(isDifferentNode node29 node7)
(isDifferentNode node29 node8)
(isDifferentNode node29 node9)
(isDifferentNode node29 node10)
(isDifferentNode node29 node11)
(isDifferentNode node29 node12)
(isDifferentNode node29 node13)
(isDifferentNode node29 node14)
(isDifferentNode node29 node15)
(isDifferentNode node29 node16)
(isDifferentNode node29 node17)
(isDifferentNode node29 node18)
(isDifferentNode node29 node19)
(isDifferentNode node29 node20)
(isDifferentNode node29 node21)
(isDifferentNode node29 node22)
(isDifferentNode node29 node23)
(isDifferentNode node29 node24)
(isDifferentNode node29 node25)
(isDifferentNode node29 node26)
(isDifferentNode node29 node27)
(isDifferentNode node29 node28)
(isDifferentNode node29 node30)
(isDifferentNode node29 node31)
(isDifferentNode node29 node32)
(isDifferentNode node30 node1)
(isDifferentNode node30 node2)
(isDifferentNode node30 node3)
(isDifferentNode node30 node4)
(isDifferentNode node30 node5)
(isDifferentNode node30 node6)
(isDifferentNode node30 node7)
(isDifferentNode node30 node8)
(isDifferentNode node30 node9)
(isDifferentNode node30 node10)
(isDifferentNode node30 node11)
(isDifferentNode node30 node12)
(isDifferentNode node30 node13)
(isDifferentNode node30 node14)
(isDifferentNode node30 node15)
(isDifferentNode node30 node16)
(isDifferentNode node30 node17)
(isDifferentNode node30 node18)
(isDifferentNode node30 node19)
(isDifferentNode node30 node20)
(isDifferentNode node30 node21)
(isDifferentNode node30 node22)
(isDifferentNode node30 node23)
(isDifferentNode node30 node24)
(isDifferentNode node30 node25)
(isDifferentNode node30 node26)
(isDifferentNode node30 node27)
(isDifferentNode node30 node28)
(isDifferentNode node30 node29)
(isDifferentNode node30 node31)
(isDifferentNode node30 node32)
(isDifferentNode node31 node1)
(isDifferentNode node31 node2)
(isDifferentNode node31 node3)
(isDifferentNode node31 node4)
(isDifferentNode node31 node5)
(isDifferentNode node31 node6)
(isDifferentNode node31 node7)
(isDifferentNode node31 node8)
(isDifferentNode node31 node9)
(isDifferentNode node31 node10)
(isDifferentNode node31 node11)
(isDifferentNode node31 node12)
(isDifferentNode node31 node13)
(isDifferentNode node31 node14)
(isDifferentNode node31 node15)
(isDifferentNode node31 node16)
(isDifferentNode node31 node17)
(isDifferentNode node31 node18)
(isDifferentNode node31 node19)
(isDifferentNode node31 node20)
(isDifferentNode node31 node21)
(isDifferentNode node31 node22)
(isDifferentNode node31 node23)
(isDifferentNode node31 node24)
(isDifferentNode node31 node25)
(isDifferentNode node31 node26)
(isDifferentNode node31 node27)
(isDifferentNode node31 node28)
(isDifferentNode node31 node29)
(isDifferentNode node31 node30)
(isDifferentNode node31 node32)
(isDifferentNode node32 node1)
(isDifferentNode node32 node2)
(isDifferentNode node32 node3)
(isDifferentNode node32 node4)
(isDifferentNode node32 node5)
(isDifferentNode node32 node6)
(isDifferentNode node32 node7)
(isDifferentNode node32 node8)
(isDifferentNode node32 node9)
(isDifferentNode node32 node10)
(isDifferentNode node32 node11)
(isDifferentNode node32 node12)
(isDifferentNode node32 node13)
(isDifferentNode node32 node14)
(isDifferentNode node32 node15)
(isDifferentNode node32 node16)
(isDifferentNode node32 node17)
(isDifferentNode node32 node18)
(isDifferentNode node32 node19)
(isDifferentNode node32 node20)
(isDifferentNode node32 node21)
(isDifferentNode node32 node22)
(isDifferentNode node32 node23)
(isDifferentNode node32 node24)
(isDifferentNode node32 node25)
(isDifferentNode node32 node26)
(isDifferentNode node32 node27)
(isDifferentNode node32 node28)
(isDifferentNode node32 node29)
(isDifferentNode node32 node30)
(isDifferentNode node32 node31)
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