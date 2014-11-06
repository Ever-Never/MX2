.class public Lcom/meizu/widget/LimitedHeightScrollView;
.super Landroid/widget/ScrollView;
.source "LimitedHeightScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/widget/LimitedHeightScrollView$ScrollRunnable;
    }
.end annotation


# instance fields
.field MAX_HEIGHT_LANDSCAPE:I

.field MAX_HEIGHT_PORTRAIT:I

.field private RESPONSE_RANGER:I

.field private mMaxHeight:I

.field private mScrollRunnable:Lcom/meizu/widget/LimitedHeightScrollView$ScrollRunnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 70
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/meizu/widget/LimitedHeightScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 66
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/widget/LimitedHeightScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/widget/LimitedHeightScrollView;->mScrollRunnable:Lcom/meizu/widget/LimitedHeightScrollView$ScrollRunnable;

    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10501cf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/meizu/widget/LimitedHeightScrollView;->MAX_HEIGHT_LANDSCAPE:I

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10501ce

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/meizu/widget/LimitedHeightScrollView;->MAX_HEIGHT_PORTRAIT:I

    .line 38
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10501de

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/meizu/widget/LimitedHeightScrollView;->RESPONSE_RANGER:I

    .line 40
    iget v0, p0, Lcom/meizu/widget/LimitedHeightScrollView;->MAX_HEIGHT_PORTRAIT:I

    iput v0, p0, Lcom/meizu/widget/LimitedHeightScrollView;->mMaxHeight:I

    .line 43
    new-instance v0, Lcom/meizu/widget/LimitedHeightScrollView$1;

    invoke-direct {v0, p0}, Lcom/meizu/widget/LimitedHeightScrollView$1;-><init>(Lcom/meizu/widget/LimitedHeightScrollView;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 63
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/widget/LimitedHeightScrollView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget v0, p0, Lcom/meizu/widget/LimitedHeightScrollView;->RESPONSE_RANGER:I

    return v0
.end method

.method static synthetic access$100(Lcom/meizu/widget/LimitedHeightScrollView;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/meizu/widget/LimitedHeightScrollView;->startScroll(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/meizu/widget/LimitedHeightScrollView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/meizu/widget/LimitedHeightScrollView;->stopScroll()V

    return-void
.end method

.method private startScroll(Z)V
    .locals 3
    .parameter "forward"

    .prologue
    .line 107
    iget-object v1, p0, Lcom/meizu/widget/LimitedHeightScrollView;->mScrollRunnable:Lcom/meizu/widget/LimitedHeightScrollView$ScrollRunnable;

    if-nez v1, :cond_0

    .line 108
    new-instance v1, Lcom/meizu/widget/LimitedHeightScrollView$ScrollRunnable;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/meizu/widget/LimitedHeightScrollView$ScrollRunnable;-><init>(Lcom/meizu/widget/LimitedHeightScrollView;Lcom/meizu/widget/LimitedHeightScrollView$1;)V

    iput-object v1, p0, Lcom/meizu/widget/LimitedHeightScrollView;->mScrollRunnable:Lcom/meizu/widget/LimitedHeightScrollView$ScrollRunnable;

    .line 110
    :cond_0
    if-eqz p1, :cond_2

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p0, v1}, Landroid/widget/ScrollView;->canScrollVertically(I)Z

    move-result v0

    .line 111
    .local v0, enabledScroll:Z
    iget-object v1, p0, Lcom/meizu/widget/LimitedHeightScrollView;->mScrollRunnable:Lcom/meizu/widget/LimitedHeightScrollView$ScrollRunnable;

    invoke-virtual {v1}, Lcom/meizu/widget/LimitedHeightScrollView$ScrollRunnable;->isStarted()Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    .line 112
    iget-object v1, p0, Lcom/meizu/widget/LimitedHeightScrollView;->mScrollRunnable:Lcom/meizu/widget/LimitedHeightScrollView$ScrollRunnable;

    invoke-virtual {v1, p1}, Lcom/meizu/widget/LimitedHeightScrollView$ScrollRunnable;->startScroll(Z)V

    .line 114
    :cond_1
    return-void

    .line 110
    .end local v0           #enabledScroll:Z
    :cond_2
    const/4 v1, -0x1

    goto :goto_0
.end method

.method private stopScroll()V
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/meizu/widget/LimitedHeightScrollView;->mScrollRunnable:Lcom/meizu/widget/LimitedHeightScrollView$ScrollRunnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/widget/LimitedHeightScrollView;->mScrollRunnable:Lcom/meizu/widget/LimitedHeightScrollView$ScrollRunnable;

    invoke-virtual {v0}, Lcom/meizu/widget/LimitedHeightScrollView$ScrollRunnable;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/meizu/widget/LimitedHeightScrollView;->mScrollRunnable:Lcom/meizu/widget/LimitedHeightScrollView$ScrollRunnable;

    invoke-virtual {v0}, Lcom/meizu/widget/LimitedHeightScrollView$ScrollRunnable;->finish()V

    .line 124
    :cond_0
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 6
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/4 v5, 0x0

    .line 75
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 76
    .local v1, metrics:Landroid/util/DisplayMetrics;
    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 77
    .local v3, screenWidth:I
    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 79
    .local v2, screenHeight:I
    if-le v3, v2, :cond_0

    .line 80
    iget v4, p0, Lcom/meizu/widget/LimitedHeightScrollView;->MAX_HEIGHT_LANDSCAPE:I

    iput v4, p0, Lcom/meizu/widget/LimitedHeightScrollView;->mMaxHeight:I

    .line 85
    :goto_0
    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_1

    .line 86
    invoke-super {p0, p1, p2}, Landroid/widget/ScrollView;->onMeasure(II)V

    .line 100
    :goto_1
    return-void

    .line 82
    :cond_0
    iget v4, p0, Lcom/meizu/widget/LimitedHeightScrollView;->MAX_HEIGHT_PORTRAIT:I

    iput v4, p0, Lcom/meizu/widget/LimitedHeightScrollView;->mMaxHeight:I

    goto :goto_0

    .line 89
    :cond_1
    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Landroid/view/View;->measure(II)V

    .line 90
    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 93
    .local v0, height:I
    iget v4, p0, Lcom/meizu/widget/LimitedHeightScrollView;->mMaxHeight:I

    if-le v0, v4, :cond_2

    .line 95
    iget v0, p0, Lcom/meizu/widget/LimitedHeightScrollView;->mMaxHeight:I

    .line 99
    :cond_2
    const/high16 v4, 0x4000

    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-super {p0, p1, v4}, Landroid/widget/ScrollView;->onMeasure(II)V

    goto :goto_1
.end method
