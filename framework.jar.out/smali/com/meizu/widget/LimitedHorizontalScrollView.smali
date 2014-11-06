.class public Lcom/meizu/widget/LimitedHorizontalScrollView;
.super Landroid/widget/FrameLayout;
.source "LimitedHorizontalScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/widget/LimitedHorizontalScrollView$OnStateChangedListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_SCROLL_DISTANCE:I = 0x186a0

.field private static final DEFAULT_SCROLL_DURATION_MULTIPLE:Ljava/lang/Float; = null

.field private static final DEFAULT_SHADOW_WIDTH:I = 0xc

.field private static final INVALID_POINTER:I = -0x1

.field private static final MAX_SCROLL_DURATION:I = 0x320

.field private static final sInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field private mActivePointerId:I

.field private mEnableScroll:Z

.field private mFillViewport:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private mIsBeingDragged:Z

.field private mLastMotionX:I

.field private mLastMotionY:I

.field private mLimits:[I

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field private mOpenedState:Z

.field private mScrollToPosition:I

.field private mScroller:Landroid/widget/Scroller;

.field private mShadow:Landroid/graphics/drawable/Drawable;

.field private mShadowWidth:I

.field private mStateChangedListener:Lcom/meizu/widget/LimitedHorizontalScrollView$OnStateChangedListener;

.field private mSwitchBtn:Landroid/view/View;

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const/high16 v0, 0x4020

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lcom/meizu/widget/LimitedHorizontalScrollView;->DEFAULT_SCROLL_DURATION_MULTIPLE:Ljava/lang/Float;

    .line 93
    new-instance v0, Lcom/meizu/widget/LimitedHorizontalScrollView$1;

    invoke-direct {v0}, Lcom/meizu/widget/LimitedHorizontalScrollView$1;-><init>()V

    sput-object v0, Lcom/meizu/widget/LimitedHorizontalScrollView;->sInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 101
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/meizu/widget/LimitedHorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 102
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 105
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/widget/LimitedHorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 106
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x0

    .line 109
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/widget/LimitedHorizontalScrollView;->mEnableScroll:Z

    .line 60
    iput-boolean v1, p0, Lcom/meizu/widget/LimitedHorizontalScrollView;->mIsBeingDragged:Z

    .line 73
    const/4 v0, -0x1

    iput v0, p0, Lcom/meizu/widget/LimitedHorizontalScrollView;->mActivePointerId:I

    .line 78
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/meizu/widget/LimitedHorizontalScrollView;->mLimits:[I

    .line 80
    iput-boolean v1, p0, Lcom/meizu/widget/LimitedHorizontalScrollView;->mOpenedState:Z

    .line 110
    invoke-direct {p0}, Lcom/meizu/widget/LimitedHorizontalScrollView;->init()V

    .line 111
    return-void
.end method

.method private allowScroll(I)Z
    .locals 4
    .parameter "x"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 583
    iget v3, p0, Lcom/meizu/widget/LimitedHorizontalScrollView;->mLastMotionX:I

    sub-int/2addr v3, p1

    if-lez v3, :cond_1

    move v0, v2

    .line 584
    .local v0, toLeft:Z
    :goto_0
    if-eqz v0, :cond_2

    iget-boolean v3, p0, Lcom/meizu/widget/LimitedHorizontalScrollView;->mOpenedState:Z

    if-nez v3, :cond_2

    .line 588
    :cond_0
    :goto_1
    return v1

    .end local v0           #toLeft:Z
    :cond_1
    move v0, v1

    .line 583
    goto :goto_0

    .line 586
    .restart local v0       #toLeft:Z
    :cond_2
    if-nez v0, :cond_3

    iget-boolean v3, p0, Lcom/meizu/widget/LimitedHorizontalScrollView;->mOpenedState:Z

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    .line 588
    goto :goto_1
.end method

.method private clampToScrollLimits(I)I
    .locals 3
    .parameter "paramInt"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 575
    iget-object v0, p0, Lcom/meizu/widget/LimitedHorizontalScrollView;->mLimits:[I

    aget v0, v0, v1

    if-ge p1, v0, :cond_0

    .line 576
    iget-object v0, p0, Lcom/meizu/widget/LimitedHorizontalScrollView;->mLimits:[I

    aget p1, v0, v1

    .line 577
    :cond_0
    iget-object v0, p0, Lcom/meizu/widget/LimitedHorizontalScrollView;->mLimits:[I

    aget v0, v0, v2

    if-gt p1, v0, :cond_1

    .line 579
    .end local p1
    :goto_0
    return p1

    .restart local p1
    :cond_1
    iget-object v0, p0, Lcom/meizu/widget/LimitedHorizontalScrollView;->mLimits:[I

    aget p1, v0, v2

    goto :goto_0
.end method

.method private inChild(II)Z
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v2, 0x0

    .line 518
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 519
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v1

    .line 520
    .local v1, scrollX:I
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 521
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    if-lt p2, v3, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v3

    if-ge p2, v3, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int/2addr v3, v1

    if-lt p1, v3, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v3

    sub-int/2addr v3, v1

    if-ge p1, v3, :cond_0

    const/4 v2, 0x1

    .line 526
    .end local v0           #child:Landroid/view/View;
    .end local v1           #scrollX:I
    :cond_0
    return v2
.end method

.method private init()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 114
    invoke-virtual {p0, v5}, Landroid/view/View;->setFocusable(Z)V

    .line 115
    const/high16 v2, 0x4

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 116
    invoke-virtual {p0, v4}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 117
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 118
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Lcom/meizu/widget/LimitedHorizontalScrollView;->mTouchSlop:I

    .line 119
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v2

    iput v2, p0, Lcom/meizu/widget/LimitedHorizontalScrollView;->mMinimumVelocity:I

    .line 120
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v2

    iput v2, p0, Lcom/meizu/widget/LimitedHorizontalScrollView;->mMaximumVelocity:I

    .line 121
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 122
    .local v1, localContext:Landroid/content/Context;
    new-instance v2, Landroid/widget/Scroller;

    sget-object v3, Lcom/meizu/widget/LimitedHorizontalScrollView;->sInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {v2, v1, v3}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v2, p0, Lcom/meizu/widget/LimitedHorizontalScrollView;->mScroller:Landroid/widget/Scroller;

    .line 124
    const/16 v2, 0xc

    iput v2, p0, Lcom/meizu/widget/LimitedHorizontalScrollView;->mShadowWidth:I

    .line 126
    iput-boolean v4, p0, Lcom/meizu/widget/LimitedHorizontalScrollView;->mFillViewport:Z

    .line 128
    iget-object v2, p0, Lcom/meizu/widget/LimitedHorizontalScrollView;->mLimits:[I

    const/16 v3, -0x190

    aput v3, v2, v4

    .line 129
    iget-object v2, p0, Lcom/meizu/widget/LimitedHorizontalScrollView;->mLimits:[I

    aput v4, v2, v5

    .line 130
    return-void
.end method

.method private initOrResetVelocityTracker()V
    .locals 1

    .prologue
    .line 530
    iget-object v0, p0, Lcom/meizu/widget/LimitedHorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 531
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/widget/LimitedHorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 535
    :goto_0
    return-void

    .line 533
    :cond_0
    iget-object v0, p0, Lcom/meizu/widget/LimitedHorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_0
.end method

.method private initVelocityTrackerIfNotExists()V
    .locals 1

    .prologue
    .line 538
    iget-object v0, p0, Lcom/meizu/widget/LimitedHorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 539
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/widget/LimitedHorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 541
    :cond_0
    return-void
.end method

.method private isTouchOnView(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "v"
    .parameter "ev"

    .prologue
    .line 622
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 623
    .local v0, rect:Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 624
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 625
    const/4 v1, 0x1

    .line 627
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 5
    .parameter "ev"

    .prologue
    .line 551
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const v4, 0xff00

    and-int/2addr v3, v4

    shr-int/lit8 v2, v3, 0x8

    .line 553
    .local v2, pointerIndex:I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 554
    .local v1, pointerId:I
    iget v3, p0, Lcom/meizu/widget/LimitedHorizontalScrollView;->mActivePointerId:I

    if-ne v1, v3, :cond_0

    .line 558
    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 559
    .local v0, newPointerIndex:I
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/meizu/widget/LimitedHorizontalScrollView;->mLastMotionX:I

    .line 560
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/meizu/widget/LimitedHorizontalScrollView;->mLastMotionY:I

    .line 561
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lcom/meizu/widget/LimitedHorizontalScrollView;->mActivePointerId:I

    .line 562
    iget-object v3, p0, Lcom/meizu/widget/LimitedHorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_0

    .line 563
    iget-object v3, p0, Lcom/meizu/widget/LimitedHorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 566
    .end local v0           #newPointerIndex:I
    :cond_0
    return-void

    .line 558
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private rebound()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 595
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 596
    .local v0, currentPosition:I
    iget-object v1, p0, Lcom/meizu/widget/LimitedHorizontalScrollView;->mLimits:[I

    aget v1, v1, v4

    iget-object v2, p0, Lcom/meizu/widget/LimitedHorizontalScrollView;->mLimits:[I

    aget v2, v2, v3

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    if-le v0, v1, :cond_0

    .line 597
    iget-object v1, p0, Lcom/meizu/widget/LimitedHorizontalScrollView;->mLimits:[I

    aget v1, v1, v3

    invoke-direct {p0, v1}, Lcom/meizu/widget/LimitedHorizontalScrollView;->smoothScrollTo(I)V

    .line 598
    invoke-direct {p0, v4}, Lcom/meizu/widget/LimitedHorizontalScrollView;->setOpenedState(Z)V

    .line 603
    :goto_0
    return-void

    .line 600
    :cond_0
    iget-object v1, p0, Lcom/meizu/widget/LimitedHorizontalScrollView;->mLimits:[I

    aget v1, v1, v4

    invoke-direct {p0, v1}, Lcom/meizu/widget/LimitedHorizontalScrollView;->smoothScrollTo(I)V

    .line 601
    invoke-direct {p0, v3}, Lcom/meizu/widget/LimitedHorizontalScrollView;->setOpenedState(Z)V

    goto :goto_0
.end method

.method private recycleVelocityTracker()V
    .locals 1

    .prologue
    .line 544
    iget-object v0, p0, Lcom/meizu/widget/LimitedHorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 545
    iget-object v0, p0, Lcom/meizu/widget/LimitedHorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 546
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/widget/LimitedHorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 548
    :cond_0
    return-void
.end method

.method private scrollBy(I)V
    .locals 3
    .parameter "deltaX"

    .prologue
    .line 506
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v1

    add-int/2addr v1, p1

    invoke-direct {p0, v1}, Lcom/meizu/widget/LimitedHorizontalScrollView;->clampToScrollLimits(I)I

    move-result v0

    .line 507
    .local v0, end:I
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v1

    sub-int v1, v0, v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/view/View;->scrollBy(II)V

    .line 508
    return-void
.end method

.method private setOpenedState(Z)V
    .locals 2
    .parameter "state"

    .prologue
    .line 611
    iget-boolean v0, p0, Lcom/meizu/widget/LimitedHorizontalScrollView;->mOpenedState:Z

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/meizu/widget/LimitedHorizontalScrollView;->mStateChangedListener:Lcom/meizu/widget/LimitedHorizontalScrollView$OnStateChangedListener;

    if-eqz v0, :cond_0

    .line 612
    iget-object v0, p0, Lcom/meizu/widget/LimitedHorizontalScrollView;->mStateChangedListener:Lcom/meizu/widget/LimitedHorizontalScrollView$OnStateChangedListener;

    iget-boolean v1, p0, Lcom/meizu/widget/LimitedHorizontalScrollView;->mOpenedState:Z

    invoke-interface {v0, v1}, Lcom/meizu/widget/LimitedHorizontalScrollView$OnStateChangedListener;->onStateChanged(Z)V

    .line 613
    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/meizu/widget/LimitedHorizontalScrollView;->mOpenedState:Z

    .line 615
    return-void

    .line 613
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private smoothScrollTo(I)V
    .locals 7
    .parameter "position"

    .prologue
    const/4 v2, 0x0

    .line 495
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v6

    .line 496
    .local v6, start:I
    invoke-direct {p0, p1}, Lcom/meizu/widget/LimitedHorizontalScrollView;->clampToScrollLimits(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v1

    sub-int v3, v0, v1

    .line 497
    .local v3, end:I
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    sget-object v1, Lcom/meizu/widget/LimitedHorizontalScrollView;->DEFAULT_SCROLL_DURATION_MULTIPLE:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v5, v0

    .line 498
    .local v5, duration:I
    const/16 v0, 0x320

    if-le v5, v0, :cond_0

    .line 499
    const/16 v5, 0x320

    .line 500
    :cond_0
    iget-object v0, p0, Lcom/meizu/widget/LimitedHorizontalScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v1

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 501
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 503
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 2
    .parameter "child"

    .prologue
    .line 134
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 135
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "SideHorizontalScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 139
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 140
    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 2
    .parameter "child"
    .parameter "index"

    .prologue
    .line 144
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 145
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "SideHorizontalScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 149
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 150
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .parameter "child"
    .parameter "index"
    .parameter "params"

    .prologue
    .line 164
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 165
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "SideHorizontalScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 169
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 170
    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .parameter "child"
    .parameter "params"

    .prologue
    .line 154
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 155
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "SideHorizontalScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 159
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 160
    return-void
.end method

.method protected canScroll(Landroid/view/View;Z)Z
    .locals 8
    .parameter "v"
    .parameter "checkV"

    .prologue
    .line 652
    instance-of v6, p1, Landroid/view/ViewGroup;

    if-eqz v6, :cond_2

    move-object v2, p1

    .line 653
    check-cast v2, Landroid/view/ViewGroup;

    .line 654
    .local v2, group:Landroid/view/ViewGroup;
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v4

    .line 655
    .local v4, scrollX:I
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v5

    .line 656
    .local v5, scrollY:I
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 657
    .local v1, count:I
    add-int/lit8 v3, v1, -0x1

    .local v3, i:I
    :goto_0
    if-ltz v3, :cond_2

    .line 658
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 659
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    move-result v6

    if-lez v6, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    move-result v6

    const v7, 0x186a0

    if-lt v6, v7, :cond_1

    :cond_0
    const/4 v6, 0x0

    invoke-virtual {p0, v0, v6}, Lcom/meizu/widget/LimitedHorizontalScrollView;->canScroll(Landroid/view/View;Z)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 661
    :cond_1
    const/4 p2, 0x1

    .line 666
    .end local v0           #child:Landroid/view/View;
    .end local v1           #count:I
    .end local v2           #group:Landroid/view/ViewGroup;
    .end local v3           #i:I
    .end local v4           #scrollX:I
    .end local v5           #scrollY:I
    .end local p2
    :cond_2
    return p2

    .line 657
    .restart local v0       #child:Landroid/view/View;
    .restart local v1       #count:I
    .restart local v2       #group:Landroid/view/ViewGroup;
    .restart local v3       #i:I
    .restart local v4       #scrollX:I
    .restart local v5       #scrollY:I
    .restart local p2
    :cond_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_0
.end method

.method public computeScroll()V
    .locals 2

    .prologue
    .line 511
    iget-object v0, p0, Lcom/meizu/widget/LimitedHorizontalScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 512
    iget-object v0, p0, Lcom/meizu/widget/LimitedHorizontalScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iget-object v1, p0, Lcom/meizu/widget/LimitedHorizontalScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->scrollTo(II)V

    .line 513
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 515
    :cond_0
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter "canvas"

    .prologue
    .line 461
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 463
    iget-object v2, p0, Lcom/meizu/widget/LimitedHorizontalScrollView;->mShadow:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/meizu/widget/LimitedHorizontalScrollView;->mShadowWidth:I

    if-lez v2, :cond_0

    .line 465
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    .line 466
    .local v0, paddingLeft:I
    const/4 v1, 0x0

    .line 467
    .local v1, start:I
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v2

    iget-object v3, p0, Lcom/meizu/widget/LimitedHorizontalScrollView;->mLimits:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    if-ge v2, v3, :cond_1

    .line 469
    iget v2, p0, Lcom/meizu/widget/LimitedHorizontalScrollView;->mShadowWidth:I

    neg-int v2, v2

    add-int v1, v2, v0

    .line 473
    :goto_0
    iget-object v2, p0, Lcom/meizu/widget/LimitedHorizontalScrollView;->mShadow:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    add-int/lit8 v4, v0, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-virtual {v2, v1, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 474
    iget-object v2, p0, Lcom/meizu/widget/LimitedHorizontalScrollView;->mShadow:Landroid/graphics/drawable/Drawable;

    const/16 v3, 0x32

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 475
    iget-object v2, p0, Lcom/meizu/widget/LimitedHorizontalScrollView;->mShadow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 478
    .end local v0           #paddingLeft:I
    .end local v1           #start:I
    :cond_0
    return-void

    .line 471
    .restart local v0       #paddingLeft:I
    .restart local v1       #start:I
    :cond_1
    iget v2, p0, Lcom/meizu/widget/LimitedHorizontalScrollView;->mShadowWidth:I

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x3

    add-int v1, v2, v0

    goto :goto_0
.end method

.method public getCurrentState()Z
    .locals 1

    .prologue
    .line 618
    iget-boolean v0, p0, Lcom/meizu/widget/LimitedHorizontalScrollView;->mOpenedState:Z

    return v0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 175
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 176
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 177
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "SideHorizontalScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 181
    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .parameter "ev"

    .prologue
    const/4 v13, -0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 216
    iget-boolean v11, p0, Lcom/meizu/widget/LimitedHorizontalScrollView;->mEnableScroll:Z

    if-nez v11, :cond_1

    .line 327
    :cond_0
    :goto_0
    return v10

    .line 220
    :cond_1
    invoke-virtual {p0, p0, v10}, Lcom/meizu/widget/LimitedHorizontalScrollView;->canScroll(Landroid/view/View;Z)Z

    move-result v11

    if-eqz v11, :cond_2

    iget-boolean v11, p0, Lcom/meizu/widget/LimitedHorizontalScrollView;->mOpenedState:Z

    if-eqz v11, :cond_0

    .line 224
    :cond_2
    invoke-virtual {p0, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 225
    .local v2, child:Landroid/view/View;
    if-eqz v2, :cond_3

    invoke-direct {p0, v2, p1}, Lcom/meizu/widget/LimitedHorizontalScrollView;->isTouchOnView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 229
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 231
    .local v0, action:I
    const/4 v11, 0x2

    if-ne v0, v11, :cond_4

    iget-boolean v11, p0, Lcom/meizu/widget/LimitedHorizontalScrollView;->mIsBeingDragged:Z

    if-eqz v11, :cond_4

    move v10, v9

    .line 232
    goto :goto_0

    .line 236
    :cond_4
    iget-boolean v11, p0, Lcom/meizu/widget/LimitedHorizontalScrollView;->mIsBeingDragged:Z

    if-nez v11, :cond_5

    iget-boolean v11, p0, Lcom/meizu/widget/LimitedHorizontalScrollView;->mOpenedState:Z

    if-eqz v11, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    iget-object v12, p0, Lcom/meizu/widget/LimitedHorizontalScrollView;->mLimits:[I

    aget v12, v12, v10

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v12

    int-to-float v12, v12

    cmpl-float v11, v11, v12

    if-lez v11, :cond_5

    move v10, v9

    .line 237
    goto :goto_0

    .line 240
    :cond_5
    and-int/lit16 v11, v0, 0xff

    packed-switch v11, :pswitch_data_0

    .line 327
    :cond_6
    :goto_1
    :pswitch_0
    iget-boolean v10, p0, Lcom/meizu/widget/LimitedHorizontalScrollView;->mIsBeingDragged:Z

    goto :goto_0

    .line 246
    :pswitch_1
    iget v1, p0, Lcom/meizu/widget/LimitedHorizontalScrollView;->mActivePointerId:I

    .line 247
    .local v1, activePointerId:I
    if-eq v1, v13, :cond_6

    .line 253
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v4

    .line 254
    .local v4, pointerIndex:I
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v10

    float-to-int v5, v10

    .line 255
    .local v5, x:I
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    float-to-int v7, v10

    .line 256
    .local v7, y:I
    iget v10, p0, Lcom/meizu/widget/LimitedHorizontalScrollView;->mLastMotionX:I

    sub-int/2addr v10, v5

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v6

    .line 257
    .local v6, xDiff:I
    iget v10, p0, Lcom/meizu/widget/LimitedHorizontalScrollView;->mLastMotionY:I

    sub-int/2addr v10, v7

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v8

    .line 258
    .local v8, yDiff:I
    iget v10, p0, Lcom/meizu/widget/LimitedHorizontalScrollView;->mTouchSlop:I

    if-le v6, v10, :cond_6

    iget v10, p0, Lcom/meizu/widget/LimitedHorizontalScrollView;->mTouchSlop:I

    div-int/lit8 v10, v10, 0x2

    if-le v8, v10, :cond_6

    sub-int v10, v6, v8

    if-lez v10, :cond_6

    invoke-direct {p0, v5}, Lcom/meizu/widget/LimitedHorizontalScrollView;->allowScroll(I)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 260
    iput-boolean v9, p0, Lcom/meizu/widget/LimitedHorizontalScrollView;->mIsBeingDragged:Z

    .line 261
    iput v5, p0, Lcom/meizu/widget/LimitedHorizontalScrollView;->mLastMotionX:I

    .line 262
    iput v7, p0, Lcom/meizu/widget/LimitedHorizontalScrollView;->mLastMotionY:I

    .line 263
    invoke-direct {p0}, Lcom/meizu/widget/LimitedHorizontalScrollView;->initVelocityTrackerIfNotExists()V

    .line 264
    iget-object v10, p0, Lcom/meizu/widget/LimitedHorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v10, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 265
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    if-eqz v10, :cond_6

    .line 266
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    invoke-interface {v10, v9}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_1

    .line 272
    .end local v1           #activePointerId:I
    .end local v4           #pointerIndex:I
    .end local v5           #x:I
    .end local v6           #xDiff:I
    .end local v7           #y:I
    .end local v8           #yDiff:I
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    float-to-int v5, v11

    .line 273
    .restart local v5       #x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    float-to-int v7, v11

    .line 274
    .restart local v7       #y:I
    invoke-direct {p0, v5, v7}, Lcom/meizu/widget/LimitedHorizontalScrollView;->inChild(II)Z

    move-result v11

    if-nez v11, :cond_7

    .line 275
    iput-boolean v10, p0, Lcom/meizu/widget/LimitedHorizontalScrollView;->mIsBeingDragged:Z

    .line 276
    invoke-direct {p0}, Lcom/meizu/widget/LimitedHorizontalScrollView;->recycleVelocityTracker()V

    goto :goto_1

    .line 284
    :cond_7
    iput v5, p0, Lcom/meizu/widget/LimitedHorizontalScrollView;->mLastMotionX:I

    .line 285
    iput v7, p0, Lcom/meizu/widget/LimitedHorizontalScrollView;->mLastMotionY:I

    .line 286
    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v11

    iput v11, p0, Lcom/meizu/widget/LimitedHorizontalScrollView;->mActivePointerId:I

    .line 288
    invoke-direct {p0}, Lcom/meizu/widget/LimitedHorizontalScrollView;->initOrResetVelocityTracker()V

    .line 289
    iget-object v11, p0, Lcom/meizu/widget/LimitedHorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v11, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 296
    iget-object v11, p0, Lcom/meizu/widget/LimitedHorizontalScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v11}, Landroid/widget/Scroller;->isFinished()Z

    move-result v11

    if-nez v11, :cond_8

    :goto_2
    iput-boolean v9, p0, Lcom/meizu/widget/LimitedHorizontalScrollView;->mIsBeingDragged:Z

    goto/16 :goto_1

    :cond_8
    move v9, v10

    goto :goto_2

    .line 303
    .end local v5           #x:I
    .end local v7           #y:I
    :pswitch_3
    iput-boolean v10, p0, Lcom/meizu/widget/LimitedHorizontalScrollView;->mIsBeingDragged:Z

    .line 304
    iput v13, p0, Lcom/meizu/widget/LimitedHorizontalScrollView;->mActivePointerId:I

    .line 306
    invoke-direct {p0}, Lcom/meizu/widget/LimitedHorizontalScrollView;->rebound()V

    goto/16 :goto_1

    .line 309
    :pswitch_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    .line 310
    .local v3, index:I
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    float-to-int v9, v9

    iput v9, p0, Lcom/meizu/widget/LimitedHorizontalScrollView;->mLastMotionX:I

    .line 311
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    float-to-int v9, v9

    iput v9, p0, Lcom/meizu/widget/LimitedHorizontalScrollView;->mLastMotionY:I

    .line 312
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v9

    iput v9, p0, Lcom/meizu/widget/LimitedHorizontalScrollView;->mActivePointerId:I

    goto/16 :goto_1

    .line 316
    .end local v3           #index:I
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/meizu/widget/LimitedHorizontalScrollView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 317
    iget v9, p0, Lcom/meizu/widget/LimitedHorizontalScrollView;->mActivePointerId:I

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v9

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    float-to-int v9, v9

    iput v9, p0, Lcom/meizu/widget/LimitedHorizontalScrollView;->mLastMotionX:I

    .line 318
    iget v9, p0, Lcom/meizu/widget/LimitedHorizontalScrollView;->mActivePointerId:I

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v9

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    float-to-int v9, v9

    iput v9, p0, Lcom/meizu/widget/LimitedHorizontalScrollView;->mLastMotionY:I

    .line 319
    invoke-direct {p0}, Lcom/meizu/widget/LimitedHorizontalScrollView;->rebound()V

    goto/16 :goto_1

    .line 240
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 444
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 450
    return-void
.end method

.method protected onMeasure(II)V
    .locals 8
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 185
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 187
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 188
    .local v5, widthMode:I
    if-nez v5, :cond_1

    .line 211
    :cond_0
    :goto_0
    return-void

    .line 192
    :cond_1
    iget-boolean v6, p0, Lcom/meizu/widget/LimitedHorizontalScrollView;->mFillViewport:Z

    if-eqz v6, :cond_0

    .line 196
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    if-lez v6, :cond_0

    .line 197
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 198
    .local v0, child:Landroid/view/View;
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 199
    .local v4, width:I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    if-ge v6, v4, :cond_0

    .line 200
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 202
    .local v3, lp:Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v7

    add-int/2addr v6, v7

    iget v7, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {p2, v6, v7}, Lcom/meizu/widget/LimitedHorizontalScrollView;->getChildMeasureSpec(III)I

    move-result v1

    .line 204
    .local v1, childHeightMeasureSpec:I
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v6

    sub-int/2addr v4, v6

    .line 205
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v6

    sub-int/2addr v4, v6

    .line 206
    const/high16 v6, 0x4000

    invoke-static {v4, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 208
    .local v2, childWidthMeasureSpec:I
    invoke-virtual {v0, v2, v1}, Landroid/view/View;->measure(II)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 17
    .parameter "ev"

    .prologue
    .line 334
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/meizu/widget/LimitedHorizontalScrollView;->mEnableScroll:Z

    if-nez v14, :cond_0

    .line 335
    const/4 v14, 0x0

    .line 437
    :goto_0
    return v14

    .line 338
    :cond_0
    const/4 v14, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v14}, Lcom/meizu/widget/LimitedHorizontalScrollView;->canScroll(Landroid/view/View;Z)Z

    move-result v14

    if-eqz v14, :cond_1

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/meizu/widget/LimitedHorizontalScrollView;->mOpenedState:Z

    if-nez v14, :cond_1

    .line 339
    const/4 v14, 0x0

    goto :goto_0

    .line 342
    :cond_1
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 343
    .local v4, child:Landroid/view/View;
    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v4, v1}, Lcom/meizu/widget/LimitedHorizontalScrollView;->isTouchOnView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v14

    if-nez v14, :cond_2

    .line 344
    const/4 v14, 0x0

    goto :goto_0

    .line 347
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/meizu/widget/LimitedHorizontalScrollView;->initVelocityTrackerIfNotExists()V

    .line 348
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/meizu/widget/LimitedHorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 350
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 353
    .local v2, action:I
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/meizu/widget/LimitedHorizontalScrollView;->mIsBeingDragged:Z

    if-nez v14, :cond_3

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/meizu/widget/LimitedHorizontalScrollView;->mOpenedState:Z

    if-eqz v14, :cond_3

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/meizu/widget/LimitedHorizontalScrollView;->mLimits:[I

    const/16 v16, 0x0

    aget v15, v15, v16

    invoke-static {v15}, Ljava/lang/Math;->abs(I)I

    move-result v15

    int-to-float v15, v15

    cmpg-float v14, v14, v15

    if-gez v14, :cond_3

    .line 354
    const/4 v14, 0x0

    goto :goto_0

    .line 357
    :cond_3
    and-int/lit16 v14, v2, 0xff

    packed-switch v14, :pswitch_data_0

    .line 437
    :cond_4
    :goto_1
    :pswitch_0
    const/4 v14, 0x1

    goto :goto_0

    .line 359
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v14

    if-nez v14, :cond_5

    .line 360
    const/4 v14, 0x0

    goto :goto_0

    .line 362
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/meizu/widget/LimitedHorizontalScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v14}, Landroid/widget/Scroller;->isFinished()Z

    move-result v14

    if-nez v14, :cond_8

    const/4 v14, 0x1

    :goto_2
    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/meizu/widget/LimitedHorizontalScrollView;->mIsBeingDragged:Z

    if-eqz v14, :cond_6

    .line 363
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    .line 364
    .local v10, parent:Landroid/view/ViewParent;
    if-eqz v10, :cond_6

    .line 365
    const/4 v14, 0x1

    invoke-interface {v10, v14}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 373
    .end local v10           #parent:Landroid/view/ViewParent;
    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/meizu/widget/LimitedHorizontalScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v14}, Landroid/widget/Scroller;->isFinished()Z

    move-result v14

    if-nez v14, :cond_7

    .line 374
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/meizu/widget/LimitedHorizontalScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v14}, Landroid/widget/Scroller;->abortAnimation()V

    .line 378
    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v14

    float-to-int v14, v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/meizu/widget/LimitedHorizontalScrollView;->mLastMotionX:I

    .line 379
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v14

    float-to-int v14, v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/meizu/widget/LimitedHorizontalScrollView;->mLastMotionY:I

    .line 380
    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/meizu/widget/LimitedHorizontalScrollView;->mActivePointerId:I

    goto :goto_1

    .line 362
    :cond_8
    const/4 v14, 0x0

    goto :goto_2

    .line 384
    :pswitch_2
    move-object/from16 v0, p0

    iget v14, v0, Lcom/meizu/widget/LimitedHorizontalScrollView;->mActivePointerId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    .line 385
    .local v3, activePointerIndex:I
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v14

    float-to-int v12, v14

    .line 386
    .local v12, x:I
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v14

    float-to-int v13, v14

    .line 387
    .local v13, y:I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/meizu/widget/LimitedHorizontalScrollView;->mLastMotionX:I

    sub-int v5, v14, v12

    .line 388
    .local v5, deltaX:I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/meizu/widget/LimitedHorizontalScrollView;->mLastMotionY:I

    sub-int v6, v14, v13

    .line 389
    .local v6, deltaY:I
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/meizu/widget/LimitedHorizontalScrollView;->mIsBeingDragged:Z

    if-nez v14, :cond_a

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/meizu/widget/LimitedHorizontalScrollView;->mTouchSlop:I

    div-int/lit8 v15, v15, 0x2

    if-le v14, v15, :cond_a

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v14

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v15

    sub-int/2addr v14, v15

    if-lez v14, :cond_a

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/meizu/widget/LimitedHorizontalScrollView;->allowScroll(I)Z

    move-result v14

    if-eqz v14, :cond_a

    .line 391
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    .line 392
    .restart local v10       #parent:Landroid/view/ViewParent;
    if-eqz v10, :cond_9

    .line 393
    const/4 v14, 0x1

    invoke-interface {v10, v14}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 395
    :cond_9
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/meizu/widget/LimitedHorizontalScrollView;->mIsBeingDragged:Z

    .line 396
    if-lez v5, :cond_b

    .line 397
    move-object/from16 v0, p0

    iget v14, v0, Lcom/meizu/widget/LimitedHorizontalScrollView;->mTouchSlop:I

    sub-int/2addr v5, v14

    .line 402
    .end local v10           #parent:Landroid/view/ViewParent;
    :cond_a
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/meizu/widget/LimitedHorizontalScrollView;->mIsBeingDragged:Z

    if-eqz v14, :cond_4

    .line 404
    move-object/from16 v0, p0

    iput v12, v0, Lcom/meizu/widget/LimitedHorizontalScrollView;->mLastMotionX:I

    .line 405
    move-object/from16 v0, p0

    iput v13, v0, Lcom/meizu/widget/LimitedHorizontalScrollView;->mLastMotionY:I

    .line 406
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollX()I

    move-result v8

    .line 407
    .local v8, oldX:I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollY()I

    move-result v9

    .line 408
    .local v9, oldY:I
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/meizu/widget/LimitedHorizontalScrollView;->scrollBy(I)V

    .line 409
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollX()I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollY()I

    move-result v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15, v8, v9}, Landroid/view/View;->onScrollChanged(IIII)V

    goto/16 :goto_1

    .line 399
    .end local v8           #oldX:I
    .end local v9           #oldY:I
    .restart local v10       #parent:Landroid/view/ViewParent;
    :cond_b
    move-object/from16 v0, p0

    iget v14, v0, Lcom/meizu/widget/LimitedHorizontalScrollView;->mTouchSlop:I

    add-int/2addr v5, v14

    goto :goto_3

    .line 413
    .end local v3           #activePointerIndex:I
    .end local v5           #deltaX:I
    .end local v6           #deltaY:I
    .end local v10           #parent:Landroid/view/ViewParent;
    .end local v12           #x:I
    .end local v13           #y:I
    :pswitch_3
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/meizu/widget/LimitedHorizontalScrollView;->mIsBeingDragged:Z

    if-eqz v14, :cond_4

    .line 414
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/meizu/widget/LimitedHorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 415
    .local v11, velocityTracker:Landroid/view/VelocityTracker;
    const/16 v14, 0x3e8

    move-object/from16 v0, p0

    iget v15, v0, Lcom/meizu/widget/LimitedHorizontalScrollView;->mMaximumVelocity:I

    int-to-float v15, v15

    invoke-virtual {v11, v14, v15}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 416
    move-object/from16 v0, p0

    iget v14, v0, Lcom/meizu/widget/LimitedHorizontalScrollView;->mActivePointerId:I

    invoke-virtual {v11, v14}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v14

    float-to-int v7, v14

    .line 418
    .local v7, initialVelocity:I
    invoke-direct/range {p0 .. p0}, Lcom/meizu/widget/LimitedHorizontalScrollView;->rebound()V

    .line 420
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/meizu/widget/LimitedHorizontalScrollView;->mActivePointerId:I

    .line 421
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/meizu/widget/LimitedHorizontalScrollView;->mIsBeingDragged:Z

    .line 422
    invoke-direct/range {p0 .. p0}, Lcom/meizu/widget/LimitedHorizontalScrollView;->recycleVelocityTracker()V

    goto/16 :goto_1

    .line 426
    .end local v7           #initialVelocity:I
    .end local v11           #velocityTracker:Landroid/view/VelocityTracker;
    :pswitch_4
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/meizu/widget/LimitedHorizontalScrollView;->mIsBeingDragged:Z

    if-eqz v14, :cond_4

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v14

    if-lez v14, :cond_4

    .line 427
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/meizu/widget/LimitedHorizontalScrollView;->mActivePointerId:I

    .line 428
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/meizu/widget/LimitedHorizontalScrollView;->mIsBeingDragged:Z

    .line 429
    invoke-direct/range {p0 .. p0}, Lcom/meizu/widget/LimitedHorizontalScrollView;->recycleVelocityTracker()V

    goto/16 :goto_1

    .line 433
    :pswitch_5
    invoke-direct/range {p0 .. p1}, Lcom/meizu/widget/LimitedHorizontalScrollView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 357
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public setScrollDistance(I)V
    .locals 4
    .parameter "distance"

    .prologue
    .line 487
    iget-object v0, p0, Lcom/meizu/widget/LimitedHorizontalScrollView;->mLimits:[I

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/meizu/widget/LimitedHorizontalScrollView;->mLimits:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    sub-int/2addr v2, p1

    aput v2, v0, v1

    .line 488
    return-void
.end method

.method public setScrollEnable(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 641
    iput-boolean p1, p0, Lcom/meizu/widget/LimitedHorizontalScrollView;->mEnableScroll:Z

    .line 642
    return-void
.end method

.method public setShadow(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "drawable"

    .prologue
    .line 631
    iput-object p1, p0, Lcom/meizu/widget/LimitedHorizontalScrollView;->mShadow:Landroid/graphics/drawable/Drawable;

    .line 632
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 633
    return-void
.end method

.method public setShadowWidth(I)V
    .locals 0
    .parameter "width"

    .prologue
    .line 636
    iput p1, p0, Lcom/meizu/widget/LimitedHorizontalScrollView;->mShadowWidth:I

    .line 637
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 638
    return-void
.end method

.method public toggle()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 453
    iget-boolean v0, p0, Lcom/meizu/widget/LimitedHorizontalScrollView;->mOpenedState:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/widget/LimitedHorizontalScrollView;->mLimits:[I

    aget v0, v0, v1

    :goto_0
    iput v0, p0, Lcom/meizu/widget/LimitedHorizontalScrollView;->mScrollToPosition:I

    .line 454
    iget v0, p0, Lcom/meizu/widget/LimitedHorizontalScrollView;->mScrollToPosition:I

    invoke-direct {p0, v0}, Lcom/meizu/widget/LimitedHorizontalScrollView;->smoothScrollTo(I)V

    .line 455
    iget-boolean v0, p0, Lcom/meizu/widget/LimitedHorizontalScrollView;->mOpenedState:Z

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    invoke-direct {p0, v0}, Lcom/meizu/widget/LimitedHorizontalScrollView;->setOpenedState(Z)V

    .line 456
    return-void

    .line 453
    :cond_0
    iget-object v0, p0, Lcom/meizu/widget/LimitedHorizontalScrollView;->mLimits:[I

    aget v0, v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    .line 455
    goto :goto_1
.end method
