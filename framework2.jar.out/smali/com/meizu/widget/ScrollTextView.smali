.class public Lcom/meizu/widget/ScrollTextView;
.super Landroid/widget/FrameLayout;
.source "ScrollTextView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/widget/ScrollTextView$scrollTouchListener;,
        Lcom/meizu/widget/ScrollTextView$IDataAdapter;
    }
.end annotation


# static fields
.field static final ANIMATED_SCROLL_GAP:I = 0xfa

.field static final MAX_SCROLL_FACTOR:F = 0.5f

.field static final TAG:Ljava/lang/String; = "ScrollTextView"


# instance fields
.field private mChildToScrollTo:Landroid/view/View;

.field mContext:Landroid/content/Context;

.field mCount:I

.field mCurrentItem:I

.field mCycleEnabled:Z

.field mDataInterface:Lcom/meizu/widget/ScrollTextView$IDataAdapter;

.field private mFillViewport:Z

.field mFlingStopYEnd:I

.field mFlingStopYStart:I

.field private mFocusedPosition:I

.field mFocusedView:Landroid/widget/TextView;

.field private mIsBeingDragged:Z

.field private mIsLayoutDirty:Z

.field mItemHeight:I

.field mItemPaddingBottom:I

.field mItemPaddingTop:I

.field mItemWidth:I

.field private mLastMotionY:F

.field private mLastScroll:J

.field mLineView:Landroid/widget/LinearLayout;

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field mOffsetY:I

.field mOneScreenCount:I

.field mScrollToYEnd:I

.field mScrollToYStart:I

.field private mScrollViewMovedFocus:Z

.field private mScroller:Landroid/widget/Scroller;

.field private mSmoothScrollingEnabled:Z

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTextHeight:I

.field private mTextNormalColor:I

.field private mTextNormalSize:F

.field private mTextSelectedColor:I

.field private mTextSelectedSize:F

.field private mTouchSlop:I

.field mValidEnd:I

.field mValidStart:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 246
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/meizu/widget/ScrollTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 247
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 250
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/widget/ScrollTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 251
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v5, 0x0

    const/high16 v4, -0x4080

    const/4 v3, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 254
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/meizu/widget/ScrollTextView;->mTempRect:Landroid/graphics/Rect;

    .line 69
    iput v4, p0, Lcom/meizu/widget/ScrollTextView;->mTextSelectedSize:F

    .line 71
    iput v4, p0, Lcom/meizu/widget/ScrollTextView;->mTextNormalSize:F

    .line 73
    iput v2, p0, Lcom/meizu/widget/ScrollTextView;->mTextHeight:I

    .line 76
    iput v2, p0, Lcom/meizu/widget/ScrollTextView;->mTextSelectedColor:I

    .line 78
    iput v2, p0, Lcom/meizu/widget/ScrollTextView;->mTextNormalColor:I

    .line 85
    iput-boolean v3, p0, Lcom/meizu/widget/ScrollTextView;->mIsLayoutDirty:Z

    .line 92
    iput-object v5, p0, Lcom/meizu/widget/ScrollTextView;->mChildToScrollTo:Landroid/view/View;

    .line 99
    iput-boolean v1, p0, Lcom/meizu/widget/ScrollTextView;->mIsBeingDragged:Z

    .line 115
    iput-boolean v3, p0, Lcom/meizu/widget/ScrollTextView;->mSmoothScrollingEnabled:Z

    .line 124
    iput-boolean v3, p0, Lcom/meizu/widget/ScrollTextView;->mCycleEnabled:Z

    .line 126
    iput v1, p0, Lcom/meizu/widget/ScrollTextView;->mOneScreenCount:I

    .line 128
    iput-object v5, p0, Lcom/meizu/widget/ScrollTextView;->mFocusedView:Landroid/widget/TextView;

    .line 130
    iput v1, p0, Lcom/meizu/widget/ScrollTextView;->mValidStart:I

    .line 132
    iput v1, p0, Lcom/meizu/widget/ScrollTextView;->mValidEnd:I

    .line 135
    iput v1, p0, Lcom/meizu/widget/ScrollTextView;->mCount:I

    .line 137
    iput v1, p0, Lcom/meizu/widget/ScrollTextView;->mItemPaddingTop:I

    .line 139
    iput v1, p0, Lcom/meizu/widget/ScrollTextView;->mItemPaddingBottom:I

    .line 141
    iput v1, p0, Lcom/meizu/widget/ScrollTextView;->mItemHeight:I

    .line 143
    iput v1, p0, Lcom/meizu/widget/ScrollTextView;->mItemWidth:I

    .line 147
    iput v1, p0, Lcom/meizu/widget/ScrollTextView;->mCurrentItem:I

    .line 161
    iput v2, p0, Lcom/meizu/widget/ScrollTextView;->mFocusedPosition:I

    .line 256
    invoke-virtual {p0, v3}, Landroid/view/View;->setVerticalFadingEdgeEnabled(Z)V

    .line 257
    iput-object p1, p0, Lcom/meizu/widget/ScrollTextView;->mContext:Landroid/content/Context;

    .line 258
    invoke-direct {p0}, Lcom/meizu/widget/ScrollTextView;->initScrollView()V

    .line 259
    new-instance v0, Lcom/meizu/widget/ScrollTextView$scrollTouchListener;

    invoke-direct {v0, p0}, Lcom/meizu/widget/ScrollTextView$scrollTouchListener;-><init>(Lcom/meizu/widget/ScrollTextView;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 260
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/meizu/widget/ScrollTextView$IDataAdapter;FIIIIIZ)V
    .locals 9
    .parameter "context"
    .parameter "dataAdapter"
    .parameter "lineOffset"
    .parameter "currentItem"
    .parameter "count"
    .parameter "oneScreenCount"
    .parameter "validStart"
    .parameter "validEnd"
    .parameter "cycleEnabled"

    .prologue
    .line 265
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/meizu/widget/ScrollTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    .line 266
    invoke-virtual/range {v0 .. v8}, Lcom/meizu/widget/ScrollTextView;->setData(Lcom/meizu/widget/ScrollTextView$IDataAdapter;FIIIIIZ)V

    .line 268
    return-void
.end method

.method private SetCurrentPos()V
    .locals 2

    .prologue
    .line 452
    iget v0, p0, Lcom/meizu/widget/ScrollTextView;->mFocusedPosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/meizu/widget/ScrollTextView;->mCurrentItem:I

    iget v1, p0, Lcom/meizu/widget/ScrollTextView;->mOneScreenCount:I

    add-int/lit8 v1, v1, -0x1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/meizu/widget/ScrollTextView;->mItemHeight:I

    mul-int/2addr v0, v1

    :goto_0
    iput v0, p0, Landroid/view/View;->mScrollY:I

    .line 453
    iget v0, p0, Landroid/view/View;->mScrollY:I

    invoke-virtual {p0, v0}, Lcom/meizu/widget/ScrollTextView;->getStoppedPos(I)I

    move-result v0

    iget v1, p0, Lcom/meizu/widget/ScrollTextView;->mOffsetY:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mScrollY:I

    .line 454
    return-void

    .line 452
    :cond_0
    iget v0, p0, Lcom/meizu/widget/ScrollTextView;->mCurrentItem:I

    iget v1, p0, Lcom/meizu/widget/ScrollTextView;->mFocusedPosition:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/meizu/widget/ScrollTextView;->mItemHeight:I

    mul-int/2addr v0, v1

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/meizu/widget/ScrollTextView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget v0, p0, Landroid/view/View;->mScrollY:I

    return v0
.end method

