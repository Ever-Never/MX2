.class Lcom/meizu/widget/MultiWaveView$Tweener;
.super Ljava/lang/Object;
.source "MultiWaveView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/widget/MultiWaveView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Tweener"
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "Tweener"

.field private static mCleanupListener:Landroid/animation/Animator$AnimatorListener;

.field private static sTweens:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Lcom/meizu/widget/MultiWaveView$Tweener;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field animator:Landroid/animation/ObjectAnimator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1609
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/meizu/widget/MultiWaveView$Tweener;->sTweens:Ljava/util/HashMap;

    .line 1711
    new-instance v0, Lcom/meizu/widget/MultiWaveView$Tweener$1;

    invoke-direct {v0}, Lcom/meizu/widget/MultiWaveView$Tweener$1;-><init>()V

    sput-object v0, Lcom/meizu/widget/MultiWaveView$Tweener;->mCleanupListener:Landroid/animation/Animator$AnimatorListener;

    return-void
.end method

.method public constructor <init>(Landroid/animation/ObjectAnimator;)V
    .locals 0
    .parameter "anim"

    .prologue
    .line 1611
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1612
    iput-object p1, p0, Lcom/meizu/widget/MultiWaveView$Tweener;->animator:Landroid/animation/ObjectAnimator;

    .line 1613
    return-void
.end method

