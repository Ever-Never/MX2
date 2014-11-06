.class public Landroid/widget/ScrollView;
.super Landroid/widget/FrameLayout;
.source "ScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/ScrollView$OnScrollListener;
    }
.end annotation


# static fields
.field static final ANIMATED_SCROLL_GAP:I = 0xfa

.field private static CHECK_SPRINGBACK_DURATION:I = 0x0

.field private static final INVALID_POINTER:I = -0x1

.field static final MAX_SCROLL_FACTOR:F = 0.5f

.field private static SPRINGBACK_DELAY_DURATION:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ScrollView"


# instance fields
.field private mActivePointerId:I

.field private mCheckDelaySpringBack:Ljava/lang/Runnable;

.field private mChildToScrollTo:Landroid/view/View;

.field private mCurrentOverScrollDistance:I

.field private mDefaultTouchSlop:I

.field mDelaySpringBack:Ljava/lang/Runnable;

.field private mDelaySpringBackEnabled:Z

.field private mEnableTopShadow:Z

.field private mFillViewport:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private mFlingStrictSpan:Landroid/os/StrictMode$Span;

.field private mHoldDistance:I

.field private mHoldIndicator:Lcom/meizu/widget/MzListHoldIndicator;

.field private mHoldIndicatorOffset:I

.field private mIsBeingDragged:Z

.field private mIsLayoutDirty:Z

.field private mIsListAtWindowTop:Z

.field private mLastMotionY:I

.field private mLastScroll:J

.field private mLastScrollState:I

.field private mListWindowTop:I

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field protected mNeedRestoreOverScroll:Z

.field private mOnScrollListener:Landroid/widget/ScrollView$OnScrollListener;

.field private mOverFling:Z

.field private mOverflingDistance:I

.field private mOverscrollDistance:I

.field private mScrollStrictSpan:Landroid/os/StrictMode$Span;

.field private mScroller:Lcom/meizu/widget/MzOverScroller;

.field protected mShouldDelaySpringBack:Z

.field private mSmoothScrollingEnabled:Z

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTopShadowLight:Landroid/graphics/drawable/Drawable;

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mWaitingForDelaySpringBack:Z

.field private mWaitingForSpringBack:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1912
    const/16 v0, 0x3e8

    sput v0, Landroid/widget/ScrollView;->SPRINGBACK_DELAY_DURATION:I

    .line 1913
    const/16 v0, 0x1f4

    sput v0, Landroid/widget/ScrollView;->CHECK_SPRINGBACK_DURATION:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 161
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 162
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 165
    const v0, 0x1010080

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 166
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 169
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 80
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    .line 94
    iput-boolean v3, p0, Landroid/widget/ScrollView;->mIsLayoutDirty:Z

    .line 101
    iput-object v4, p0, Landroid/widget/ScrollView;->mChildToScrollTo:Landroid/view/View;

    .line 108
    iput-boolean v2, p0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    .line 125
    iput-boolean v3, p0, Landroid/widget/ScrollView;->mSmoothScrollingEnabled:Z

    .line 138
    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/ScrollView;->mActivePointerId:I

    .line 146
    iput-object v4, p0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 147
    iput-object v4, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 158
    iput-boolean v2, p0, Landroid/widget/ScrollView;->mEnableTopShadow:Z

    .line 858
    iput v2, p0, Landroid/widget/ScrollView;->mCurrentOverScrollDistance:I

    .line 859
    iput-boolean v2, p0, Landroid/widget/ScrollView;->mOverFling:Z

    .line 1866
    iput-boolean v2, p0, Landroid/widget/ScrollView;->mNeedRestoreOverScroll:Z

    .line 1906
    iput-boolean v2, p0, Landroid/widget/ScrollView;->mShouldDelaySpringBack:Z

    .line 1907
    iput-boolean v3, p0, Landroid/widget/ScrollView;->mDelaySpringBackEnabled:Z

    .line 1909
    iput-boolean v2, p0, Landroid/widget/ScrollView;->mIsListAtWindowTop:Z

    .line 1911
    iput v2, p0, Landroid/widget/ScrollView;->mListWindowTop:I

    .line 1915
    new-instance v1, Landroid/widget/ScrollView$2;

    invoke-direct {v1, p0}, Landroid/widget/ScrollView$2;-><init>(Landroid/widget/ScrollView;)V

    iput-object v1, p0, Landroid/widget/ScrollView;->mDelaySpringBack:Ljava/lang/Runnable;

    .line 1963
    iput-boolean v2, p0, Landroid/widget/ScrollView;->mWaitingForDelaySpringBack:Z

    .line 1964
    iput-boolean v2, p0, Landroid/widget/ScrollView;->mWaitingForSpringBack:Z

    .line 1966
    new-instance v1, Landroid/widget/ScrollView$3;

    invoke-direct {v1, p0}, Landroid/widget/ScrollView$3;-><init>(Landroid/widget/ScrollView;)V

    iput-object v1, p0, Landroid/widget/ScrollView;->mCheckDelaySpringBack:Ljava/lang/Runnable;

    .line 2039
    iput v2, p0, Landroid/widget/ScrollView;->mLastScrollState:I

    .line 2108
    iput v2, p0, Landroid/widget/ScrollView;->mHoldIndicatorOffset:I

    .line 170
    invoke-direct {p0}, Landroid/widget/ScrollView;->initScrollView()V

    .line 172
    sget-object v1, Lcom/android/internal/R$styleable;->ScrollView:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 175
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    .line 177
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 180
    invoke-virtual {p1}, Landroid/content/Context;->isThemeLight()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 181
    iput-boolean v3, p0, Landroid/widget/ScrollView;->mEnableTopShadow:Z

    .line 182
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10807b1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/ScrollView;->mTopShadowLight:Landroid/graphics/drawable/Drawable;

    .line 184
    :cond_0
    return-void
.end method