.method static synthetic access$100(Lcom/meizu/widget/ScrollTextView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget v0, p0, Landroid/view/View;->mScrollY:I

    return v0
.end method

.method static synthetic access$200(Lcom/meizu/widget/ScrollTextView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget v0, p0, Landroid/view/View;->mScrollY:I

    return v0
.end method

.method static synthetic access$300(Lcom/meizu/widget/ScrollTextView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget v0, p0, Landroid/view/View;->mScrollY:I

    return v0
.end method

.method static synthetic access$400(Lcom/meizu/widget/ScrollTextView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget v0, p0, Landroid/view/View;->mScrollY:I

    return v0
.end method

.method static synthetic access$500(Lcom/meizu/widget/ScrollTextView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget v0, p0, Landroid/view/View;->mScrollX:I

    return v0
.end method

.method static synthetic access$600(Lcom/meizu/widget/ScrollTextView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget v0, p0, Landroid/view/View;->mScrollY:I

    return v0
.end method

.method static synthetic access$700(Lcom/meizu/widget/ScrollTextView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget v0, p0, Landroid/view/View;->mScrollY:I

    return v0
.end method

.method static synthetic access$800(Lcom/meizu/widget/ScrollTextView;)Landroid/widget/Scroller;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/meizu/widget/ScrollTextView;->mScroller:Landroid/widget/Scroller;

    return-object v0
.end method

.method static synthetic access$900(Lcom/meizu/widget/ScrollTextView;)Landroid/view/VelocityTracker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/meizu/widget/ScrollTextView;->mVelocityTracker:Landroid/view/VelocityTracker;

    return-object v0
.end method

.method static synthetic access$902(Lcom/meizu/widget/ScrollTextView;Landroid/view/VelocityTracker;)Landroid/view/VelocityTracker;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/meizu/widget/ScrollTextView;->mVelocityTracker:Landroid/view/VelocityTracker;

    return-object p1
.end method

.method private canScroll()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 620
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 621
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 622
    const/4 v1, 0x1

    .line 624
    :cond_0
    return v1
.end method

.method private clamp(III)I
    .locals 1
    .parameter "n"
    .parameter "my"
    .parameter "child"

    .prologue
    .line 1594
    if-ge p2, p3, :cond_0

    if-gez p1, :cond_2

    .line 1610
    :cond_0
    const/4 p1, 0x0

    .line 1620
    .end local p1
    :cond_1
    :goto_0
    return p1

    .line 1612
    .restart local p1
    :cond_2
    add-int v0, p2, p1

    if-le v0, p3, :cond_1

    .line 1618
    sub-int p1, p3, p2

    goto :goto_0
.end method

.method private doScrollY(I)V
    .locals 2
    .parameter "delta"

    .prologue
    const/4 v1, 0x0

    .line 1197
    if-eqz p1, :cond_0

    .line 1198
    iget-boolean v0, p0, Lcom/meizu/widget/ScrollTextView;->mSmoothScrollingEnabled:Z

    if-eqz v0, :cond_1

    .line 1199
    invoke-virtual {p0, v1, p1}, Lcom/meizu/widget/ScrollTextView;->smoothScrollBy(II)V

    .line 1204
    :cond_0
    :goto_0
    return-void

    .line 1201
    :cond_1
    invoke-virtual {p0, v1, p1}, Landroid/view/View;->scrollBy(II)V

    goto :goto_0
.end method

.method private findFocusableViewInBounds(ZII)Landroid/view/View;
    .locals 11
    .parameter "topFocus"
    .parameter "top"
    .parameter "bottom"

    .prologue
    .line 935
    const/4 v10, 0x2

    invoke-virtual {p0, v10}, Landroid/view/View;->getFocusables(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 936
    .local v2, focusables:Ljava/util/List;,"Ljava/util/List<Landroid/view/View;>;"
    const/4 v1, 0x0

    .line 945
    .local v1, focusCandidate:Landroid/view/View;
    const/4 v3, 0x0

    .line 947
    .local v3, foundFullyContainedFocusable:Z
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 948
    .local v0, count:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v0, :cond_8

    .line 949
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 950
    .local v5, view:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v9

    .line 951
    .local v9, viewTop:I
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v6

    .line 953
    .local v6, viewBottom:I
    if-ge p2, v6, :cond_0

    if-ge v9, p3, :cond_0

    .line 958
    if-ge p2, v9, :cond_1

    if-ge v6, p3, :cond_1

    const/4 v8, 0x1

    .line 960
    .local v8, viewIsFullyContained:Z
    :goto_1
    if-nez v1, :cond_2

    .line 962
    move-object v1, v5

    .line 963
    move v3, v8

    .line 948
    .end local v8           #viewIsFullyContained:Z
    :cond_0
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 958
    :cond_1
    const/4 v8, 0x0

    goto :goto_1

    .line 965
    .restart local v8       #viewIsFullyContained:Z
    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v10

    if-lt v9, v10, :cond_4

    :cond_3
    if-nez p1, :cond_5

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v10

    if-le v6, v10, :cond_5

    :cond_4
    const/4 v7, 0x1

    .line 968
    .local v7, viewIsCloserToBoundary:Z
    :goto_3
    if-eqz v3, :cond_6

    .line 969
    if-eqz v8, :cond_0

    if-eqz v7, :cond_0

    .line 974
    move-object v1, v5

    goto :goto_2

    .line 965
    .end local v7           #viewIsCloserToBoundary:Z
    :cond_5
    const/4 v7, 0x0

    goto :goto_3

    .line 977
    .restart local v7       #viewIsCloserToBoundary:Z
    :cond_6
    if-eqz v8, :cond_7

    .line 981
    move-object v1, v5

    .line 982
    const/4 v3, 0x1

    goto :goto_2

    .line 983
    :cond_7
    if-eqz v7, :cond_0

    .line 988
    move-object v1, v5

    goto :goto_2

    .line 995
    .end local v5           #view:Landroid/view/View;
    .end local v6           #viewBottom:I
    .end local v7           #viewIsCloserToBoundary:Z
    .end local v8           #viewIsFullyContained:Z
    .end local v9           #viewTop:I
    :cond_8
    return-object v1
.end method

.method private findFocusableViewInMyBounds(ZILandroid/view/View;)Landroid/view/View;
    .locals 4
    .parameter "topFocus"
    .parameter "top"
    .parameter "preferredFocusable"

    .prologue
    .line 904
    invoke-virtual {p0}, Landroid/view/View;->getVerticalFadingEdgeLength()I

    move-result v3

    div-int/lit8 v1, v3, 0x2

    .line 905
    .local v1, fadingEdgeLength:I
    add-int v2, p2, v1

    .line 906
    .local v2, topWithoutFadingEdge:I
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr v3, p2

    sub-int v0, v3, v1

    .line 908
    .local v0, bottomWithoutFadingEdge:I
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result v3

    if-ge v3, v0, :cond_0

    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    move-result v3

    if-le v3, v2, :cond_0

    .line 913
    .end local p3
    :goto_0
    return-object p3

    .restart local p3
    :cond_0
    invoke-direct {p0, p1, v2, v0}, Lcom/meizu/widget/ScrollTextView;->findFocusableViewInBounds(ZII)Landroid/view/View;

    move-result-object p3

    goto :goto_0
.end method

.method private getAdjustedScrollPos(I)I
    .locals 5
    .parameter "posY"

    .prologue
    .line 458
    move v0, p1

    .line 460
    .local v0, scrollY:I
    iget-boolean v1, p0, Lcom/meizu/widget/ScrollTextView;->mCycleEnabled:Z

    if-nez v1, :cond_2

    .line 461
    iget v1, p0, Lcom/meizu/widget/ScrollTextView;->mScrollToYStart:I

    if-ge v0, v1, :cond_0

    .line 462
    iget v0, p0, Lcom/meizu/widget/ScrollTextView;->mScrollToYStart:I

    .line 464
    :cond_0
    iget v1, p0, Lcom/meizu/widget/ScrollTextView;->mScrollToYEnd:I

    if-le v0, v1, :cond_1

    .line 465
    iget v0, p0, Lcom/meizu/widget/ScrollTextView;->mScrollToYEnd:I

    .line 476
    :cond_1
    :goto_0
    return v0

    .line 468
    :cond_2
    iget v1, p0, Lcom/meizu/widget/ScrollTextView;->mScrollToYStart:I

    if-ge v0, v1, :cond_3

    .line 469
    iget v1, p0, Lcom/meizu/widget/ScrollTextView;->mCount:I

    iget v2, p0, Lcom/meizu/widget/ScrollTextView;->mItemHeight:I

    mul-int/2addr v1, v2

    iget v2, p0, Lcom/meizu/widget/ScrollTextView;->mScrollToYStart:I

    sub-int/2addr v2, v0

    iget v3, p0, Lcom/meizu/widget/ScrollTextView;->mCount:I

    iget v4, p0, Lcom/meizu/widget/ScrollTextView;->mItemHeight:I

    mul-int/2addr v3, v4

    rem-int/2addr v2, v3

    sub-int v0, v1, v2

    .line 471
    :cond_3
    iget v1, p0, Lcom/meizu/widget/ScrollTextView;->mScrollToYEnd:I

    if-le v0, v1, :cond_1

    .line 472
    iget v1, p0, Lcom/meizu/widget/ScrollTextView;->mCount:I

    iget v2, p0, Lcom/meizu/widget/ScrollTextView;->mItemHeight:I

    mul-int/2addr v1, v2

    rem-int/2addr v0, v1

    goto :goto_0
.end method

.method private initScrollView()V
    .locals 3

    .prologue
    .line 570
    new-instance v1, Landroid/widget/Scroller;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/meizu/widget/ScrollTextView;->mScroller:Landroid/widget/Scroller;

    .line 571
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 572
    const/high16 v1, 0x4

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 573
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 574
    iget-object v1, p0, Lcom/meizu/widget/ScrollTextView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 575
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/meizu/widget/ScrollTextView;->mTouchSlop:I

    .line 576
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/meizu/widget/ScrollTextView;->mMinimumVelocity:I

    .line 577
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/meizu/widget/ScrollTextView;->mMaximumVelocity:I

    .line 578
    return-void
.end method

.method private isOffScreen(Landroid/view/View;)Z
    .locals 2
    .parameter "descendant"

    .prologue
    const/4 v0, 0x0

    .line 1175
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/meizu/widget/ScrollTextView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z
    .locals 3
    .parameter "child"
    .parameter "parent"

    .prologue
    const/4 v1, 0x1

    .line 1530
    if-ne p1, p2, :cond_1

    .line 1535
    :cond_0
    :goto_0
    return v1

    .line 1534
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 1535
    .local v0, theParent:Landroid/view/ViewParent;
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    check-cast v0, Landroid/view/View;

    .end local v0           #theParent:Landroid/view/ViewParent;
    invoke-direct {p0, v0, p2}, Lcom/meizu/widget/ScrollTextView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isWithinDeltaOfScreen(Landroid/view/View;II)Z
    .locals 2
    .parameter "descendant"
    .parameter "delta"
    .parameter "height"

    .prologue
    .line 1183
    iget-object v0, p0, Lcom/meizu/widget/ScrollTextView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1184
    iget-object v0, p0, Lcom/meizu/widget/ScrollTextView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1186
    iget-object v0, p0, Lcom/meizu/widget/ScrollTextView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, p2

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/meizu/widget/ScrollTextView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, p2

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v1

    add-int/2addr v1, p3

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private scrollAndFocus(III)Z
    .locals 10
    .parameter "direction"
    .parameter "top"
    .parameter "bottom"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1087
    const/4 v3, 0x1

    .line 1089
    .local v3, handled:Z
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    .line 1090
    .local v4, height:I
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v1

    .line 1091
    .local v1, containerTop:I
    add-int v0, v1, v4

    .line 1092
    .local v0, containerBottom:I
    const/16 v9, 0x21

    if-ne p1, v9, :cond_2

    move v6, v7

    .line 1094
    .local v6, up:Z
    :goto_0
    invoke-direct {p0, v6, p2, p3}, Lcom/meizu/widget/ScrollTextView;->findFocusableViewInBounds(ZII)Landroid/view/View;

    move-result-object v5

    .line 1095
    .local v5, newFocused:Landroid/view/View;
    if-nez v5, :cond_0

    .line 1096
    move-object v5, p0

    .line 1099
    :cond_0
    if-lt p2, v1, :cond_3

    if-gt p3, v0, :cond_3

    .line 1100
    const/4 v3, 0x0

    .line 1106
    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->findFocus()Landroid/view/View;

    move-result-object v9

    if-eq v5, v9, :cond_1

    invoke-virtual {v5, p1}, Landroid/view/View;->requestFocus(I)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1107
    iput-boolean v7, p0, Lcom/meizu/widget/ScrollTextView;->mScrollViewMovedFocus:Z

    .line 1108
    iput-boolean v8, p0, Lcom/meizu/widget/ScrollTextView;->mScrollViewMovedFocus:Z

    .line 1111
    :cond_1
    return v3

    .end local v5           #newFocused:Landroid/view/View;
    .end local v6           #up:Z
    :cond_2
    move v6, v8

    .line 1092
    goto :goto_0

    .line 1102
    .restart local v5       #newFocused:Landroid/view/View;
    .restart local v6       #up:Z
    :cond_3
    if-eqz v6, :cond_4

    sub-int v2, p2, v1

    .line 1103
    .local v2, delta:I
    :goto_2
    invoke-direct {p0, v2}, Lcom/meizu/widget/ScrollTextView;->doScrollY(I)V

    goto :goto_1

    .line 1102
    .end local v2           #delta:I
    :cond_4
    sub-int v2, p3, v0

    goto :goto_2
.end method

.method private scrollToChild(Landroid/view/View;)V
    .locals 2
    .parameter "child"

    .prologue
    .line 1330
    iget-object v1, p0, Lcom/meizu/widget/ScrollTextView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1333
    iget-object v1, p0, Lcom/meizu/widget/ScrollTextView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v1}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1335
    iget-object v1, p0, Lcom/meizu/widget/ScrollTextView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Lcom/meizu/widget/ScrollTextView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v0

    .line 1337
    .local v0, scrollDelta:I
    if-eqz v0, :cond_0

    .line 1338
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/view/View;->scrollBy(II)V

    .line 1340
    :cond_0
    return-void
.end method

.method private scrollToChildRect(Landroid/graphics/Rect;Z)Z
    .locals 3
    .parameter "rect"
    .parameter "immediate"

    .prologue
    const/4 v2, 0x0

    .line 1353
    invoke-virtual {p0, p1}, Lcom/meizu/widget/ScrollTextView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v0

    .line 1354
    .local v0, delta:I
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 1355
    .local v1, scroll:Z
    :goto_0
    if-eqz v1, :cond_0

    .line 1356
    if-eqz p2, :cond_2

    .line 1357
    invoke-virtual {p0, v2, v0}, Landroid/view/View;->scrollBy(II)V

    .line 1362
    :cond_0
    :goto_1
    return v1

    .end local v1           #scroll:Z
    :cond_1
    move v1, v2

    .line 1354
    goto :goto_0

    .line 1359
    .restart local v1       #scroll:Z
    :cond_2
    invoke-virtual {p0, v2, v0}, Lcom/meizu/widget/ScrollTextView;->smoothScrollBy(II)V

    goto :goto_1
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 2
    .parameter "child"

    .prologue
    .line 582
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 583
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 586
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 587
    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 2
    .parameter "child"
    .parameter "index"

    .prologue
    .line 591
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 592
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 595
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 596
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .parameter "child"
    .parameter "index"
    .parameter "params"

    .prologue
    .line 609
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 610
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 613
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 614
    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .parameter "child"
    .parameter "params"

    .prologue
    .line 600
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 601
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 604
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 605
    return-void
.end method

.method public arrowScroll(I)Z
    .locals 11
    .parameter "direction"

    .prologue
    const/16 v10, 0x82

    const/4 v7, 0x0

    .line 1122
    invoke-virtual {p0}, Landroid/view/ViewGroup;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 1123
    .local v0, currentFocused:Landroid/view/View;
    if-ne v0, p0, :cond_0

    .line 1124
    const/4 v0, 0x0

    .line 1126
    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v8

    invoke-virtual {v8, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    .line 1128
    .local v4, nextFocused:Landroid/view/View;
    invoke-virtual {p0}, Lcom/meizu/widget/ScrollTextView;->getMaxScrollAmount()I

    move-result v3

    .line 1130
    .local v3, maxJump:I
    if-eqz v4, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v8

    invoke-direct {p0, v4, v3, v8}, Lcom/meizu/widget/ScrollTextView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1131
    iget-object v7, p0, Lcom/meizu/widget/ScrollTextView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v7}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1132
    iget-object v7, p0, Lcom/meizu/widget/ScrollTextView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v4, v7}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1133
    iget-object v7, p0, Lcom/meizu/widget/ScrollTextView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v7}, Lcom/meizu/widget/ScrollTextView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v6

    .line 1134
    .local v6, scrollDelta:I
    invoke-direct {p0, v6}, Lcom/meizu/widget/ScrollTextView;->doScrollY(I)V

    .line 1135
    invoke-virtual {v4, p1}, Landroid/view/View;->requestFocus(I)Z

    .line 1159
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-direct {p0, v0}, Lcom/meizu/widget/ScrollTextView;->isOffScreen(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1163
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v2

    .line 1164
    .local v2, descendantFocusability:I
    const/high16 v7, 0x2

    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 1165
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    .line 1166
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 1168
    .end local v2           #descendantFocusability:I
    :cond_1
    const/4 v7, 0x1

    :cond_2
    return v7

    .line 1138
    .end local v6           #scrollDelta:I
    :cond_3
    move v6, v3

    .line 1140
    .restart local v6       #scrollDelta:I
    const/16 v8, 0x21

    if-ne p1, v8, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v8

    if-ge v8, v6, :cond_5

    .line 1141
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v6

    .line 1153
    :cond_4
    :goto_1
    if-eqz v6, :cond_2

    .line 1156
    if-ne p1, v10, :cond_6

    move v7, v6

    :goto_2
    invoke-direct {p0, v7}, Lcom/meizu/widget/ScrollTextView;->doScrollY(I)V

    goto :goto_0

    .line 1142
    :cond_5
    if-ne p1, v10, :cond_4

    .line 1143
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    if-lez v8, :cond_4

    .line 1144
    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 1146
    .local v1, daBottom:I
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v8

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v9

    add-int v5, v8, v9

    .line 1148
    .local v5, screenBottom:I
    sub-int v8, v1, v5

    if-ge v8, v3, :cond_4

    .line 1149
    sub-int v6, v1, v5

    goto :goto_1

    .line 1156
    .end local v1           #daBottom:I
    .end local v5           #screenBottom:I
    :cond_6
    neg-int v7, v6

    goto :goto_2
.end method

.method clearCurrentViewState()V
    .locals 1

    .prologue
    .line 1637
    iget-object v0, p0, Lcom/meizu/widget/ScrollTextView;->mFocusedView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 1644
    :goto_0
    return-void

    .line 1640
    :cond_0
    iget-object v0, p0, Lcom/meizu/widget/ScrollTextView;->mFocusedView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/meizu/widget/ScrollTextView;->setUnfocusedItem(Landroid/widget/TextView;)V

    .line 1641
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/widget/ScrollTextView;->mFocusedView:Landroid/widget/TextView;

    .line 1642
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    goto :goto_0
.end method

.method public computeScroll()V
    .locals 7

    .prologue
    .line 1297
    iget-object v5, p0, Lcom/meizu/widget/ScrollTextView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1298
    iget v1, p0, Landroid/view/View;->mScrollX:I

    .line 1299
    .local v1, oldX:I
    iget v2, p0, Landroid/view/View;->mScrollY:I

    .line 1300
    .local v2, oldY:I
    iget-object v5, p0, Lcom/meizu/widget/ScrollTextView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->getCurrX()I

    move-result v3

    .line 1301
    .local v3, x:I
    iget-object v5, p0, Lcom/meizu/widget/ScrollTextView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->getCurrY()I

    move-result v4

    .line 1302
    .local v4, y:I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-lez v5, :cond_4

    .line 1303
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1304
    .local v0, child:Landroid/view/View;
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    iget v6, p0, Landroid/view/View;->mPaddingRight:I

    sub-int/2addr v5, v6

    iget v6, p0, Landroid/view/View;->mPaddingLeft:I

    sub-int/2addr v5, v6

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v6

    invoke-direct {p0, v3, v5, v6}, Lcom/meizu/widget/ScrollTextView;->clamp(III)I

    move-result v5

    iput v5, p0, Landroid/view/View;->mScrollX:I

    .line 1305
    invoke-direct {p0, v4}, Lcom/meizu/widget/ScrollTextView;->getAdjustedScrollPos(I)I

    move-result v5

    iput v5, p0, Landroid/view/View;->mScrollY:I

    .line 1310
    .end local v0           #child:Landroid/view/View;
    :goto_0
    iget v5, p0, Landroid/view/View;->mScrollX:I

    if-ne v1, v5, :cond_0

    iget v5, p0, Landroid/view/View;->mScrollY:I

    if-eq v2, v5, :cond_1

    .line 1311
    :cond_0
    iget v5, p0, Landroid/view/View;->mScrollX:I

    iget v6, p0, Landroid/view/View;->mScrollY:I

    invoke-virtual {p0, v5, v6, v1, v2}, Landroid/view/View;->onScrollChanged(IIII)V

    .line 1314
    :cond_1
    const/4 v5, 0x1

    iget-object v6, p0, Lcom/meizu/widget/ScrollTextView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->isFinished()Z

    move-result v6

    if-ne v5, v6, :cond_2

    .line 1315
    invoke-virtual {p0}, Lcom/meizu/widget/ScrollTextView;->doScrollStop()V

    .line 1319
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 1321
    .end local v1           #oldX:I
    .end local v2           #oldY:I
    .end local v3           #x:I
    .end local v4           #y:I
    :cond_3
    return-void

    .line 1307
    .restart local v1       #oldX:I
    .restart local v2       #oldY:I
    .restart local v3       #x:I
    .restart local v4       #y:I
    :cond_4
    iput v3, p0, Landroid/view/View;->mScrollX:I

    .line 1308
    iput v4, p0, Landroid/view/View;->mScrollY:I

    goto :goto_0
.end method

.method protected computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I
    .locals 10
    .parameter "rect"

    .prologue
    const/4 v7, 0x0

    .line 1375
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    if-nez v8, :cond_1

    move v6, v7

    .line 1428
    :cond_0
    :goto_0
    return v6

    .line 1378
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 1379
    .local v3, height:I
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v5

    .line 1380
    .local v5, screenTop:I
    add-int v4, v5, v3

    .line 1381
    .local v4, screenBottom:I
    invoke-virtual {p0}, Landroid/view/View;->getVerticalFadingEdgeLength()I

    move-result v2

    .line 1384
    .local v2, fadingEdge:I
    iget v8, p1, Landroid/graphics/Rect;->top:I

    if-lez v8, :cond_2

    .line 1385
    add-int/2addr v5, v2

    .line 1389
    :cond_2
    iget v8, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v9

    if-ge v8, v9, :cond_3

    .line 1390
    sub-int/2addr v4, v2

    .line 1393
    :cond_3
    const/4 v6, 0x0

    .line 1395
    .local v6, scrollYDelta:I
    iget v8, p1, Landroid/graphics/Rect;->bottom:I

    if-le v8, v4, :cond_5

    iget v8, p1, Landroid/graphics/Rect;->top:I

    if-le v8, v5, :cond_5

    .line 1400
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v8

    if-le v8, v3, :cond_4

    .line 1402
    iget v8, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v5

    add-int/2addr v6, v8

    .line 1409
    :goto_1
    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 1410
    .local v0, bottom:I
    sub-int v1, v0, v4

    .line 1411
    .local v1, distanceToBottom:I
    invoke-static {v6, v1}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 1412
    goto :goto_0

    .line 1405
    .end local v0           #bottom:I
    .end local v1           #distanceToBottom:I
    :cond_4
    iget v8, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v4

    add-int/2addr v6, v8

    goto :goto_1

    .line 1412
    :cond_5
    iget v7, p1, Landroid/graphics/Rect;->top:I

    if-ge v7, v5, :cond_0

    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    if-ge v7, v4, :cond_0

    .line 1417
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    if-le v7, v3, :cond_6

    .line 1419
    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    sub-int v7, v4, v7

    sub-int/2addr v6, v7

    .line 1426
    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v7

    neg-int v7, v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    goto :goto_0

    .line 1422
    :cond_6
    iget v7, p1, Landroid/graphics/Rect;->top:I

    sub-int v7, v5, v7

    sub-int/2addr v6, v7

    goto :goto_2
.end method

.method protected computeVerticalScrollRange()I
    .locals 2

    .prologue
    .line 1248
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 1249
    .local v0, count:I
    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 671
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 672
    .local v0, handled:Z
    if-eqz v0, :cond_0

    .line 673
    const/4 v1, 0x1

    .line 675
    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/meizu/widget/ScrollTextView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method doScrollStop()V
    .locals 6

    .prologue
    .line 1275
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 1293
    :goto_0
    return-void

    .line 1279
    :cond_0
    iget v1, p0, Landroid/view/View;->mScrollY:I

    iget v2, p0, Lcom/meizu/widget/ScrollTextView;->mOffsetY:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/meizu/widget/ScrollTextView;->getStoppedPos(I)I

    move-result v0

    .line 1280
    .local v0, newScrollY:I
    iget-boolean v1, p0, Lcom/meizu/widget/ScrollTextView;->mCycleEnabled:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 1281
    if-nez v0, :cond_1

    iget v1, p0, Landroid/view/View;->mScrollY:I

    sub-int v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lcom/meizu/widget/ScrollTextView;->mItemHeight:I

    if-le v1, v2, :cond_1

    .line 1282
    iget v1, p0, Lcom/meizu/widget/ScrollTextView;->mCount:I

    iget v2, p0, Lcom/meizu/widget/ScrollTextView;->mItemHeight:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 1285
    :cond_1
    iget v1, p0, Lcom/meizu/widget/ScrollTextView;->mOffsetY:I

    add-int/2addr v0, v1

    .line 1288
    iget v1, p0, Landroid/view/View;->mScrollY:I

    if-eq v0, v1, :cond_2

    .line 1289
    iget-object v1, p0, Lcom/meizu/widget/ScrollTextView;->mScroller:Landroid/widget/Scroller;

    iget v2, p0, Landroid/view/View;->mScrollX:I

    iget v3, p0, Landroid/view/View;->mScrollY:I

    const/4 v4, 0x0

    iget v5, p0, Landroid/view/View;->mScrollY:I

    sub-int v5, v0, v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/Scroller;->startScroll(IIII)V

    goto :goto_0

    .line 1291
    :cond_2
    invoke-virtual {p0}, Lcom/meizu/widget/ScrollTextView;->setCurrentViewState()V

    goto :goto_0
.end method

.method public executeKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 7
    .parameter "event"

    .prologue
    const/4 v3, 0x0

    const/16 v4, 0x21

    const/16 v5, 0x82

    .line 688
    iget-object v6, p0, Lcom/meizu/widget/ScrollTextView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->setEmpty()V

    .line 690
    invoke-direct {p0}, Lcom/meizu/widget/ScrollTextView;->canScroll()Z

    move-result v6

    if-nez v6, :cond_2

    .line 691
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 692
    invoke-virtual {p0}, Landroid/view/ViewGroup;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 693
    .local v0, currentFocused:Landroid/view/View;
    if-ne v0, p0, :cond_0

    .line 694
    const/4 v0, 0x0

    .line 695
    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v4

    invoke-virtual {v4, p0, v0, v5}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    .line 697
    .local v2, nextFocused:Landroid/view/View;
    if-eqz v2, :cond_1

    if-eq v2, p0, :cond_1

    invoke-virtual {v2, v5}, Landroid/view/View;->requestFocus(I)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v3, 0x1

    .line 726
    .end local v0           #currentFocused:Landroid/view/View;
    .end local v2           #nextFocused:Landroid/view/View;
    :cond_1
    :goto_0
    return v3

    .line 703
    :cond_2
    const/4 v1, 0x0

    .line 704
    .local v1, handled:Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_3

    .line 705
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_3
    :goto_1
    move v3, v1

    .line 726
    goto :goto_0

    .line 707
    :sswitch_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v3

    if-nez v3, :cond_4

    .line 708
    invoke-virtual {p0, v4}, Lcom/meizu/widget/ScrollTextView;->arrowScroll(I)Z

    move-result v1

    goto :goto_1

    .line 710
    :cond_4
    invoke-virtual {p0, v4}, Lcom/meizu/widget/ScrollTextView;->fullScroll(I)Z

    move-result v1

    .line 712
    goto :goto_1

    .line 714
    :sswitch_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v3

    if-nez v3, :cond_5

    .line 715
    invoke-virtual {p0, v5}, Lcom/meizu/widget/ScrollTextView;->arrowScroll(I)Z

    move-result v1

    goto :goto_1

    .line 717
    :cond_5
    invoke-virtual {p0, v5}, Lcom/meizu/widget/ScrollTextView;->fullScroll(I)Z

    move-result v1

    .line 719
    goto :goto_1

    .line 721
    :sswitch_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v3

    if-eqz v3, :cond_6

    move v3, v4

    :goto_2
    invoke-virtual {p0, v3}, Lcom/meizu/widget/ScrollTextView;->pageScroll(I)Z

    goto :goto_1

    :cond_6
    move v3, v5

    goto :goto_2

    .line 705
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_1
        0x3e -> :sswitch_2
    .end sparse-switch
.end method

.method public fling(I)V
    .locals 12
    .parameter "velocityY"

    .prologue
    const/4 v11, 0x1

    const/4 v3, 0x0

    .line 1547
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 1548
    iget-boolean v0, p0, Lcom/meizu/widget/ScrollTextView;->mCycleEnabled:Z

    if-nez v0, :cond_3

    .line 1549
    iget-object v0, p0, Lcom/meizu/widget/ScrollTextView;->mScroller:Landroid/widget/Scroller;

    iget v1, p0, Landroid/view/View;->mScrollX:I

    iget v2, p0, Landroid/view/View;->mScrollY:I

    iget v7, p0, Lcom/meizu/widget/ScrollTextView;->mScrollToYStart:I

    iget v8, p0, Lcom/meizu/widget/ScrollTextView;->mScrollToYEnd:I

    move v4, p1

    move v5, v3

    move v6, v3

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 1555
    :goto_0
    if-lez p1, :cond_4

    move v9, v11

    .line 1557
    .local v9, movingDown:Z
    :goto_1
    iget-object v0, p0, Lcom/meizu/widget/ScrollTextView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalY()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->findFocus()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v9, v0, v1}, Lcom/meizu/widget/ScrollTextView;->findFocusableViewInMyBounds(ZILandroid/view/View;)Landroid/view/View;

    move-result-object v10

    .line 1559
    .local v10, newFocused:Landroid/view/View;
    if-nez v10, :cond_0

    .line 1560
    move-object v10, p0

    .line 1563
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->findFocus()Landroid/view/View;

    move-result-object v0

    if-eq v10, v0, :cond_1

    if-eqz v9, :cond_5

    const/16 v0, 0x82

    :goto_2
    invoke-virtual {v10, v0}, Landroid/view/View;->requestFocus(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1565
    iput-boolean v11, p0, Lcom/meizu/widget/ScrollTextView;->mScrollViewMovedFocus:Z

    .line 1566
    iput-boolean v3, p0, Lcom/meizu/widget/ScrollTextView;->mScrollViewMovedFocus:Z

    .line 1569
    :cond_1
    iget-object v0, p0, Lcom/meizu/widget/ScrollTextView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getDuration()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->awakenScrollBars(I)Z

    .line 1570
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 1572
    .end local v9           #movingDown:Z
    .end local v10           #newFocused:Landroid/view/View;
    :cond_2
    return-void

    .line 1552
    :cond_3
    iget-object v0, p0, Lcom/meizu/widget/ScrollTextView;->mScroller:Landroid/widget/Scroller;

    iget v1, p0, Landroid/view/View;->mScrollX:I

    iget v2, p0, Landroid/view/View;->mScrollY:I

    iget v4, p0, Landroid/view/View;->mScrollY:I

    iget v5, p0, Lcom/meizu/widget/ScrollTextView;->mItemHeight:I

    mul-int/lit8 v5, v5, 0x50

    sub-int v7, v4, v5

    iget v4, p0, Landroid/view/View;->mScrollY:I

    iget v5, p0, Lcom/meizu/widget/ScrollTextView;->mItemHeight:I

    mul-int/lit8 v5, v5, 0x50

    add-int v8, v4, v5

    move v4, p1

    move v5, v3

    move v6, v3

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    goto :goto_0

    :cond_4
    move v9, v3

    .line 1555
    goto :goto_1

    .line 1563
    .restart local v9       #movingDown:Z
    .restart local v10       #newFocused:Landroid/view/View;
    :cond_5
    const/16 v0, 0x21

    goto :goto_2
.end method

.method public fullScroll(I)Z
    .locals 6
    .parameter "direction"

    .prologue
    const/4 v4, 0x0

    .line 1051
    const/16 v5, 0x82

    if-ne p1, v5, :cond_1

    const/4 v1, 0x1

    .line 1052
    .local v1, down:Z
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 1054
    .local v2, height:I
    iget-object v5, p0, Lcom/meizu/widget/ScrollTextView;->mTempRect:Landroid/graphics/Rect;

    iput v4, v5, Landroid/graphics/Rect;->top:I

    .line 1055
    iget-object v4, p0, Lcom/meizu/widget/ScrollTextView;->mTempRect:Landroid/graphics/Rect;

    iput v2, v4, Landroid/graphics/Rect;->bottom:I

    .line 1057
    if-eqz v1, :cond_0

    .line 1058
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 1059
    .local v0, count:I
    if-lez v0, :cond_0

    .line 1060
    add-int/lit8 v4, v0, -0x1

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1061
    .local v3, view:Landroid/view/View;
    iget-object v4, p0, Lcom/meizu/widget/ScrollTextView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 1062
    iget-object v4, p0, Lcom/meizu/widget/ScrollTextView;->mTempRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/meizu/widget/ScrollTextView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v2

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 1066
    .end local v0           #count:I
    .end local v3           #view:Landroid/view/View;
    :cond_0
    iget-object v4, p0, Lcom/meizu/widget/ScrollTextView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Lcom/meizu/widget/ScrollTextView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, p1, v4, v5}, Lcom/meizu/widget/ScrollTextView;->scrollAndFocus(III)Z

    move-result v4

    return v4

    .end local v1           #down:Z
    .end local v2           #height:I
    :cond_1
    move v1, v4

    .line 1051
    goto :goto_0
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 1

    .prologue
    .line 555
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 556
    const/4 v0, 0x0

    .line 559
    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x3f80

    goto :goto_0
.end method

.method getCurrentItemId()I
    .locals 3

    .prologue
    .line 1628
    iget v0, p0, Lcom/meizu/widget/ScrollTextView;->mItemHeight:I

    if-nez v0, :cond_0

    .line 1629
    iget v0, p0, Lcom/meizu/widget/ScrollTextView;->mCurrentItem:I

    .line 1632
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/view/View;->mScrollY:I

    iget v1, p0, Lcom/meizu/widget/ScrollTextView;->mOffsetY:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/meizu/widget/ScrollTextView;->getStoppedPos(I)I

    move-result v0

    iget v1, p0, Lcom/meizu/widget/ScrollTextView;->mItemHeight:I

    div-int v1, v0, v1

    iget v0, p0, Lcom/meizu/widget/ScrollTextView;->mFocusedPosition:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    iget v0, p0, Lcom/meizu/widget/ScrollTextView;->mOneScreenCount:I

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v0, v0, 0x2

    :goto_1
    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/meizu/widget/ScrollTextView;->mFocusedPosition:I

    goto :goto_1
.end method

.method public getMaxScrollAmount()I
    .locals 3

    .prologue
    .line 566
    const/high16 v0, 0x3f00

    iget v1, p0, Landroid/view/View;->mBottom:I

    iget v2, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getSelectedId()I
    .locals 1

    .prologue
    .line 1624
    iget v0, p0, Lcom/meizu/widget/ScrollTextView;->mCurrentItem:I

    return v0
.end method

.method getStoppedPos(I)I
    .locals 5
    .parameter "posY"

    .prologue
    .line 481
    iget v1, p0, Lcom/meizu/widget/ScrollTextView;->mItemHeight:I

    if-nez v1, :cond_1

    .line 482
    const/4 v0, 0x0

    .line 510
    :cond_0
    :goto_0
    return v0

    .line 485
    :cond_1
    invoke-direct {p0, p1}, Lcom/meizu/widget/ScrollTextView;->getAdjustedScrollPos(I)I

    move-result v0

    .line 486
    .local v0, scrollY:I
    if-ltz v0, :cond_3

    .line 487
    iget v1, p0, Lcom/meizu/widget/ScrollTextView;->mItemHeight:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 492
    :goto_1
    iget v1, p0, Lcom/meizu/widget/ScrollTextView;->mItemHeight:I

    div-int v1, v0, v1

    iget v2, p0, Lcom/meizu/widget/ScrollTextView;->mItemHeight:I

    mul-int v0, v1, v2

    .line 495
    iget-boolean v1, p0, Lcom/meizu/widget/ScrollTextView;->mCycleEnabled:Z

    if-nez v1, :cond_4

    .line 496
    iget v1, p0, Lcom/meizu/widget/ScrollTextView;->mFlingStopYStart:I

    if-ge v0, v1, :cond_2

    .line 497
    iget v0, p0, Lcom/meizu/widget/ScrollTextView;->mFlingStopYStart:I

    .line 499
    :cond_2
    iget v1, p0, Lcom/meizu/widget/ScrollTextView;->mFlingStopYEnd:I

    if-le v0, v1, :cond_0

    .line 500
    iget v0, p0, Lcom/meizu/widget/ScrollTextView;->mFlingStopYEnd:I

    goto :goto_0

    .line 489
    :cond_3
    iget v1, p0, Lcom/meizu/widget/ScrollTextView;->mItemHeight:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    goto :goto_1

    .line 503
    :cond_4
    iget v1, p0, Lcom/meizu/widget/ScrollTextView;->mFlingStopYStart:I

    if-ge v0, v1, :cond_5

    .line 504
    iget v1, p0, Lcom/meizu/widget/ScrollTextView;->mCount:I

    iget v2, p0, Lcom/meizu/widget/ScrollTextView;->mItemHeight:I

    mul-int/2addr v1, v2

    iget v2, p0, Lcom/meizu/widget/ScrollTextView;->mFlingStopYStart:I

    sub-int/2addr v2, v0

    iget v3, p0, Lcom/meizu/widget/ScrollTextView;->mCount:I

    iget v4, p0, Lcom/meizu/widget/ScrollTextView;->mItemHeight:I

    mul-int/2addr v3, v4

    rem-int/2addr v2, v3

    sub-int v0, v1, v2

    .line 506
    :cond_5
    iget v1, p0, Lcom/meizu/widget/ScrollTextView;->mFlingStopYEnd:I

    if-le v0, v1, :cond_0

    .line 507
    iget v1, p0, Lcom/meizu/widget/ScrollTextView;->mCount:I

    iget v2, p0, Lcom/meizu/widget/ScrollTextView;->mItemHeight:I

    mul-int/2addr v1, v2

    rem-int/2addr v0, v1

    goto :goto_0
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 1

    .prologue
    .line 546
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 547
    const/4 v0, 0x0

    .line 550
    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x3f80

    goto :goto_0
.end method

.method public isFillViewport()Z
    .locals 1

    .prologue
    .line 633
    iget-boolean v0, p0, Lcom/meizu/widget/ScrollTextView;->mFillViewport:Z

    return v0
.end method

.method public isSmoothScrollingEnabled()Z
    .locals 1

    .prologue
    .line 655
    iget-boolean v0, p0, Lcom/meizu/widget/ScrollTextView;->mSmoothScrollingEnabled:Z

    return v0
.end method

.method protected measureChild(Landroid/view/View;II)V
    .locals 6
    .parameter "child"
    .parameter "parentWidthMeasureSpec"
    .parameter "parentHeightMeasureSpec"

    .prologue
    const/4 v5, 0x0

    .line 1254
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 1255
    .local v2, lp:Landroid/view/ViewGroup$LayoutParams;
    iget v3, p0, Landroid/view/View;->mPaddingLeft:I

    iget v4, p0, Landroid/view/View;->mPaddingRight:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p2, v3, v4}, Lcom/meizu/widget/ScrollTextView;->getChildMeasureSpec(III)I

    move-result v1

    .line 1257
    .local v1, childWidthMeasureSpec:I
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1259
    .local v0, childHeightMeasureSpec:I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 1260
    return-void
.end method

.method protected measureChildWithMargins(Landroid/view/View;IIII)V
    .locals 5
    .parameter "child"
    .parameter "parentWidthMeasureSpec"
    .parameter "widthUsed"
    .parameter "parentHeightMeasureSpec"
    .parameter "heightUsed"

    .prologue
    .line 1265
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1266
    .local v2, lp:Landroid/view/ViewGroup$MarginLayoutParams;
    iget v3, p0, Landroid/view/View;->mPaddingLeft:I

    iget v4, p0, Landroid/view/View;->mPaddingRight:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    add-int/2addr v3, p3

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p2, v3, v4}, Lcom/meizu/widget/ScrollTextView;->getChildMeasureSpec(III)I

    move-result v1

    .line 1268
    .local v1, childWidthMeasureSpec:I
    iget v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v3, v4

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1271
    .local v0, childHeightMeasureSpec:I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 1272
    return-void
.end method

.method public onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0
    .parameter "hasFocus"
    .parameter "direction"
    .parameter "unused"

    .prologue
    .line 1671
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "ev"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 741
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 742
    .local v0, action:I
    const/4 v5, 0x2

    if-ne v0, v5, :cond_0

    iget-boolean v5, p0, Lcom/meizu/widget/ScrollTextView;->mIsBeingDragged:Z

    if-eqz v5, :cond_0

    .line 797
    :goto_0
    return v3

    .line 746
    :cond_0
    invoke-direct {p0}, Lcom/meizu/widget/ScrollTextView;->canScroll()Z

    move-result v5

    if-nez v5, :cond_1

    .line 747
    iput-boolean v4, p0, Lcom/meizu/widget/ScrollTextView;->mIsBeingDragged:Z

    move v3, v4

    .line 748
    goto :goto_0

    .line 751
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 753
    .local v1, y:F
    packed-switch v0, :pswitch_data_0

    .line 797
    :goto_1
    iget-boolean v3, p0, Lcom/meizu/widget/ScrollTextView;->mIsBeingDragged:Z

    goto :goto_0

    .line 764
    :pswitch_0
    iget v4, p0, Lcom/meizu/widget/ScrollTextView;->mLastMotionY:F

    sub-float v4, v1, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-int v2, v4

    .line 765
    .local v2, yDiff:I
    iget v4, p0, Lcom/meizu/widget/ScrollTextView;->mTouchSlop:I

    if-le v2, v4, :cond_2

    .line 766
    iput-boolean v3, p0, Lcom/meizu/widget/ScrollTextView;->mIsBeingDragged:Z

    .line 769
    :cond_2
    invoke-virtual {p0}, Lcom/meizu/widget/ScrollTextView;->clearCurrentViewState()V

    goto :goto_1

    .line 774
    .end local v2           #yDiff:I
    :pswitch_1
    invoke-virtual {p0}, Lcom/meizu/widget/ScrollTextView;->clearCurrentViewState()V

    .line 776
    iput v1, p0, Lcom/meizu/widget/ScrollTextView;->mLastMotionY:F

    .line 783
    iget-object v5, p0, Lcom/meizu/widget/ScrollTextView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->isFinished()Z

    move-result v5

    if-nez v5, :cond_3

    :goto_2
    iput-boolean v3, p0, Lcom/meizu/widget/ScrollTextView;->mIsBeingDragged:Z

    goto :goto_1

    :cond_3
    move v3, v4

    goto :goto_2

    .line 789
    :pswitch_2
    iput-boolean v4, p0, Lcom/meizu/widget/ScrollTextView;->mIsBeingDragged:Z

    goto :goto_1

    .line 753
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 1491
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 1492
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/widget/ScrollTextView;->mIsLayoutDirty:Z

    .line 1494
    iget-object v0, p0, Lcom/meizu/widget/ScrollTextView;->mChildToScrollTo:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/widget/ScrollTextView;->mChildToScrollTo:Landroid/view/View;

    invoke-direct {p0, v0, p0}, Lcom/meizu/widget/ScrollTextView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1495
    iget-object v0, p0, Lcom/meizu/widget/ScrollTextView;->mChildToScrollTo:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/meizu/widget/ScrollTextView;->scrollToChild(Landroid/view/View;)V

    .line 1497
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/widget/ScrollTextView;->mChildToScrollTo:Landroid/view/View;

    .line 1499
    invoke-direct {p0}, Lcom/meizu/widget/ScrollTextView;->SetCurrentPos()V

    .line 1500
    invoke-virtual {p0}, Lcom/meizu/widget/ScrollTextView;->setCurrentViewState()V

    .line 1503
    iget v0, p0, Landroid/view/View;->mScrollX:I

    iget v1, p0, Landroid/view/View;->mScrollY:I

    invoke-virtual {p0, v0, v1}, Lcom/meizu/widget/ScrollTextView;->scrollTo(II)V

    .line 1504
    return-void
.end method

.method protected declared-synchronized onMeasure(II)V
    .locals 4
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/4 v3, -0x1

    .line 515
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 517
    const/4 v0, 0x0

    .line 518
    .local v0, view:Landroid/view/View;
    iget-object v1, p0, Lcom/meizu/widget/ScrollTextView;->mLineView:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    .line 519
    iget-object v1, p0, Lcom/meizu/widget/ScrollTextView;->mLineView:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 523
    :cond_0
    if-eqz v0, :cond_1

    .line 524
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    iput v1, p0, Lcom/meizu/widget/ScrollTextView;->mItemPaddingTop:I

    .line 525
    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    iput v1, p0, Lcom/meizu/widget/ScrollTextView;->mItemPaddingBottom:I

    .line 527
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v2, p0, Lcom/meizu/widget/ScrollTextView;->mItemPaddingTop:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/meizu/widget/ScrollTextView;->mItemPaddingBottom:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/meizu/widget/ScrollTextView;->mItemHeight:I

    .line 528
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/meizu/widget/ScrollTextView;->mItemWidth:I

    .line 530
    iget-boolean v1, p0, Lcom/meizu/widget/ScrollTextView;->mCycleEnabled:Z

    if-nez v1, :cond_5

    .line 531
    iget v2, p0, Lcom/meizu/widget/ScrollTextView;->mValidStart:I

    iget v1, p0, Lcom/meizu/widget/ScrollTextView;->mFocusedPosition:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/meizu/widget/ScrollTextView;->mOneScreenCount:I

    add-int/lit8 v1, v1, -0x1

    div-int/lit8 v1, v1, 0x2

    :goto_0
    sub-int v1, v2, v1

    iget v2, p0, Lcom/meizu/widget/ScrollTextView;->mItemHeight:I

    mul-int/2addr v1, v2

    iput v1, p0, Lcom/meizu/widget/ScrollTextView;->mFlingStopYStart:I

    .line 532
    iget v2, p0, Lcom/meizu/widget/ScrollTextView;->mValidEnd:I

    iget v1, p0, Lcom/meizu/widget/ScrollTextView;->mFocusedPosition:I

    if-ne v1, v3, :cond_3

    iget v1, p0, Lcom/meizu/widget/ScrollTextView;->mOneScreenCount:I

    add-int/lit8 v1, v1, -0x1

    div-int/lit8 v1, v1, 0x2

    :goto_1
    sub-int v1, v2, v1

    iget v2, p0, Lcom/meizu/widget/ScrollTextView;->mItemHeight:I

    mul-int/2addr v1, v2

    iput v1, p0, Lcom/meizu/widget/ScrollTextView;->mFlingStopYEnd:I

    .line 533
    iget v2, p0, Lcom/meizu/widget/ScrollTextView;->mValidStart:I

    iget v1, p0, Lcom/meizu/widget/ScrollTextView;->mFocusedPosition:I

    if-ne v1, v3, :cond_4

    iget v1, p0, Lcom/meizu/widget/ScrollTextView;->mOneScreenCount:I

    :goto_2
    sub-int v1, v2, v1

    iget v2, p0, Lcom/meizu/widget/ScrollTextView;->mItemHeight:I

    mul-int/2addr v1, v2

    iput v1, p0, Lcom/meizu/widget/ScrollTextView;->mScrollToYStart:I

    .line 534
    iget v1, p0, Lcom/meizu/widget/ScrollTextView;->mValidEnd:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/meizu/widget/ScrollTextView;->mItemHeight:I

    mul-int/2addr v1, v2

    iput v1, p0, Lcom/meizu/widget/ScrollTextView;->mScrollToYEnd:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 542
    :cond_1
    :goto_3
    monitor-exit p0

    return-void

    .line 531
    :cond_2
    :try_start_1
    iget v1, p0, Lcom/meizu/widget/ScrollTextView;->mFocusedPosition:I

    goto :goto_0

    .line 532
    :cond_3
    iget v1, p0, Lcom/meizu/widget/ScrollTextView;->mFocusedPosition:I

    goto :goto_1

    .line 533
    :cond_4
    iget v1, p0, Lcom/meizu/widget/ScrollTextView;->mFocusedPosition:I

    add-int/lit8 v1, v1, 0x2

    goto :goto_2

    .line 536
    :cond_5
    const/4 v1, 0x0

    iput v1, p0, Lcom/meizu/widget/ScrollTextView;->mFlingStopYStart:I

    .line 537
    iget v1, p0, Lcom/meizu/widget/ScrollTextView;->mCount:I

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/meizu/widget/ScrollTextView;->mItemHeight:I

    mul-int/2addr v1, v2

    iput v1, p0, Lcom/meizu/widget/ScrollTextView;->mFlingStopYEnd:I

    .line 538
    const/4 v1, 0x0

    iput v1, p0, Lcom/meizu/widget/ScrollTextView;->mScrollToYStart:I

    .line 539
    iget v1, p0, Lcom/meizu/widget/ScrollTextView;->mCount:I

    iget v2, p0, Lcom/meizu/widget/ScrollTextView;->mItemHeight:I

    mul-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/meizu/widget/ScrollTextView;->mScrollToYEnd:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 515
    .end local v0           #view:Landroid/view/View;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 4
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    const/4 v1, 0x0

    .line 1454
    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    .line 1455
    const/16 p1, 0x82

    .line 1460
    :cond_0
    :goto_0
    if-nez p2, :cond_3

    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p0, v3, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 1464
    .local v0, nextFocus:Landroid/view/View;
    :goto_1
    if-nez v0, :cond_4

    .line 1472
    :cond_1
    :goto_2
    return v1

    .line 1456
    .end local v0           #nextFocus:Landroid/view/View;
    :cond_2
    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    .line 1457
    const/16 p1, 0x21

    goto :goto_0

    .line 1460
    :cond_3
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v2

    invoke-virtual {v2, p0, p2, p1}, Landroid/view/FocusFinder;->findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    .line 1468
    .restart local v0       #nextFocus:Landroid/view/View;
    :cond_4
    invoke-direct {p0, v0}, Lcom/meizu/widget/ScrollTextView;->isOffScreen(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1472
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v1

    goto :goto_2
.end method

.method protected onSizeChanged(IIII)V
    .locals 3
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 1508
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 1510
    invoke-virtual {p0}, Landroid/view/ViewGroup;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 1511
    .local v0, currentFocused:Landroid/view/View;
    if-eqz v0, :cond_0

    if-ne p0, v0, :cond_1

    .line 1523
    :cond_0
    :goto_0
    return-void

    .line 1517
    :cond_1
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, p4}, Lcom/meizu/widget/ScrollTextView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1518
    iget-object v2, p0, Lcom/meizu/widget/ScrollTextView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1519
    iget-object v2, p0, Lcom/meizu/widget/ScrollTextView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v2}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1520
    iget-object v2, p0, Lcom/meizu/widget/ScrollTextView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v2}, Lcom/meizu/widget/ScrollTextView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v1

    .line 1521
    .local v1, scrollDelta:I
    invoke-direct {p0, v1}, Lcom/meizu/widget/ScrollTextView;->doScrollY(I)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "ev"

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 802
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v6

    if-eqz v6, :cond_1

    .line 875
    :cond_0
    :goto_0
    return v5

    .line 810
    :cond_1
    invoke-direct {p0}, Lcom/meizu/widget/ScrollTextView;->canScroll()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 814
    iget-object v6, p0, Lcom/meizu/widget/ScrollTextView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v6, :cond_2

    .line 815
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v6

    iput-object v6, p0, Lcom/meizu/widget/ScrollTextView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 817
    :cond_2
    iget-object v6, p0, Lcom/meizu/widget/ScrollTextView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 819
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 820
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 822
    .local v4, y:F
    packed-switch v0, :pswitch_data_0

    .line 875
    :cond_3
    :goto_1
    const/4 v5, 0x1

    goto :goto_0

    .line 828
    :pswitch_0
    iget-object v5, p0, Lcom/meizu/widget/ScrollTextView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->isFinished()Z

    move-result v5

    if-nez v5, :cond_4

    .line 829
    iget-object v5, p0, Lcom/meizu/widget/ScrollTextView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->abortAnimation()V

    .line 832
    :cond_4
    invoke-virtual {p0}, Lcom/meizu/widget/ScrollTextView;->clearCurrentViewState()V

    .line 835
    iput v4, p0, Lcom/meizu/widget/ScrollTextView;->mLastMotionY:F

    goto :goto_1

    .line 839
    :pswitch_1
    iget v6, p0, Lcom/meizu/widget/ScrollTextView;->mLastMotionY:F

    sub-float/2addr v6, v4

    float-to-int v1, v6

    .line 840
    .local v1, deltaY:I
    iput v4, p0, Lcom/meizu/widget/ScrollTextView;->mLastMotionY:F

    .line 841
    invoke-virtual {p0, v5, v1}, Landroid/view/View;->scrollBy(II)V

    goto :goto_1

    .line 844
    .end local v1           #deltaY:I
    :pswitch_2
    iget-object v3, p0, Lcom/meizu/widget/ScrollTextView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 845
    .local v3, velocityTracker:Landroid/view/VelocityTracker;
    if-nez v3, :cond_5

    .line 846
    invoke-virtual {p0}, Lcom/meizu/widget/ScrollTextView;->doScrollStop()V

    .line 847
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    goto :goto_1

    .line 850
    :cond_5
    const/16 v5, 0x3e8

    iget v6, p0, Lcom/meizu/widget/ScrollTextView;->mMaximumVelocity:I

    int-to-float v6, v6

    invoke-virtual {v3, v5, v6}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 851
    invoke-virtual {v3}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v5

    float-to-int v2, v5

    .line 853
    .local v2, initialVelocity:I
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v5

    iget v6, p0, Lcom/meizu/widget/ScrollTextView;->mMinimumVelocity:I

    if-le v5, v6, :cond_6

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-lez v5, :cond_6

    .line 854
    neg-int v5, v2

    invoke-virtual {p0, v5}, Lcom/meizu/widget/ScrollTextView;->fling(I)V

    .line 860
    :goto_2
    iget-object v5, p0, Lcom/meizu/widget/ScrollTextView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v5, :cond_3

    .line 861
    iget-object v5, p0, Lcom/meizu/widget/ScrollTextView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->recycle()V

    .line 862
    iput-object v7, p0, Lcom/meizu/widget/ScrollTextView;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_1

    .line 856
    :cond_6
    invoke-virtual {p0}, Lcom/meizu/widget/ScrollTextView;->doScrollStop()V

    .line 857
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    goto :goto_2

    .line 866
    .end local v2           #initialVelocity:I
    .end local v3           #velocityTracker:Landroid/view/VelocityTracker;
    :pswitch_3
    invoke-virtual {p0}, Lcom/meizu/widget/ScrollTextView;->doScrollStop()V

    .line 867
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 869
    iget-object v5, p0, Lcom/meizu/widget/ScrollTextView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v5, :cond_3

    .line 870
    iget-object v5, p0, Lcom/meizu/widget/ScrollTextView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->recycle()V

    .line 871
    iput-object v7, p0, Lcom/meizu/widget/ScrollTextView;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_1

    .line 822
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public pageScroll(I)Z
    .locals 7
    .parameter "direction"

    .prologue
    const/4 v4, 0x0

    .line 1013
    const/16 v5, 0x82

    if-ne p1, v5, :cond_1

    const/4 v1, 0x1

    .line 1014
    .local v1, down:Z
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 1016
    .local v2, height:I
    if-eqz v1, :cond_2

    .line 1017
    iget-object v4, p0, Lcom/meizu/widget/ScrollTextView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v5

    add-int/2addr v5, v2

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 1018
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 1019
    .local v0, count:I
    if-lez v0, :cond_0

    .line 1020
    add-int/lit8 v4, v0, -0x1

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1021
    .local v3, view:Landroid/view/View;
    iget-object v4, p0, Lcom/meizu/widget/ScrollTextView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v2

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v5

    if-le v4, v5, :cond_0

    .line 1022
    iget-object v4, p0, Lcom/meizu/widget/ScrollTextView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v5

    sub-int/2addr v5, v2

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 1031
    .end local v0           #count:I
    .end local v3           #view:Landroid/view/View;
    :cond_0
    :goto_1
    iget-object v4, p0, Lcom/meizu/widget/ScrollTextView;->mTempRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/meizu/widget/ScrollTextView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v2

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 1033
    iget-object v4, p0, Lcom/meizu/widget/ScrollTextView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Lcom/meizu/widget/ScrollTextView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, p1, v4, v5}, Lcom/meizu/widget/ScrollTextView;->scrollAndFocus(III)Z

    move-result v4

    return v4

    .end local v1           #down:Z
    .end local v2           #height:I
    :cond_1
    move v1, v4

    .line 1013
    goto :goto_0

    .line 1026
    .restart local v1       #down:Z
    .restart local v2       #height:I
    :cond_2
    iget-object v5, p0, Lcom/meizu/widget/ScrollTextView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v6

    sub-int/2addr v6, v2

    iput v6, v5, Landroid/graphics/Rect;->top:I

    .line 1027
    iget-object v5, p0, Lcom/meizu/widget/ScrollTextView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    if-gez v5, :cond_0

    .line 1028
    iget-object v5, p0, Lcom/meizu/widget/ScrollTextView;->mTempRect:Landroid/graphics/Rect;

    iput v4, v5, Landroid/graphics/Rect;->top:I

    goto :goto_1