.method static synthetic access$1800(Landroid/animation/Animator;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1604
    invoke-static {p0}, Lcom/meizu/widget/MultiWaveView$Tweener;->remove(Landroid/animation/Animator;)V

    return-void
.end method

.method private static remove(Landroid/animation/Animator;)V
    .locals 3
    .parameter "animator"

    .prologue
    .line 1616
    sget-object v2, Lcom/meizu/widget/MultiWaveView$Tweener;->sTweens:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1617
    .local v1, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Object;Lcom/meizu/widget/MultiWaveView$Tweener;>;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1618
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1619
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Object;Lcom/meizu/widget/MultiWaveView$Tweener;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/meizu/widget/MultiWaveView$Tweener;

    iget-object v2, v2, Lcom/meizu/widget/MultiWaveView$Tweener;->animator:Landroid/animation/ObjectAnimator;

    if-ne v2, p0, :cond_0

    .line 1622
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 1626
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Object;Lcom/meizu/widget/MultiWaveView$Tweener;>;"
    :cond_1
    return-void
.end method

.method private static varargs replace(Ljava/util/ArrayList;[Ljava/lang/Object;)V
    .locals 7
    .parameter
    .parameter "args"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/PropertyValuesHolder;",
            ">;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1735
    .local p0, props:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/PropertyValuesHolder;>;"
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/Object;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v2, v0, v1

    .line 1736
    .local v2, killobject:Ljava/lang/Object;
    sget-object v5, Lcom/meizu/widget/MultiWaveView$Tweener;->sTweens:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/meizu/widget/MultiWaveView$Tweener;

    .line 1737
    .local v4, tween:Lcom/meizu/widget/MultiWaveView$Tweener;
    if-eqz v4, :cond_0

    .line 1738
    iget-object v5, v4, Lcom/meizu/widget/MultiWaveView$Tweener;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1739
    if-eqz p0, :cond_1

    .line 1740
    iget-object v6, v4, Lcom/meizu/widget/MultiWaveView$Tweener;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Landroid/animation/PropertyValuesHolder;

    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/animation/PropertyValuesHolder;

    invoke-virtual {v6, v5}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 1735
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1743
    :cond_1
    sget-object v5, Lcom/meizu/widget/MultiWaveView$Tweener;->sTweens:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1747
    .end local v2           #killobject:Ljava/lang/Object;
    .end local v4           #tween:Lcom/meizu/widget/MultiWaveView$Tweener;
    :cond_2
    return-void
.end method

.method public static reset()V
    .locals 1

    .prologue
    .line 1731
    sget-object v0, Lcom/meizu/widget/MultiWaveView$Tweener;->sTweens:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1732
    return-void
.end method

.method public static varargs to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/meizu/widget/MultiWaveView$Tweener;
    .locals 18
    .parameter "object"
    .parameter "duration"
    .parameter "vars"

    .prologue
    .line 1629
    const-wide/16 v3, 0x0

    .line 1630
    .local v3, delay:J
    const/4 v12, 0x0

    .line 1631
    .local v12, updateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    const/4 v9, 0x0

    .line 1632
    .local v9, listener:Landroid/animation/Animator$AnimatorListener;
    const/4 v7, 0x0

    .line 1635
    .local v7, interpolator:Landroid/animation/TimeInterpolator;
    new-instance v10, Ljava/util/ArrayList;

    move-object/from16 v0, p3

    array-length v14, v0

    div-int/lit8 v14, v14, 0x2

    invoke-direct {v10, v14}, Ljava/util/ArrayList;-><init>(I)V

    .line 1636
    .local v10, props:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/PropertyValuesHolder;>;"
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    move-object/from16 v0, p3

    array-length v14, v0

    if-ge v6, v14, :cond_c

    .line 1637
    aget-object v14, p3, v6

    instance-of v14, v14, Ljava/lang/String;

    if-nez v14, :cond_0

    .line 1638
    new-instance v14, Ljava/lang/IllegalArgumentException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Key must be a string: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    aget-object v16, p3, v6

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 1640
    :cond_0
    aget-object v8, p3, v6

    check-cast v8, Ljava/lang/String;

    .line 1641
    .local v8, key:Ljava/lang/String;
    add-int/lit8 v14, v6, 0x1

    aget-object v13, p3, v14

    .line 1642
    .local v13, value:Ljava/lang/Object;
    const-string v14, "simultaneousTween"

    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 1636
    .end local v13           #value:Ljava/lang/Object;
    :cond_1
    :goto_1
    add-int/lit8 v6, v6, 0x2

    goto :goto_0

    .line 1644
    .restart local v13       #value:Ljava/lang/Object;
    :cond_2
    const-string v14, "ease"

    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    move-object v7, v13

    .line 1645
    check-cast v7, Landroid/animation/TimeInterpolator;

    goto :goto_1

    .line 1646
    :cond_3
    const-string v14, "onUpdate"

    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_4

    const-string v14, "onUpdateListener"

    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    :cond_4
    move-object v12, v13

    .line 1647
    check-cast v12, Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    goto :goto_1

    .line 1648
    :cond_5
    const-string v14, "onComplete"

    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_6

    const-string v14, "onCompleteListener"

    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    :cond_6
    move-object v9, v13

    .line 1649
    check-cast v9, Landroid/animation/Animator$AnimatorListener;

    goto :goto_1

    .line 1650
    :cond_7
    const-string v14, "delay"

    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 1651
    check-cast v13, Ljava/lang/Number;

    .end local v13           #value:Ljava/lang/Object;
    invoke-virtual {v13}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    goto :goto_1

    .line 1652
    .restart local v13       #value:Ljava/lang/Object;
    :cond_8
    const-string v14, "syncWith"

    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1

    .line 1654
    instance-of v14, v13, [F

    if-eqz v14, :cond_9

    .line 1655
    const/4 v14, 0x2

    new-array v15, v14, [F

    const/16 v16, 0x0

    move-object v14, v13

    check-cast v14, [F

    check-cast v14, [F

    const/16 v17, 0x0

    aget v14, v14, v17

    aput v14, v15, v16

    const/4 v14, 0x1

    check-cast v13, [F

    .end local v13           #value:Ljava/lang/Object;
    check-cast v13, [F

    const/16 v16, 0x1

    aget v16, v13, v16

    aput v16, v15, v14

    invoke-static {v8, v15}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1657
    .restart local v13       #value:Ljava/lang/Object;
    :cond_9
    instance-of v14, v13, [I

    if-eqz v14, :cond_a

    .line 1658
    const/4 v14, 0x2

    new-array v15, v14, [I

    const/16 v16, 0x0

    move-object v14, v13

    check-cast v14, [I

    check-cast v14, [I

    const/16 v17, 0x0

    aget v14, v14, v17

    aput v14, v15, v16

    const/4 v14, 0x1

    check-cast v13, [I

    .end local v13           #value:Ljava/lang/Object;
    check-cast v13, [I

    const/16 v16, 0x1

    aget v16, v13, v16

    aput v16, v15, v14

    invoke-static {v8, v15}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1660
    .restart local v13       #value:Ljava/lang/Object;
    :cond_a
    instance-of v14, v13, Ljava/lang/Number;

    if-eqz v14, :cond_b

    .line 1661
    check-cast v13, Ljava/lang/Number;

    .end local v13           #value:Ljava/lang/Object;
    invoke-virtual {v13}, Ljava/lang/Number;->floatValue()F

    move-result v5

    .line 1662
    .local v5, floatValue:F
    const/4 v14, 0x1

    new-array v14, v14, [F

    const/4 v15, 0x0

    aput v5, v14, v15

    invoke-static {v8, v14}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1664
    .end local v5           #floatValue:F
    .restart local v13       #value:Ljava/lang/Object;
    :cond_b
    new-instance v14, Ljava/lang/IllegalArgumentException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Bad argument for key \""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "\" with value "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 1670
    .end local v8           #key:Ljava/lang/String;
    .end local v13           #value:Ljava/lang/Object;
    :cond_c
    sget-object v14, Lcom/meizu/widget/MultiWaveView$Tweener;->sTweens:Ljava/util/HashMap;

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/meizu/widget/MultiWaveView$Tweener;

    .line 1671
    .local v11, tween:Lcom/meizu/widget/MultiWaveView$Tweener;
    const/4 v2, 0x0

    .line 1672
    .local v2, anim:Landroid/animation/ObjectAnimator;
    if-nez v11, :cond_10

    .line 1673
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v14

    new-array v14, v14, [Landroid/animation/PropertyValuesHolder;

    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Landroid/animation/PropertyValuesHolder;

    move-object/from16 v0, p0

    invoke-static {v0, v14}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 1675
    new-instance v11, Lcom/meizu/widget/MultiWaveView$Tweener;

    .end local v11           #tween:Lcom/meizu/widget/MultiWaveView$Tweener;
    invoke-direct {v11, v2}, Lcom/meizu/widget/MultiWaveView$Tweener;-><init>(Landroid/animation/ObjectAnimator;)V

    .line 1676
    .restart local v11       #tween:Lcom/meizu/widget/MultiWaveView$Tweener;
    sget-object v14, Lcom/meizu/widget/MultiWaveView$Tweener;->sTweens:Ljava/util/HashMap;

    move-object/from16 v0, p0

    invoke-virtual {v14, v0, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1683
    :goto_2
    if-eqz v7, :cond_d

    .line 1684
    invoke-virtual {v2, v7}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1688
    :cond_d
    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 1689
    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1690
    if-eqz v12, :cond_e

    .line 1691
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 1692
    invoke-virtual {v2, v12}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1694
    :cond_e
    if-eqz v9, :cond_f

    .line 1695
    invoke-virtual {v2}, Landroid/animation/Animator;->removeAllListeners()V

    .line 1696
    invoke-virtual {v2, v9}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1698
    :cond_f
    sget-object v14, Lcom/meizu/widget/MultiWaveView$Tweener;->mCleanupListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v2, v14}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1700
    return-object v11

    .line 1679
    :cond_10
    sget-object v14, Lcom/meizu/widget/MultiWaveView$Tweener;->sTweens:Ljava/util/HashMap;

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/meizu/widget/MultiWaveView$Tweener;

    iget-object v2, v14, Lcom/meizu/widget/MultiWaveView$Tweener;->animator:Landroid/animation/ObjectAnimator;

    .line 1680
    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object p0, v14, v15

    invoke-static {v10, v14}, Lcom/meizu/widget/MultiWaveView$Tweener;->replace(Ljava/util/ArrayList;[Ljava/lang/Object;)V

    goto :goto_2
.end method


# virtual methods
.method varargs from(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/meizu/widget/MultiWaveView$Tweener;
    .locals 1
    .parameter "object"
    .parameter "duration"
    .parameter "vars"

    .prologue
    .line 1707
    invoke-static {p1, p2, p3, p4}, Lcom/meizu/widget/MultiWaveView$Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/meizu/widget/MultiWaveView$Tweener;

    move-result-object v0

    return-object v0
.end method
