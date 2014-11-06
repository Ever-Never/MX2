.class Landroid/widget/OverScroller$SplineOverScroller;
.super Ljava/lang/Object;
.source "OverScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/OverScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SplineOverScroller"
.end annotation


# static fields
.field private static final BALLISTIC:I = 0x2

.field private static final CUBIC:I = 0x1

.field private static final DECELERATIONSPEED_FAST:I = 0x32

.field private static final DECELERATIONSPEED_SLOW:I = 0x19

.field private static DECELERATION_RATE:F = 0.0f

.field private static final END_TENSION:F = 1.0f

.field private static final GRAVITY:F = 2000.0f

.field private static final INFLEXION:F = 0.35f

.field private static final MAXFLINGTESTCOUNT:I = 0x4

.field private static final MAXUPDATECOUNT:I = 0x5

.field private static final NB_SAMPLES:I = 0x64

.field private static final OVERSCROLL_SPRINGBACK_DURATION:I = 0x26a

.field private static final P1:F = 0.175f

.field private static final P2:F = 0.35000002f

.field private static final SPLINE:I = 0x0

.field private static final SPLINE_POSITION:[F = null

.field private static final SPLINE_TIME:[F = null

.field private static final START_TENSION:F = 0.5f

.field private static final tag:Ljava/lang/String; = "OverScroller"


# instance fields
.field private mAverageTime:J

.field private mCoeffDeceleration:F

.field private mCurrVelocity:F

.field private mCurrentPosition:I

.field private mDeceleration:F

.field private mDecelerationSpeed:I

.field private mDelta:F

.field private mDuration:I

.field private mEnableOverScrollForMz:Z

.field private mFinal:I

.field private mFinished:Z

.field private mFlingFriction:F

.field private mFlingTestCount:I

.field private mIterateCount:I

.field private mLastDistance:F

.field private mOver:I

.field private mPhysicalCoeff:F

.field private mSmoothFling:Z

.field private mSplineDistance:I

.field private mSplineDuration:I

.field private mSpringDistance:I

.field private mSpringbackEnd:I

.field private mStart:I

.field private mStartTime:J

.field private mState:I

.field private mUpdateCount:I

.field private mVelocity:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .prologue
    .line 599
    const-wide v11, 0x3fe8f5c28f5c28f6L

    invoke-static {v11, v12}, Ljava/lang/Math;->log(D)D

    move-result-wide v11

    const-wide v13, 0x3feccccccccccccdL

    invoke-static {v13, v14}, Ljava/lang/Math;->log(D)D

    move-result-wide v13

    div-double/2addr v11, v13

    double-to-float v11, v11

    sput v11, Landroid/widget/OverScroller$SplineOverScroller;->DECELERATION_RATE:F

    .line 607
    const/16 v11, 0x65

    new-array v11, v11, [F

    sput-object v11, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_POSITION:[F

    .line 608
    const/16 v11, 0x65

    new-array v11, v11, [F

    sput-object v11, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_TIME:[F

    .line 636
    const/4 v7, 0x0

    .line 637
    .local v7, x_min:F
    const/4 v10, 0x0

    .line 638
    .local v10, y_min:F
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    const/16 v11, 0x64

    if-ge v3, v11, :cond_4

    .line 639
    int-to-float v11, v3

    const/high16 v12, 0x42c8

    div-float v0, v11, v12

    .line 641
    .local v0, alpha:F
    const/high16 v6, 0x3f80

    .line 644
    .local v6, x_max:F
    :goto_1
    sub-float v11, v6, v7

    const/high16 v12, 0x4000

    div-float/2addr v11, v12

    add-float v5, v7, v11

    .line 645
    .local v5, x:F
    const/high16 v11, 0x4040

    mul-float/2addr v11, v5

    const/high16 v12, 0x3f80

    sub-float/2addr v12, v5

    mul-float v1, v11, v12

    .line 646
    .local v1, coef:F
    const/high16 v11, 0x3f80

    sub-float/2addr v11, v5

    const v12, 0x3e333333

    mul-float/2addr v11, v12

    const v12, 0x3eb33334

    mul-float/2addr v12, v5

    add-float/2addr v11, v12

    mul-float/2addr v11, v1

    mul-float v12, v5, v5

    mul-float/2addr v12, v5

    add-float v4, v11, v12

    .line 647
    .local v4, tx:F
    sub-float v11, v4, v0

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    float-to-double v11, v11

    const-wide v13, 0x3ee4f8b588e368f1L

    cmpg-double v11, v11, v13

    if-gez v11, :cond_0

    .line 651
    sget-object v11, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_POSITION:[F

    const/high16 v12, 0x3f80

    sub-float/2addr v12, v5

    const/high16 v13, 0x3f00

    mul-float/2addr v12, v13

    add-float/2addr v12, v5

    mul-float/2addr v12, v1

    mul-float v13, v5, v5

    mul-float/2addr v13, v5

    add-float/2addr v12, v13

    aput v12, v11, v3

    .line 653
    const/high16 v9, 0x3f80

    .line 656
    .local v9, y_max:F
    :goto_2
    sub-float v11, v9, v10

    const/high16 v12, 0x4000

    div-float/2addr v11, v12

    add-float v8, v10, v11

    .line 657
    .local v8, y:F
    const/high16 v11, 0x4040

    mul-float/2addr v11, v8

    const/high16 v12, 0x3f80

    sub-float/2addr v12, v8

    mul-float v1, v11, v12

    .line 658
    const/high16 v11, 0x3f80

    sub-float/2addr v11, v8

    const/high16 v12, 0x3f00

    mul-float/2addr v11, v12

    add-float/2addr v11, v8

    mul-float/2addr v11, v1

    mul-float v12, v8, v8

    mul-float/2addr v12, v8

    add-float v2, v11, v12

    .line 659
    .local v2, dy:F
    sub-float v11, v2, v0

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    float-to-double v11, v11

    const-wide v13, 0x3ee4f8b588e368f1L

    cmpg-double v11, v11, v13

    if-gez v11, :cond_2

    .line 663
    sget-object v11, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_TIME:[F

    const/high16 v12, 0x3f80

    sub-float/2addr v12, v8

    const v13, 0x3e333333

    mul-float/2addr v12, v13

    const v13, 0x3eb33334

    mul-float/2addr v13, v8

    add-float/2addr v12, v13

    mul-float/2addr v12, v1

    mul-float v13, v8, v8

    mul-float/2addr v13, v8

    add-float/2addr v12, v13

    aput v12, v11, v3

    .line 638
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 648
    .end local v2           #dy:F
    .end local v8           #y:F
    .end local v9           #y_max:F
    :cond_0
    cmpl-float v11, v4, v0

    if-lez v11, :cond_1

    move v6, v5

    goto/16 :goto_1

    .line 649
    :cond_1
    move v7, v5

    goto/16 :goto_1

    .line 660
    .restart local v2       #dy:F
    .restart local v8       #y:F
    .restart local v9       #y_max:F
    :cond_2
    cmpl-float v11, v2, v0

    if-lez v11, :cond_3

    move v9, v8

    goto :goto_2

    .line 661
    :cond_3
    move v10, v8

    goto :goto_2

    .line 665
    .end local v0           #alpha:F
    .end local v1           #coef:F
    .end local v2           #dy:F
    .end local v4           #tx:F
    .end local v5           #x:F
    .end local v6           #x_max:F
    .end local v8           #y:F
    .end local v9           #y_max:F
    :cond_4
    sget-object v11, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_POSITION:[F

    const/16 v12, 0x64

    sget-object v13, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_TIME:[F

    const/16 v14, 0x64

    const/high16 v15, 0x3f80

    aput v15, v13, v14

    aput v15, v11, v12

    .line 666
    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const-wide/16 v5, 0x0

    const/4 v4, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 672
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 588
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v1

    iput v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFlingFriction:F

    .line 591
    iput v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mState:I

    .line 614
    iput v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mLastDistance:F

    .line 615
    iput v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDelta:F

    .line 616
    iput v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCoeffDeceleration:F

    .line 619
    iput v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mIterateCount:I

    .line 620
    iput v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mSpringbackEnd:I

    .line 621
    iput v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mSpringDistance:I

    .line 623
    iput-boolean v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mSmoothFling:Z

    .line 627
    iput v4, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFlingTestCount:I

    .line 628
    iput v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mUpdateCount:I

    .line 632
    const/16 v1, 0x32

    iput v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDecelerationSpeed:I

    .line 633
    iput-wide v5, p0, Landroid/widget/OverScroller$SplineOverScroller;->mAverageTime:J

    .line 1138
    iput-boolean v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mEnableOverScrollForMz:Z

    .line 673
    iput-boolean v4, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 674
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x4320

    mul-float v0, v1, v2

    .line 675
    .local v0, ppi:F
    const v1, 0x43c10b3d

    mul-float/2addr v1, v0

    const v2, 0x3f570a3d

    mul-float/2addr v1, v2

    iput v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mPhysicalCoeff:F

    .line 680
    iput v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFlingTestCount:I

    .line 681
    iput-wide v5, p0, Landroid/widget/OverScroller$SplineOverScroller;->mAverageTime:J

    .line 682
    iput-boolean v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mSmoothFling:Z

    .line 683
    return-void
.end method

.method static synthetic access$000(Landroid/widget/OverScroller$SplineOverScroller;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 550
    iget-boolean v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    return v0
.end method

.method static synthetic access$002(Landroid/widget/OverScroller$SplineOverScroller;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 550
    iput-boolean p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    return p1
.end method

.method static synthetic access$100(Landroid/widget/OverScroller$SplineOverScroller;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 550
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    return v0
.end method

.method static synthetic access$200(Landroid/widget/OverScroller$SplineOverScroller;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 550
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F

    return v0
.end method

.method static synthetic access$300(Landroid/widget/OverScroller$SplineOverScroller;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 550
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    return v0
.end method

.method static synthetic access$400(Landroid/widget/OverScroller$SplineOverScroller;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 550
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    return v0
.end method

.method static synthetic access$500(Landroid/widget/OverScroller$SplineOverScroller;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 550
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    return v0
.end method

.method static synthetic access$600(Landroid/widget/OverScroller$SplineOverScroller;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 550
    iget-wide v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    return-wide v0
.end method

.method static synthetic access$700(Landroid/widget/OverScroller$SplineOverScroller;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 550
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mState:I

    return v0
.end method

.method private adjustDuration(III)V
    .locals 12
    .parameter "start"
    .parameter "oldFinal"
    .parameter "newFinal"

    .prologue
    const/high16 v11, 0x42c8

    .line 701
    sub-int v2, p2, p1

    .line 702
    .local v2, oldDistance:I
    sub-int v1, p3, p1

    .line 703
    .local v1, newDistance:I
    int-to-float v9, v1

    int-to-float v10, v2

    div-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v6

    .line 704
    .local v6, x:F
    mul-float v9, v11, v6

    float-to-int v0, v9

    .line 705
    .local v0, index:I
    const/16 v9, 0x64

    if-ge v0, v9, :cond_0

    .line 706
    int-to-float v9, v0

    div-float v7, v9, v11

    .line 707
    .local v7, x_inf:F
    add-int/lit8 v9, v0, 0x1

    int-to-float v9, v9

    div-float v8, v9, v11

    .line 708
    .local v8, x_sup:F
    sget-object v9, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_TIME:[F

    aget v3, v9, v0

    .line 709
    .local v3, t_inf:F
    sget-object v9, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_TIME:[F

    add-int/lit8 v10, v0, 0x1

    aget v4, v9, v10

    .line 710
    .local v4, t_sup:F
    sub-float v9, v6, v7

    sub-float v10, v8, v7

    div-float/2addr v9, v10

    sub-float v10, v4, v3

    mul-float/2addr v9, v10

    add-float v5, v3, v9

    .line 711
    .local v5, timeCoef:F
    iget v9, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    int-to-float v9, v9

    mul-float/2addr v9, v5

    float-to-int v9, v9

    iput v9, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    .line 713
    .end local v3           #t_inf:F
    .end local v4           #t_sup:F
    .end local v5           #timeCoef:F
    .end local v7           #x_inf:F
    .end local v8           #x_sup:F
    :cond_0
    return-void
.end method

.method private fitOnBounceCurve(III)V
    .locals 8
    .parameter "start"
    .parameter "end"
    .parameter "velocity"

    .prologue
    .line 888
    neg-int v4, p3

    int-to-float v4, v4

    iget v5, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    div-float v2, v4, v5

    .line 889
    .local v2, durationToApex:F
    mul-int v4, p3, p3

    int-to-float v4, v4

    const/high16 v5, 0x4000

    div-float/2addr v4, v5

    iget v5, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    div-float v0, v4, v5

    .line 890
    .local v0, distanceToApex:F
    sub-int v4, p2, p1

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-float v1, v4

    .line 891
    .local v1, distanceToEdge:F
    const-wide/high16 v4, 0x4000

    add-float v6, v0, v1

    float-to-double v6, v6

    mul-double/2addr v4, v6

    iget v6, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    float-to-double v6, v6

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v3, v4

    .line 893
    .local v3, totalDuration:F
    iget-wide v4, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    const/high16 v6, 0x447a

    sub-float v7, v3, v2

    mul-float/2addr v6, v7

    float-to-int v6, v6

    int-to-long v6, v6

    sub-long/2addr v4, v6

    iput-wide v4, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    .line 894
    iput p2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    .line 895
    iget v4, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    neg-float v4, v4

    mul-float/2addr v4, v3

    float-to-int v4, v4

    iput v4, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    .line 896
    return-void
.end method

.method private static getDeceleration(I)F
    .locals 1
    .parameter "velocity"

    .prologue
    .line 693
    if-lez p0, :cond_0

    const/high16 v0, -0x3b06

    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x44fa

    goto :goto_0
.end method

.method private getSplineDeceleration(I)D
    .locals 3
    .parameter "velocity"

    .prologue
    .line 870
    const v0, 0x3eb33333

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFlingFriction:F

    iget v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mPhysicalCoeff:F

    mul-float/2addr v1, v2

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    return-wide v0
.end method

.method private getSplineFlingDistance(I)D
    .locals 8
    .parameter "velocity"

    .prologue
    .line 874
    invoke-direct {p0, p1}, Landroid/widget/OverScroller$SplineOverScroller;->getSplineDeceleration(I)D

    move-result-wide v2

    .line 875
    .local v2, l:D
    sget v4, Landroid/widget/OverScroller$SplineOverScroller;->DECELERATION_RATE:F

    float-to-double v4, v4

    const-wide/high16 v6, 0x3ff0

    sub-double v0, v4, v6

    .line 876
    .local v0, decelMinusOne:D
    iget v4, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFlingFriction:F

    iget v5, p0, Landroid/widget/OverScroller$SplineOverScroller;->mPhysicalCoeff:F

    mul-float/2addr v4, v5

    float-to-double v4, v4

    sget v6, Landroid/widget/OverScroller$SplineOverScroller;->DECELERATION_RATE:F

    float-to-double v6, v6

    div-double/2addr v6, v0

    mul-double/2addr v6, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->exp(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    return-wide v4
.end method

.method private getSplineFlingDuration(I)I
    .locals 8
    .parameter "velocity"

    .prologue
    .line 881
    invoke-direct {p0, p1}, Landroid/widget/OverScroller$SplineOverScroller;->getSplineDeceleration(I)D

    move-result-wide v2

    .line 882
    .local v2, l:D
    sget v4, Landroid/widget/OverScroller$SplineOverScroller;->DECELERATION_RATE:F

    float-to-double v4, v4

    const-wide/high16 v6, 0x3ff0

    sub-double v0, v4, v6

    .line 883
    .local v0, decelMinusOne:D
    const-wide v4, 0x408f400000000000L

    div-double v6, v2, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->exp(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    double-to-int v4, v4

    return v4
.end method

.method private onEdgeReached()V
    .locals 12

    .prologue
    const/high16 v6, 0x4000

    .line 940
    iget v4, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    iget v5, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    mul-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    mul-float/2addr v5, v6

    div-float v1, v4, v5

    .line 942
    .local v1, distance:F
    iget-boolean v4, p0, Landroid/widget/OverScroller$SplineOverScroller;->mEnableOverScrollForMz:Z

    if-nez v4, :cond_2

    .line 943
    iget v4, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    int-to-float v4, v4

    invoke-static {v4}, Ljava/lang/Math;->signum(F)F

    move-result v3

    .line 945
    .local v3, sign:F
    iget v4, p0, Landroid/widget/OverScroller$SplineOverScroller;->mOver:I

    int-to-float v4, v4

    cmpl-float v4, v1, v4

    if-lez v4, :cond_0

    .line 947
    neg-float v4, v3

    iget v5, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    iget v5, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    iget v5, p0, Landroid/widget/OverScroller$SplineOverScroller;->mOver:I

    int-to-float v5, v5

    mul-float/2addr v5, v6

    div-float/2addr v4, v5

    iput v4, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    .line 948
    iget v4, p0, Landroid/widget/OverScroller$SplineOverScroller;->mOver:I

    int-to-float v1, v4

    .line 951
    :cond_0
    iget v5, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    iget v4, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    if-lez v4, :cond_1

    move v4, v1

    :goto_0
    float-to-int v4, v4

    add-int/2addr v4, v5

    iput v4, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    .line 952
    const/high16 v4, 0x447a

    iget v5, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    iget v5, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    div-float/2addr v4, v5

    float-to-int v4, v4

    neg-int v4, v4

    iput v4, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    .line 975
    .end local v3           #sign:F
    :goto_1
    float-to-int v4, v1

    iput v4, p0, Landroid/widget/OverScroller$SplineOverScroller;->mOver:I

    .line 976
    const/4 v4, 0x2

    iput v4, p0, Landroid/widget/OverScroller$SplineOverScroller;->mState:I

    .line 977
    return-void

    .line 951
    .restart local v3       #sign:F
    :cond_1
    neg-float v4, v1

    goto :goto_0

    .line 954
    .end local v3           #sign:F
    :cond_2
    const v4, 0x3dcccccd

    iput v4, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCoeffDeceleration:F

    .line 955
    const/4 v4, 0x0

    iput v4, p0, Landroid/widget/OverScroller$SplineOverScroller;->mLastDistance:F

    .line 956
    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 957
    const v4, 0x7fffffff

    iput v4, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    .line 959
    const/4 v0, 0x0

    .line 960
    .local v0, delta:I
    const/4 v2, 0x0

    .line 961
    .local v2, i:I
    iget v4, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F

    const/high16 v5, 0x4316

    div-float/2addr v4, v5

    iput v4, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDelta:F

    .line 964
    :goto_2
    iget v4, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDelta:F

    float-to-double v4, v4

    iget v6, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCoeffDeceleration:F

    float-to-double v6, v6

    int-to-double v8, v2

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    mul-double/2addr v4, v6

    double-to-int v0, v4

    .line 965
    if-nez v0, :cond_3

    .line 966
    iput v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mIterateCount:I

    .line 971
    iget v4, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDelta:F

    float-to-double v4, v4

    const-wide/high16 v6, 0x3ff0

    iget v8, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCoeffDeceleration:F

    float-to-double v8, v8

    int-to-double v10, v2

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    sub-double/2addr v6, v8

    mul-double/2addr v4, v6

    const/high16 v6, 0x3f80

    iget v7, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCoeffDeceleration:F

    sub-float/2addr v6, v7

    float-to-double v6, v6

    div-double/2addr v4, v6

    double-to-float v1, v4

    .line 972
    iget v4, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    int-to-float v4, v4

    add-float/2addr v4, v1

    float-to-int v4, v4

    iput v4, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    goto :goto_1

    .line 969
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method private quintic(JIIJ)I
    .locals 7
    .parameter "timePassed"
    .parameter "start"
    .parameter "distance"
    .parameter "duration"

    .prologue
    const/high16 v3, 0x3f80

    .line 1134
    long-to-float v1, p1

    mul-float/2addr v1, v3

    long-to-float v2, p5

    div-float/2addr v1, v2

    sub-float v0, v1, v3

    .line 1135
    .local v0, coeff:F
    int-to-double v1, p4

    float-to-double v3, v0

    const-wide/high16 v5, 0x4014

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    const-wide/high16 v5, 0x3ff0

    add-double/2addr v3, v5

    mul-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    long-to-int v1, v1

    return v1
.end method

.method private startAfterEdge(IIII)V
    .locals 13
    .parameter "start"
    .parameter "min"
    .parameter "max"
    .parameter "velocity"

    .prologue
    .line 905
    if-le p1, p2, :cond_0

    move/from16 v0, p3

    if-ge p1, v0, :cond_0

    .line 906
    const-string v1, "OverScroller"

    const-string/jumbo v2, "startAfterEdge called from a valid position"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 925
    :goto_0
    return-void

    .line 910
    :cond_0
    move/from16 v0, p3

    if-le p1, v0, :cond_1

    const/4 v10, 0x1

    .line 911
    .local v10, positive:Z
    :goto_1
    if-eqz v10, :cond_2

    move/from16 v7, p3

    .line 912
    .local v7, edge:I
    :goto_2
    sub-int v9, p1, v7

    .line 913
    .local v9, overDistance:I
    mul-int v1, v9, p4

    if-ltz v1, :cond_3

    const/4 v8, 0x1

    .line 914
    .local v8, keepIncreasing:Z
    :goto_3
    if-eqz v8, :cond_4

    .line 916
    move/from16 v0, p4

    invoke-direct {p0, p1, v7, v0}, Landroid/widget/OverScroller$SplineOverScroller;->startBounceAfterEdge(III)V

    goto :goto_0

    .line 910
    .end local v7           #edge:I
    .end local v8           #keepIncreasing:Z
    .end local v9           #overDistance:I
    .end local v10           #positive:Z
    :cond_1
    const/4 v10, 0x0

    goto :goto_1

    .restart local v10       #positive:Z
    :cond_2
    move v7, p2

    .line 911
    goto :goto_2

    .line 913
    .restart local v7       #edge:I
    .restart local v9       #overDistance:I
    :cond_3
    const/4 v8, 0x0

    goto :goto_3

    .line 918
    .restart local v8       #keepIncreasing:Z
    :cond_4
    move/from16 v0, p4

    invoke-direct {p0, v0}, Landroid/widget/OverScroller$SplineOverScroller;->getSplineFlingDistance(I)D

    move-result-wide v11

    .line 919
    .local v11, totalDistance:D
    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-double v1, v1

    cmpl-double v1, v11, v1

    if-lez v1, :cond_7

    .line 920
    if-eqz v10, :cond_5

    move v4, p2

    :goto_4
    if-eqz v10, :cond_6

    move v5, p1

    :goto_5
    iget v6, p0, Landroid/widget/OverScroller$SplineOverScroller;->mOver:I

    move-object v1, p0

    move v2, p1

    move/from16 v3, p4

    invoke-virtual/range {v1 .. v6}, Landroid/widget/OverScroller$SplineOverScroller;->fling(IIIII)V

    goto :goto_0

    :cond_5
    move v4, p1

    goto :goto_4

    :cond_6
    move/from16 v5, p3

    goto :goto_5

    .line 922
    :cond_7
    move/from16 v0, p4

    invoke-direct {p0, p1, v7, v0}, Landroid/widget/OverScroller$SplineOverScroller;->startSpringback(III)V

    goto :goto_0
.end method

.method private startBounceAfterEdge(III)V
    .locals 1
    .parameter "start"
    .parameter "end"
    .parameter "velocity"

    .prologue
    .line 899
    if-nez p3, :cond_0

    sub-int v0, p1, p2

    :goto_0
    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->getDeceleration(I)F

    move-result v0

    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    .line 900
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/OverScroller$SplineOverScroller;->fitOnBounceCurve(III)V

    .line 901
    invoke-direct {p0}, Landroid/widget/OverScroller$SplineOverScroller;->onEdgeReached()V

    .line 902
    return-void

    :cond_0
    move v0, p3

    .line 899
    goto :goto_0
.end method

.method private startSpringback(III)V
    .locals 7
    .parameter "start"
    .parameter "end"
    .parameter "velocity"

    .prologue
    .line 769
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 770
    const/4 v1, 0x1

    iput v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mState:I

    .line 771
    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    .line 772
    iput p2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    .line 773
    sub-int v0, p1, p2

    .line 774
    .local v0, delta:I
    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->getDeceleration(I)F

    move-result v1

    iput v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    .line 776
    neg-int v1, v0

    iput v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    .line 777
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iput v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mOver:I

    .line 779
    iget-boolean v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mEnableOverScrollForMz:Z

    if-eqz v1, :cond_0

    .line 780
    const/16 v1, 0x26a

    iput v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    .line 784
    :goto_0
    return-void

    .line 782
    :cond_0
    const-wide v1, 0x408f400000000000L

    const-wide/high16 v3, -0x4000

    int-to-double v5, v0

    mul-double/2addr v3, v5

    iget v5, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    float-to-double v5, v5

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    mul-double/2addr v1, v3

    double-to-int v1, v1

    iput v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    goto :goto_0
.end method


# virtual methods
.method continueWhenFinished()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 980
    iget v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mState:I

    packed-switch v1, :pswitch_data_0

    .line 1009
    :goto_0
    invoke-virtual {p0}, Landroid/widget/OverScroller$SplineOverScroller;->update()Z

    .line 1010
    const/4 v0, 0x1

    :cond_0
    :pswitch_0
    return v0

    .line 983
    :pswitch_1
    iget v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    iget v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineDuration:I

    if-ge v1, v2, :cond_0

    .line 985
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    .line 987
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F

    float-to-int v0, v0

    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    .line 988
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->getDeceleration(I)F

    move-result v0

    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    .line 989
    iget-wide v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    iget v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    .line 990
    invoke-direct {p0}, Landroid/widget/OverScroller$SplineOverScroller;->onEdgeReached()V

    goto :goto_0

    .line 998
    :pswitch_2
    iget-boolean v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mEnableOverScrollForMz:Z

    if-eqz v1, :cond_1

    .line 999
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    .line 1003
    :goto_1
    iget v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    iget v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    invoke-direct {p0, v1, v2, v0}, Landroid/widget/OverScroller$SplineOverScroller;->startSpringback(III)V

    goto :goto_0

    .line 1001
    :cond_1
    iget-wide v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    iget v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    goto :goto_1

    .line 980
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method extendDuration(I)V
    .locals 5
    .parameter "extend"

    .prologue
    .line 743
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    .line 744
    .local v1, time:J
    iget-wide v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    sub-long v3, v1, v3

    long-to-int v0, v3

    .line 745
    .local v0, elapsedTime:I
    add-int v3, v0, p1

    iput v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    .line 746
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 747
    return-void
.end method

.method finish()V
    .locals 1

    .prologue
    .line 730
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    .line 734
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 735
    return-void
.end method

.method fling(IIIII)V
    .locals 18
    .parameter "start"
    .parameter "velocity"
    .parameter "min"
    .parameter "max"
    .parameter "over"

    .prologue
    .line 787
    move/from16 v0, p5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/OverScroller$SplineOverScroller;->mOver:I

    .line 788
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iput-boolean v10, v0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 789
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    move/from16 v0, p2

    int-to-float v10, v0

    move-object/from16 v0, p0

    iput v10, v0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F

    .line 790
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iput v10, v0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineDuration:I

    move-object/from16 v0, p0

    iput v10, v0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    .line 791
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v10

    move-object/from16 v0, p0

    iput-wide v10, v0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    .line 792
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    .line 794
    move/from16 v0, p1

    move/from16 v1, p4

    if-gt v0, v1, :cond_0

    move/from16 v0, p1

    move/from16 v1, p3

    if-ge v0, v1, :cond_2

    .line 795
    :cond_0
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p2

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/widget/OverScroller$SplineOverScroller;->startAfterEdge(IIII)V

    .line 867
    :cond_1
    :goto_0
    return-void

    .line 799
    :cond_2
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iput v10, v0, Landroid/widget/OverScroller$SplineOverScroller;->mState:I

    .line 800
    const-wide/16 v8, 0x0

    .line 802
    .local v8, totalDistance:D
    if-eqz p2, :cond_3

    .line 803
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/widget/OverScroller$SplineOverScroller;->getSplineFlingDuration(I)I

    move-result v10

    move-object/from16 v0, p0

    iput v10, v0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineDuration:I

    move-object/from16 v0, p0

    iput v10, v0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    .line 804
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/widget/OverScroller$SplineOverScroller;->getSplineFlingDistance(I)D

    move-result-wide v8

    .line 807
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v10, v0, Landroid/widget/OverScroller$SplineOverScroller;->mEnableOverScrollForMz:Z

    if-eqz v10, :cond_4

    move-object/from16 v0, p0

    iget v10, v0, Landroid/widget/OverScroller$SplineOverScroller;->mFlingTestCount:I

    const/4 v11, 0x4

    if-lt v10, v11, :cond_4

    .line 808
    move-object/from16 v0, p0

    iget-wide v10, v0, Landroid/widget/OverScroller$SplineOverScroller;->mAverageTime:J

    const-wide/16 v12, 0x28

    cmp-long v10, v10, v12

    if-lez v10, :cond_4

    .line 809
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iput-boolean v10, v0, Landroid/widget/OverScroller$SplineOverScroller;->mSmoothFling:Z

    .line 813
    :cond_4
    move-object/from16 v0, p0

    iget v10, v0, Landroid/widget/OverScroller$SplineOverScroller;->mFlingTestCount:I

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, p0

    iput v10, v0, Landroid/widget/OverScroller$SplineOverScroller;->mFlingTestCount:I

    .line 814
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iput v10, v0, Landroid/widget/OverScroller$SplineOverScroller;->mUpdateCount:I

    .line 816
    move-object/from16 v0, p0

    iget-boolean v10, v0, Landroid/widget/OverScroller$SplineOverScroller;->mSmoothFling:Z

    if-eqz v10, :cond_a

    .line 817
    move-object/from16 v0, p0

    iget-wide v10, v0, Landroid/widget/OverScroller$SplineOverScroller;->mAverageTime:J

    const-wide/16 v12, 0x14

    cmp-long v10, v10, v12

    if-gez v10, :cond_6

    .line 818
    const/16 v10, 0x32

    move-object/from16 v0, p0

    iput v10, v0, Landroid/widget/OverScroller$SplineOverScroller;->mDecelerationSpeed:I

    .line 823
    :cond_5
    :goto_1
    move-object/from16 v0, p0

    iget v10, v0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v5

    .line 825
    .local v5, absVelocity:I
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iput v10, v0, Landroid/widget/OverScroller$SplineOverScroller;->mIterateCount:I

    .line 826
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iput v10, v0, Landroid/widget/OverScroller$SplineOverScroller;->mLastDistance:F

    .line 827
    const v10, 0x3f7851ec

    move-object/from16 v0, p0

    iput v10, v0, Landroid/widget/OverScroller$SplineOverScroller;->mCoeffDeceleration:F

    .line 829
    const/4 v6, 0x0

    .line 830
    .local v6, delta:I
    const/4 v7, 0x0

    .line 831
    .local v7, i:I
    const/high16 v10, 0x3f80

    move-object/from16 v0, p0

    iget v11, v0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    int-to-float v11, v11

    mul-float/2addr v10, v11

    move-object/from16 v0, p0

    iget v11, v0, Landroid/widget/OverScroller$SplineOverScroller;->mDecelerationSpeed:I

    int-to-float v11, v11

    div-float/2addr v10, v11

    move-object/from16 v0, p0

    iput v10, v0, Landroid/widget/OverScroller$SplineOverScroller;->mDelta:F

    .line 834
    :goto_2
    move-object/from16 v0, p0

    iget v10, v0, Landroid/widget/OverScroller$SplineOverScroller;->mDelta:F

    float-to-double v10, v10

    move-object/from16 v0, p0

    iget v12, v0, Landroid/widget/OverScroller$SplineOverScroller;->mCoeffDeceleration:F

    float-to-double v12, v12

    int-to-double v14, v7

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    mul-double/2addr v10, v12

    double-to-int v6, v10

    .line 835
    if-nez v6, :cond_7

    .line 836
    move-object/from16 v0, p0

    iput v7, v0, Landroid/widget/OverScroller$SplineOverScroller;->mIterateCount:I

    .line 841
    move-object/from16 v0, p0

    iget v10, v0, Landroid/widget/OverScroller$SplineOverScroller;->mDelta:F

    float-to-double v10, v10

    const-wide/high16 v12, 0x3ff0

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/OverScroller$SplineOverScroller;->mCoeffDeceleration:F

    float-to-double v14, v14

    int-to-double v0, v7

    move-wide/from16 v16, v0

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    sub-double/2addr v12, v14

    mul-double/2addr v10, v12

    const/high16 v12, 0x3f80

    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/OverScroller$SplineOverScroller;->mCoeffDeceleration:F

    sub-float/2addr v12, v13

    float-to-double v12, v12

    div-double v8, v10, v12

    .line 843
    const/16 v10, 0x7d0

    if-le v5, v10, :cond_8

    .line 844
    const/16 v10, 0x1388

    move-object/from16 v0, p0

    iput v10, v0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    .line 851
    :goto_3
    move-object/from16 v0, p0

    iget v10, v0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    double-to-int v11, v8

    add-int/2addr v10, v11

    move-object/from16 v0, p0

    iput v10, v0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    goto/16 :goto_0

    .line 819
    .end local v5           #absVelocity:I
    .end local v6           #delta:I
    .end local v7           #i:I
    :cond_6
    move-object/from16 v0, p0

    iget-wide v10, v0, Landroid/widget/OverScroller$SplineOverScroller;->mAverageTime:J

    const-wide/16 v12, 0x28

    cmp-long v10, v10, v12

    if-gez v10, :cond_5

    .line 820
    const/16 v10, 0x19

    move-object/from16 v0, p0

    iput v10, v0, Landroid/widget/OverScroller$SplineOverScroller;->mDecelerationSpeed:I

    goto/16 :goto_1

    .line 839
    .restart local v5       #absVelocity:I
    .restart local v6       #delta:I
    .restart local v7       #i:I
    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 845
    :cond_8
    const/16 v10, 0xc8

    if-ge v5, v10, :cond_9

    .line 846
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iput v10, v0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    goto :goto_3

    .line 848
    :cond_9
    const/16 v10, 0xbb8

    move-object/from16 v0, p0

    iput v10, v0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    goto :goto_3

    .line 853
    .end local v5           #absVelocity:I
    .end local v6           #delta:I
    .end local v7           #i:I
    :cond_a
    move/from16 v0, p2

    int-to-float v10, v0

    invoke-static {v10}, Ljava/lang/Math;->signum(F)F

    move-result v10

    float-to-double v10, v10

    mul-double/2addr v10, v8

    double-to-int v10, v10

    move-object/from16 v0, p0

    iput v10, v0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineDistance:I

    .line 854
    move-object/from16 v0, p0

    iget v10, v0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineDistance:I

    add-int v10, v10, p1

    move-object/from16 v0, p0

    iput v10, v0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    .line 857
    move-object/from16 v0, p0

    iget v10, v0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    move/from16 v0, p3

    if-ge v10, v0, :cond_b

    .line 858
    move-object/from16 v0, p0

    iget v10, v0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    move-object/from16 v0, p0

    iget v11, v0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v10, v11, v1}, Landroid/widget/OverScroller$SplineOverScroller;->adjustDuration(III)V

    .line 859
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    .line 862
    :cond_b
    move-object/from16 v0, p0

    iget v10, v0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    move/from16 v0, p4

    if-le v10, v0, :cond_1

    .line 863
    move-object/from16 v0, p0

    iget v10, v0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    move-object/from16 v0, p0

    iget v11, v0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v10, v11, v1}, Landroid/widget/OverScroller$SplineOverScroller;->adjustDuration(III)V

    .line 864
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    goto/16 :goto_0
.end method

.method notifyEdgeReached(III)V
    .locals 2
    .parameter "start"
    .parameter "end"
    .parameter "over"

    .prologue
    .line 929
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mState:I

    if-nez v0, :cond_0

    .line 930
    iput p3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mOver:I

    .line 931
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    .line 934
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F

    float-to-int v0, v0

    invoke-direct {p0, p1, p2, p2, v0}, Landroid/widget/OverScroller$SplineOverScroller;->startAfterEdge(IIII)V

    .line 936
    :cond_0
    return-void
.end method

.method public setEnableMZOverScroll(ZZ)V
    .locals 0
    .parameter "enable"
    .parameter "smoothFling"

    .prologue
    .line 1143
    iput-boolean p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mEnableOverScrollForMz:Z

    .line 1144
    iput-boolean p2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mSmoothFling:Z

    .line 1145
    return-void
.end method

.method setFinalPosition(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 738
    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    .line 739
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 740
    return-void
.end method

.method setFriction(F)V
    .locals 0
    .parameter "friction"

    .prologue
    .line 669
    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFlingFriction:F

    .line 670
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

    .line 750
    iput-boolean v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 752
    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    .line 753
    iput v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    .line 755
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    .line 756
    iput v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    .line 758
    if-ge p1, p2, :cond_1

    .line 759
    invoke-direct {p0, p1, p2, v1}, Landroid/widget/OverScroller$SplineOverScroller;->startSpringback(III)V

    .line 764
    :cond_0
    :goto_0
    iget-boolean v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    if-nez v2, :cond_2

    :goto_1
    return v0

    .line 760
    :cond_1
    if-le p1, p3, :cond_0

    .line 761
    invoke-direct {p0, p1, p3, v1}, Landroid/widget/OverScroller$SplineOverScroller;->startSpringback(III)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 764
    goto :goto_1
.end method

.method startScroll(III)V
    .locals 3
    .parameter "start"
    .parameter "distance"
    .parameter "duration"

    .prologue
    const/4 v2, 0x0

    .line 716
    iput-boolean v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 718
    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    .line 719
    add-int v0, p1, p2

    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    .line 721
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    .line 722
    iput p3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    .line 725
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    .line 726
    iput v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    .line 727
    return-void
.end method

.method update()Z
    .locals 22

    .prologue
    .line 1019
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v19

    .line 1020
    .local v19, time:J
    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    sub-long v2, v19, v4

    .line 1022
    .local v2, currentTime:J
    move-object/from16 v0, p0

    iget v1, v0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    int-to-long v4, v1

    cmp-long v1, v2, v4

    if-lez v1, :cond_3

    .line 1023
    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/widget/OverScroller$SplineOverScroller;->mEnableOverScrollForMz:Z

    if-eqz v1, :cond_1

    .line 1024
    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/widget/OverScroller$SplineOverScroller;->mSmoothFling:Z

    if-eqz v1, :cond_2

    .line 1025
    move-object/from16 v0, p0

    iget v1, v0, Landroid/widget/OverScroller$SplineOverScroller;->mIterateCount:I

    if-eqz v1, :cond_0

    .line 1026
    move-object/from16 v0, p0

    iget v1, v0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    move-object/from16 v0, p0

    iput v1, v0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    .line 1038
    :cond_0
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 1040
    :cond_1
    const/4 v1, 0x0

    .line 1120
    :goto_0
    return v1

    .line 1033
    :cond_2
    move-object/from16 v0, p0

    iget v1, v0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineDuration:I

    if-ge v1, v4, :cond_0

    move-object/from16 v0, p0

    iget v1, v0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    if-eq v1, v4, :cond_0

    .line 1034
    move-object/from16 v0, p0

    iget v1, v0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    move-object/from16 v0, p0

    iput v1, v0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    .line 1035
    const/4 v1, 0x1

    goto :goto_0

    .line 1043
    :cond_3
    const-wide/16 v10, 0x0

    .line 1044
    .local v10, distance:D
    move-object/from16 v0, p0

    iget v1, v0, Landroid/widget/OverScroller$SplineOverScroller;->mState:I

    packed-switch v1, :pswitch_data_0

    .line 1106
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/widget/OverScroller$SplineOverScroller;->mEnableOverScrollForMz:Z

    if-eqz v1, :cond_a

    .line 1107
    move-object/from16 v0, p0

    iget v1, v0, Landroid/widget/OverScroller$SplineOverScroller;->mState:I

    if-nez v1, :cond_9

    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/widget/OverScroller$SplineOverScroller;->mSmoothFling:Z

    if-nez v1, :cond_9

    .line 1108
    move-object/from16 v0, p0

    iget v1, v0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v4, v4

    add-int/2addr v1, v4

    move-object/from16 v0, p0

    iput v1, v0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    .line 1109
    const/4 v1, 0x1

    goto :goto_0

    .line 1046
    :pswitch_0
    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/widget/OverScroller$SplineOverScroller;->mSmoothFling:Z

    if-nez v1, :cond_5

    .line 1047
    long-to-float v1, v2

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineDuration:I

    int-to-float v4, v4

    div-float v15, v1, v4

    .line 1048
    .local v15, t:F
    const/high16 v1, 0x42c8

    mul-float/2addr v1, v15

    float-to-int v13, v1

    .line 1049
    .local v13, index:I
    const/high16 v12, 0x3f80

    .line 1050
    .local v12, distanceCoef:F
    const/16 v21, 0x0

    .line 1051
    .local v21, velocityCoef:F
    const/16 v1, 0x64

    if-ge v13, v1, :cond_4

    .line 1052
    int-to-float v1, v13

    const/high16 v4, 0x42c8

    div-float v17, v1, v4

    .line 1053
    .local v17, t_inf:F
    add-int/lit8 v1, v13, 0x1

    int-to-float v1, v1

    const/high16 v4, 0x42c8

    div-float v18, v1, v4

    .line 1054
    .local v18, t_sup:F
    sget-object v1, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_POSITION:[F

    aget v8, v1, v13

    .line 1055
    .local v8, d_inf:F
    sget-object v1, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_POSITION:[F

    add-int/lit8 v4, v13, 0x1

    aget v9, v1, v4

    .line 1056
    .local v9, d_sup:F
    sub-float v1, v9, v8

    sub-float v4, v18, v17

    div-float v21, v1, v4

    .line 1057
    sub-float v1, v15, v17

    mul-float v1, v1, v21

    add-float v12, v8, v1

    .line 1060
    .end local v8           #d_inf:F
    .end local v9           #d_sup:F
    .end local v17           #t_inf:F
    .end local v18           #t_sup:F
    :cond_4
    move-object/from16 v0, p0

    iget v1, v0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineDistance:I

    int-to-float v1, v1

    mul-float/2addr v1, v12

    float-to-double v10, v1

    .line 1061
    move-object/from16 v0, p0

    iget v1, v0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineDistance:I

    int-to-float v1, v1

    mul-float v1, v1, v21

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineDuration:I

    int-to-float v4, v4

    div-float/2addr v1, v4

    const/high16 v4, 0x447a

    mul-float/2addr v1, v4

    move-object/from16 v0, p0

    iput v1, v0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F

    goto :goto_1

    .line 1063
    .end local v12           #distanceCoef:F
    .end local v13           #index:I
    .end local v15           #t:F
    .end local v21           #velocityCoef:F
    :cond_5
    move-object/from16 v0, p0

    iget v1, v0, Landroid/widget/OverScroller$SplineOverScroller;->mUpdateCount:I

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Landroid/widget/OverScroller$SplineOverScroller;->mUpdateCount:I

    .line 1064
    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/widget/OverScroller$SplineOverScroller;->mEnableOverScrollForMz:Z

    if-eqz v1, :cond_6

    move-object/from16 v0, p0

    iget v1, v0, Landroid/widget/OverScroller$SplineOverScroller;->mUpdateCount:I

    const/4 v4, 0x5

    if-ne v1, v4, :cond_6

    .line 1065
    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/widget/OverScroller$SplineOverScroller;->mAverageTime:J

    move-object/from16 v0, p0

    iget v1, v0, Landroid/widget/OverScroller$SplineOverScroller;->mUpdateCount:I

    int-to-long v6, v1

    div-long v6, v2, v6

    add-long/2addr v4, v6

    const-wide/16 v6, 0x2

    div-long/2addr v4, v6

    move-object/from16 v0, p0

    iput-wide v4, v0, Landroid/widget/OverScroller$SplineOverScroller;->mAverageTime:J

    .line 1068
    :cond_6
    move-object/from16 v0, p0

    iget v1, v0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/OverScroller$SplineOverScroller;->mCoeffDeceleration:F

    mul-float/2addr v1, v4

    move-object/from16 v0, p0

    iput v1, v0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F

    .line 1069
    move-object/from16 v0, p0

    iget v1, v0, Landroid/widget/OverScroller$SplineOverScroller;->mLastDistance:F

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/OverScroller$SplineOverScroller;->mDelta:F

    add-float/2addr v1, v4

    float-to-double v10, v1

    .line 1070
    move-object/from16 v0, p0

    iget v1, v0, Landroid/widget/OverScroller$SplineOverScroller;->mDelta:F

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/OverScroller$SplineOverScroller;->mCoeffDeceleration:F

    mul-float/2addr v1, v4

    move-object/from16 v0, p0

    iput v1, v0, Landroid/widget/OverScroller$SplineOverScroller;->mDelta:F

    .line 1071
    double-to-float v1, v10

    move-object/from16 v0, p0

    iput v1, v0, Landroid/widget/OverScroller$SplineOverScroller;->mLastDistance:F

    goto/16 :goto_1

    .line 1078
    :pswitch_1
    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/widget/OverScroller$SplineOverScroller;->mEnableOverScrollForMz:Z

    if-nez v1, :cond_7

    .line 1079
    long-to-float v1, v2

    const/high16 v4, 0x447a

    div-float v15, v1, v4

    .line 1080
    .restart local v15       #t:F
    move-object/from16 v0, p0

    iget v1, v0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    mul-float/2addr v4, v15

    add-float/2addr v1, v4

    move-object/from16 v0, p0

    iput v1, v0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F

    .line 1081
    move-object/from16 v0, p0

    iget v1, v0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    int-to-float v1, v1

    mul-float/2addr v1, v15

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    mul-float/2addr v4, v15

    mul-float/2addr v4, v15

    const/high16 v5, 0x4000

    div-float/2addr v4, v5

    add-float/2addr v1, v4

    float-to-double v10, v1

    .line 1082
    goto/16 :goto_1

    .line 1083
    .end local v15           #t:F
    :cond_7
    move-object/from16 v0, p0

    iget v1, v0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/OverScroller$SplineOverScroller;->mCoeffDeceleration:F

    mul-float/2addr v1, v4

    move-object/from16 v0, p0

    iput v1, v0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F

    .line 1084
    move-object/from16 v0, p0

    iget v1, v0, Landroid/widget/OverScroller$SplineOverScroller;->mLastDistance:F

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/OverScroller$SplineOverScroller;->mDelta:F

    add-float/2addr v1, v4

    float-to-double v10, v1

    .line 1085
    move-object/from16 v0, p0

    iget v1, v0, Landroid/widget/OverScroller$SplineOverScroller;->mDelta:F

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/OverScroller$SplineOverScroller;->mCoeffDeceleration:F

    mul-float/2addr v1, v4

    move-object/from16 v0, p0

    iput v1, v0, Landroid/widget/OverScroller$SplineOverScroller;->mDelta:F

    .line 1086
    double-to-float v1, v10

    move-object/from16 v0, p0

    iput v1, v0, Landroid/widget/OverScroller$SplineOverScroller;->mLastDistance:F

    goto/16 :goto_1

    .line 1093
    :pswitch_2
    long-to-float v1, v2

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    int-to-float v4, v4

    div-float v15, v1, v4

    .line 1094
    .restart local v15       #t:F
    mul-float v16, v15, v15

    .line 1095
    .local v16, t2:F
    move-object/from16 v0, p0

    iget v1, v0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v14

    .line 1096
    .local v14, sign:F
    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/widget/OverScroller$SplineOverScroller;->mEnableOverScrollForMz:Z

    if-eqz v1, :cond_8

    .line 1097
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/OverScroller$SplineOverScroller;->mOver:I

    move-object/from16 v0, p0

    iget v1, v0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    int-to-long v6, v1

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Landroid/widget/OverScroller$SplineOverScroller;->quintic(JIIJ)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v14

    float-to-double v10, v1

    goto/16 :goto_1

    .line 1099
    :cond_8
    move-object/from16 v0, p0

    iget v1, v0, Landroid/widget/OverScroller$SplineOverScroller;->mOver:I

    int-to-float v1, v1

    mul-float/2addr v1, v14

    const/high16 v4, 0x4040

    mul-float v4, v4, v16

    const/high16 v5, 0x4000

    mul-float/2addr v5, v15

    mul-float v5, v5, v16

    sub-float/2addr v4, v5

    mul-float/2addr v1, v4

    float-to-double v10, v1

    .line 1100
    move-object/from16 v0, p0

    iget v1, v0, Landroid/widget/OverScroller$SplineOverScroller;->mOver:I

    int-to-float v1, v1

    mul-float/2addr v1, v14

    const/high16 v4, 0x40c0

    mul-float/2addr v1, v4

    neg-float v4, v15

    add-float v4, v4, v16

    mul-float/2addr v1, v4

    move-object/from16 v0, p0

    iput v1, v0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F

    goto/16 :goto_1

    .line 1111
    .end local v14           #sign:F
    .end local v15           #t:F
    .end local v16           #t2:F
    :cond_9
    move-object/from16 v0, p0

    iget v1, v0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    double-to-int v4, v10

    add-int/2addr v1, v4

    move-object/from16 v0, p0

    iput v1, v0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    .line 1112
    move-object/from16 v0, p0

    iget v1, v0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    if-ne v1, v4, :cond_b

    .line 1113
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 1117
    :cond_a
    move-object/from16 v0, p0

    iget v1, v0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v4, v4

    add-int/2addr v1, v4

    move-object/from16 v0, p0

    iput v1, v0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    .line 1120
    :cond_b
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1044
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method updateScroll(F)V
    .locals 3
    .parameter "q"

    .prologue
    .line 686
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    iget v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    iget v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    .line 687
    return-void
.end method