.end method

.method public refreshCount(I)V
    .locals 6
    .parameter "count"

    .prologue
    .line 353
    iget v2, p0, Lcom/meizu/widget/ScrollTextView;->mCurrentItem:I

    const/4 v3, 0x0

    add-int/lit8 v4, p1, -0x1

    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/meizu/widget/ScrollTextView;->refreshData(IIIIZ)V

    .line 354
    return-void
.end method

.method public refreshCountAndCurrent(II)V
    .locals 6
    .parameter "count"
    .parameter "current"

    .prologue
    .line 361
    const/4 v3, 0x0

    add-int/lit8 v4, p1, -0x1

    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/meizu/widget/ScrollTextView;->refreshData(IIIIZ)V

    .line 362
    return-void
.end method

.method public refreshCurrent(I)V
    .locals 6
    .parameter "current"

    .prologue
    .line 357
    iget v1, p0, Lcom/meizu/widget/ScrollTextView;->mCount:I

    iget v3, p0, Lcom/meizu/widget/ScrollTextView;->mValidStart:I

    iget v4, p0, Lcom/meizu/widget/ScrollTextView;->mValidEnd:I

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/meizu/widget/ScrollTextView;->refreshData(IIIIZ)V

    .line 358
    return-void
.end method

.method refreshData(IIIIZ)V
    .locals 10
    .parameter "count"
    .parameter "currentItem"
    .parameter "validStart"
    .parameter "validEnd"
    .parameter "needAdd"

    .prologue
    const/16 v9, 0x11

    const/4 v8, -0x1

    const/4 v7, 0x1

    .line 365
    iget-object v5, p0, Lcom/meizu/widget/ScrollTextView;->mScroller:Landroid/widget/Scroller;

    if-eqz v5, :cond_0

    .line 366
    iget-object v5, p0, Lcom/meizu/widget/ScrollTextView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5, v7}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 369
    :cond_0
    iget-object v5, p0, Lcom/meizu/widget/ScrollTextView;->mLineView:Landroid/widget/LinearLayout;

    if-eqz v5, :cond_1

    if-gez p1, :cond_2

    .line 449
    :cond_1
    :goto_0
    return-void

    .line 372
    :cond_2
    iget-object v5, p0, Lcom/meizu/widget/ScrollTextView;->mFocusedView:Landroid/widget/TextView;

    if-eqz v5, :cond_3

    .line 373
    iget-object v5, p0, Lcom/meizu/widget/ScrollTextView;->mFocusedView:Landroid/widget/TextView;

    invoke-virtual {p0, v5}, Lcom/meizu/widget/ScrollTextView;->setUnfocusedItem(Landroid/widget/TextView;)V

    .line 374
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/meizu/widget/ScrollTextView;->mFocusedView:Landroid/widget/TextView;

    .line 377
    :cond_3
    iput p1, p0, Lcom/meizu/widget/ScrollTextView;->mCount:I

    .line 378
    iput p3, p0, Lcom/meizu/widget/ScrollTextView;->mValidStart:I

    .line 379
    iput p4, p0, Lcom/meizu/widget/ScrollTextView;->mValidEnd:I

    .line 381
    if-ne p5, v7, :cond_a

    .line 382
    iget-object v5, p0, Lcom/meizu/widget/ScrollTextView;->mLineView:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 385
    const/4 v4, 0x0

    .line 386
    .local v4, view:Landroid/widget/TextView;
    iget v5, p0, Lcom/meizu/widget/ScrollTextView;->mTextHeight:I

    if-ne v5, v8, :cond_7

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10501b6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 388
    .local v3, txtHeight:I
    :goto_1
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v2, v8, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 390
    .local v2, p:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v0, 0x0

    .local v0, index:I
    :goto_2
    if-ge v0, p1, :cond_8

    .line 394
    new-instance v4, Landroid/widget/TextView;

    .end local v4           #view:Landroid/widget/TextView;
    iget-object v5, p0, Lcom/meizu/widget/ScrollTextView;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 395
    .restart local v4       #view:Landroid/widget/TextView;
    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 396
    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 398
    if-eqz v4, :cond_6

    .line 399
    iget-object v5, p0, Lcom/meizu/widget/ScrollTextView;->mLineView:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v4, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 400
    iget-object v5, p0, Lcom/meizu/widget/ScrollTextView;->mDataInterface:Lcom/meizu/widget/ScrollTextView$IDataAdapter;

    if-eqz v5, :cond_4

    .line 401
    iget-object v5, p0, Lcom/meizu/widget/ScrollTextView;->mDataInterface:Lcom/meizu/widget/ScrollTextView$IDataAdapter;

    invoke-interface {v5, v4, v0}, Lcom/meizu/widget/ScrollTextView$IDataAdapter;->setViewData(Landroid/widget/TextView;I)V

    .line 402
    invoke-virtual {p0, v4}, Lcom/meizu/widget/ScrollTextView;->setUnfocusedItem(Landroid/widget/TextView;)V

    .line 405
    :cond_4
    if-lt v0, p3, :cond_5

    if-le v0, p4, :cond_6

    .line 406
    :cond_5
    const v5, -0x777778

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 390
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 386
    .end local v0           #index:I
    .end local v2           #p:Landroid/widget/LinearLayout$LayoutParams;
    .end local v3           #txtHeight:I
    :cond_7
    iget v3, p0, Lcom/meizu/widget/ScrollTextView;->mTextHeight:I

    goto :goto_1

    .line 411
    .restart local v0       #index:I
    .restart local v2       #p:Landroid/widget/LinearLayout$LayoutParams;
    .restart local v3       #txtHeight:I
    :cond_8
    iget-boolean v5, p0, Lcom/meizu/widget/ScrollTextView;->mCycleEnabled:Z

    if-ne v7, v5, :cond_a

    .line 412
    const/4 v0, 0x0

    :goto_3
    iget v5, p0, Lcom/meizu/widget/ScrollTextView;->mOneScreenCount:I

    if-ge v0, v5, :cond_a

    .line 416
    new-instance v4, Landroid/widget/TextView;

    .end local v4           #view:Landroid/widget/TextView;
    iget-object v5, p0, Lcom/meizu/widget/ScrollTextView;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 417
    .restart local v4       #view:Landroid/widget/TextView;
    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 418
    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 420
    if-eqz v4, :cond_9

    .line 421
    iget-object v5, p0, Lcom/meizu/widget/ScrollTextView;->mLineView:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v4, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 422
    iget-object v5, p0, Lcom/meizu/widget/ScrollTextView;->mDataInterface:Lcom/meizu/widget/ScrollTextView$IDataAdapter;

    if-eqz v5, :cond_9

    .line 423
    iget-object v5, p0, Lcom/meizu/widget/ScrollTextView;->mDataInterface:Lcom/meizu/widget/ScrollTextView$IDataAdapter;

    invoke-interface {v5, v4, v0}, Lcom/meizu/widget/ScrollTextView$IDataAdapter;->setViewData(Landroid/widget/TextView;I)V

    .line 424
    invoke-virtual {p0, v4}, Lcom/meizu/widget/ScrollTextView;->setUnfocusedItem(Landroid/widget/TextView;)V

    .line 412
    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 431
    .end local v0           #index:I
    .end local v2           #p:Landroid/widget/LinearLayout$LayoutParams;
    .end local v3           #txtHeight:I
    .end local v4           #view:Landroid/widget/TextView;
    :cond_a
    iget v5, p0, Lcom/meizu/widget/ScrollTextView;->mCurrentItem:I

    if-eq p2, v5, :cond_e

    .line 432
    iget v1, p0, Lcom/meizu/widget/ScrollTextView;->mCurrentItem:I

    .line 433
    .local v1, oldCurrentItem:I
    iput p2, p0, Lcom/meizu/widget/ScrollTextView;->mCurrentItem:I

    .line 435
    iget v5, p0, Lcom/meizu/widget/ScrollTextView;->mCurrentItem:I

    iget v6, p0, Lcom/meizu/widget/ScrollTextView;->mValidStart:I

    if-ge v5, v6, :cond_b

    .line 436
    iget v5, p0, Lcom/meizu/widget/ScrollTextView;->mValidStart:I

    iput v5, p0, Lcom/meizu/widget/ScrollTextView;->mCurrentItem:I

    .line 439
    :cond_b
    iget v5, p0, Lcom/meizu/widget/ScrollTextView;->mCurrentItem:I

    iget v6, p0, Lcom/meizu/widget/ScrollTextView;->mValidEnd:I

    if-gt v5, v6, :cond_c

    iget v5, p0, Lcom/meizu/widget/ScrollTextView;->mCurrentItem:I

    iget v6, p0, Lcom/meizu/widget/ScrollTextView;->mCount:I

    if-lt v5, v6, :cond_d

    .line 440
    :cond_c
    iget v5, p0, Lcom/meizu/widget/ScrollTextView;->mValidEnd:I

    iput v5, p0, Lcom/meizu/widget/ScrollTextView;->mCurrentItem:I

    .line 443
    :cond_d
    iget-object v5, p0, Lcom/meizu/widget/ScrollTextView;->mDataInterface:Lcom/meizu/widget/ScrollTextView$IDataAdapter;

    if-eqz v5, :cond_e

    .line 444
    iget-object v5, p0, Lcom/meizu/widget/ScrollTextView;->mDataInterface:Lcom/meizu/widget/ScrollTextView$IDataAdapter;

    iget v6, p0, Lcom/meizu/widget/ScrollTextView;->mCurrentItem:I

    invoke-interface {v5, p0, v1, v6}, Lcom/meizu/widget/ScrollTextView$IDataAdapter;->onChanged(Landroid/view/View;II)V

    .line 448
    .end local v1           #oldCurrentItem:I
    :cond_e
    invoke-virtual {p0}, Lcom/meizu/widget/ScrollTextView;->requestLayout()V

    goto/16 :goto_0
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .parameter "child"
    .parameter "focused"

    .prologue
    .line 1433
    iget-boolean v0, p0, Lcom/meizu/widget/ScrollTextView;->mScrollViewMovedFocus:Z

    if-nez v0, :cond_0

    .line 1434
    iget-boolean v0, p0, Lcom/meizu/widget/ScrollTextView;->mIsLayoutDirty:Z

    if-nez v0, :cond_1

    .line 1435
    invoke-direct {p0, p2}, Lcom/meizu/widget/ScrollTextView;->scrollToChild(Landroid/view/View;)V

    .line 1441
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 1442
    return-void

    .line 1438
    :cond_1
    iput-object p2, p0, Lcom/meizu/widget/ScrollTextView;->mChildToScrollTo:Landroid/view/View;

    goto :goto_0
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 3
    .parameter "child"
    .parameter "rectangle"
    .parameter "immediate"

    .prologue
    .line 1478
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 1480
    invoke-direct {p0, p2, p3}, Lcom/meizu/widget/ScrollTextView;->scrollToChildRect(Landroid/graphics/Rect;Z)Z

    move-result v0

    return v0
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 1485
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/widget/ScrollTextView;->mIsLayoutDirty:Z

    .line 1486
    invoke-super {p0}, Landroid/view/View;->requestLayout()V

    .line 1487
    return-void
