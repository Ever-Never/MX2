.class Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;
.super Ljava/lang/Object;
.source "MzOverScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/widget/MzOverScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MagneticOverScroller"
.end annotation


# static fields
.field private static final DECELERATIONSPEED_FAST:I = 0x32

.field private static final DECELERATIONSPEED_SLOW:I = 0x19

.field private static final DEFAULT_BOUNCE_COEFFICIENT:F = 0.16f

.field private static final FLING:I = 0x0

.field static GRAVITY:F = 0.0f

.field private static final MAXFLINGTESTCOUNT:I = 0x4

.field private static final MAXUPDATECOUNT:I = 0x5

.field private static final MINIMUM_VELOCITY_FOR_BOUNCE:F = 3.4028235E38f

.field private static final OVERFLING:I = 0x1

.field private static final OVERSCROLL_SPRINGBACK_DURATION:I = 0x26a

.field private static final SPRINGBACK:I = 0x2

.field private static final TIME_COEF:F = 5.083483f


# instance fields
.field private mAverageTime:J

.field private mBounceCoefficient:F

.field private mCoeffDeceleration:F

.field mCurrVelocity:F

.field mCurrentPosition:I

.field mDeceleration:F

.field private mDecelerationSpeed:I

.field private mDelta:F

.field mDuration:I

.field mFinal:I

.field mFinished:Z

.field private mFlingTestCount:I

.field private mGravityDeceleration:Z

.field private mIterateCount:I

.field private mLastDistance:F

.field private mOver:I

.field private mSpringDistance:I

.field private mSpringbackEnd:I

.field mStart:I

.field mStartTime:J

.field private mState:I

.field private mUpdateCount:I

.field mVelocity:I


# direct methods
.method constructor <init>()V
    .locals 5

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 645
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 559
    iput v1, p0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mIterateCount:I

    .line 560
    iput v0, p0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mLastDistance:F

    .line 561
    iput v0, p0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mDelta:F

    .line 562
    iput v0, p0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mCoeffDeceleration:F

    .line 563
    iput v1, p0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mSpringbackEnd:I

    .line 564
    iput v1, p0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mSpringDistance:I

    .line 566
    iput-boolean v1, p0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mGravityDeceleration:Z

    .line 570
    iput v2, p0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mFlingTestCount:I

    .line 571
    iput v1, p0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mUpdateCount:I

    .line 575
    const/16 v0, 0x32

    iput v0, p0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mDecelerationSpeed:I

    .line 576
    iput-wide v3, p0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mAverageTime:J

    .line 618
    iput v1, p0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mState:I

    .line 643
    const v0, 0x3e23d70a

    iput v0, p0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mBounceCoefficient:F

    .line 646
    iput-boolean v2, p0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mFinished:Z

    .line 647
    iput v2, p0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mFlingTestCount:I

    .line 648
    iput-wide v3, p0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mAverageTime:J

    .line 649
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 518
    invoke-direct {p0}, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->update()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 518
    iget v0, p0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mState:I

    return v0
.end method

.method static computeDuration(IIFF)I
    .locals 7
    .parameter "start"
    .parameter "end"
    .parameter "initialVelocity"
    .parameter "deceleration"

    .prologue
    const/4 v6, 0x0

    .line 670
    sub-int v2, p0, p1

    .line 671
    .local v2, distance:I
    mul-float v3, p2, p2

    const/high16 v4, 0x4000

    mul-float/2addr v4, p3

    int-to-float v5, v2

    mul-float/2addr v4, v5

    sub-float v1, v3, v4

    .line 673
    .local v1, discriminant:F
    cmpl-float v3, v1, v6

    if-ltz v3, :cond_1

    .line 674
    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v0, v3

    .line 675
    .local v0, delta:F
    cmpg-float v3, p3, v6

    if-gez v3, :cond_0

    .line 676
    neg-float v0, v0

    .line 678
    :cond_0
    const/high16 v3, 0x447a

    neg-float v4, p2

    sub-float/2addr v4, v0

    mul-float/2addr v3, v4

    div-float/2addr v3, p3

    float-to-int v3, v3

    .line 682
    .end local v0           #delta:F
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method static getDeceleration(I)F
    .locals 1
    .parameter "velocity"

    .prologue
    .line 662
    if-lez p0, :cond_0

    sget v0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->GRAVITY:F

    neg-float v0, v0

    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->GRAVITY:F

    goto :goto_0