.method static synthetic access$000(Landroid/widget/ScrollView;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Landroid/widget/ScrollView;->mCheckDelaySpringBack:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$100(Landroid/widget/ScrollView;)Lcom/meizu/widget/MzListHoldIndicator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Landroid/widget/ScrollView;->mHoldIndicator:Lcom/meizu/widget/MzListHoldIndicator;

    return-object v0
.end method

.method static synthetic access$200(Landroid/widget/ScrollView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Landroid/widget/ScrollView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget v0, p0, Landroid/view/View;->mScrollX:I

    return v0
.end method

.method static synthetic access$400(Landroid/widget/ScrollView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget v0, p0, Landroid/view/View;->mScrollY:I

    return v0
.end method

.method static synthetic access$500(Landroid/widget/ScrollView;)Lcom/meizu/widget/MzOverScroller;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Landroid/widget/ScrollView;->mScroller:Lcom/meizu/widget/MzOverScroller;

    return-object v0
.end method

.method static synthetic access$602(Landroid/widget/ScrollView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput-boolean p1, p0, Landroid/widget/ScrollView;->mOverFling:Z

    return p1
.end method

.method static synthetic access$702(Landroid/widget/ScrollView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput-boolean p1, p0, Landroid/widget/ScrollView;->mWaitingForDelaySpringBack:Z

    return p1
.end method

.method static synthetic access$802(Landroid/widget/ScrollView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput-boolean p1, p0, Landroid/widget/ScrollView;->mWaitingForSpringBack:Z

    return p1
.end method

.method private canScroll()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 330
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 331
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 332
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 333
    .local v1, childHeight:I
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    iget v4, p0, Landroid/view/View;->mPaddingTop:I

    add-int/2addr v4, v1

    iget v5, p0, Landroid/view/View;->mPaddingBottom:I

    add-int/2addr v4, v5

    if-ge v3, v4, :cond_0

    const/4 v2, 0x1

    .line 335
    .end local v1           #childHeight:I
    :cond_0
    return v2
.end method

.method private static clamp(III)I
    .locals 1
    .parameter "n"
    .parameter "my"
    .parameter "child"

    .prologue
    .line 1813
    if-ge p1, p2, :cond_0

    if-gez p0, :cond_2

    .line 1829
    :cond_0
    const/4 p0, 0x0

    .line 1839
    .end local p0
    :cond_1
    :goto_0
    return p0

    .line 1831
    .restart local p0
    :cond_2
    add-int v0, p1, p0

    if-le v0, p2, :cond_1

    .line 1837
    sub-int p0, p2, p1

    goto :goto_0
.end method

.method private doScrollY(I)V
    .locals 2
    .parameter "delta"

    .prologue
    const/4 v1, 0x0

    .line 1280
    if-eqz p1, :cond_0

    .line 1281
    iget-boolean v0, p0, Landroid/widget/ScrollView;->mSmoothScrollingEnabled:Z

    if-eqz v0, :cond_1

    .line 1282
    invoke-virtual {p0, v1, p1}, Landroid/widget/ScrollView;->smoothScrollBy(II)V

    .line 1287
    :cond_0
    :goto_0
    return-void

    .line 1284
    :cond_1
    invoke-virtual {p0, v1, p1}, Landroid/view/View;->scrollBy(II)V

    goto :goto_0
.end method

.method private endDrag()V
    .locals 1

    .prologue
    .line 1729
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    .line 1731
    invoke-direct {p0}, Landroid/widget/ScrollView;->recycleVelocityTracker()V

    .line 1739
    iget-object v0, p0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v0, :cond_0

    .line 1740
    iget-object v0, p0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v0}, Landroid/os/StrictMode$Span;->finish()V

    .line 1741
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 1743
    :cond_0
    return-void
.end method

.method private findFocusableViewInBounds(ZII)Landroid/view/View;
    .locals 11
    .parameter "topFocus"
    .parameter "top"
    .parameter "bottom"

    .prologue
    .line 1026
    const/4 v10, 0x2

    invoke-virtual {p0, v10}, Landroid/view/View;->getFocusables(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 1027
    .local v2, focusables:Ljava/util/List;,"Ljava/util/List<Landroid/view/View;>;"
    const/4 v1, 0x0

    .line 1036
    .local v1, focusCandidate:Landroid/view/View;
    const/4 v3, 0x0

    .line 1038
    .local v3, foundFullyContainedFocusable:Z
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 1039
    .local v0, count:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v0, :cond_8

    .line 1040
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 1041
    .local v5, view:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v9

    .line 1042
    .local v9, viewTop:I
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v6

    .line 1044
    .local v6, viewBottom:I
    if-ge p2, v6, :cond_0

    if-ge v9, p3, :cond_0

    .line 1050
    if-ge p2, v9, :cond_1

    if-ge v6, p3, :cond_1

    const/4 v8, 0x1

    .line 1053
    .local v8, viewIsFullyContained:Z
    :goto_1
    if-nez v1, :cond_2

    .line 1055
    move-object v1, v5

    .line 1056
    move v3, v8

    .line 1039
    .end local v8           #viewIsFullyContained:Z
    :cond_0
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1050
    :cond_1
    const/4 v8, 0x0

    goto :goto_1

    .line 1058
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

    .line 1063
    .local v7, viewIsCloserToBoundary:Z
    :goto_3
    if-eqz v3, :cond_6

    .line 1064
    if-eqz v8, :cond_0

    if-eqz v7, :cond_0

    .line 1070
    move-object v1, v5

    goto :goto_2

    .line 1058
    .end local v7           #viewIsCloserToBoundary:Z
    :cond_5
    const/4 v7, 0x0

    goto :goto_3

    .line 1073
    .restart local v7       #viewIsCloserToBoundary:Z
    :cond_6
    if-eqz v8, :cond_7

    .line 1075
    move-object v1, v5

    .line 1076
    const/4 v3, 0x1

    goto :goto_2

    .line 1077
    :cond_7
    if-eqz v7, :cond_0

    .line 1082
    move-object v1, v5

    goto :goto_2

    .line 1089
    .end local v5           #view:Landroid/view/View;
    .end local v6           #viewBottom:I
    .end local v7           #viewIsCloserToBoundary:Z
    .end local v8           #viewIsFullyContained:Z
    .end local v9           #viewTop:I
    :cond_8
    return-object v1
.end method

.method private getScrollRange()I
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1000
    const/4 v1, 0x0

    .line 1001
    .local v1, scrollRange:I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 1002
    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1003
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    iget v4, p0, Landroid/view/View;->mPaddingBottom:I

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/view/View;->mPaddingTop:I

    sub-int/2addr v3, v4

    sub-int/2addr v2, v3

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1006
    .end local v0           #child:Landroid/view/View;
    :cond_0
    return v1
.end method

.method private inChild(II)Z
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v2, 0x0

    .line 468
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 469
    iget v1, p0, Landroid/view/View;->mScrollY:I

    .line 470
    .local v1, scrollY:I
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 471
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v3, v1

    if-lt p2, v3, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v3

    sub-int/2addr v3, v1

    if-ge p2, v3, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    if-lt p1, v3, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v3

    if-ge p1, v3, :cond_0

    const/4 v2, 0x1

    .line 476
    .end local v0           #child:Landroid/view/View;
    .end local v1           #scrollY:I
    :cond_0
    return v2
.end method

.method private initOrResetVelocityTracker()V
    .locals 1

    .prologue
    .line 480
    iget-object v0, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 481
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 485
    :goto_0
    return-void

    .line 483
    :cond_0
    iget-object v0, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_0
.end method

.method private initScrollView()V
    .locals 3

    .prologue
    .line 273
    new-instance v1, Lcom/meizu/widget/MzOverScroller;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/meizu/widget/MzOverScroller;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/widget/ScrollView;->mScroller:Lcom/meizu/widget/MzOverScroller;

    .line 274
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 275
    const/high16 v1, 0x4

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 276
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 277
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 278
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Landroid/widget/ScrollView;->mTouchSlop:I

    iput v1, p0, Landroid/widget/ScrollView;->mDefaultTouchSlop:I

    .line 279
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Landroid/widget/ScrollView;->mMinimumVelocity:I

    .line 280
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Landroid/widget/ScrollView;->mMaximumVelocity:I

    .line 283
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x105014f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Landroid/widget/ScrollView;->mOverscrollDistance:I

    .line 284
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10501ff

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Landroid/widget/ScrollView;->mHoldDistance:I

    .line 286
    iget v1, p0, Landroid/widget/ScrollView;->mOverscrollDistance:I

    iput v1, p0, Landroid/widget/ScrollView;->mOverflingDistance:I

    .line 287
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050200

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Landroid/widget/ScrollView;->mListWindowTop:I

    .line 288
    return-void
.end method

.method private initVelocityTrackerIfNotExists()V
    .locals 1

    .prologue
    .line 488
    iget-object v0, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 489
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 491
    :cond_0
    return-void
.end method

.method private isOffScreen(Landroid/view/View;)Z
    .locals 2
    .parameter "descendant"

    .prologue
    const/4 v0, 0x0

    .line 1259
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/ScrollView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private static isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z
    .locals 3
    .parameter "child"
    .parameter "parent"

    .prologue
    const/4 v1, 0x1

    .line 1696
    if-ne p0, p1, :cond_1

    .line 1701
    :cond_0
    :goto_0
    return v1

    .line 1700
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 1701
    .local v0, theParent:Landroid/view/ViewParent;
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    check-cast v0, Landroid/view/View;

    .end local v0           #theParent:Landroid/view/ViewParent;
    invoke-static {v0, p1}, Landroid/widget/ScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

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
    .line 1267
    iget-object v0, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1268
    iget-object v0, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1270
    iget-object v0, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, p2

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

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

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 5
    .parameter "ev"

    .prologue
    .line 813
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const v4, 0xff00

    and-int/2addr v3, v4

    shr-int/lit8 v2, v3, 0x8

    .line 815
    .local v2, pointerIndex:I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 816
    .local v1, pointerId:I
    iget v3, p0, Landroid/widget/ScrollView;->mActivePointerId:I

    if-ne v1, v3, :cond_0

    .line 820
    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 821
    .local v0, newPointerIndex:I
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Landroid/widget/ScrollView;->mLastMotionY:I

    .line 822
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Landroid/widget/ScrollView;->mActivePointerId:I

    .line 823
    iget-object v3, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_0

    .line 824
    iget-object v3, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 827
    .end local v0           #newPointerIndex:I
    :cond_0
    return-void

    .line 820
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private recycleVelocityTracker()V
    .locals 1

    .prologue
    .line 494
    iget-object v0, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 495
    iget-object v0, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 496
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 498
    :cond_0
    return-void
.end method

.method private scrollAndFocus(III)Z
    .locals 8
    .parameter "direction"
    .parameter "top"
    .parameter "bottom"

    .prologue
    .line 1172
    const/4 v3, 0x1

    .line 1174
    .local v3, handled:Z
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    .line 1175
    .local v4, height:I
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v1

    .line 1176
    .local v1, containerTop:I
    add-int v0, v1, v4

    .line 1177
    .local v0, containerBottom:I
    const/16 v7, 0x21

    if-ne p1, v7, :cond_2

    const/4 v6, 0x1

    .line 1179
    .local v6, up:Z
    :goto_0
    invoke-direct {p0, v6, p2, p3}, Landroid/widget/ScrollView;->findFocusableViewInBounds(ZII)Landroid/view/View;

    move-result-object v5

    .line 1180
    .local v5, newFocused:Landroid/view/View;
    if-nez v5, :cond_0

    .line 1181
    move-object v5, p0

    .line 1184
    :cond_0
    if-lt p2, v1, :cond_3

    if-gt p3, v0, :cond_3

    .line 1185
    const/4 v3, 0x0

    .line 1191
    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->findFocus()Landroid/view/View;

    move-result-object v7

    if-eq v5, v7, :cond_1

    invoke-virtual {v5, p1}, Landroid/view/View;->requestFocus(I)Z

    .line 1193
    :cond_1
    return v3

    .line 1177
    .end local v5           #newFocused:Landroid/view/View;
    .end local v6           #up:Z
    :cond_2
    const/4 v6, 0x0

    goto :goto_0

    .line 1187
    .restart local v5       #newFocused:Landroid/view/View;
    .restart local v6       #up:Z
    :cond_3
    if-eqz v6, :cond_4

    sub-int v2, p2, v1

    .line 1188
    .local v2, delta:I
    :goto_2
    invoke-direct {p0, v2}, Landroid/widget/ScrollView;->doScrollY(I)V

    goto :goto_1

    .line 1187
    .end local v2           #delta:I
    :cond_4
    sub-int v2, p3, v0

    goto :goto_2
.end method

.method private scrollToChild(Landroid/view/View;)V
    .locals 2
    .parameter "child"

    .prologue
    .line 1460
    iget-object v1, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1463
    iget-object v1, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v1}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1465
    iget-object v1, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Landroid/widget/ScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v0

    .line 1467
    .local v0, scrollDelta:I
    if-eqz v0, :cond_0

    .line 1468
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/view/View;->scrollBy(II)V

    .line 1470
    :cond_0
    return-void
.end method

.method private scrollToChildRect(Landroid/graphics/Rect;Z)Z
    .locals 3
    .parameter "rect"
    .parameter "immediate"

    .prologue
    const/4 v2, 0x0

    .line 1481
    invoke-virtual {p0, p1}, Landroid/widget/ScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v0

    .line 1482
    .local v0, delta:I
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 1483
    .local v1, scroll:Z
    :goto_0
    if-eqz v1, :cond_0

    .line 1484
    if-eqz p2, :cond_2

    .line 1485
    invoke-virtual {p0, v2, v0}, Landroid/view/View;->scrollBy(II)V

    .line 1490
    :cond_0
    :goto_1
    return v1

    .end local v1           #scroll:Z
    :cond_1
    move v1, v2

    .line 1482
    goto :goto_0

    .line 1487
    .restart local v1       #scroll:Z
    :cond_2
    invoke-virtual {p0, v2, v0}, Landroid/widget/ScrollView;->smoothScrollBy(II)V

    goto :goto_1
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 2
    .parameter "child"

    .prologue
    .line 292
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 293
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 296
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 297
    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 2
    .parameter "child"
    .parameter "index"

    .prologue
    .line 301
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 302
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 305
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 306
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .parameter "child"
    .parameter "index"
    .parameter "params"

    .prologue
    .line 319
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 320
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 323
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 324
    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .parameter "child"
    .parameter "params"

    .prologue
    .line 310
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 311
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 314
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 315
    return-void
.end method

.method public arrowScroll(I)Z
    .locals 11
    .parameter "direction"

    .prologue
    const/16 v10, 0x82

    const/4 v7, 0x0

    .line 1205
    invoke-virtual {p0}, Landroid/view/ViewGroup;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 1206
    .local v0, currentFocused:Landroid/view/View;
    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    .line 1208
    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v8

    invoke-virtual {v8, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    .line 1210
    .local v4, nextFocused:Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getMaxScrollAmount()I

    move-result v3

    .line 1212
    .local v3, maxJump:I
    if-eqz v4, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v8

    invoke-direct {p0, v4, v3, v8}, Landroid/widget/ScrollView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1213
    iget-object v7, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v7}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1214
    iget-object v7, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v4, v7}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1215
    iget-object v7, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v7}, Landroid/widget/ScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v6

    .line 1216
    .local v6, scrollDelta:I
    invoke-direct {p0, v6}, Landroid/widget/ScrollView;->doScrollY(I)V

    .line 1217
    invoke-virtual {v4, p1}, Landroid/view/View;->requestFocus(I)Z

    .line 1239
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-direct {p0, v0}, Landroid/widget/ScrollView;->isOffScreen(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1246
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v2

    .line 1247
    .local v2, descendantFocusability:I
    const/high16 v7, 0x2

    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 1248
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    .line 1249
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 1251
    .end local v2           #descendantFocusability:I
    :cond_1
    const/4 v7, 0x1

    :cond_2
    return v7

    .line 1220
    .end local v6           #scrollDelta:I
    :cond_3
    move v6, v3

    .line 1222
    .restart local v6       #scrollDelta:I
    const/16 v8, 0x21

    if-ne p1, v8, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v8

    if-ge v8, v6, :cond_5

    .line 1223
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v6

    .line 1233
    :cond_4
    :goto_1
    if-eqz v6, :cond_2

    .line 1236
    if-ne p1, v10, :cond_6

    move v7, v6

    :goto_2
    invoke-direct {p0, v7}, Landroid/widget/ScrollView;->doScrollY(I)V

    goto :goto_0

    .line 1224
    :cond_5
    if-ne p1, v10, :cond_4

    .line 1225
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    if-lez v8, :cond_4

    .line 1226
    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 1227
    .local v1, daBottom:I
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v8

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v9

    add-int/2addr v8, v9

    iget v9, p0, Landroid/view/View;->mPaddingBottom:I

    sub-int v5, v8, v9

    .line 1228
    .local v5, screenBottom:I
    sub-int v8, v1, v5

    if-ge v8, v3, :cond_4

    .line 1229
    sub-int v6, v1, v5

    goto :goto_1

    .line 1236
    .end local v1           #daBottom:I
    .end local v5           #screenBottom:I
    :cond_6
    neg-int v7, v6

    goto :goto_2
.end method

.method public canScrollVertically(I)Z
    .locals 2
    .parameter "direction"

    .prologue
    const/4 v1, 0x1

    .line 2021
    invoke-virtual {p0}, Landroid/view/View;->getOverScrollMode()I

    move-result v0

    .line 2022
    .local v0, overScrollMode:I
    if-nez v0, :cond_0

    .line 2027
    :goto_0
    return v1

    .line 2024
    :cond_0
    if-ne v0, v1, :cond_1

    .line 2025
    invoke-direct {p0}, Landroid/widget/ScrollView;->canScroll()Z

    move-result v1

    goto :goto_0

    .line 2027
    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v1

    goto :goto_0
.end method

.method protected clearOverScroll()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 2128
    iget-boolean v0, p0, Landroid/widget/ScrollView;->mShouldDelaySpringBack:Z

    if-nez v0, :cond_0

    iget v0, p0, Landroid/widget/ScrollView;->mCurrentOverScrollDistance:I

    if-eqz v0, :cond_0

    .line 2129
    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v6

    .line 2130
    .local v6, bottom:I
    iget-object v0, p0, Landroid/widget/ScrollView;->mScroller:Lcom/meizu/widget/MzOverScroller;

    iget v1, p0, Landroid/view/View;->mScrollX:I

    iget v2, p0, Landroid/view/View;->mScrollY:I

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v6}, Lcom/meizu/widget/MzOverScroller;->springBack(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2131
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ScrollView;->mOverFling:Z

    .line 2132
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 2135
    .end local v6           #bottom:I
    :cond_0
    return-void
.end method

.method public computeScroll()V
    .locals 15

    .prologue
    const/4 v11, 0x1

    const/4 v5, 0x0

    .line 1393
    iget-object v0, p0, Landroid/widget/ScrollView;->mScroller:Lcom/meizu/widget/MzOverScroller;

    invoke-virtual {v0}, Lcom/meizu/widget/MzOverScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1410
    iget v3, p0, Landroid/view/View;->mScrollX:I

    .line 1411
    .local v3, oldX:I
    iget v4, p0, Landroid/view/View;->mScrollY:I

    .line 1412
    .local v4, oldY:I
    iget-object v0, p0, Landroid/widget/ScrollView;->mScroller:Lcom/meizu/widget/MzOverScroller;

    invoke-virtual {v0}, Lcom/meizu/widget/MzOverScroller;->getCurrX()I

    move-result v13

    .line 1413
    .local v13, x:I
    iget-object v0, p0, Landroid/widget/ScrollView;->mScroller:Lcom/meizu/widget/MzOverScroller;

    invoke-virtual {v0}, Lcom/meizu/widget/MzOverScroller;->getCurrY()I

    move-result v14

    .line 1415
    .local v14, y:I
    if-ne v3, v13, :cond_0

    if-eq v4, v14, :cond_2

    .line 1416
    :cond_0
    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v6

    .line 1417
    .local v6, range:I
    invoke-virtual {p0}, Landroid/view/View;->getOverScrollMode()I

    move-result v12

    .line 1418
    .local v12, overscrollMode:I
    if-eqz v12, :cond_1

    if-ne v12, v11, :cond_4

    if-lez v6, :cond_4

    .line 1421
    .local v11, canOverscroll:Z
    :cond_1
    :goto_0
    sub-int v1, v13, v3

    sub-int v2, v14, v4

    iget v8, p0, Landroid/widget/ScrollView;->mOverflingDistance:I

    move-object v0, p0

    move v7, v5

    move v9, v5

    invoke-virtual/range {v0 .. v9}, Landroid/view/View;->overScrollBy(IIIIIIIIZ)Z

    move-result v10

    .line 1423
    .local v10, atEdge:Z
    iget v0, p0, Landroid/view/View;->mScrollX:I

    iget v1, p0, Landroid/view/View;->mScrollY:I

    invoke-virtual {p0, v0, v1, v3, v4}, Landroid/view/View;->onScrollChanged(IIII)V

    .line 1425
    if-eqz v10, :cond_2

    if-nez v11, :cond_2

    .line 1426
    iget-object v0, p0, Landroid/widget/ScrollView;->mScroller:Lcom/meizu/widget/MzOverScroller;

    invoke-virtual {v0}, Lcom/meizu/widget/MzOverScroller;->abortAnimation()V

    .line 1438
    .end local v6           #range:I
    .end local v10           #atEdge:Z
    .end local v11           #canOverscroll:Z
    .end local v12           #overscrollMode:I
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->awakenScrollBars()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1440
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 1452
    .end local v3           #oldX:I
    .end local v4           #oldY:I
    .end local v13           #x:I
    .end local v14           #y:I
    :cond_3
    :goto_1
    return-void

    .restart local v3       #oldX:I
    .restart local v4       #oldY:I
    .restart local v6       #range:I
    .restart local v12       #overscrollMode:I
    .restart local v13       #x:I
    .restart local v14       #y:I
    :cond_4
    move v11, v5

    .line 1418
    goto :goto_0

    .line 1443
    .end local v3           #oldX:I
    .end local v4           #oldY:I
    .end local v6           #range:I
    .end local v12           #overscrollMode:I
    .end local v13           #x:I
    .end local v14           #y:I
    :cond_5
    iget-object v0, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v0, :cond_6

    .line 1444
    iget-object v0, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v0}, Landroid/os/StrictMode$Span;->finish()V

    .line 1445
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 1447
    :cond_6
    iput-boolean v5, p0, Landroid/widget/ScrollView;->mOverFling:Z

    .line 1448
    iget v0, p0, Landroid/widget/ScrollView;->mLastScrollState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 1449
    invoke-virtual {p0, v5}, Landroid/widget/ScrollView;->reportScrollStateChange(I)V

    goto :goto_1
.end method

.method protected computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I
    .locals 10
    .parameter "rect"

    .prologue
    const/4 v7, 0x0

    .line 1502
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    if-nez v8, :cond_1

    move v6, v7

    .line 1556
    :cond_0
    :goto_0
    return v6

    .line 1504
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 1505
    .local v3, height:I
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v5

    .line 1506
    .local v5, screenTop:I
    add-int v4, v5, v3

    .line 1508
    .local v4, screenBottom:I
    invoke-virtual {p0}, Landroid/view/View;->getVerticalFadingEdgeLength()I

    move-result v2

    .line 1511
    .local v2, fadingEdge:I
    iget v8, p1, Landroid/graphics/Rect;->top:I

    if-lez v8, :cond_2

    .line 1512
    add-int/2addr v5, v2

    .line 1516
    :cond_2
    iget v8, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v9

    if-ge v8, v9, :cond_3

    .line 1517
    sub-int/2addr v4, v2

    .line 1520
    :cond_3
    const/4 v6, 0x0

    .line 1522
    .local v6, scrollYDelta:I
    iget v8, p1, Landroid/graphics/Rect;->bottom:I

    if-le v8, v4, :cond_5

    iget v8, p1, Landroid/graphics/Rect;->top:I

    if-le v8, v5, :cond_5

    .line 1527
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v8

    if-le v8, v3, :cond_4

    .line 1529
    iget v8, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v5

    add-int/2addr v6, v8

    .line 1536
    :goto_1
    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 1537
    .local v0, bottom:I
    sub-int v1, v0, v4

    .line 1538
    .local v1, distanceToBottom:I
    invoke-static {v6, v1}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 1540
    goto :goto_0

    .line 1532
    .end local v0           #bottom:I
    .end local v1           #distanceToBottom:I
    :cond_4
    iget v8, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v4

    add-int/2addr v6, v8

    goto :goto_1

    .line 1540
    :cond_5
    iget v7, p1, Landroid/graphics/Rect;->top:I

    if-ge v7, v5, :cond_0

    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    if-ge v7, v4, :cond_0

    .line 1545
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    if-le v7, v3, :cond_6

    .line 1547
    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    sub-int v7, v4, v7

    sub-int/2addr v6, v7

    .line 1554
    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v7

    neg-int v7, v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    goto :goto_0

    .line 1550
    :cond_6
    iget v7, p1, Landroid/graphics/Rect;->top:I

    sub-int v7, v5, v7

    sub-int/2addr v6, v7

    goto :goto_2
.end method

.method protected computeVerticalScrollOffset()I
    .locals 2

    .prologue
    .line 1359
    const/4 v0, 0x0

    invoke-super {p0}, Landroid/view/View;->computeVerticalScrollOffset()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected computeVerticalScrollRange()I
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1339
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 1340
    .local v1, count:I
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    iget v6, p0, Landroid/view/View;->mPaddingBottom:I

    sub-int/2addr v5, v6

    iget v6, p0, Landroid/view/View;->mPaddingTop:I

    sub-int v0, v5, v6

    .line 1341
    .local v0, contentHeight:I
    if-nez v1, :cond_0

    .line 1354
    .end local v0           #contentHeight:I
    :goto_0
    return v0

    .line 1345
    .restart local v0       #contentHeight:I
    :cond_0
    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v3

    .line 1346
    .local v3, scrollRange:I
    iget v4, p0, Landroid/view/View;->mScrollY:I

    .line 1347
    .local v4, scrollY:I
    sub-int v5, v3, v0

    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1348
    .local v2, overscrollBottom:I
    if-gez v4, :cond_2

    .line 1349
    sub-int/2addr v3, v4

    :cond_1
    :goto_1
    move v0, v3

    .line 1354
    goto :goto_0

    .line 1350
    :cond_2
    if-le v4, v2, :cond_1

    .line 1351
    sub-int v5, v4, v2

    add-int/2addr v3, v5

    goto :goto_1
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 11
    .parameter "canvas"

    .prologue
    const/4 v5, 0x0

    .line 205
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 207
    iget-boolean v6, p0, Landroid/widget/ScrollView;->mEnableTopShadow:Z

    if-eqz v6, :cond_4

    .line 208
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 209
    .local v1, count:I
    iget v6, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v6, v6, 0x22

    const/16 v7, 0x22

    if-ne v6, v7, :cond_1

    const/4 v0, 0x1

    .line 210
    .local v0, clipToPadding:Z
    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    .line 211
    .local v2, listTop:I
    :goto_1
    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 214
    .local v4, view:Landroid/view/View;
    instance-of v6, v4, Landroid/widget/ListView;

    if-nez v6, :cond_0

    instance-of v6, v4, Landroid/widget/GridView;

    if-eqz v6, :cond_3

    .line 231
    .end local v0           #clipToPadding:Z
    .end local v1           #count:I
    .end local v2           #listTop:I
    .end local v4           #view:Landroid/view/View;
    :cond_0
    :goto_2
    return-void

    .restart local v1       #count:I
    :cond_1
    move v0, v5

    .line 209
    goto :goto_0

    .restart local v0       #clipToPadding:Z
    :cond_2
    move v2, v5

    .line 210
    goto :goto_1

    .line 218
    .restart local v2       #listTop:I
    .restart local v4       #view:Landroid/view/View;
    :cond_3
    if-eqz v1, :cond_4

    if-eqz v4, :cond_4

    iget v6, p0, Landroid/view/View;->mScrollY:I

    if-ge v2, v6, :cond_4

    .line 219
    iget-object v6, p0, Landroid/widget/ScrollView;->mTopShadowLight:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_4

    .line 220
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    .line 221
    .local v3, restoreCount:I
    iget-object v6, p0, Landroid/widget/ScrollView;->mTopShadowLight:Landroid/graphics/drawable/Drawable;

    iget v7, p0, Landroid/view/View;->mScrollY:I

    add-int/2addr v7, v2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v8

    iget-object v9, p0, Landroid/widget/ScrollView;->mTopShadowLight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    iget v10, p0, Landroid/view/View;->mScrollY:I

    add-int/2addr v9, v10

    add-int/2addr v9, v2

    invoke-virtual {v6, v5, v7, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 222
    iget-object v5, p0, Landroid/widget/ScrollView;->mTopShadowLight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 223
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 228
    .end local v0           #clipToPadding:Z
    .end local v1           #count:I
    .end local v2           #listTop:I
    .end local v3           #restoreCount:I
    .end local v4           #view:Landroid/view/View;
    :cond_4
    iget-object v5, p0, Landroid/widget/ScrollView;->mHoldIndicator:Lcom/meizu/widget/MzListHoldIndicator;

    if-eqz v5, :cond_0

    .line 229
    iget-object v5, p0, Landroid/widget/ScrollView;->mHoldIndicator:Lcom/meizu/widget/MzListHoldIndicator;

    invoke-virtual {v5, p1}, Lcom/meizu/widget/MzListHoldIndicator;->draw(Landroid/graphics/Canvas;)V

    goto :goto_2
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 414
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchStatusBarTap()Z
    .locals 1

    .prologue
    .line 1846
    invoke-virtual {p0}, Landroid/widget/ScrollView;->onStatusBarTapScrollTop()Z

    move-result v0

    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "ev"

    .prologue
    const/4 v6, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 1979
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 1980
    .local v1, handled:Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1982
    .local v0, action:I
    iget-boolean v2, p0, Landroid/widget/ScrollView;->mShouldDelaySpringBack:Z

    if-eqz v2, :cond_6

    .line 1983
    if-nez v0, :cond_1

    .line 1984
    iget v2, p0, Landroid/widget/ScrollView;->mCurrentOverScrollDistance:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v3, p0, Landroid/widget/ScrollView;->mHoldDistance:I

    if-ge v2, v3, :cond_5

    .line 1986
    iget-object v2, p0, Landroid/widget/ScrollView;->mHoldIndicator:Lcom/meizu/widget/MzListHoldIndicator;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/widget/ScrollView;->mHoldIndicator:Lcom/meizu/widget/MzListHoldIndicator;

    invoke-virtual {v2}, Lcom/meizu/widget/MzListHoldIndicator;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1987
    iget-object v2, p0, Landroid/widget/ScrollView;->mHoldIndicator:Lcom/meizu/widget/MzListHoldIndicator;

    invoke-virtual {v2}, Lcom/meizu/widget/MzListHoldIndicator;->hide()V

    .line 1989
    :cond_0
    iput-boolean v4, p0, Landroid/widget/ScrollView;->mWaitingForDelaySpringBack:Z

    .line 1990
    iput-boolean v4, p0, Landroid/widget/ScrollView;->mShouldDelaySpringBack:Z

    .line 1991
    iput-boolean v5, p0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    .line 1992
    iget-object v2, p0, Landroid/widget/ScrollView;->mDelaySpringBack:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1998
    :cond_1
    :goto_0
    if-eq v0, v6, :cond_2

    if-ne v0, v5, :cond_4

    .line 2000
    :cond_2
    iget-boolean v2, p0, Landroid/widget/ScrollView;->mWaitingForSpringBack:Z

    if-nez v2, :cond_3

    .line 2002
    iput-boolean v5, p0, Landroid/widget/ScrollView;->mWaitingForSpringBack:Z

    .line 2003
    iget-object v2, p0, Landroid/widget/ScrollView;->mDelaySpringBack:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2004
    iget-object v2, p0, Landroid/widget/ScrollView;->mDelaySpringBack:Ljava/lang/Runnable;

    sget v3, Landroid/widget/ScrollView;->SPRINGBACK_DELAY_DURATION:I

    int-to-long v3, v3

    invoke-virtual {p0, v2, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2005
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 2007
    :cond_3
    iget-object v2, p0, Landroid/widget/ScrollView;->mCheckDelaySpringBack:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2016
    :cond_4
    :goto_1
    return v1

    .line 1993
    :cond_5
    iget-boolean v2, p0, Landroid/widget/ScrollView;->mWaitingForSpringBack:Z

    if-eqz v2, :cond_1

    .line 1996
    iget-object v2, p0, Landroid/widget/ScrollView;->mCheckDelaySpringBack:Ljava/lang/Runnable;

    sget v3, Landroid/widget/ScrollView;->CHECK_SPRINGBACK_DURATION:I

    int-to-long v3, v3

    invoke-virtual {p0, v2, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 2009
    :cond_6
    iget-boolean v2, p0, Landroid/widget/ScrollView;->mWaitingForDelaySpringBack:Z

    if-eqz v2, :cond_4

    .line 2010
    if-eq v0, v6, :cond_7

    if-ne v0, v5, :cond_4

    .line 2013
    :cond_7
    iget-object v2, p0, Landroid/widget/ScrollView;->mCheckDelaySpringBack:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 1780
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 1810
    return-void
.end method

.method public executeKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 7
    .parameter "event"

    .prologue
    const/4 v3, 0x0

    const/16 v4, 0x21

    const/16 v5, 0x82

    .line 426
    iget-object v6, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->setEmpty()V

    .line 428
    invoke-direct {p0}, Landroid/widget/ScrollView;->canScroll()Z

    move-result v6

    if-nez v6, :cond_2

    .line 429
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    const/4 v6, 0x4

    if-eq v4, v6, :cond_1

    .line 430
    invoke-virtual {p0}, Landroid/view/ViewGroup;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 431
    .local v0, currentFocused:Landroid/view/View;
    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    .line 432
    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v4

    invoke-virtual {v4, p0, v0, v5}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    .line 434
    .local v2, nextFocused:Landroid/view/View;
    if-eqz v2, :cond_1

    if-eq v2, p0, :cond_1

    invoke-virtual {v2, v5}, Landroid/view/View;->requestFocus(I)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v3, 0x1

    .line 464
    .end local v0           #currentFocused:Landroid/view/View;
    .end local v2           #nextFocused:Landroid/view/View;
    :cond_1
    :goto_0
    return v3

    .line 441
    :cond_2
    const/4 v1, 0x0

    .line 442
    .local v1, handled:Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_3

    .line 443
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_3
    :goto_1
    move v3, v1

    .line 464
    goto :goto_0

    .line 445
    :sswitch_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v3

    if-nez v3, :cond_4

    .line 446
    invoke-virtual {p0, v4}, Landroid/widget/ScrollView;->arrowScroll(I)Z

    move-result v1

    goto :goto_1

    .line 448
    :cond_4
    invoke-virtual {p0, v4}, Landroid/widget/ScrollView;->fullScroll(I)Z

    move-result v1

    .line 450
    goto :goto_1

    .line 452
    :sswitch_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v3

    if-nez v3, :cond_5

    .line 453
    invoke-virtual {p0, v5}, Landroid/widget/ScrollView;->arrowScroll(I)Z

    move-result v1

    goto :goto_1

    .line 455
    :cond_5
    invoke-virtual {p0, v5}, Landroid/widget/ScrollView;->fullScroll(I)Z

    move-result v1

    .line 457
    goto :goto_1

    .line 459
    :sswitch_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v3

    if-eqz v3, :cond_6

    move v3, v4

    :goto_2
    invoke-virtual {p0, v3}, Landroid/widget/ScrollView;->pageScroll(I)Z

    goto :goto_1

    :cond_6
    move v3, v5

    goto :goto_2

    .line 443
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_1
        0x3e -> :sswitch_2
    .end sparse-switch
.end method

.method public fling(I)V
    .locals 13
    .parameter "velocityY"

    .prologue
    const/4 v3, 0x0

    .line 1712
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 1713
    iput-boolean v3, p0, Landroid/widget/ScrollView;->mOverFling:Z

    .line 1714
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget v1, p0, Landroid/view/View;->mPaddingBottom:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/view/View;->mPaddingTop:I

    sub-int v12, v0, v1

    .line 1715
    .local v12, height:I
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v11

    .line 1717
    .local v11, bottom:I
    iget-object v0, p0, Landroid/widget/ScrollView;->mScroller:Lcom/meizu/widget/MzOverScroller;

    iget v1, p0, Landroid/view/View;->mScrollX:I

    iget v2, p0, Landroid/view/View;->mScrollY:I

    sub-int v4, v11, v12

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v8

    div-int/lit8 v10, v12, 0x2

    move v4, p1

    move v5, v3

    move v6, v3

    move v7, v3

    move v9, v3

    invoke-virtual/range {v0 .. v10}, Lcom/meizu/widget/MzOverScroller;->fling(IIIIIIIIII)V

    .line 1720
    iget-object v0, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    if-nez v0, :cond_0

    .line 1721
    const-string v0, "ScrollView-fling"

    invoke-static {v0}, Landroid/os/StrictMode;->enterCriticalSpan(Ljava/lang/String;)Landroid/os/StrictMode$Span;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 1724
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 1726
    .end local v11           #bottom:I
    .end local v12           #height:I
    :cond_1
    return-void
.end method

.method public fullScroll(I)Z
    .locals 7
    .parameter "direction"

    .prologue
    const/4 v4, 0x0

    .line 1141
    const/16 v5, 0x82

    if-ne p1, v5, :cond_1

    const/4 v1, 0x1

    .line 1142
    .local v1, down:Z
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 1144
    .local v2, height:I
    iget-object v5, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v4, v5, Landroid/graphics/Rect;->top:I

    .line 1145
    iget-object v4, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v2, v4, Landroid/graphics/Rect;->bottom:I

    .line 1147
    if-eqz v1, :cond_0

    .line 1148
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 1149
    .local v0, count:I
    if-lez v0, :cond_0

    .line 1150
    add-int/lit8 v4, v0, -0x1

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1151
    .local v3, view:Landroid/view/View;
    iget-object v4, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v5

    iget v6, p0, Landroid/view/View;->mPaddingBottom:I

    add-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 1152
    iget-object v4, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget-object v5, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v2

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 1156
    .end local v0           #count:I
    .end local v3           #view:Landroid/view/View;
    :cond_0
    iget-object v4, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, p1, v4, v5}, Landroid/widget/ScrollView;->scrollAndFocus(III)Z

    move-result v4

    return v4

    .end local v1           #down:Z
    .end local v2           #height:I
    :cond_1
    move v1, v4

    .line 1141
    goto :goto_0
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 5

    .prologue
    .line 249
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-nez v3, :cond_0

    .line 250
    const/4 v3, 0x0

    .line 260
    :goto_0
    return v3

    .line 253
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getVerticalFadingEdgeLength()I

    move-result v1

    .line 254
    .local v1, length:I
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    iget v4, p0, Landroid/view/View;->mPaddingBottom:I

    sub-int v0, v3, v4

    .line 255
    .local v0, bottomEdge:I
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    iget v4, p0, Landroid/view/View;->mScrollY:I

    sub-int/2addr v3, v4

    sub-int v2, v3, v0

    .line 256
    .local v2, span:I
    if-ge v2, v1, :cond_1

    .line 257
    int-to-float v3, v2

    int-to-float v4, v1

    div-float/2addr v3, v4

    goto :goto_0

    .line 260
    :cond_1
    const/high16 v3, 0x3f80

    goto :goto_0
.end method

.method public getMaxScrollAmount()I
    .locals 3

    .prologue
    .line 268
    const/high16 v0, 0x3f00

    iget v1, p0, Landroid/view/View;->mBottom:I

    iget v2, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getScrollRangeMz()I
    .locals 1

    .prologue
    .line 2154
    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v0

    return v0
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 3

    .prologue
    .line 235
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 236
    const/4 v1, 0x0

    .line 244
    :goto_0
    return v1

    .line 239
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getVerticalFadingEdgeLength()I

    move-result v0

    .line 240
    .local v0, length:I
    iget v1, p0, Landroid/view/View;->mScrollY:I

    if-ge v1, v0, :cond_1

    .line 241
    iget v1, p0, Landroid/view/View;->mScrollY:I

    int-to-float v1, v1

    int-to-float v2, v0

    div-float/2addr v1, v2

    goto :goto_0

    .line 244
    :cond_1
    const/high16 v1, 0x3f80

    goto :goto_0
.end method

.method public isDelayTopOverScrollEnabled()Z
    .locals 1

    .prologue
    .line 1958
    iget-boolean v0, p0, Landroid/widget/ScrollView;->mDelaySpringBackEnabled:Z

    return v0
.end method

.method public isFillViewport()Z
    .locals 1

    .prologue
    .line 346
    iget-boolean v0, p0, Landroid/widget/ScrollView;->mFillViewport:Z

    return v0
.end method

.method public isSmoothScrollingEnabled()Z
    .locals 1

    .prologue
    .line 369
    iget-boolean v0, p0, Landroid/widget/ScrollView;->mSmoothScrollingEnabled:Z

    return v0
.end method

.method protected measureChild(Landroid/view/View;II)V
    .locals 6
    .parameter "child"
    .parameter "parentWidthMeasureSpec"
    .parameter "parentHeightMeasureSpec"

    .prologue
    const/4 v5, 0x0

    .line 1364
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 1369
    .local v2, lp:Landroid/view/ViewGroup$LayoutParams;
    iget v3, p0, Landroid/view/View;->mPaddingLeft:I

    iget v4, p0, Landroid/view/View;->mPaddingRight:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p2, v3, v4}, Landroid/widget/ScrollView;->getChildMeasureSpec(III)I

    move-result v1

    .line 1372
    .local v1, childWidthMeasureSpec:I
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1374
    .local v0, childHeightMeasureSpec:I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 1375
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
    .line 1380
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1382
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

    invoke-static {p2, v3, v4}, Landroid/widget/ScrollView;->getChildMeasureSpec(III)I

    move-result v1

    .line 1385
    .local v1, childWidthMeasureSpec:I
    iget v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v3, v4

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1388
    .local v0, childHeightMeasureSpec:I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 1389
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 1893
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 1894
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ScrollView;->mNeedRestoreOverScroll:Z

    .line 1895
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1624
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 1626
    iget-object v0, p0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v0, :cond_0

    .line 1627
    iget-object v0, p0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v0}, Landroid/os/StrictMode$Span;->finish()V

    .line 1628
    iput-object v1, p0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 1630
    :cond_0
    iget-object v0, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v0, :cond_1

    .line 1631
    iget-object v0, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v0}, Landroid/os/StrictMode$Span;->finish()V

    .line 1632
    iput-object v1, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 1635
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/ScrollView;->mNeedRestoreOverScroll:Z

    .line 1636
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "event"

    .prologue
    .line 831
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v5

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_0

    .line 832
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 855
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    :goto_0
    return v5

    .line 834
    :pswitch_0
    iget-boolean v5, p0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    if-nez v5, :cond_0

    .line 835
    const/16 v5, 0x9

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v4

    .line 836
    .local v4, vscroll:F
    const/4 v5, 0x0

    cmpl-float v5, v4, v5

    if-eqz v5, :cond_0

    .line 837
    invoke-virtual {p0}, Landroid/view/View;->getVerticalScrollFactor()F

    move-result v5

    mul-float/2addr v5, v4

    float-to-int v0, v5

    .line 838
    .local v0, delta:I
    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v3

    .line 839
    .local v3, range:I
    iget v2, p0, Landroid/view/View;->mScrollY:I

    .line 840
    .local v2, oldScrollY:I
    sub-int v1, v2, v0

    .line 841
    .local v1, newScrollY:I
    if-gez v1, :cond_2

    .line 842
    const/4 v1, 0x0

    .line 846
    :cond_1
    :goto_1
    if-eq v1, v2, :cond_0

    .line 847
    iget v5, p0, Landroid/view/View;->mScrollX:I

    invoke-super {p0, v5, v1}, Landroid/view/View;->scrollTo(II)V

    .line 848
    const/4 v5, 0x1

    goto :goto_0

    .line 843
    :cond_2
    if-le v1, v3, :cond_1

    .line 844
    move v1, v3

    goto :goto_1

    .line 832
    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .parameter "event"

    .prologue
    .line 989
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 990
    const-class v1, Landroid/widget/ScrollView;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    .line 991
    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 992
    .local v0, scrollable:Z
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setScrollable(Z)V

    .line 993
    iget v1, p0, Landroid/view/View;->mScrollX:I

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityRecord;->setScrollX(I)V

    .line 994
    iget v1, p0, Landroid/view/View;->mScrollY:I

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityRecord;->setScrollY(I)V

    .line 995
    iget v1, p0, Landroid/view/View;->mScrollX:I

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityRecord;->setMaxScrollX(I)V

    .line 996
    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityRecord;->setMaxScrollY(I)V

    .line 997
    return-void

    .line 991
    .end local v0           #scrollable:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2
    .parameter "info"

    .prologue
    .line 971
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 972
    const-class v1, Landroid/widget/ScrollView;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 973
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 974
    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v0

    .line 975
    .local v0, scrollRange:I
    if-lez v0, :cond_1

    .line 976
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 977
    iget v1, p0, Landroid/view/View;->mScrollY:I

    if-lez v1, :cond_0

    .line 978
    const/16 v1, 0x2000

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 980
    :cond_0
    iget v1, p0, Landroid/view/View;->mScrollY:I

    if-ge v1, v0, :cond_1

    .line 981
    const/16 v1, 0x1000

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 985
    .end local v0           #scrollRange:I
    :cond_1
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .parameter "ev"

    .prologue
    const/4 v2, -0x1

    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 522
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    .line 523
    .local v7, action:I
    const/4 v1, 0x2

    if-ne v7, v1, :cond_0

    iget-boolean v1, p0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    if-eqz v1, :cond_0

    .line 627
    :goto_0
    return v0

    .line 530
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->canScrollVertically(I)Z

    move-result v1

    if-nez v1, :cond_1

    move v0, v3

    .line 531
    goto :goto_0

    .line 534
    :cond_1
    and-int/lit16 v1, v7, 0xff

    packed-switch v1, :pswitch_data_0

    .line 627
    :cond_2
    :goto_1
    :pswitch_0
    iget-boolean v0, p0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    goto :goto_0

    .line 545
    :pswitch_1
    iget v8, p0, Landroid/widget/ScrollView;->mActivePointerId:I

    .line 546
    .local v8, activePointerId:I
    if-eq v8, v2, :cond_2

    .line 551
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v10

    .line 552
    .local v10, pointerIndex:I
    if-ne v10, v2, :cond_3

    .line 553
    const-string v0, "ScrollView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid pointerId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in onInterceptTouchEvent"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 558
    :cond_3
    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v11, v1

    .line 559
    .local v11, y:I
    iget v1, p0, Landroid/widget/ScrollView;->mLastMotionY:I

    sub-int v1, v11, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v12

    .line 560
    .local v12, yDiff:I
    iget v1, p0, Landroid/widget/ScrollView;->mTouchSlop:I

    if-le v12, v1, :cond_2

    .line 561
    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->reportScrollStateChange(I)V

    .line 562
    iput-boolean v0, p0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    .line 563
    iput v11, p0, Landroid/widget/ScrollView;->mLastMotionY:I

    .line 564
    invoke-direct {p0}, Landroid/widget/ScrollView;->initVelocityTrackerIfNotExists()V

    .line 565
    iget-object v1, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 566
    iget-object v1, p0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    if-nez v1, :cond_4

    .line 567
    const-string v1, "ScrollView-scroll"

    invoke-static {v1}, Landroid/os/StrictMode;->enterCriticalSpan(Ljava/lang/String;)Landroid/os/StrictMode$Span;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 569
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    .line 570
    .local v9, parent:Landroid/view/ViewParent;
    if-eqz v9, :cond_2

    .line 571
    invoke-interface {v9, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_1

    .line 578
    .end local v8           #activePointerId:I
    .end local v9           #parent:Landroid/view/ViewParent;
    .end local v10           #pointerIndex:I
    .end local v11           #y:I
    .end local v12           #yDiff:I
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v11, v1

    .line 579
    .restart local v11       #y:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-direct {p0, v1, v11}, Landroid/widget/ScrollView;->inChild(II)Z

    move-result v1

    if-nez v1, :cond_5

    .line 580
    iput-boolean v3, p0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    .line 581
    invoke-direct {p0}, Landroid/widget/ScrollView;->recycleVelocityTracker()V

    goto :goto_1

    .line 589
    :cond_5
    iput v11, p0, Landroid/widget/ScrollView;->mLastMotionY:I

    .line 590
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Landroid/widget/ScrollView;->mActivePointerId:I

    .line 592
    invoke-direct {p0}, Landroid/widget/ScrollView;->initOrResetVelocityTracker()V

    .line 593
    iget-object v1, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 599
    iget-object v1, p0, Landroid/widget/ScrollView;->mScroller:Lcom/meizu/widget/MzOverScroller;

    invoke-virtual {v1}, Lcom/meizu/widget/MzOverScroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_6

    move v3, v0

    :cond_6
    iput-boolean v3, p0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    .line 600
    iget-boolean v0, p0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    if-nez v0, :cond_2

    .line 601
    const-string v0, "ScrollView-scroll"

    invoke-static {v0}, Landroid/os/StrictMode;->enterCriticalSpan(Ljava/lang/String;)Landroid/os/StrictMode$Span;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    goto/16 :goto_1

    .line 609
    .end local v11           #y:I
    :pswitch_3
    iput-boolean v3, p0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    .line 610
    iput v2, p0, Landroid/widget/ScrollView;->mActivePointerId:I

    .line 611
    invoke-direct {p0}, Landroid/widget/ScrollView;->recycleVelocityTracker()V

    .line 612
    iget-boolean v0, p0, Landroid/widget/ScrollView;->mShouldDelaySpringBack:Z

    if-nez v0, :cond_2

    .line 613
    iget-object v0, p0, Landroid/widget/ScrollView;->mScroller:Lcom/meizu/widget/MzOverScroller;

    iget v1, p0, Landroid/view/View;->mScrollX:I

    iget v2, p0, Landroid/view/View;->mScrollY:I

    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v6

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v6}, Lcom/meizu/widget/MzOverScroller;->springBack(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 614
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    goto/16 :goto_1

    .line 619
    :pswitch_4
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 534
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 12
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 1640
    const/4 v2, 0x0

    .line 1641
    .local v2, restoreOffset:I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->shouldRestoreOverScroll()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1642
    iget v2, p0, Landroid/widget/ScrollView;->mCurrentOverScrollDistance:I

    .line 1644
    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 1645
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/ScrollView;->mIsLayoutDirty:Z

    .line 1647
    iget-object v0, p0, Landroid/widget/ScrollView;->mChildToScrollTo:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/ScrollView;->mChildToScrollTo:Landroid/view/View;

    invoke-static {v0, p0}, Landroid/widget/ScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1648
    iget-object v0, p0, Landroid/widget/ScrollView;->mChildToScrollTo:Landroid/view/View;

    invoke-direct {p0, v0}, Landroid/widget/ScrollView;->scrollToChild(Landroid/view/View;)V

    .line 1650
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/ScrollView;->mChildToScrollTo:Landroid/view/View;

    .line 1653
    iget v0, p0, Landroid/view/View;->mScrollX:I

    iget v1, p0, Landroid/view/View;->mScrollY:I

    invoke-virtual {p0, v0, v1}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 1655
    if-eqz v2, :cond_2

    .line 1657
    iget v10, p0, Landroid/view/View;->mScrollX:I

    .line 1658
    .local v10, oldX:I
    iget v11, p0, Landroid/view/View;->mScrollY:I

    .line 1659
    .local v11, oldY:I
    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v6

    .line 1660
    .local v6, range:I
    const/4 v1, 0x0

    const/4 v3, 0x0

    iget v4, p0, Landroid/view/View;->mScrollY:I

    const/4 v5, 0x0

    const/4 v7, 0x0

    iget v8, p0, Landroid/widget/ScrollView;->mOverscrollDistance:I

    const/4 v9, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v9}, Landroid/view/View;->overScrollBy(IIIIIIIIZ)Z

    .line 1662
    iget v0, p0, Landroid/view/View;->mScrollX:I

    iget v1, p0, Landroid/view/View;->mScrollY:I

    invoke-virtual {p0, v0, v1, v10, v11}, Landroid/view/View;->onScrollChanged(IIII)V

    .line 1664
    .end local v6           #range:I
    .end local v10           #oldX:I
    .end local v11           #oldY:I
    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 8
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 382
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 384
    iget-boolean v6, p0, Landroid/widget/ScrollView;->mFillViewport:Z

    if-nez v6, :cond_1

    .line 409
    :cond_0
    :goto_0
    return-void

    .line 388
    :cond_1
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 389
    .local v4, heightMode:I
    if-eqz v4, :cond_0

    .line 393
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    if-lez v6, :cond_0

    .line 394
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 395
    .local v0, child:Landroid/view/View;
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 396
    .local v3, height:I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    if-ge v6, v3, :cond_0

    .line 397
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 399
    .local v5, lp:Landroid/widget/FrameLayout$LayoutParams;
    iget v6, p0, Landroid/view/View;->mPaddingLeft:I

    iget v7, p0, Landroid/view/View;->mPaddingRight:I

    add-int/2addr v6, v7

    iget v7, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p1, v6, v7}, Landroid/widget/ScrollView;->getChildMeasureSpec(III)I

    move-result v2

    .line 401
    .local v2, childWidthMeasureSpec:I
    iget v6, p0, Landroid/view/View;->mPaddingTop:I

    sub-int/2addr v3, v6

    .line 402
    iget v6, p0, Landroid/view/View;->mPaddingBottom:I

    sub-int/2addr v3, v6

    .line 403
    const/high16 v6, 0x4000

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 406
    .local v1, childHeightMeasureSpec:I
    invoke-virtual {v0, v2, v1}, Landroid/view/View;->measure(II)V

    goto :goto_0
.end method

.method protected onOverScrolled(IIZZ)V
    .locals 11
    .parameter "scrollX"
    .parameter "scrollY"
    .parameter "clampedX"
    .parameter "clampedY"

    .prologue
    .line 867
    iget-object v7, p0, Landroid/widget/ScrollView;->mScroller:Lcom/meizu/widget/MzOverScroller;

    invoke-virtual {v7}, Lcom/meizu/widget/MzOverScroller;->isFinished()Z

    move-result v7

    if-nez v7, :cond_4

    .line 868
    iput p1, p0, Landroid/view/View;->mScrollX:I

    .line 869
    iput p2, p0, Landroid/view/View;->mScrollY:I

    .line 871
    iget v7, p0, Landroid/widget/ScrollView;->mCurrentOverScrollDistance:I

    if-eqz v7, :cond_0

    iget-boolean v7, p0, Landroid/widget/ScrollView;->mOverFling:Z

    if-nez v7, :cond_0

    .line 872
    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/widget/ScrollView;->mOverFling:Z

    .line 873
    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v0

    .line 875
    .local v0, bottom:I
    iget v7, p0, Landroid/widget/ScrollView;->mCurrentOverScrollDistance:I

    if-gez v7, :cond_3

    .line 876
    iget-object v7, p0, Landroid/widget/ScrollView;->mScroller:Lcom/meizu/widget/MzOverScroller;

    iget v8, p0, Landroid/view/View;->mScrollY:I

    const/4 v9, 0x0

    iget v10, p0, Landroid/widget/ScrollView;->mOverflingDistance:I

    add-int/2addr v10, v0

    invoke-virtual {v7, v8, v9, v10}, Lcom/meizu/widget/MzOverScroller;->notifyVerticalEdgeReached(III)V

    .line 880
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 888
    .end local v0           #bottom:I
    :cond_0
    :goto_1
    const/4 v7, 0x0

    iput v7, p0, Landroid/widget/ScrollView;->mCurrentOverScrollDistance:I

    .line 889
    const/4 v4, 0x0

    .line 890
    .local v4, overScrollEdgeChanged:Z
    iget v7, p0, Landroid/view/View;->mScrollY:I

    if-gez v7, :cond_6

    .line 891
    iput p2, p0, Landroid/widget/ScrollView;->mCurrentOverScrollDistance:I

    .line 892
    iget-boolean v7, p0, Landroid/widget/ScrollView;->mWaitingForDelaySpringBack:Z

    if-eqz v7, :cond_5

    .line 893
    iget v7, p0, Landroid/widget/ScrollView;->mCurrentOverScrollDistance:I

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    iget v8, p0, Landroid/widget/ScrollView;->mHoldDistance:I

    if-ge v7, v8, :cond_1

    .line 894
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/widget/ScrollView;->mWaitingForDelaySpringBack:Z

    .line 895
    const/4 v4, 0x1

    .line 921
    :cond_1
    :goto_2
    iget-object v7, p0, Landroid/widget/ScrollView;->mHoldIndicator:Lcom/meizu/widget/MzListHoldIndicator;

    if-eqz v7, :cond_2

    iget-boolean v7, p0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    if-eqz v7, :cond_2

    .line 922
    if-eqz v4, :cond_2

    .line 923
    iget v7, p0, Landroid/widget/ScrollView;->mCurrentOverScrollDistance:I

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    iget v8, p0, Landroid/widget/ScrollView;->mHoldDistance:I

    if-lt v7, v8, :cond_8

    .line 926
    iget-object v7, p0, Landroid/widget/ScrollView;->mCheckDelaySpringBack:Ljava/lang/Runnable;

    sget v8, Landroid/widget/ScrollView;->CHECK_SPRINGBACK_DURATION:I

    int-to-long v8, v8

    invoke-virtual {p0, v7, v8, v9}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 937
    :cond_2
    :goto_3
    invoke-virtual {p0}, Landroid/view/View;->awakenScrollBars()Z

    .line 938
    return-void

    .line 878
    .end local v4           #overScrollEdgeChanged:Z
    .restart local v0       #bottom:I
    :cond_3
    iget-object v7, p0, Landroid/widget/ScrollView;->mScroller:Lcom/meizu/widget/MzOverScroller;

    iget v8, p0, Landroid/view/View;->mScrollY:I

    iget v9, p0, Landroid/widget/ScrollView;->mOverflingDistance:I

    add-int/2addr v9, v0

    invoke-virtual {v7, v8, v0, v9}, Lcom/meizu/widget/MzOverScroller;->notifyVerticalEdgeReached(III)V

    goto :goto_0

    .line 884
    .end local v0           #bottom:I
    :cond_4
    invoke-super {p0, p1, p2}, Landroid/view/View;->scrollTo(II)V

    goto :goto_1

    .line 898
    .restart local v4       #overScrollEdgeChanged:Z
    :cond_5
    iget-boolean v7, p0, Landroid/widget/ScrollView;->mIsListAtWindowTop:Z

    if-eqz v7, :cond_1

    iget v7, p0, Landroid/widget/ScrollView;->mCurrentOverScrollDistance:I

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    iget v8, p0, Landroid/widget/ScrollView;->mHoldDistance:I

    if-lt v7, v8, :cond_1

    .line 900
    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/widget/ScrollView;->mWaitingForDelaySpringBack:Z

    .line 901
    const/4 v4, 0x1

    goto :goto_2

    .line 904
    :cond_6
    iget v7, p0, Landroid/view/View;->mScrollY:I

    if-lez v7, :cond_1

    .line 905
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 906
    .local v1, child:Landroid/view/View;
    if-eqz v1, :cond_1

    .line 907
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 908
    .local v3, height:I
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    .line 909
    .local v6, paddingTop:I
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    .line 910
    .local v5, paddingBottom:I
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 912
    .local v2, childHeight:I
    sub-int v7, v3, v6

    sub-int/2addr v7, v5

    if-le v2, v7, :cond_7

    iget v7, p0, Landroid/view/View;->mScrollY:I

    neg-int v7, v7

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v8

    add-int/2addr v7, v8

    sub-int v8, v3, v5

    if-ge v7, v8, :cond_7

    .line 914
    sub-int v7, v3, v5

    iget v8, p0, Landroid/view/View;->mScrollY:I

    neg-int v8, v8

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v9

    add-int/2addr v8, v9

    sub-int/2addr v7, v8

    iput v7, p0, Landroid/widget/ScrollView;->mCurrentOverScrollDistance:I

    goto :goto_2

    .line 915
    :cond_7
    sub-int v7, v3, v6

    sub-int/2addr v7, v5

    if-gt v2, v7, :cond_1

    .line 916
    iget v7, p0, Landroid/view/View;->mScrollY:I

    iput v7, p0, Landroid/widget/ScrollView;->mCurrentOverScrollDistance:I

    goto/16 :goto_2

    .line 928
    .end local v1           #child:Landroid/view/View;
    .end local v2           #childHeight:I
    .end local v3           #height:I
    .end local v5           #paddingBottom:I
    .end local v6           #paddingTop:I
    :cond_8
    iget-object v7, p0, Landroid/widget/ScrollView;->mCheckDelaySpringBack:Ljava/lang/Runnable;

    invoke-virtual {p0, v7}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 929
    iget-object v7, p0, Landroid/widget/ScrollView;->mHoldIndicator:Lcom/meizu/widget/MzListHoldIndicator;

    invoke-virtual {v7}, Lcom/meizu/widget/MzListHoldIndicator;->isShowing()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 930
    iget-object v7, p0, Landroid/widget/ScrollView;->mHoldIndicator:Lcom/meizu/widget/MzListHoldIndicator;

    invoke-virtual {v7}, Lcom/meizu/widget/MzListHoldIndicator;->hide()V

    .line 932
    :cond_9
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/widget/ScrollView;->mShouldDelaySpringBack:Z

    goto :goto_3
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 4
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    const/4 v1, 0x0

    .line 1584
    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    .line 1585
    const/16 p1, 0x82

    .line 1590
    :cond_0
    :goto_0
    if-nez p2, :cond_3

    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p0, v3, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 1595
    .local v0, nextFocus:Landroid/view/View;
    :goto_1
    if-nez v0, :cond_4

    .line 1603
    :cond_1
    :goto_2
    return v1

    .line 1586
    .end local v0           #nextFocus:Landroid/view/View;
    :cond_2
    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    .line 1587
    const/16 p1, 0x21

    goto :goto_0

    .line 1590
    :cond_3
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v2

    invoke-virtual {v2, p0, p2, p1}, Landroid/view/FocusFinder;->findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    .line 1599
    .restart local v0       #nextFocus:Landroid/view/View;
    :cond_4
    invoke-direct {p0, v0}, Landroid/widget/ScrollView;->isOffScreen(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1603
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v1

    goto :goto_2
.end method

.method protected onSizeChanged(IIII)V
    .locals 7
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1668
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 1670
    iget-boolean v5, p0, Landroid/widget/ScrollView;->mDelaySpringBackEnabled:Z

    if-eqz v5, :cond_0

    .line 1672
    const/4 v5, 0x2

    new-array v1, v5, [I

    .line 1673
    .local v1, location:[I
    invoke-virtual {p0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1674
    aget v5, v1, v3

    iget v6, p0, Landroid/widget/ScrollView;->mListWindowTop:I

    if-gt v5, v6, :cond_2

    :goto_0
    iput-boolean v3, p0, Landroid/widget/ScrollView;->mIsListAtWindowTop:Z

    .line 1677
    .end local v1           #location:[I
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 1678
    .local v0, currentFocused:Landroid/view/View;
    if-eqz v0, :cond_1

    if-ne p0, v0, :cond_3

    .line 1690
    :cond_1
    :goto_1
    return-void

    .end local v0           #currentFocused:Landroid/view/View;
    .restart local v1       #location:[I
    :cond_2
    move v3, v4

    .line 1674
    goto :goto_0

    .line 1684
    .end local v1           #location:[I
    .restart local v0       #currentFocused:Landroid/view/View;
    :cond_3
    invoke-direct {p0, v0, v4, p4}, Landroid/widget/ScrollView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1685
    iget-object v3, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1686
    iget-object v3, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v3}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1687
    iget-object v3, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v3}, Landroid/widget/ScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v2

    .line 1688
    .local v2, scrollDelta:I
    invoke-direct {p0, v2}, Landroid/widget/ScrollView;->doScrollY(I)V

    goto :goto_1
.end method

.method protected onStatusBarTapScrollTop()Z
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 1854
    iget-object v0, p0, Landroid/widget/ScrollView;->mScroller:Lcom/meizu/widget/MzOverScroller;

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/view/View;->mScrollY:I

    if-lez v0, :cond_0

    .line 1855
    iget-object v0, p0, Landroid/widget/ScrollView;->mScroller:Lcom/meizu/widget/MzOverScroller;

    iget v1, p0, Landroid/view/View;->mScrollX:I

    iget v2, p0, Landroid/view/View;->mScrollY:I

    move v4, v3

    move v5, v3

    move v6, v3

    invoke-virtual/range {v0 .. v6}, Lcom/meizu/widget/MzOverScroller;->springBack(IIIIII)Z

    .line 1856
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 1857
    const/4 v3, 0x1

    .line 1859
    :cond_0
    return v3
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 37
    .parameter "ev"

    .prologue
    .line 632
    invoke-direct/range {p0 .. p0}, Landroid/widget/ScrollView;->initVelocityTrackerIfNotExists()V

    .line 633
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 635
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v24

    .line 637
    .local v24, action:I
    move/from16 v0, v24

    and-int/lit16 v3, v0, 0xff

    packed-switch v3, :pswitch_data_0

    .line 809
    :cond_0
    :goto_0
    :pswitch_0
    const/4 v3, 0x1

    :goto_1
    return v3

    .line 639
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-nez v3, :cond_1

    .line 640
    const/4 v3, 0x0

    goto :goto_1

    .line 642
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/ScrollView;->mScroller:Lcom/meizu/widget/MzOverScroller;

    invoke-virtual {v3}, Lcom/meizu/widget/MzOverScroller;->isFinished()Z

    move-result v3

    if-nez v3, :cond_5

    const/4 v3, 0x1

    :goto_2
    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    if-eqz v3, :cond_2

    .line 655
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/ScrollView;->mScroller:Lcom/meizu/widget/MzOverScroller;

    invoke-virtual {v3}, Lcom/meizu/widget/MzOverScroller;->isFinished()Z

    move-result v3

    if-nez v3, :cond_4

    .line 656
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/ScrollView;->mScroller:Lcom/meizu/widget/MzOverScroller;

    invoke-virtual {v3}, Lcom/meizu/widget/MzOverScroller;->abortAnimation()V

    .line 657
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v3, :cond_3

    .line 658
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v3}, Landroid/os/StrictMode$Span;->finish()V

    .line 659
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 662
    :cond_3
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->reportScrollStateChange(I)V

    .line 666
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/ScrollView;->mLastMotionY:I

    .line 667
    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/ScrollView;->mActivePointerId:I

    goto :goto_0

    .line 642
    :cond_5
    const/4 v3, 0x0

    goto :goto_2

    .line 671
    :pswitch_2
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/ScrollView;->mActivePointerId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v25

    .line 672
    .local v25, activePointerIndex:I
    const/4 v3, -0x1

    move/from16 v0, v25

    if-ne v0, v3, :cond_6

    .line 673
    const-string v3, "ScrollView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid pointerId="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/ScrollView;->mActivePointerId:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " in onTouchEvent"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 677
    :cond_6
    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    float-to-int v0, v3

    move/from16 v36, v0

    .line 678
    .local v36, y:I
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/ScrollView;->mLastMotionY:I

    sub-int v28, v3, v36

    .line 679
    .local v28, deltaY:I
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    if-nez v3, :cond_8

    invoke-static/range {v28 .. v28}, Ljava/lang/Math;->abs(I)I

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/ScrollView;->mTouchSlop:I

    if-le v3, v4, :cond_8

    .line 680
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v34

    .line 681
    .local v34, parent:Landroid/view/ViewParent;
    if-eqz v34, :cond_7

    .line 682
    const/4 v3, 0x1

    move-object/from16 v0, v34

    invoke-interface {v0, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 684
    :cond_7
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->reportScrollStateChange(I)V

    .line 685
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    .line 686
    if-lez v28, :cond_d

    .line 687
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/ScrollView;->mTouchSlop:I

    sub-int v28, v28, v3

    .line 692
    .end local v34           #parent:Landroid/view/ViewParent;
    :cond_8
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    if-eqz v3, :cond_0

    .line 694
    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/ScrollView;->mLastMotionY:I

    .line 696
    move/from16 v5, v28

    .line 698
    .local v5, incrementalDeltaY:I
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/ScrollView;->mCurrentOverScrollDistance:I

    if-eqz v3, :cond_a

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/ScrollView;->mOverscrollDistance:I

    if-eqz v3, :cond_a

    if-eqz v5, :cond_a

    .line 700
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/ScrollView;->mCurrentOverScrollDistance:I

    mul-int v3, v3, v28

    if-lez v3, :cond_10

    .line 701
    const/high16 v3, 0x3f80

    const/high16 v4, 0x3f80

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/ScrollView;->mCurrentOverScrollDistance:I

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v4, v6

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/ScrollView;->mOverscrollDistance:I

    int-to-float v6, v6

    div-float/2addr v4, v6

    sub-float v27, v3, v4

    .line 702
    .local v27, coeff:F
    const/4 v3, 0x0

    cmpg-float v3, v27, v3

    if-gez v3, :cond_9

    const/16 v27, 0x0

    .line 703
    :cond_9
    int-to-float v3, v5

    mul-float v3, v3, v27

    float-to-int v5, v3

    .line 704
    if-lez v28, :cond_e

    .line 705
    if-nez v5, :cond_a

    const/4 v5, 0x1

    .line 714
    .end local v27           #coeff:F
    :cond_a
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move/from16 v31, v0

    .line 715
    .local v31, oldX:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v32, v0

    .line 716
    .local v32, oldY:I
    invoke-direct/range {p0 .. p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v9

    .line 717
    .local v9, range:I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getOverScrollMode()I

    move-result v33

    .line 718
    .local v33, overscrollMode:I
    if-eqz v33, :cond_b

    const/4 v3, 0x1

    move/from16 v0, v33

    if-ne v0, v3, :cond_11

    if-lez v9, :cond_11

    :cond_b
    const/16 v26, 0x1

    .line 721
    .local v26, canOverscroll:Z
    :goto_5
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Landroid/view/View;->mScrollY:I

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget v11, v0, Landroid/widget/ScrollView;->mOverscrollDistance:I

    const/4 v12, 0x1

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v12}, Landroid/view/View;->overScrollBy(IIIIIIIIZ)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 724
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 726
    :cond_c
    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mScrollX:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/View;->mScrollY:I

    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/view/View;->onScrollChanged(IIII)V

    goto/16 :goto_0

    .line 689
    .end local v5           #incrementalDeltaY:I
    .end local v9           #range:I
    .end local v26           #canOverscroll:Z
    .end local v31           #oldX:I
    .end local v32           #oldY:I
    .end local v33           #overscrollMode:I
    .restart local v34       #parent:Landroid/view/ViewParent;
    :cond_d
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/ScrollView;->mTouchSlop:I

    add-int v28, v28, v3

    goto/16 :goto_3

    .line 707
    .end local v34           #parent:Landroid/view/ViewParent;
    .restart local v5       #incrementalDeltaY:I
    .restart local v27       #coeff:F
    :cond_e
    if-nez v5, :cond_f

    const/4 v5, -0x1

    :cond_f
    goto :goto_4

    .line 710
    .end local v27           #coeff:F
    :cond_10
    div-int/lit8 v5, v5, 0x2

    goto :goto_4

    .line 718
    .restart local v9       #range:I
    .restart local v31       #oldX:I
    .restart local v32       #oldY:I
    .restart local v33       #overscrollMode:I
    :cond_11
    const/16 v26, 0x0

    goto :goto_5

    .line 749
    .end local v5           #incrementalDeltaY:I
    .end local v9           #range:I
    .end local v25           #activePointerIndex:I
    .end local v28           #deltaY:I
    .end local v31           #oldX:I
    .end local v32           #oldY:I
    .end local v33           #overscrollMode:I
    .end local v36           #y:I
    :pswitch_3
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    if-eqz v3, :cond_0

    .line 750
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v35, v0

    .line 751
    .local v35, velocityTracker:Landroid/view/VelocityTracker;
    const/16 v3, 0x3e8

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/ScrollView;->mMaximumVelocity:I

    int-to-float v4, v4

    move-object/from16 v0, v35

    invoke-virtual {v0, v3, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 752
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/ScrollView;->mActivePointerId:I

    move-object/from16 v0, v35

    invoke-virtual {v0, v3}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v3

    float-to-int v0, v3

    move/from16 v30, v0

    .line 754
    .local v30, initialVelocity:I
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-lez v3, :cond_12

    .line 755
    invoke-static/range {v30 .. v30}, Ljava/lang/Math;->abs(I)I

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/ScrollView;->mMinimumVelocity:I

    if-le v3, v4, :cond_14

    .line 756
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/ScrollView;->mCurrentOverScrollDistance:I

    if-nez v3, :cond_13

    .line 757
    move/from16 v0, v30

    neg-int v3, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->fling(I)V

    .line 758
    const/4 v3, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->reportScrollStateChange(I)V

    .line 782
    :cond_12
    :goto_6
    const/4 v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/ScrollView;->mActivePointerId:I

    .line 783
    invoke-direct/range {p0 .. p0}, Landroid/widget/ScrollView;->endDrag()V

    goto/16 :goto_0

    .line 759
    :cond_13
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/widget/ScrollView;->mShouldDelaySpringBack:Z

    if-nez v3, :cond_12

    .line 760
    invoke-direct/range {p0 .. p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v16

    .line 761
    .local v16, bottom:I
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/widget/ScrollView;->mScroller:Lcom/meizu/widget/MzOverScroller;

    move-object/from16 v0, p0

    iget v11, v0, Landroid/view/View;->mScrollX:I

    move-object/from16 v0, p0

    iget v12, v0, Landroid/view/View;->mScrollY:I

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual/range {v10 .. v16}, Lcom/meizu/widget/MzOverScroller;->springBack(IIIIII)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 762
    const/4 v3, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->reportScrollStateChange(I)V

    .line 763
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/widget/ScrollView;->mOverFling:Z

    .line 764
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    goto :goto_6

    .line 769
    .end local v16           #bottom:I
    :cond_14
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/widget/ScrollView;->mShouldDelaySpringBack:Z

    if-nez v3, :cond_15

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/ScrollView;->mCurrentOverScrollDistance:I

    if-eqz v3, :cond_15

    .line 770
    invoke-direct/range {p0 .. p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v16

    .line 771
    .restart local v16       #bottom:I
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/widget/ScrollView;->mScroller:Lcom/meizu/widget/MzOverScroller;

    move-object/from16 v0, p0

    iget v11, v0, Landroid/view/View;->mScrollX:I

    move-object/from16 v0, p0

    iget v12, v0, Landroid/view/View;->mScrollY:I

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual/range {v10 .. v16}, Lcom/meizu/widget/MzOverScroller;->springBack(IIIIII)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 772
    const/4 v3, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->reportScrollStateChange(I)V

    .line 773
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/widget/ScrollView;->mOverFling:Z

    .line 774
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    goto :goto_6

    .line 777
    .end local v16           #bottom:I
    :cond_15
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->reportScrollStateChange(I)V

    goto :goto_6

    .line 787
    .end local v30           #initialVelocity:I
    .end local v35           #velocityTracker:Landroid/view/VelocityTracker;
    :pswitch_4
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    if-eqz v3, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 788
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/widget/ScrollView;->mShouldDelaySpringBack:Z

    if-nez v3, :cond_16

    .line 789
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ScrollView;->mScroller:Lcom/meizu/widget/MzOverScroller;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-direct/range {p0 .. p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v23

    invoke-virtual/range {v17 .. v23}, Lcom/meizu/widget/MzOverScroller;->springBack(IIIIII)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 790
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/widget/ScrollView;->mOverFling:Z

    .line 791
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 794
    :cond_16
    const/4 v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/ScrollView;->mActivePointerId:I

    .line 795
    invoke-direct/range {p0 .. p0}, Landroid/widget/ScrollView;->endDrag()V

    goto/16 :goto_0

    .line 799
    :pswitch_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v29

    .line 800
    .local v29, index:I
    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    float-to-int v3, v3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/ScrollView;->mLastMotionY:I

    .line 801
    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/ScrollView;->mActivePointerId:I

    goto/16 :goto_0

    .line 805
    .end local v29           #index:I
    :pswitch_6
    invoke-direct/range {p0 .. p1}, Landroid/widget/ScrollView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 806
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/ScrollView;->mActivePointerId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    float-to-int v3, v3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/ScrollView;->mLastMotionY:I

    goto/16 :goto_0

    .line 637
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .parameter "hasWindowFocus"

    .prologue
    .line 1877
    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    .line 1879
    if-eqz p1, :cond_1

    .line 1880
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ScrollView;->mNeedRestoreOverScroll:Z

    .line 1889
    :cond_0
    :goto_0
    return-void

    .line 1881
    :cond_1
    iget v0, p0, Landroid/widget/ScrollView;->mCurrentOverScrollDistance:I

    if-eqz v0, :cond_0

    .line 1882
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/ScrollView;->mNeedRestoreOverScroll:Z

    .line 1883
    new-instance v0, Landroid/widget/ScrollView$1;

    invoke-direct {v0, p0}, Landroid/widget/ScrollView$1;-><init>(Landroid/widget/ScrollView;)V

    const-wide/16 v1, 0xc8

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public pageScroll(I)Z
    .locals 7
    .parameter "direction"

    .prologue
    const/4 v4, 0x0

    .line 1105
    const/16 v5, 0x82

    if-ne p1, v5, :cond_1

    const/4 v1, 0x1

    .line 1106
    .local v1, down:Z
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 1108
    .local v2, height:I
    if-eqz v1, :cond_2

    .line 1109
    iget-object v4, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v5

    add-int/2addr v5, v2

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 1110
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 1111
    .local v0, count:I
    if-lez v0, :cond_0

    .line 1112
    add-int/lit8 v4, v0, -0x1

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1113
    .local v3, view:Landroid/view/View;
    iget-object v4, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v2

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v5

    if-le v4, v5, :cond_0

    .line 1114
    iget-object v4, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v5

    sub-int/2addr v5, v2

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 1123
    .end local v0           #count:I
    .end local v3           #view:Landroid/view/View;
    :cond_0
    :goto_1
    iget-object v4, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget-object v5, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v2

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 1125
    iget-object v4, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, p1, v4, v5}, Landroid/widget/ScrollView;->scrollAndFocus(III)Z

    move-result v4

    return v4

    .end local v1           #down:Z
    .end local v2           #height:I
    :cond_1
    move v1, v4

    .line 1105
    goto :goto_0

    .line 1118
    .restart local v1       #down:Z
    .restart local v2       #height:I
    :cond_2
    iget-object v5, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v6

    sub-int/2addr v6, v2

    iput v6, v5, Landroid/graphics/Rect;->top:I

    .line 1119
    iget-object v5, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    if-gez v5, :cond_0

    .line 1120
    iget-object v5, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v4, v5, Landroid/graphics/Rect;->top:I

    goto :goto_1
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 6
    .parameter "action"
    .parameter "arguments"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 942
    invoke-super {p0, p1, p2}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 966
    :goto_0
    return v2

    .line 945
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_1

    move v2, v3

    .line 946
    goto :goto_0

    .line 948
    :cond_1
    sparse-switch p1, :sswitch_data_0

    move v2, v3

    .line 966
    goto :goto_0

    .line 950
    :sswitch_0
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    iget v5, p0, Landroid/view/View;->mPaddingBottom:I

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/view/View;->mPaddingTop:I

    sub-int v1, v4, v5

    .line 951
    .local v1, viewportHeight:I
    iget v4, p0, Landroid/view/View;->mScrollY:I

    add-int/2addr v4, v1

    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 952
    .local v0, targetScrollY:I
    iget v4, p0, Landroid/view/View;->mScrollY:I

    if-eq v0, v4, :cond_2

    .line 953
    invoke-virtual {p0, v3, v0}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    goto :goto_0

    :cond_2
    move v2, v3

    .line 956
    goto :goto_0

    .line 958
    .end local v0           #targetScrollY:I
    .end local v1           #viewportHeight:I
    :sswitch_1
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    iget v5, p0, Landroid/view/View;->mPaddingBottom:I

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/view/View;->mPaddingTop:I

    sub-int v1, v4, v5

    .line 959
    .restart local v1       #viewportHeight:I
    iget v4, p0, Landroid/view/View;->mScrollY:I

    sub-int/2addr v4, v1

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 960
    .restart local v0       #targetScrollY:I
    iget v4, p0, Landroid/view/View;->mScrollY:I

    if-eq v0, v4, :cond_3

    .line 961
    invoke-virtual {p0, v3, v0}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    goto :goto_0

    :cond_3
    move v2, v3

    .line 964
    goto :goto_0

    .line 948
    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_0
        0x2000 -> :sswitch_1
    .end sparse-switch
.end method

.method reportScrollStateChange(I)V
    .locals 1
    .parameter "newState"

    .prologue
    .line 2061
    iget v0, p0, Landroid/widget/ScrollView;->mLastScrollState:I

    if-eq p1, v0, :cond_0

    .line 2062
    iput p1, p0, Landroid/widget/ScrollView;->mLastScrollState:I

    .line 2063
    iget-object v0, p0, Landroid/widget/ScrollView;->mOnScrollListener:Landroid/widget/ScrollView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 2064
    iget-object v0, p0, Landroid/widget/ScrollView;->mOnScrollListener:Landroid/widget/ScrollView$OnScrollListener;

    invoke-interface {v0, p0, p1}, Landroid/widget/ScrollView$OnScrollListener;->onScrollStateChanged(Landroid/widget/ScrollView;I)V

    .line 2068
    :cond_0
    return-void
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .parameter "child"
    .parameter "focused"

    .prologue
    .line 1561
    iget-boolean v0, p0, Landroid/widget/ScrollView;->mIsLayoutDirty:Z

    if-nez v0, :cond_0

    .line 1562
    invoke-direct {p0, p2}, Landroid/widget/ScrollView;->scrollToChild(Landroid/view/View;)V

    .line 1567
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 1568
    return-void

    .line 1565
    :cond_0
    iput-object p2, p0, Landroid/widget/ScrollView;->mChildToScrollTo:Landroid/view/View;

    goto :goto_0
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 3
    .parameter "child"
    .parameter "rectangle"
    .parameter "immediate"

    .prologue
    .line 1610
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

    .line 1613
    invoke-direct {p0, p2, p3}, Landroid/widget/ScrollView;->scrollToChildRect(Landroid/graphics/Rect;Z)Z

    move-result v0

    return v0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0
    .parameter "disallowIntercept"

    .prologue
    .line 502
    if-eqz p1, :cond_0

    .line 503
    invoke-direct {p0}, Landroid/widget/ScrollView;->recycleVelocityTracker()V

    .line 505
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 506
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 1618
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ScrollView;->mIsLayoutDirty:Z

    .line 1619
    invoke-super {p0}, Landroid/view/View;->requestLayout()V

    .line 1620
    return-void
.end method

.method public scrollTo(II)V
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1753
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 1754
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1755
    .local v0, child:Landroid/view/View;
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    iget v2, p0, Landroid/view/View;->mPaddingRight:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/view/View;->mPaddingLeft:I

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-static {p1, v1, v2}, Landroid/widget/ScrollView;->clamp(III)I

    move-result p1

    .line 1756
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    iget v2, p0, Landroid/view/View;->mPaddingBottom:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/view/View;->mPaddingTop:I

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-static {p2, v1, v2}, Landroid/widget/ScrollView;->clamp(III)I

    move-result p2

    .line 1757
    iget v1, p0, Landroid/view/View;->mScrollX:I

    if-ne p1, v1, :cond_0

    iget v1, p0, Landroid/view/View;->mScrollY:I

    if-eq p2, v1, :cond_1

    .line 1758
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->scrollTo(II)V

    .line 1761
    .end local v0           #child:Landroid/view/View;
    :cond_1
    return-void
.end method

.method public setDelayTopOverScrollEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 1940
    iput-boolean p1, p0, Landroid/widget/ScrollView;->mDelaySpringBackEnabled:Z

    .line 1942
    if-eqz p1, :cond_1

    .line 1943
    iget-object v0, p0, Landroid/widget/ScrollView;->mHoldIndicator:Lcom/meizu/widget/MzListHoldIndicator;

    if-nez v0, :cond_0

    .line 1944
    new-instance v0, Lcom/meizu/widget/MzListHoldIndicator;

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/meizu/widget/MzListHoldIndicator;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Landroid/widget/ScrollView;->mHoldIndicator:Lcom/meizu/widget/MzListHoldIndicator;

    .line 1945
    iget-object v0, p0, Landroid/widget/ScrollView;->mHoldIndicator:Lcom/meizu/widget/MzListHoldIndicator;

    iget v1, p0, Landroid/widget/ScrollView;->mHoldIndicatorOffset:I

    invoke-virtual {v0, v1}, Lcom/meizu/widget/MzListHoldIndicator;->setExtraOffset(I)V

    .line 1951
    :cond_0
    :goto_0
    return-void

    .line 1948
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/ScrollView;->mHoldIndicator:Lcom/meizu/widget/MzListHoldIndicator;

    goto :goto_0
.end method

.method public setDelayTopOverScrollOffset(I)V
    .locals 1
    .parameter "offset"

    .prologue
    .line 2116
    iput p1, p0, Landroid/widget/ScrollView;->mHoldIndicatorOffset:I

    .line 2117
    iget-object v0, p0, Landroid/widget/ScrollView;->mHoldIndicator:Lcom/meizu/widget/MzListHoldIndicator;

    if-eqz v0, :cond_0

    .line 2118
    iget-object v0, p0, Landroid/widget/ScrollView;->mHoldIndicator:Lcom/meizu/widget/MzListHoldIndicator;

    invoke-virtual {v0, p1}, Lcom/meizu/widget/MzListHoldIndicator;->setExtraOffset(I)V

    .line 2120
    :cond_0
    return-void
.end method

.method public setFillViewport(Z)V
    .locals 1
    .parameter "fillViewport"

    .prologue
    .line 359
    iget-boolean v0, p0, Landroid/widget/ScrollView;->mFillViewport:Z

    if-eq p1, v0, :cond_0

    .line 360
    iput-boolean p1, p0, Landroid/widget/ScrollView;->mFillViewport:Z

    .line 361
    invoke-virtual {p0}, Landroid/widget/ScrollView;->requestLayout()V

    .line 363
    :cond_0
    return-void
.end method

.method public setOnScrollListener(Landroid/widget/ScrollView$OnScrollListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 2049
    iput-object p1, p0, Landroid/widget/ScrollView;->mOnScrollListener:Landroid/widget/ScrollView$OnScrollListener;

    .line 2050
    return-void
.end method

.method public setOverScrollMode(I)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 1775
    invoke-super {p0, p1}, Landroid/view/View;->setOverScrollMode(I)V

    .line 1776
    return-void
.end method

.method public setSmoothScrollingEnabled(Z)V
    .locals 0
    .parameter "smoothScrollingEnabled"

    .prologue
    .line 377
    iput-boolean p1, p0, Landroid/widget/ScrollView;->mSmoothScrollingEnabled:Z

    .line 378
    return-void
.end method

.method public setTopShadowEnable(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 197
    iput-boolean p1, p0, Landroid/widget/ScrollView;->mEnableTopShadow:Z

    .line 198
    return-void
.end method

.method public setTouchSlopScale(F)V
    .locals 1
    .parameter "scale"

    .prologue
    .line 2146
    iget v0, p0, Landroid/widget/ScrollView;->mDefaultTouchSlop:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    iput v0, p0, Landroid/widget/ScrollView;->mTouchSlop:I

    .line 2147
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .prologue
    .line 188
    const/4 v0, 0x1

    return v0
.end method

.method protected shouldRestoreOverScroll()Z
    .locals 1

    .prologue
    .line 1872
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    iget-boolean v0, p0, Landroid/widget/ScrollView;->mNeedRestoreOverScroll:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/ScrollView;->mOverFling:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final smoothScrollBy(II)V
    .locals 11
    .parameter "dx"
    .parameter "dy"

    .prologue
    const/4 v10, 0x0

    .line 1296
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    if-nez v6, :cond_0

    .line 1321
    :goto_0
    return-void

    .line 1300
    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Landroid/widget/ScrollView;->mLastScroll:J

    sub-long v1, v6, v8

    .line 1301
    .local v1, duration:J
    const-wide/16 v6, 0xfa

    cmp-long v6, v1, v6

    if-lez v6, :cond_1

    .line 1302
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v6

    iget v7, p0, Landroid/view/View;->mPaddingBottom:I

    sub-int/2addr v6, v7

    iget v7, p0, Landroid/view/View;->mPaddingTop:I

    sub-int v3, v6, v7

    .line 1303
    .local v3, height:I
    invoke-virtual {p0, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 1304
    .local v0, bottom:I
    sub-int v6, v0, v3

    invoke-static {v10, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1305
    .local v4, maxY:I
    iget v5, p0, Landroid/view/View;->mScrollY:I

    .line 1306
    .local v5, scrollY:I
    add-int v6, v5, p2

    invoke-static {v6, v4}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v10, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    sub-int p2, v6, v5

    .line 1308
    iget-object v6, p0, Landroid/widget/ScrollView;->mScroller:Lcom/meizu/widget/MzOverScroller;

    iget v7, p0, Landroid/view/View;->mScrollX:I

    invoke-virtual {v6, v7, v5, v10, p2}, Lcom/meizu/widget/MzOverScroller;->startScroll(IIII)V

    .line 1309
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 1320
    .end local v0           #bottom:I
    .end local v3           #height:I
    .end local v4           #maxY:I
    .end local v5           #scrollY:I
    :goto_1
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Landroid/widget/ScrollView;->mLastScroll:J

    goto :goto_0

    .line 1311
    :cond_1
    iget-object v6, p0, Landroid/widget/ScrollView;->mScroller:Lcom/meizu/widget/MzOverScroller;

    invoke-virtual {v6}, Lcom/meizu/widget/MzOverScroller;->isFinished()Z

    move-result v6

    if-nez v6, :cond_2

    .line 1312
    iget-object v6, p0, Landroid/widget/ScrollView;->mScroller:Lcom/meizu/widget/MzOverScroller;

    invoke-virtual {v6}, Lcom/meizu/widget/MzOverScroller;->abortAnimation()V

    .line 1313
    iget-object v6, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v6, :cond_2

    .line 1314
    iget-object v6, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v6}, Landroid/os/StrictMode$Span;->finish()V

    .line 1315
    const/4 v6, 0x0

    iput-object v6, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 1318
    :cond_2
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->scrollBy(II)V

    goto :goto_1
.end method

.method public final smoothScrollTo(II)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1330
    iget v0, p0, Landroid/view/View;->mScrollX:I

    sub-int v0, p1, v0

    iget v1, p0, Landroid/view/View;->mScrollY:I

    sub-int v1, p2, v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/ScrollView;->smoothScrollBy(II)V

    .line 1331
    return-void
.end method