.end method

.method public scrollTo(II)V
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1582
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 1583
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1584
    .local v0, child:Landroid/view/View;
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    iget v2, p0, Landroid/view/View;->mPaddingRight:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/view/View;->mPaddingLeft:I

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-direct {p0, p1, v1, v2}, Lcom/meizu/widget/ScrollTextView;->clamp(III)I

    move-result p1

    .line 1585
    invoke-direct {p0, p2}, Lcom/meizu/widget/ScrollTextView;->getAdjustedScrollPos(I)I

    move-result p2

    .line 1587
    iget v1, p0, Landroid/view/View;->mScrollX:I

    if-ne p1, v1, :cond_0

    iget v1, p0, Landroid/view/View;->mScrollY:I

    if-eq p2, v1, :cond_1

    .line 1588
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->scrollTo(II)V

    .line 1591
    .end local v0           #child:Landroid/view/View;
    :cond_1
    return-void
.end method

.method setCurrentViewState()V
    .locals 3

    .prologue
    .line 1647
    iget v0, p0, Lcom/meizu/widget/ScrollTextView;->mCurrentItem:I

    .line 1649
    .local v0, oldCurrent:I
    iget-object v1, p0, Lcom/meizu/widget/ScrollTextView;->mDataInterface:Lcom/meizu/widget/ScrollTextView$IDataAdapter;

    if-nez v1, :cond_1

    .line 1667
    :cond_0
    :goto_0
    return-void

    .line 1652
    :cond_1
    iget-object v1, p0, Lcom/meizu/widget/ScrollTextView;->mFocusedView:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    .line 1653
    iget-object v1, p0, Lcom/meizu/widget/ScrollTextView;->mFocusedView:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Lcom/meizu/widget/ScrollTextView;->setUnfocusedItem(Landroid/widget/TextView;)V

    .line 1656
    :cond_2
    iget-object v1, p0, Lcom/meizu/widget/ScrollTextView;->mLineView:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_3

    .line 1657
    iget-object v1, p0, Lcom/meizu/widget/ScrollTextView;->mLineView:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/meizu/widget/ScrollTextView;->getCurrentItemId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/meizu/widget/ScrollTextView;->mFocusedView:Landroid/widget/TextView;

    .line 1659
    :cond_3
    iget-object v1, p0, Lcom/meizu/widget/ScrollTextView;->mFocusedView:Landroid/widget/TextView;

    if-eqz v1, :cond_4

    .line 1660
    iget-object v1, p0, Lcom/meizu/widget/ScrollTextView;->mFocusedView:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Lcom/meizu/widget/ScrollTextView;->setFocusedItem(Landroid/widget/TextView;)V

    .line 1663
    :cond_4
    invoke-virtual {p0}, Lcom/meizu/widget/ScrollTextView;->getCurrentItemId()I

    move-result v1

    iget v2, p0, Lcom/meizu/widget/ScrollTextView;->mCount:I

    rem-int/2addr v1, v2

    iput v1, p0, Lcom/meizu/widget/ScrollTextView;->mCurrentItem:I

    .line 1664
    iget v1, p0, Lcom/meizu/widget/ScrollTextView;->mCurrentItem:I

    if-eq v1, v0, :cond_0

    .line 1665
    iget-object v1, p0, Lcom/meizu/widget/ScrollTextView;->mDataInterface:Lcom/meizu/widget/ScrollTextView$IDataAdapter;

    iget v2, p0, Lcom/meizu/widget/ScrollTextView;->mCurrentItem:I

    invoke-interface {v1, p0, v0, v2}, Lcom/meizu/widget/ScrollTextView$IDataAdapter;->onChanged(Landroid/view/View;II)V

    goto :goto_0
