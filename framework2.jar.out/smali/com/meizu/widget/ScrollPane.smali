.class public Lcom/meizu/widget/ScrollPane;
.super Landroid/widget/LinearLayout;
.source "ScrollPane.java"


# static fields
.field private static final MAX_SETTLE_DURATION:I = 0x1c2

.field private static final TAG:Ljava/lang/String; = "ScrollPane"

.field private static final sInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field private mHeaderLayout:Lcom/meizu/widget/HeaderLinearLayout;

.field private mLimits:[I

.field private mLocalActivityManager:Landroid/app/LocalActivityManager;

.field private mScroller:Landroid/widget/Scroller;

.field private mScrollingListener:Lcom/meizu/widget/PreferenceFrame$OnScrollingListener;

.field private mShadow:Landroid/graphics/drawable/Drawable;

.field private mShadowWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    new-instance v0, Lcom/meizu/widget/ScrollPane$1;

    invoke-direct {v0}, Lcom/meizu/widget/ScrollPane$1;-><init>()V

    sput-object v0, Lcom/meizu/widget/ScrollPane;->sInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, 0x0

    .line 61
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/meizu/widget/ScrollPane;->mLimits:[I

    .line 62
    new-instance v1, Landroid/widget/Scroller;

    sget-object v2, Lcom/meizu/widget/ScrollPane;->sInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {v1, p1, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v1, p0, Lcom/meizu/widget/ScrollPane;->mScroller:Landroid/widget/Scroller;

    .line 63
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 66
    .local v0, metrics:Landroid/util/DisplayMetrics;
    iget-object v1, p0, Lcom/meizu/widget/ScrollPane;->mLimits:[I

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v2, v2, 0x2

    neg-int v2, v2

    aput v2, v1, v3

    .line 67
    iget-object v1, p0, Lcom/meizu/widget/ScrollPane;->mLimits:[I

    const/4 v2, 0x1

    aput v3, v1, v2

    .line 68
    return-void
.end method

.method private clampToScrollLimits(I)I
    .locals 3
    .parameter "paramInt"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 200
    iget-object v0, p0, Lcom/meizu/widget/ScrollPane;->mLimits:[I

    aget v0, v0, v1

    if-ge p1, v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/meizu/widget/ScrollPane;->mLimits:[I

    aget p1, v0, v1

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/meizu/widget/ScrollPane;->mLimits:[I

    aget v0, v0, v2

    if-gt p1, v0, :cond_1

    .line 204
    .end local p1
    :goto_0
    return p1

    .restart local p1
    :cond_1
    iget-object v0, p0, Lcom/meizu/widget/ScrollPane;->mLimits:[I

    aget p1, v0, v2

    goto :goto_0
.end method

.method private getWindowBackgroud()I
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 76
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [I

    const v4, 0x1010054

    aput v4, v3, v5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 80
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v5, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 81
    .local v1, background:I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 83
    return v1
.end method

.method private setDefaultBackgroud(Landroid/view/View;I)V
    .locals 4
    .parameter "view"
    .parameter "background"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 92
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 93
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_1

    move v3, v1

    :goto_0
    if-eqz p1, :cond_2

    :goto_1
    and-int/2addr v1, v3

    if-eqz v1, :cond_0

    .line 94
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 96
    :cond_0
    return-void

    :cond_1
    move v3, v2

    .line 93
    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method private update(I)V
    .locals 1
    .parameter "scrollX"

    .prologue
    .line 161
    iget-object v0, p0, Lcom/meizu/widget/ScrollPane;->mScrollingListener:Lcom/meizu/widget/PreferenceFrame$OnScrollingListener;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/meizu/widget/ScrollPane;->mScrollingListener:Lcom/meizu/widget/PreferenceFrame$OnScrollingListener;

    invoke-interface {v0, p1}, Lcom/meizu/widget/PreferenceFrame$OnScrollingListener;->onScrolling(I)V

    .line 163
    :cond_0
    return-void
.end method


# virtual methods
.method public computeScroll()V
    .locals 5

    .prologue
    .line 142
    iget-object v4, p0, Lcom/meizu/widget/ScrollPane;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 143
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    .line 144
    .local v0, oldX:I
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v1

    .line 145
    .local v1, oldY:I
    iget-object v4, p0, Lcom/meizu/widget/ScrollPane;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    .line 146
    .local v2, x:I
    iget-object v4, p0, Lcom/meizu/widget/ScrollPane;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    .line 148
    .local v3, y:I
    if-ne v0, v2, :cond_0

    if-eq v1, v3, :cond_1

    .line 149
    :cond_0
    invoke-virtual {p0, v2, v3}, Lcom/meizu/widget/ScrollPane;->scrollTo(II)V

    .line 151
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 153
    .end local v0           #oldX:I
    .end local v1           #oldY:I
    .end local v2           #x:I
    .end local v3           #y:I
    :cond_2
    invoke-super {p0}, Landroid/view/View;->computeScroll()V

    .line 154
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter "canvas"

    .prologue
    const/4 v4, 0x0

    .line 212
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 214
    iget-object v1, p0, Lcom/meizu/widget/ScrollPane;->mShadow:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/meizu/widget/ScrollPane;->mShadowWidth:I

    if-lez v1, :cond_0

    .line 216
    const/4 v0, 0x0

    .line 217
    .local v0, start:I
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v1

    iget-object v2, p0, Lcom/meizu/widget/ScrollPane;->mLimits:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    if-ge v1, v2, :cond_1

    .line 218
    iget v1, p0, Lcom/meizu/widget/ScrollPane;->mShadowWidth:I

    neg-int v0, v1

    .line 222
    :goto_0
    iget-object v1, p0, Lcom/meizu/widget/ScrollPane;->mShadow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {v1, v0, v4, v4, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 223
    iget-object v1, p0, Lcom/meizu/widget/ScrollPane;->mShadow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 225
    .end local v0           #start:I
    :cond_0
    return-void

    .line 220
    .restart local v0       #start:I
    :cond_1
    iget v1, p0, Lcom/meizu/widget/ScrollPane;->mShadowWidth:I

    neg-int v1, v1

    div-int/lit8 v0, v1, 0x3

    goto :goto_0
.end method

.method public getScrollRange()[I
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/meizu/widget/ScrollPane;->mLimits:[I

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 101
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 103
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 104
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ScrollPane must has two children which are ViewGroup"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0}, Lcom/meizu/widget/ScrollPane;->getWindowBackgroud()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/meizu/widget/ScrollPane;->setDefaultBackgroud(Landroid/view/View;I)V

    .line 110
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "ev"

    .prologue
    .line 265
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 267
    const/4 v0, 0x1

    .line 269
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public scrollBy(I)V
    .locals 3
    .parameter "deltaX"

    .prologue
    .line 170
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v1

    add-int/2addr v1, p1

    invoke-direct {p0, v1}, Lcom/meizu/widget/ScrollPane;->clampToScrollLimits(I)I

    move-result v0

    .line 171
    .local v0, end:I
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v1

    sub-int v1, v0, v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/view/View;->scrollBy(II)V

    .line 172
    return-void
.end method

.method public scrollTo(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 179
    invoke-direct {p0, p1}, Lcom/meizu/widget/ScrollPane;->clampToScrollLimits(I)I

    move-result v0

    .line 180
    .local v0, end:I
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/meizu/widget/ScrollPane;->scrollTo(II)V

    .line 181
    return-void
.end method

.method public scrollTo(II)V
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 188
    invoke-direct {p0, p1}, Lcom/meizu/widget/ScrollPane;->update(I)V

    .line 190
    iget-object v0, p0, Lcom/meizu/widget/ScrollPane;->mHeaderLayout:Lcom/meizu/widget/HeaderLinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 191
    invoke-super {p0, p1, p2}, Landroid/view/View;->scrollTo(II)V

    .line 192
    return-void
.end method

.method public setHeaderLayout(Lcom/meizu/widget/HeaderLinearLayout;)V
    .locals 0
    .parameter "headerLayout"

    .prologue
    .line 285
    iput-object p1, p0, Lcom/meizu/widget/ScrollPane;->mHeaderLayout:Lcom/meizu/widget/HeaderLinearLayout;

    .line 286
    return-void
.end method

.method public setOnScrollingListener(Lcom/meizu/widget/PreferenceFrame$OnScrollingListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 277
    iput-object p1, p0, Lcom/meizu/widget/ScrollPane;->mScrollingListener:Lcom/meizu/widget/PreferenceFrame$OnScrollingListener;

    .line 278
    return-void
.end method

.method public setScrollDistance(I)V
    .locals 4
    .parameter "distance"

    .prologue
    .line 251
    iget-object v0, p0, Lcom/meizu/widget/ScrollPane;->mLimits:[I

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/meizu/widget/ScrollPane;->mLimits:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    sub-int/2addr v2, p1

    aput v2, v0, v1

    .line 252
    return-void
.end method

.method public setShadow(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "drawable"

    .prologue
    .line 232
    iput-object p1, p0, Lcom/meizu/widget/ScrollPane;->mShadow:Landroid/graphics/drawable/Drawable;

    .line 233
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 234
    return-void
.end method

.method public setShadowWidth(I)V
    .locals 0
    .parameter "width"

    .prologue
    .line 241
    iput p1, p0, Lcom/meizu/widget/ScrollPane;->mShadowWidth:I

    .line 242
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 243
    return-void
.end method

.method public smoothScrollBy(III)V
    .locals 6
    .parameter "dx"
    .parameter "dy"
    .parameter "duration"

    .prologue
    .line 134
    iget-object v0, p0, Lcom/meizu/widget/ScrollPane;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v1

    iget-object v2, p0, Lcom/meizu/widget/ScrollPane;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getFinalY()I

    move-result v2

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 136
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 137
    return-void
.end method

.method public smoothScrollTo(II)V
    .locals 5
    .parameter "x"
    .parameter "y"

    .prologue
    .line 118
    invoke-direct {p0, p1}, Lcom/meizu/widget/ScrollPane;->clampToScrollLimits(I)I

    move-result p1

    .line 119
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v3

    sub-int v1, p1, v3

    .line 120
    .local v1, dx:I
    iget-object v3, p0, Lcom/meizu/widget/ScrollPane;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getFinalY()I

    move-result v3

    sub-int v2, p2, v3

    .line 121
    .local v2, dy:I
    const/4 v0, 0x0

    .line 122
    .local v0, duration:I
    mul-int/lit8 v3, v1, 0x2

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/16 v4, 0x1c2

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 123
    invoke-virtual {p0, v1, v2, v0}, Lcom/meizu/widget/ScrollPane;->smoothScrollBy(III)V

    .line 124
    return-void
.end method