.end method

.method static initializeFromContext(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 580
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x4320

    mul-float v0, v1, v2

    .line 581
    .local v0, ppi:F
    const v1, 0x43c10b3d

    mul-float/2addr v1, v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v2

    mul-float/2addr v1, v2

    sput v1, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->GRAVITY:F

    .line 585
    return-void
.end method

.method private onEdgeReached()V
    .locals 6

    .prologue
    const/16 v5, 0x26a

    const/4 v4, 0x0

    .line 995
    iget v2, p0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mVelocity:I

    int-to-float v2, v2

    const v3, 0x40a2abe5

    div-float v0, v2, v3

    .line 997
    .local v0, distance:F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mOver:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    .line 999
    iput v4, p0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mState:I

    .line 1000
    iget v2, p0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mStart:I

    iput v2, p0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mFinal:I

    .line 1001
    iput v5, p0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mDuration:I

    .line 1011
    :goto_0
    return-void

    .line 1005
    :cond_0
    iput v4, p0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mState:I

    .line 1006
    iget v2, p0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mVelocity:I

    if-lez v2, :cond_1

    iget v1, p0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mOver:I

    .line 1007
    .local v1, over:I
    :goto_1
    iget v2, p0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mStart:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mFinal:I

    .line 1009
    iput v5, p0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mDuration:I

    goto :goto_0

    .line 1006
    .end local v1           #over:I
    :cond_1
    iget v2, p0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mOver:I

    neg-int v1, v2

    goto :goto_1
.end method

.method private quintic(JIIJ)I
    .locals 7
    .parameter "timePassed"
    .parameter "start"
    .parameter "distance"
    .parameter "duration"

    .prologue
    const/high16 v3, 0x3f80

    .line 1126
    long-to-float v1, p1

    mul-float/2addr v1, v3

    long-to-float v2, p5

    div-float/2addr v1, v2

    sub-float v0, v1, v3

    .line 1127
    .local v0, coeff:F
    int-to-double v1, p4

    float-to-double v3, v0

    const-wide/high16 v5, 0x4014

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    const-wide/high16 v5, 0x3ff0

    add-double/2addr v3, v5

    mul-double/2addr v1, v3

    int-to-double v3, p3

    add-double/2addr v1, v3

    double-to-int v1, v1

    return v1
.end method

.method private startSpringback(IIZ)V
    .locals 10
    .parameter "start"
    .parameter "end"
    .parameter "positive"

    .prologue
    const/4 v9, 0x0

    .line 784
    iput-boolean v9, p0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mFinished:Z

    .line 785
    const/4 v1, 0x2

    iput v1, p0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mState:I

    .line 786
    const v1, 0x3f333333

    iput v1, p0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mCoeffDeceleration:F

    .line 787
    iput p2, p0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mFinal:I

    .line 788
    sub-int v0, p2, p1

    .line 789
    .local v0, distance:I
    int-to-float v1, v0

    const v2, 0x3d4cccd0

    mul-float/2addr v1, v2

    float-to-double v1, v1

    const-wide/high16 v3, 0x3ff0

    const-wide v5, 0x3fee666666666666L

    const-wide/high16 v7, 0x4049

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    sub-double/2addr v3, v5

    div-double/2addr v1, v3

    double-to-float v1, v1

    iput v1, p0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mDelta:F

    .line 790
    iget v1, p0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mDelta:F

    iget v2, p0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mDecelerationSpeed:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mVelocity:I

    .line 791
    iget v1, p0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mVelocity:I

    int-to-float v1, v1

    iput v1, p0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mCurrVelocity:F

    .line 792
    const/4 v1, 0x0

    iput v1, p0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mLastDistance:F

    .line 794
    iput v0, p0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mSpringDistance:I

    .line 796
    iget v1, p0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mSpringDistance:I

    if-nez v1, :cond_0

    .line 797
    iput v9, p0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mDuration:I

    .line 800
    :goto_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mStartTime:J

    .line 801
    return-void

    .line 799
    :cond_0
    const/16 v1, 0x26a

    iput v1, p0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mDuration:I

    goto :goto_0
.end method

.method private update()Z
    .locals 15

    .prologue
    const-wide/16 v13, 0x28

    const/4 v11, 0x0

    const/4 v12, 0x1

    .line 1044
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v9

    .line 1045
    .local v9, time:J
    iget-wide v3, p0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mStartTime:J

    sub-long v1, v9, v3

    .line 1048
    .local v1, duration:J
    iget v0, p0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mDuration:I

    int-to-long v3, v0

    cmp-long v0, v1, v3

    if-lez v0, :cond_1

    .line 1049
    iget v0, p0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mIterateCount:I

    if-eqz v0, :cond_0

    .line 1050
    iget v0, p0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mCurrentPosition:I

    iput v0, p0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mFinal:I

    .line 1051
    :cond_0
    iput-boolean v12, p0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mFinished:Z

    move v0, v11

    .line 1111
    :goto_0
    return v0

    .line 1056
    :cond_1
    long-to-float v0, v1

    const/high16 v3, 0x447a

    div-float v8, v0, v3

    .line 1059
    .local v8, t:F
    iget v0, p0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mState:I

    if-nez v0, :cond_6

    .line 1061
    iget-boolean v0, p0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mGravityDeceleration:Z

    if-eqz v0, :cond_2

    .line 1063
    iget v0, p0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mVelocity:I

    int-to-float v0, v0

    iget v3, p0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mDeceleration:F

    mul-float/2addr v3, v8

    add-float/2addr v0, v3

    iput v0, p0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mCurrVelocity:F

    .line 1064
    iget v0, p0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mVelocity:I

    int-to-float v0, v0

    mul-float/2addr v0, v8

    iget v3, p0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mDeceleration:F

    mul-float/2addr v3, v8

    mul-float/2addr v3, v8

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    add-float v7, v0, v3

    .line 1092
    .local v7, distance:F
    :goto_1
    iget v0, p0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mStart:I

    float-to-int v3, v7

    add-int/2addr v0, v3

    iput v0, p0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mCurrentPosition:I

    .line 1108
    .end local v7           #distance:F
    :goto_2
    iget v0, p0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mCurrentPosition:I

    iget v3, p0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mFinal:I

    if-ne v0, v3, :cond_8

    move v0, v11

    .line 1109
    goto :goto_0

    .line 1068
    :cond_2
    iget v0, p0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mUpdateCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mUpdateCount:I

    .line 1069
    iget v0, p0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mUpdateCount:I

    const/4 v3, 0x5

    if-ne v0, v3, :cond_3

    .line 1071
    iget-wide v3, p0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mAverageTime:J

    iget v0, p0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mUpdateCount:I

    int-to-long v5, v0

    div-long v5, v1, v5

    add-long/2addr v3, v5

    const-wide/16 v5, 0x2

    div-long/2addr v3, v5

    iput-wide v3, p0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mAverageTime:J

    .line 1073
    iget-wide v3, p0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mAverageTime:J

    const-wide/16 v5, 0x14

    cmp-long v0, v3, v5

    if-gez v0, :cond_4

    .line 1075
    const/16 v0, 0x32

    iput v0, p0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mDecelerationSpeed:I

    .line 1087
    :cond_3
    :goto_3
    iget v0, p0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mCurrVelocity:F

    iget v3, p0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mCoeffDeceleration:F

    mul-float/2addr v0, v3

    iput v0, p0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mCurrVelocity:F

    .line 1088
    iget v0, p0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mLastDistance:F

    iget v3, p0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mDelta:F

    add-float v7, v0, v3

    .line 1089
    .restart local v7       #distance:F
    iget v0, p0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mDelta:F

    iget v3, p0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mCoeffDeceleration:F

    mul-float/2addr v0, v3

    iput v0, p0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mDelta:F

    .line 1090
    iput v7, p0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mLastDistance:F

    goto :goto_1

    .line 1077
    .end local v7           #distance:F
    :cond_4
    iget-wide v3, p0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mAverageTime:J

    cmp-long v0, v3, v13

    if-gez v0, :cond_5

    .line 1079
    const/16 v0, 0x19

    iput v0, p0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mDecelerationSpeed:I

    goto :goto_3

    .line 1081
    :cond_5
    iget-wide v3, p0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mAverageTime:J

    cmp-long v0, v3, v13

    if-lez v0, :cond_3

    iget v0, p0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mFlingTestCount:I

    const/4 v3, 0x4

    if-lt v0, v3, :cond_3

    .line 1083
    iput-boolean v12, p0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mGravityDeceleration:Z

    goto :goto_3

    .line 1094
    :cond_6
    iget v0, p0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mState:I

    if-ne v0, v12, :cond_7

    .line 1096
    iget v0, p0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mCurrVelocity:F

    iget v3, p0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mCoeffDeceleration:F

    mul-float/2addr v0, v3

    iput v0, p0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mCurrVelocity:F

    .line 1097
    iget v0, p0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mLastDistance:F

    iget v3, p0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mDelta:F

    add-float v7, v0, v3

    .line 1098
    .restart local v7       #distance:F
    iget v0, p0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mDelta:F

    iget v3, p0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mCoeffDeceleration:F

    mul-float/2addr v0, v3

    iput v0, p0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mDelta:F

    .line 1099
    iput v7, p0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mLastDistance:F

    .line 1100
    iget v0, p0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mStart:I

    float-to-int v3, v7

    add-int/2addr v0, v3

    iput v0, p0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mCurrentPosition:I

    goto :goto_2

    .line 1104
    .end local v7           #distance:F
    :cond_7
    iget v3, p0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mStart:I

    iget v4, p0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mSpringDistance:I

    iget v0, p0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mDuration:I

    int-to-long v5, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->quintic(JIIJ)I

    move-result v0

    iput v0, p0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mCurrentPosition:I

    goto/16 :goto_2

    :cond_8
    move v0, v12

    .line 1111
    goto/16 :goto_0
.end method


# virtual methods
.method continueWhenFinished()Z
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 1014
    iget v2, p0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mState:I

    packed-switch v2, :pswitch_data_0

    .line 1034
    :goto_0
    invoke-direct {p0}, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->update()Z

    .line 1035
    const/4 v1, 0x1

    :pswitch_0
    return v1

    .line 1020
    :pswitch_1
    const/4 v1, 0x2

    iput v1, p0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mState:I

    .line 1021
    iget v1, p0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mFinal:I

    iput v1, p0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mStart:I

    .line 1022
    iget v1, p0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mSpringbackEnd:I

    iget v2, p0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mFinal:I

    sub-int v0, v1, v2

    .line 1023
    .local v0, distance:I
    iget v1, p0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mSpringbackEnd:I

    iput v1, p0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mFinal:I

    .line 1024
    const v1, 0x3f733333

    iput v1, p0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mCoeffDeceleration:F

    .line 1025
    int-to-float v1, v0

    const v2, 0x3d4cccd0

    mul-float/2addr v1, v2

    float-to-double v1, v1

    const-wide/high16 v3, 0x3ff0

    const-wide v5, 0x3fee666666666666L

    const-wide/high16 v7, 0x4049

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    sub-double/2addr v3, v5

    div-double/2addr v1, v3

    double-to-float v1, v1

    iput v1, p0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mDelta:F

    .line 1026
    iget v1, p0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mDelta:F

    const/high16 v2, 0x4248

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mVelocity:I

    .line 1027
    iget v1, p0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mVelocity:I

    int-to-float v1, v1

    iput v1, p0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mCurrVelocity:F

    .line 1028
    const/4 v1, 0x0

    iput v1, p0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mLastDistance:F

    .line 1029
    const/16 v1, 0x26a

    iput v1, p0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mDuration:I

    .line 1030
    iput v0, p0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mSpringDistance:I

    .line 1031
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mStartTime:J

    goto :goto_0

    .line 1014
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method extendDuration(I)V
    .locals 5
    .parameter "extend"

    .prologue
    .line 754
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    .line 755
    .local v1, time:J
    iget-wide v3, p0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mStartTime:J

    sub-long v3, v1, v3

    long-to-int v0, v3

    .line 756
    .local v0, elapsedTime:I
    add-int v3, v0, p1

    iput v3, p0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mDuration:I

    .line 757
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mFinished:Z

    .line 758
    return-void
.end method

.method finish()V
    .locals 1

    .prologue
    .line 742
    iget v0, p0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mFinal:I

    iput v0, p0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mCurrentPosition:I

    .line 745
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mFinished:Z

    .line 746
    return-void
.end method

.method fling(IIII)V
    .locals 3
    .parameter "start"
    .parameter "velocity"
    .parameter "min"
    .parameter "max"

    .prologue
    const/4 v2, 0x0

    .line 701
    iput-boolean v2, p0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mFinished:Z

    .line 703
    iput p1, p0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mStart:I

    .line 704
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mStartTime:J

    .line 706
    iput p2, p0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mVelocity:I

    .line 708
    invoke-static {p2}, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->getDeceleration(I)F

    move-result v0

    iput v0, p0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mDeceleration:F

    .line 712
    iget v0, p0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mStart:I

    if-ge v0, p3, :cond_1

    .line 713
    iput v2, p0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mDuration:I

    .line 714
    iput p3, p0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mFinal:I

    .line 739
    :cond_0
    :goto_0
    return-void

    .line 718
    :cond_1
    iget v0, p0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mStart:I

    if-le v0, p4, :cond_2

    .line 719
    iput v2, p0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mDuration:I

    .line 720
    iput p4, p0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mFinal:I

    goto :goto_0

    .line 725
    :cond_2
    const/high16 v0, -0x3b86

    int-to-float v1, p2

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mDeceleration:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mDuration:I

    .line 727
    mul-int v0, p2, p2

    int-to-float v0, v0

    const/high16 v1, 0x4000

    iget v2, p0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mDeceleration:F

    mul-float/2addr v1, v2

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    sub-int v0, p1, v0

    iput v0, p0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mFinal:I

    .line 730
    iget v0, p0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mFinal:I

    if-ge v0, p3, :cond_3

    .line 731
    iput p3, p0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mFinal:I

    .line 732
    iget v0, p0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mStart:I

    iget v1, p0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mVelocity:I

    int-to-float v1, v1

    iget v2, p0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mDeceleration:F

    invoke-static {v0, p3, v1, v2}, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->computeDuration(IIFF)I

    move-result v0

    iput v0, p0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mDuration:I

    .line 735
    :cond_3
    iget v0, p0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mFinal:I

    if-le v0, p4, :cond_0

    .line 736
    iput p4, p0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mFinal:I

    .line 737
    iget v0, p0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mStart:I

    iget v1, p0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mVelocity:I

    int-to-float v1, v1

    iget v2, p0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mDeceleration:F

    invoke-static {v0, p4, v1, v2}, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->computeDuration(IIFF)I

    move-result v0

    iput v0, p0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mDuration:I

    goto :goto_0
.end method

.method fling(IIIII)V
    .locals 20
    .parameter "start"
    .parameter "velocity"
    .parameter "min"
    .parameter "max"
    .parameter "over"

    .prologue
    .line 813
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mState:I

    .line 814
    move/from16 v0, p5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mOver:I

    .line 816
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mFinished:Z

    .line 817
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mStart:I

    .line 818
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mCurrentPosition:I

    .line 819
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v12

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mStartTime:J

    .line 820
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mVelocity:I

    .line 821
    move-object/from16 v0, p0

    iget v12, v0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mVelocity:I

    int-to-float v12, v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mCurrVelocity:F

    .line 822
    move-object/from16 v0, p0

    iget v12, v0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mVelocity:I

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v4

    .line 823
    .local v4, absVelocity:I
    move-object/from16 v0, p0

    iget v12, v0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mFlingTestCount:I

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mFlingTestCount:I

    .line 824
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mUpdateCount:I

    .line 829
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mGravityDeceleration:Z

    if-eqz v12, :cond_3

    .line 832
    invoke-static/range {p2 .. p2}, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->getDeceleration(I)F

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mDeceleration:F

    .line 834
    const/high16 v12, -0x3b86

    move/from16 v0, p2

    int-to-float v13, v0

    mul-float/2addr v12, v13

    move-object/from16 v0, p0

    iget v13, v0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mDeceleration:F

    div-float/2addr v12, v13

    float-to-int v12, v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mDuration:I

    .line 835
    mul-int v12, p2, p2

    int-to-float v12, v12

    const/high16 v13, 0x4000

    move-object/from16 v0, p0

    iget v14, v0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mDeceleration:F

    mul-float/2addr v13, v14

    div-float/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v12

    sub-int v12, p1, v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mFinal:I

    .line 873
    :goto_0
    move-object/from16 v0, p0

    iget v12, v0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mFinal:I

    move/from16 v0, p3

    if-ge v12, v0, :cond_0

    .line 874
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mFinal:I

    .line 877
    :cond_0
    move-object/from16 v0, p0

    iget v12, v0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mFinal:I

    move/from16 v0, p4

    if-le v12, v0, :cond_1

    .line 878
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mFinal:I

    .line 884
    :cond_1
    move/from16 v0, p1

    move/from16 v1, p4

    if-le v0, v1, :cond_9

    .line 885
    add-int v12, p4, p5

    move/from16 v0, p1

    if-lt v0, v12, :cond_7

    .line 886
    add-int v12, p4, p5

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-virtual {v0, v12, v1, v2}, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->springback(III)Z

    .line 940
    :cond_2
    :goto_1
    return-void

    .line 840
    :cond_3
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mIterateCount:I

    .line 841
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mLastDistance:F

    .line 842
    const v12, 0x3f7851ec

    move-object/from16 v0, p0

    iput v12, v0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mCoeffDeceleration:F

    .line 844
    const/4 v5, 0x0

    .line 845
    .local v5, delta:I
    const/4 v8, 0x0

    .line 847
    .local v8, i:I
    const/high16 v12, 0x3f80

    move-object/from16 v0, p0

    iget v13, v0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mVelocity:I

    int-to-float v13, v13

    mul-float/2addr v12, v13

    move-object/from16 v0, p0

    iget v13, v0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mDecelerationSpeed:I

    int-to-float v13, v13

    div-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mDelta:F

    .line 851
    :goto_2
    move-object/from16 v0, p0

    iget v12, v0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mDelta:F

    float-to-double v12, v12

    move-object/from16 v0, p0

    iget v14, v0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mCoeffDeceleration:F

    float-to-double v14, v14

    int-to-double v0, v8

    move-wide/from16 v16, v0

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    mul-double/2addr v12, v14

    double-to-int v5, v12

    .line 852
    if-nez v5, :cond_4

    .line 854
    move-object/from16 v0, p0

    iput v8, v0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mIterateCount:I

    .line 859
    move-object/from16 v0, p0

    iget v12, v0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mDelta:F

    float-to-double v12, v12

    const-wide/high16 v14, 0x3ff0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mCoeffDeceleration:F

    move/from16 v16, v0

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v16, v0

    int-to-double v0, v8

    move-wide/from16 v18, v0

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v16

    sub-double v14, v14, v16

    mul-double/2addr v12, v14

    const/high16 v14, 0x3f80

    move-object/from16 v0, p0

    iget v15, v0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mCoeffDeceleration:F

    sub-float/2addr v14, v15

    float-to-double v14, v14

    div-double/2addr v12, v14

    double-to-int v11, v12

    .line 861
    .local v11, totalDistance:I
    const/16 v12, 0x7d0

    if-le v4, v12, :cond_5

    .line 862
    const/16 v12, 0x1388

    move-object/from16 v0, p0

    iput v12, v0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mDuration:I

    .line 869
    :goto_3
    move-object/from16 v0, p0

    iget v12, v0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mStart:I

    add-int/2addr v12, v11

    move-object/from16 v0, p0

    iput v12, v0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mFinal:I

    goto/16 :goto_0

    .line 857
    .end local v11           #totalDistance:I
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 863
    .restart local v11       #totalDistance:I
    :cond_5
    const/16 v12, 0xc8

    if-ge v4, v12, :cond_6

    .line 864
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mDuration:I

    .line 865
    move-object/from16 v0, p0

    iget v12, v0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mStart:I

    add-int/2addr v12, v11

    move-object/from16 v0, p0

    iput v12, v0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mCurrentPosition:I

    goto :goto_3

    .line 867
    :cond_6
    const/16 v12, 0xbb8

    move-object/from16 v0, p0

    iput v12, v0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mDuration:I

    goto :goto_3

    .line 888
    .end local v5           #delta:I
    .end local v8           #i:I
    .end local v11           #totalDistance:I
    :cond_7
    if-gtz p2, :cond_8

    .line 889
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->springback(III)Z

    goto/16 :goto_1

    .line 891
    :cond_8
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v9

    .line 893
    .local v9, time:J
    sub-int v12, p1, p4

    int-to-float v12, v12

    const v13, 0x40a2abe5

    mul-float/2addr v12, v13

    move/from16 v0, p2

    int-to-float v13, v0

    div-float/2addr v12, v13

    float-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->atan(D)D

    move-result-wide v12

    const-wide v14, 0x4014557ca0000000L

    div-double v6, v12, v14

    .line 895
    .local v6, durationSinceEdge:D
    long-to-double v12, v9

    const-wide v14, 0x408f400000000000L

    mul-double/2addr v14, v6

    sub-double/2addr v12, v14

    double-to-int v12, v12

    int-to-long v12, v12

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mStartTime:J

    .line 909
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mStart:I

    .line 911
    move/from16 v0, p2

    int-to-double v12, v0

    const-wide v14, 0x4014557ca0000000L

    mul-double/2addr v14, v6

    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    div-double/2addr v12, v14

    double-to-int v12, v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mVelocity:I

    .line 913
    invoke-direct/range {p0 .. p0}, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->onEdgeReached()V

    goto/16 :goto_1

    .line 917
    .end local v6           #durationSinceEdge:D
    .end local v9           #time:J
    :cond_9
    move/from16 v0, p1

    move/from16 v1, p3

    if-ge v0, v1, :cond_2

    .line 918
    sub-int v12, p3, p5

    move/from16 v0, p1

    if-gt v0, v12, :cond_a

    .line 919
    sub-int v12, p3, p5

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-virtual {v0, v12, v1, v2}, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->springback(III)Z

    goto/16 :goto_1

    .line 921
    :cond_a
    if-ltz p2, :cond_b

    .line 922
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->springback(III)Z

    goto/16 :goto_1

    .line 924
    :cond_b
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v9

    .line 925
    .restart local v9       #time:J
    sub-int v12, p1, p3

    int-to-float v12, v12

    const v13, 0x40a2abe5

    mul-float/2addr v12, v13

    move/from16 v0, p2

    int-to-float v13, v0

    div-float/2addr v12, v13

    float-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->atan(D)D

    move-result-wide v12

    const-wide v14, 0x4014557ca0000000L

    div-double v6, v12, v14

    .line 927
    .restart local v6       #durationSinceEdge:D
    long-to-double v12, v9

    const-wide v14, 0x408f400000000000L

    mul-double/2addr v14, v6

    sub-double/2addr v12, v14

    double-to-int v12, v12

    int-to-long v12, v12

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mStartTime:J

    .line 930
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mStart:I

    .line 932
    move/from16 v0, p2

    int-to-double v12, v0

    const-wide v14, 0x4014557ca0000000L

    mul-double/2addr v14, v6

    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    div-double/2addr v12, v14

    double-to-int v12, v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mVelocity:I

    .line 934
    invoke-direct/range {p0 .. p0}, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->onEdgeReached()V

    goto/16 :goto_1
.end method

.method notifyEdgeReached(III)V
    .locals 11
    .parameter "start"
    .parameter "end"
    .parameter "over"

    .prologue
    const/4 v4, 0x0

    .line 957
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-ge v3, p3, :cond_1

    if-eq p1, p2, :cond_1

    .line 959
    const/4 v3, 0x1

    iput v3, p0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mState:I

    .line 960
    const/high16 v3, 0x3f00

    iput v3, p0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mCoeffDeceleration:F

    .line 961
    const/4 v3, 0x0

    iput v3, p0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mLastDistance:F

    .line 962
    iput p1, p0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mStart:I

    .line 963
    iput p2, p0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mSpringbackEnd:I

    .line 964
    iput-boolean v4, p0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mFinished:Z

    .line 965
    const v3, 0x7fffffff

    iput v3, p0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mDuration:I

    .line 967
    const/4 v0, 0x0

    .line 968
    .local v0, delta:I
    const/4 v1, 0x0

    .line 970
    .local v1, i:I
    iget v3, p0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mCurrVelocity:F

    const/high16 v4, 0x4316

    div-float/2addr v3, v4

    iput v3, p0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mDelta:F

    .line 973
    :goto_0
    iget v3, p0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mDelta:F

    float-to-double v3, v3

    iget v5, p0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mCoeffDeceleration:F

    float-to-double v5, v5

    int-to-double v7, v1

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    mul-double/2addr v3, v5

    double-to-int v0, v3

    .line 974
    if-nez v0, :cond_0

    .line 976
    iput v1, p0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mIterateCount:I

    .line 981
    iget v3, p0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mDelta:F

    float-to-double v3, v3

    const-wide/high16 v5, 0x3ff0

    iget v7, p0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mCoeffDeceleration:F

    float-to-double v7, v7

    int-to-double v9, v1

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    sub-double/2addr v5, v7

    mul-double/2addr v3, v5

    const/high16 v5, 0x3f80

    iget v6, p0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mCoeffDeceleration:F

    sub-float/2addr v5, v6

    float-to-double v5, v5

    div-double/2addr v3, v5

    double-to-int v2, v3

    .line 982
    .local v2, totalDistance:I
    iget v3, p0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mStart:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mFinal:I

    .line 989
    .end local v0           #delta:I
    .end local v1           #i:I
    .end local v2           #totalDistance:I
    :goto_1
    return-void

    .line 979
    .restart local v0       #delta:I
    .restart local v1       #i:I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 986
    .end local v0           #delta:I
    .end local v1           #i:I
    :cond_1
    invoke-virtual {p0, p1, v4, p2}, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->springback(III)Z

    goto :goto_1
.end method

.method setBounceCoefficient(F)V
    .locals 0
    .parameter "coefficient"

    .prologue
    .line 761
    iput p1, p0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mBounceCoefficient:F

    .line 762
    return-void
.end method

.method public setEnabledGravityDeceleration(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 1132
    iput-boolean p1, p0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mGravityDeceleration:Z

    .line 1133
    return-void
.end method

.method setFinalPosition(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 749
    iput p1, p0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mFinal:I

    .line 750
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mFinished:Z

    .line 751
    return-void
.end method

.method springback(III)Z
    .locals 4
    .parameter "start"
    .parameter "min"
    .parameter "max"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 767
    iput-boolean v0, p0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mFinished:Z

    .line 769
    iput p1, p0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mStart:I

    .line 771
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mStartTime:J

    .line 772
    iput v1, p0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mDuration:I

    .line 774
    if-ge p1, p2, :cond_1

    .line 775
    invoke-direct {p0, p1, p2, v1}, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->startSpringback(IIZ)V

    .line 780
    :cond_0
    :goto_0
    iget-boolean v2, p0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mFinished:Z

    if-nez v2, :cond_2

    :goto_1
    return v0

    .line 776
    :cond_1
    if-le p1, p3, :cond_0

    .line 777
    invoke-direct {p0, p1, p3, v0}, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->startSpringback(IIZ)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 780
    goto :goto_1
.end method

.method startScroll(III)V
    .locals 3
    .parameter "start"
    .parameter "distance"
    .parameter "duration"

    .prologue
    const/4 v2, 0x0

    .line 686
    iput-boolean v2, p0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mFinished:Z

    .line 688
    iput p1, p0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mStart:I

    .line 689
    add-int v0, p1, p2

    iput v0, p0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mFinal:I

    .line 691
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mStartTime:J

    .line 692
    iput p3, p0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mDuration:I

    .line 695
    const/4 v0, 0x0

    iput v0, p0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mDeceleration:F

    .line 696
    iput v2, p0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mVelocity:I

    .line 697
    return-void
.end method

.method updateScroll(F)V
    .locals 3
    .parameter "q"

    .prologue
    .line 654
    iget v0, p0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mStart:I

    iget v1, p0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mFinal:I

    iget v2, p0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mStart:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mCurrentPosition:I

    .line 655
    return-void
.end method