.end method

.method public setData(Lcom/meizu/widget/ScrollTextView$IDataAdapter;FIIIIIZ)V
    .locals 10
    .parameter "dataAdapter"
    .parameter "lineOffset"
    .parameter "currentItem"
    .parameter "count"
    .parameter "oneScreenCount"
    .parameter "validStart"
    .parameter "validEnd"
    .parameter "cycleEnabled"

    .prologue
    .line 280
    iput-object p1, p0, Lcom/meizu/widget/ScrollTextView;->mDataInterface:Lcom/meizu/widget/ScrollTextView$IDataAdapter;

    .line 281
    iput p4, p0, Lcom/meizu/widget/ScrollTextView;->mCount:I

    .line 282
    iput p5, p0, Lcom/meizu/widget/ScrollTextView;->mOneScreenCount:I

    .line 283
    move/from16 v0, p6

    iput v0, p0, Lcom/meizu/widget/ScrollTextView;->mValidStart:I

    .line 284
    move/from16 v0, p7

    iput v0, p0, Lcom/meizu/widget/ScrollTextView;->mValidEnd:I

    .line 285
    move/from16 v0, p8

    iput-boolean v0, p0, Lcom/meizu/widget/ScrollTextView;->mCycleEnabled:Z

    .line 286
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/meizu/widget/ScrollTextView;->mFocusedView:Landroid/widget/TextView;

    .line 288
    const/high16 v1, -0x4080

    cmpl-float v1, p2, v1

    if-nez v1, :cond_4

    .line 289
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10501b7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/meizu/widget/ScrollTextView;->mOffsetY:I

    .line 297
    :goto_0
    iget v1, p0, Lcom/meizu/widget/ScrollTextView;->mOneScreenCount:I

    if-lt p4, v1, :cond_0

    add-int/lit8 v1, p7, 0x1

    if-lt v1, p4, :cond_0

    if-lez p6, :cond_1

    .line 299
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/meizu/widget/ScrollTextView;->mCycleEnabled:Z

    .line 302
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/meizu/widget/ScrollTextView;->mLineView:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_3

    .line 303
    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 304
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/meizu/widget/ScrollTextView;->mLineView:Landroid/widget/LinearLayout;

    .line 307
    :cond_3
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v9, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 310
    .local v9, p:Landroid/widget/LinearLayout$LayoutParams;
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/meizu/widget/ScrollTextView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/meizu/widget/ScrollTextView;->mLineView:Landroid/widget/LinearLayout;

    .line 311
    iget-object v1, p0, Lcom/meizu/widget/ScrollTextView;->mLineView:Landroid/widget/LinearLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 312
    iget-object v1, p0, Lcom/meizu/widget/ScrollTextView;->mLineView:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1, v9}, Lcom/meizu/widget/ScrollTextView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 315
    const/4 v6, 0x1

    move-object v1, p0

    move v2, p4

    move v3, p3

    move/from16 v4, p6

    move/from16 v5, p7

    invoke-virtual/range {v1 .. v6}, Lcom/meizu/widget/ScrollTextView;->refreshData(IIIIZ)V

    .line 316
    return-void

    .line 291
    .end local v9           #p:Landroid/widget/LinearLayout$LayoutParams;
    :cond_4
    iget-object v1, p0, Lcom/meizu/widget/ScrollTextView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    .line 292
    .local v8, metrics:Landroid/util/DisplayMetrics;
    iget v7, v8, Landroid/util/DisplayMetrics;->density:F

    .line 293
    .local v7, density:F
    mul-float v1, p2, v7

    float-to-int v1, v1

    iput v1, p0, Lcom/meizu/widget/ScrollTextView;->mOffsetY:I

    goto :goto_0
.end method

.method public setData(Lcom/meizu/widget/ScrollTextView$IDataAdapter;III)V
    .locals 9
    .parameter "dataAdapter"
    .parameter "currentItem"
    .parameter "count"
    .parameter "oneScreenCount"

    .prologue
    .line 272
    const/high16 v2, -0x4080

    const/4 v6, 0x0

    add-int/lit8 v7, p3, -0x1

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v8}, Lcom/meizu/widget/ScrollTextView;->setData(Lcom/meizu/widget/ScrollTextView$IDataAdapter;FIIIIIZ)V

    .line 274
    return-void
.end method

.method public setFillViewport(Z)V
    .locals 1
    .parameter "fillViewport"

    .prologue
    .line 645
    iget-boolean v0, p0, Lcom/meizu/widget/ScrollTextView;->mFillViewport:Z

    if-eq p1, v0, :cond_0

    .line 646
    iput-boolean p1, p0, Lcom/meizu/widget/ScrollTextView;->mFillViewport:Z

    .line 647
    invoke-virtual {p0}, Lcom/meizu/widget/ScrollTextView;->requestLayout()V

    .line 649
    :cond_0
    return-void
.end method

.method setFocusedItem(Landroid/widget/TextView;)V
    .locals 3
    .parameter "view"

    .prologue
    const/4 v2, 0x0

    .line 319
    iget v0, p0, Lcom/meizu/widget/ScrollTextView;->mTextSelectedSize:F

    const/high16 v1, -0x4080

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    .line 320
    iget v0, p0, Lcom/meizu/widget/ScrollTextView;->mTextSelectedSize:F

    invoke-virtual {p1, v2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 325
    :goto_0
    iget v0, p0, Lcom/meizu/widget/ScrollTextView;->mTextSelectedColor:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 326
    iget v0, p0, Lcom/meizu/widget/ScrollTextView;->mTextSelectedColor:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 330
    :goto_1
    iget-object v0, p0, Lcom/meizu/widget/ScrollTextView;->mDataInterface:Lcom/meizu/widget/ScrollTextView$IDataAdapter;

    if-eqz v0, :cond_0

    .line 331
    iget-object v0, p0, Lcom/meizu/widget/ScrollTextView;->mDataInterface:Lcom/meizu/widget/ScrollTextView$IDataAdapter;

    invoke-interface {v0, p1}, Lcom/meizu/widget/ScrollTextView$IDataAdapter;->setFocusedItemAction(Landroid/widget/TextView;)V

    .line 333
    :cond_0
    return-void

    .line 322
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10501ae

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p1, v2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_0

    .line 328
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x106007b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1
.end method

.method public setFocusedPosition(I)V
    .locals 1
    .parameter "focusedPosition"

    .prologue
    .line 1681
    iget v0, p0, Lcom/meizu/widget/ScrollTextView;->mFocusedPosition:I

    if-eq p1, v0, :cond_0

    .line 1682
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 1683
    iput p1, p0, Lcom/meizu/widget/ScrollTextView;->mFocusedPosition:I

    .line 1691
    :goto_0
    invoke-virtual {p0}, Lcom/meizu/widget/ScrollTextView;->requestLayout()V

    .line 1693
    :cond_0
    return-void

    .line 1684
    :cond_1
    if-gez p1, :cond_2

    .line 1685
    const/4 v0, 0x0

    iput v0, p0, Lcom/meizu/widget/ScrollTextView;->mFocusedPosition:I

    goto :goto_0

    .line 1686
    :cond_2
    iget v0, p0, Lcom/meizu/widget/ScrollTextView;->mOneScreenCount:I

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_3

    .line 1687
    add-int/lit8 v0, p1, -0x1

    iput v0, p0, Lcom/meizu/widget/ScrollTextView;->mFocusedPosition:I

    goto :goto_0

    .line 1689
    :cond_3
    iput p1, p0, Lcom/meizu/widget/ScrollTextView;->mFocusedPosition:I

    goto :goto_0
.end method

.method public setSmoothScrollingEnabled(Z)V
    .locals 0
    .parameter "smoothScrollingEnabled"

    .prologue
    .line 665
    iput-boolean p1, p0, Lcom/meizu/widget/ScrollTextView;->mSmoothScrollingEnabled:Z

    .line 666
    return-void
.end method

.method public setTextColor(II)V
    .locals 0
    .parameter "selectedColor"
    .parameter "normalColor"

    .prologue
    .line 1719
    iput p1, p0, Lcom/meizu/widget/ScrollTextView;->mTextSelectedColor:I

    .line 1720
    iput p2, p0, Lcom/meizu/widget/ScrollTextView;->mTextNormalColor:I

    .line 1721
    return-void
.end method

.method public setTextPreference(FFI)V
    .locals 0
    .parameter "selectedSize"
    .parameter "normalSize"
    .parameter "height"

    .prologue
    .line 1705
    iput p3, p0, Lcom/meizu/widget/ScrollTextView;->mTextHeight:I

    .line 1706
    iput p1, p0, Lcom/meizu/widget/ScrollTextView;->mTextSelectedSize:F

    .line 1707
    iput p2, p0, Lcom/meizu/widget/ScrollTextView;->mTextNormalSize:F

    .line 1708
    return-void
.end method

.method setUnfocusedItem(Landroid/widget/TextView;)V
    .locals 3
    .parameter "view"

    .prologue
    const/4 v2, 0x0

    .line 336
    iget v0, p0, Lcom/meizu/widget/ScrollTextView;->mTextNormalSize:F

    const/high16 v1, -0x4080

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    .line 337
    iget v0, p0, Lcom/meizu/widget/ScrollTextView;->mTextNormalSize:F

    invoke-virtual {p1, v2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 342
    :goto_0
    iget v0, p0, Lcom/meizu/widget/ScrollTextView;->mTextNormalColor:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 343
    iget v0, p0, Lcom/meizu/widget/ScrollTextView;->mTextNormalColor:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 347
    :goto_1
    iget-object v0, p0, Lcom/meizu/widget/ScrollTextView;->mDataInterface:Lcom/meizu/widget/ScrollTextView$IDataAdapter;

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/meizu/widget/ScrollTextView;->mDataInterface:Lcom/meizu/widget/ScrollTextView$IDataAdapter;

    invoke-interface {v0, p1}, Lcom/meizu/widget/ScrollTextView$IDataAdapter;->setUnfocusedItemAction(Landroid/widget/TextView;)V

    .line 350
    :cond_0
    return-void

    .line 339
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10501ad

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p1, v2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_0

    .line 345
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x106007a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1
.end method

.method public final smoothScrollBy(II)V
    .locals 6
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 1215
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/meizu/widget/ScrollTextView;->mLastScroll:J

    sub-long v0, v2, v4

    .line 1216
    .local v0, duration:J
    const-wide/16 v2, 0xfa

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 1217
    iget-object v2, p0, Lcom/meizu/widget/ScrollTextView;->mScroller:Landroid/widget/Scroller;

    iget v3, p0, Landroid/view/View;->mScrollX:I

    iget v4, p0, Landroid/view/View;->mScrollY:I

    invoke-virtual {v2, v3, v4, p1, p2}, Landroid/widget/Scroller;->startScroll(IIII)V

    .line 1218
    iget-object v2, p0, Lcom/meizu/widget/ScrollTextView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getDuration()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/view/View;->awakenScrollBars(I)Z

    .line 1219
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 1226
    :goto_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/meizu/widget/ScrollTextView;->mLastScroll:J

    .line 1227
    return-void

    .line 1221
    :cond_0
    iget-object v2, p0, Lcom/meizu/widget/ScrollTextView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1222
    iget-object v2, p0, Lcom/meizu/widget/ScrollTextView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1224
    :cond_1
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->scrollBy(II)V

    goto :goto_0
.end method

.method public final smoothScrollTo(II)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1238
    iget v0, p0, Landroid/view/View;->mScrollX:I

    sub-int v0, p1, v0

    iget v1, p0, Landroid/view/View;->mScrollY:I

    sub-int v1, p2, v1

    invoke-virtual {p0, v0, v1}, Lcom/meizu/widget/ScrollTextView;->smoothScrollBy(II)V

    .line 1239
    return-void
.end method
