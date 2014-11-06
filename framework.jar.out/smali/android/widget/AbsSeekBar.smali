.class public abstract Landroid/widget/AbsSeekBar;
.super Landroid/widget/ProgressBar;
.source "AbsSeekBar.java"


# static fields
.field private static final NO_ALPHA:I = 0xff

.field public static final SEEK_BAR_SCROLL_MODE_COMMON:I = 0x0

.field public static final SEEK_BAR_SCROLL_MODE_SLOW:I = 0x1


# instance fields
.field private mDisabledAlpha:F

.field private mDragTouchDownX:F

.field private mDragTouchDownY:F

.field private mHalfThumbWidth:I

.field private mInDragoning:Z

.field private mIsDragging:Z

.field mIsUserSeekable:Z

.field private mKeyProgressIncrement:I

.field private mScaledTouchSlop:I

.field private mThumb:Landroid/graphics/drawable/Drawable;

.field private mThumbOffset:I

.field private mTouchDownProgress:I

.field private mTouchDownX:F

.field mTouchProgressOffset:F

.field protected mTouchScrollMode:I

.field private mTouchSlopSquare:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 61
    invoke-direct {p0, p1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 45
    iput-boolean v0, p0, Landroid/widget/AbsSeekBar;->mIsUserSeekable:Z

    .line 51
    iput v0, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    .line 667
    iput v1, p0, Landroid/widget/AbsSeekBar;->mTouchScrollMode:I

    .line 668
    const/16 v0, 0x100

    iput v0, p0, Landroid/widget/AbsSeekBar;->mTouchSlopSquare:I

    .line 670
    iput v1, p0, Landroid/widget/AbsSeekBar;->mTouchDownProgress:I

    .line 672
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/AbsSeekBar;->mDragTouchDownY:F

    .line 673
    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mInDragoning:Z

    .line 674
    iput v1, p0, Landroid/widget/AbsSeekBar;->mHalfThumbWidth:I

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 65
    invoke-direct {p0, p1, p2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    iput-boolean v0, p0, Landroid/widget/AbsSeekBar;->mIsUserSeekable:Z

    .line 51
    iput v0, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    .line 667
    iput v1, p0, Landroid/widget/AbsSeekBar;->mTouchScrollMode:I

    .line 668
    const/16 v0, 0x100

    iput v0, p0, Landroid/widget/AbsSeekBar;->mTouchSlopSquare:I

    .line 670
    iput v1, p0, Landroid/widget/AbsSeekBar;->mTouchDownProgress:I

    .line 672
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/AbsSeekBar;->mDragTouchDownY:F

    .line 673
    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mInDragoning:Z

    .line 674
    iput v1, p0, Landroid/widget/AbsSeekBar;->mHalfThumbWidth:I

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 69
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    iput-boolean v5, p0, Landroid/widget/AbsSeekBar;->mIsUserSeekable:Z

    .line 51
    iput v5, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    .line 667
    iput v4, p0, Landroid/widget/AbsSeekBar;->mTouchScrollMode:I

    .line 668
    const/16 v3, 0x100

    iput v3, p0, Landroid/widget/AbsSeekBar;->mTouchSlopSquare:I

    .line 670
    iput v4, p0, Landroid/widget/AbsSeekBar;->mTouchDownProgress:I

    .line 672
    const/4 v3, 0x0

    iput v3, p0, Landroid/widget/AbsSeekBar;->mDragTouchDownY:F

    .line 673
    iput-boolean v4, p0, Landroid/widget/AbsSeekBar;->mInDragoning:Z

    .line 674
    iput v4, p0, Landroid/widget/AbsSeekBar;->mHalfThumbWidth:I

    .line 71
    sget-object v3, Lcom/android/internal/R$styleable;->SeekBar:[I

    invoke-virtual {p1, p2, v3, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 73
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 74
    .local v1, thumb:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v1}, Landroid/widget/AbsSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 76
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getThumbOffset()I

    move-result v3

    invoke-virtual {v0, v5, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    .line 78
    .local v2, thumbOffset:I
    invoke-virtual {p0, v2}, Landroid/widget/AbsSeekBar;->setThumbOffset(I)V

    .line 79
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 81
    sget-object v3, Lcom/android/internal/R$styleable;->Theme:[I

    invoke-virtual {p1, p2, v3, v4, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 83
    const/4 v3, 0x3

    const/high16 v4, 0x3f00

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Landroid/widget/AbsSeekBar;->mDisabledAlpha:F

    .line 84
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 86
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    iput v3, p0, Landroid/widget/AbsSeekBar;->mScaledTouchSlop:I

    .line 87
    iget v3, p0, Landroid/widget/AbsSeekBar;->mScaledTouchSlop:I

    iget v4, p0, Landroid/widget/AbsSeekBar;->mScaledTouchSlop:I

    mul-int/2addr v3, v4

    iput v3, p0, Landroid/widget/AbsSeekBar;->mTouchSlopSquare:I

    .line 88
    return-void
.end method

.method private attemptClaimDrag()V
    .locals 2

    .prologue
    .line 537
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    .line 538
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 540
    :cond_0
    return-void
.end method

.method private getIntFromFloat(F)I
    .locals 1
    .parameter "num"

    .prologue
    .line 691
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method private getPosByProgress(I)I
    .locals 6
    .parameter "progress"

    .prologue
    .line 696
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 697
    .local v2, width:I
    iget v4, p0, Landroid/view/View;->mPaddingLeft:I

    sub-int v4, v2, v4

    iget v5, p0, Landroid/view/View;->mPaddingRight:I

    sub-int v0, v4, v5

    .line 698
    .local v0, available:I
    iget v3, p0, Landroid/view/View;->mPaddingLeft:I

    .line 699
    .local v3, x:I
    int-to-float v4, p1

    iget v5, p0, Landroid/widget/AbsSeekBar;->mTouchProgressOffset:F

    sub-float v1, v4, v5

    .line 700
    .local v1, prog:F
    const/4 v4, 0x0

    cmpg-float v4, v1, v4

    if-gez v4, :cond_0

    move v4, v3

    .line 713
    :goto_0
    return v4

    .line 704
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v4, v1, v4

    if-lez v4, :cond_1

    .line 705
    iget v4, p0, Landroid/view/View;->mPaddingRight:I

    sub-int v4, v2, v4

    goto :goto_0

    .line 708
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v4

    if-gtz v4, :cond_2

    move v4, v3

    .line 709
    goto :goto_0

    .line 712
    :cond_2
    int-to-float v4, v0

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v5

    int-to-float v5, v5

    div-float v5, v1, v5

    mul-float/2addr v4, v5

    float-to-int v4, v4

    add-int/2addr v3, v4

    move v4, v3

    .line 713
    goto :goto_0
.end method

.method private setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V
    .locals 10
    .parameter "w"
    .parameter "thumb"
    .parameter "scale"
    .parameter "gap"

    .prologue
    .line 290
    iget v8, p0, Landroid/view/View;->mPaddingLeft:I

    sub-int v8, p1, v8

    iget v9, p0, Landroid/view/View;->mPaddingRight:I

    sub-int v0, v8, v9

    .line 291
    .local v0, available:I
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    .line 292
    .local v6, thumbWidth:I
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .line 293
    .local v4, thumbHeight:I
    sub-int/2addr v0, v6

    .line 296
    iget v8, p0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v0, v8

    .line 298
    const/high16 v8, 0x3f80

    sub-float/2addr v8, p3

    int-to-float v9, v0

    mul-float/2addr v8, v9

    float-to-int v8, v8

    sub-int v5, v0, v8

    .line 301
    .local v5, thumbPos:I
    const/high16 v8, -0x8000

    if-ne p4, v8, :cond_0

    .line 302
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 303
    .local v3, oldBounds:Landroid/graphics/Rect;
    iget v7, v3, Landroid/graphics/Rect;->top:I

    .line 304
    .local v7, topBound:I
    iget v1, v3, Landroid/graphics/Rect;->bottom:I

    .line 311
    .end local v3           #oldBounds:Landroid/graphics/Rect;
    .local v1, bottomBound:I
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->isLayoutRtl()Z

    move-result v8

    if-eqz v8, :cond_1

    sub-int v2, v0, v5

    .line 312
    .local v2, left:I
    :goto_1
    add-int v8, v2, v6

    invoke-virtual {p2, v2, v7, v8, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 313
    return-void

    .line 306
    .end local v1           #bottomBound:I
    .end local v2           #left:I
    .end local v7           #topBound:I
    :cond_0
    move v7, p4

    .line 307
    .restart local v7       #topBound:I
    add-int v1, p4, v4

    .restart local v1       #bottomBound:I
    goto :goto_0

    :cond_1
    move v2, v5

    .line 311
    goto :goto_1
.end method

.method private trackTouchEvent(Landroid/view/MotionEvent;)V
    .locals 8
    .parameter "event"

    .prologue
    .line 502
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    .line 503
    .local v4, width:I
    iget v6, p0, Landroid/view/View;->mPaddingLeft:I

    sub-int v6, v4, v6

    iget v7, p0, Landroid/view/View;->mPaddingRight:I

    sub-int v0, v6, v7

    .line 504
    .local v0, available:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v5, v6

    .line 506
    .local v5, x:I
    const/4 v2, 0x0

    .line 507
    .local v2, progress:F
    invoke-virtual {p0}, Landroid/view/View;->isLayoutRtl()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 508
    iget v6, p0, Landroid/view/View;->mPaddingRight:I

    sub-int v6, v4, v6

    if-le v5, v6, :cond_0

    .line 509
    const/4 v3, 0x0

    .line 526
    .local v3, scale:F
    :goto_0
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v1

    .line 527
    .local v1, max:I
    int-to-float v6, v1

    mul-float/2addr v6, v3

    add-float/2addr v2, v6

    .line 529
    float-to-int v6, v2

    const/4 v7, 0x1

    invoke-virtual {p0, v6, v7}, Landroid/widget/ProgressBar;->setProgress(IZ)V

    .line 530
    return-void

    .line 510
    .end local v1           #max:I
    .end local v3           #scale:F
    :cond_0
    iget v6, p0, Landroid/view/View;->mPaddingLeft:I

    if-ge v5, v6, :cond_1

    .line 511
    const/high16 v3, 0x3f80

    .restart local v3       #scale:F
    goto :goto_0

    .line 513
    .end local v3           #scale:F
    :cond_1
    sub-int v6, v0, v5

    iget v7, p0, Landroid/view/View;->mPaddingLeft:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    int-to-float v7, v0

    div-float v3, v6, v7

    .line 514
    .restart local v3       #scale:F
    iget v2, p0, Landroid/widget/AbsSeekBar;->mTouchProgressOffset:F

    goto :goto_0

    .line 517
    .end local v3           #scale:F
    :cond_2
    iget v6, p0, Landroid/view/View;->mPaddingLeft:I

    if-ge v5, v6, :cond_3

    .line 518
    const/4 v3, 0x0

    .restart local v3       #scale:F
    goto :goto_0

    .line 519
    .end local v3           #scale:F
    :cond_3
    iget v6, p0, Landroid/view/View;->mPaddingRight:I

    sub-int v6, v4, v6

    if-le v5, v6, :cond_4

    .line 520
    const/high16 v3, 0x3f80

    .restart local v3       #scale:F
    goto :goto_0

    .line 522
    .end local v3           #scale:F
    :cond_4
    iget v6, p0, Landroid/view/View;->mPaddingLeft:I

    sub-int v6, v5, v6

    int-to-float v6, v6

    int-to-float v7, v0

    div-float v3, v6, v7

    .line 523
    .restart local v3       #scale:F
    iget v2, p0, Landroid/widget/AbsSeekBar;->mTouchProgressOffset:F

    goto :goto_0
.end method

.method private updateThumbPos(II)V
    .locals 12
    .parameter "w"
    .parameter "h"

    .prologue
    const/4 v8, 0x0

    .line 252
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 253
    .local v0, d:Landroid/graphics/drawable/Drawable;
    iget-object v5, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 254
    .local v5, thumb:Landroid/graphics/drawable/Drawable;
    if-nez v5, :cond_2

    move v6, v8

    .line 257
    .local v6, thumbHeight:I
    :goto_0
    iget v9, p0, Landroid/widget/ProgressBar;->mMaxHeight:I

    iget v10, p0, Landroid/view/View;->mPaddingTop:I

    sub-int v10, p2, v10

    iget v11, p0, Landroid/view/View;->mPaddingBottom:I

    sub-int/2addr v10, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 259
    .local v7, trackHeight:I
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v3

    .line 260
    .local v3, max:I
    if-lez v3, :cond_3

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v9

    int-to-float v9, v9

    int-to-float v10, v3

    div-float v4, v9, v10

    .line 262
    .local v4, scale:F
    :goto_1
    if-le v6, v7, :cond_4

    .line 263
    if-eqz v5, :cond_0

    .line 264
    invoke-direct {p0, p1, v5, v4, v8}, Landroid/widget/AbsSeekBar;->setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V

    .line 266
    :cond_0
    sub-int v9, v6, v7

    div-int/lit8 v2, v9, 0x2

    .line 267
    .local v2, gapForCenteringTrack:I
    if-eqz v0, :cond_1

    .line 269
    iget v9, p0, Landroid/view/View;->mPaddingRight:I

    sub-int v9, p1, v9

    iget v10, p0, Landroid/view/View;->mPaddingLeft:I

    sub-int/2addr v9, v10

    iget v10, p0, Landroid/view/View;->mPaddingBottom:I

    sub-int v10, p2, v10

    sub-int/2addr v10, v2

    iget v11, p0, Landroid/view/View;->mPaddingTop:I

    sub-int/2addr v10, v11

    invoke-virtual {v0, v8, v2, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 284
    .end local v2           #gapForCenteringTrack:I
    :cond_1
    :goto_2
    return-void

    .line 254
    .end local v3           #max:I
    .end local v4           #scale:F
    .end local v6           #thumbHeight:I
    .end local v7           #trackHeight:I
    :cond_2
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    goto :goto_0

    .line 260
    .restart local v3       #max:I
    .restart local v6       #thumbHeight:I
    .restart local v7       #trackHeight:I
    :cond_3
    const/4 v4, 0x0

    goto :goto_1

    .line 274
    .restart local v4       #scale:F
    :cond_4
    if-eqz v0, :cond_5

    .line 276
    iget v9, p0, Landroid/view/View;->mPaddingRight:I

    sub-int v9, p1, v9

    iget v10, p0, Landroid/view/View;->mPaddingLeft:I

    sub-int/2addr v9, v10

    iget v10, p0, Landroid/view/View;->mPaddingBottom:I

    sub-int v10, p2, v10

    iget v11, p0, Landroid/view/View;->mPaddingTop:I

    sub-int/2addr v10, v11

    invoke-virtual {v0, v8, v8, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 279
    :cond_5
    sub-int v8, v7, v6

    div-int/lit8 v1, v8, 0x2

    .line 280
    .local v1, gap:I
    if-eqz v5, :cond_1

    .line 281
    invoke-direct {p0, p1, v5, v4, v1}, Landroid/widget/AbsSeekBar;->setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V

    goto :goto_2
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 4

    .prologue
    .line 216
    invoke-super {p0}, Landroid/widget/ProgressBar;->drawableStateChanged()V

    .line 218
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 219
    .local v0, progressDrawable:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 220
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0xff

    :goto_0
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 223
    :cond_0
    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 224
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v1

    .line 225
    .local v1, state:[I
    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 227
    .end local v1           #state:[I
    :cond_1
    return-void

    .line 220
    :cond_2
    const/high16 v2, 0x437f

    iget v3, p0, Landroid/widget/AbsSeekBar;->mDisabledAlpha:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    goto :goto_0
.end method

.method public getKeyProgressIncrement()I
    .locals 1

    .prologue
    .line 189
    iget v0, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    return v0
.end method

.method public getThumb()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getThumbOffset()I
    .locals 1

    .prologue
    .line 156
    iget v0, p0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    return v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .prologue
    .line 210
    invoke-super {p0}, Landroid/widget/ProgressBar;->jumpDrawablesToCurrentState()V

    .line 211
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 212
    :cond_0
    return-void
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    .line 329
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onDraw(Landroid/graphics/Canvas;)V

    .line 330
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 331
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 334
    iget v0, p0, Landroid/view/View;->mPaddingLeft:I

    iget v1, p0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Landroid/view/View;->mPaddingTop:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 335
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 336
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 338
    :cond_0
    monitor-exit p0

    return-void

    .line 329
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 587
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 588
    const-class v0, Landroid/widget/AbsSeekBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    .line 589
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2
    .parameter "info"

    .prologue
    .line 593
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 594
    const-class v1, Landroid/widget/AbsSeekBar;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 596
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 597
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    .line 598
    .local v0, progress:I
    if-lez v0, :cond_0

    .line 599
    const/16 v1, 0x2000

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 601
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 602
    const/16 v1, 0x1000

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 605
    .end local v0           #progress:I
    :cond_1
    return-void
.end method

.method onKeyChange()V
    .locals 0

    .prologue
    .line 561
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 565
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 566
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    .line 567
    .local v0, progress:I
    packed-switch p1, :pswitch_data_0

    .line 582
    .end local v0           #progress:I
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    :goto_0
    return v1

    .line 569
    .restart local v0       #progress:I
    :pswitch_0
    if-lez v0, :cond_0

    .line 570
    iget v2, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    sub-int v2, v0, v2

    invoke-virtual {p0, v2, v1}, Landroid/widget/ProgressBar;->setProgress(IZ)V

    .line 571
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onKeyChange()V

    goto :goto_0

    .line 575
    :pswitch_1
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 576
    iget v2, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    add-int/2addr v2, v0

    invoke-virtual {p0, v2, v1}, Landroid/widget/ProgressBar;->setProgress(IZ)V

    .line 577
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onKeyChange()V

    goto :goto_0

    .line 567
    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected declared-synchronized onMeasure(II)V
    .locals 7
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/4 v3, 0x0

    .line 342
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 344
    .local v0, d:Landroid/graphics/drawable/Drawable;
    iget-object v4, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_1

    .line 345
    .local v3, thumbHeight:I
    :goto_0
    const/4 v2, 0x0

    .line 346
    .local v2, dw:I
    const/4 v1, 0x0

    .line 347
    .local v1, dh:I
    if-eqz v0, :cond_0

    .line 348
    iget v4, p0, Landroid/widget/ProgressBar;->mMinWidth:I

    iget v5, p0, Landroid/widget/ProgressBar;->mMaxWidth:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 349
    iget v4, p0, Landroid/widget/ProgressBar;->mMinHeight:I

    iget v5, p0, Landroid/widget/ProgressBar;->mMaxHeight:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 350
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 352
    :cond_0
    iget v4, p0, Landroid/view/View;->mPaddingLeft:I

    iget v5, p0, Landroid/view/View;->mPaddingRight:I

    add-int/2addr v4, v5

    add-int/2addr v2, v4

    .line 353
    iget v4, p0, Landroid/view/View;->mPaddingTop:I

    iget v5, p0, Landroid/view/View;->mPaddingBottom:I

    add-int/2addr v4, v5

    add-int/2addr v1, v4

    .line 355
    const/4 v4, 0x0

    invoke-static {v2, p1, v4}, Landroid/widget/AbsSeekBar;->resolveSizeAndState(III)I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v1, p2, v5}, Landroid/widget/AbsSeekBar;->resolveSizeAndState(III)I

    move-result v5

    invoke-virtual {p0, v4, v5}, Landroid/view/View;->setMeasuredDimension(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 357
    monitor-exit p0

    return-void

    .line 344
    .end local v1           #dh:I
    .end local v2           #dw:I
    .end local v3           #thumbHeight:I
    :cond_1
    :try_start_1
    iget-object v4, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    goto :goto_0

    .line 342
    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method onProgressRefresh(FZ)V
    .locals 3
    .parameter "scale"
    .parameter "fromUser"

    .prologue
    .line 231
    invoke-super {p0, p1, p2}, Landroid/widget/ProgressBar;->onProgressRefresh(FZ)V

    .line 232
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 233
    .local v0, thumb:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 234
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    const/high16 v2, -0x8000

    invoke-direct {p0, v1, v0, p1, v2}, Landroid/widget/AbsSeekBar;->setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V

    .line 240
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 242
    :cond_0
    return-void
.end method

.method public onResolveDrawables(I)V
    .locals 1
    .parameter "layoutDirection"

    .prologue
    .line 320
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onResolveDrawables(I)V

    .line 322
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)V

    .line 325
    :cond_0
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 5
    .parameter "layoutDirection"

    .prologue
    .line 640
    invoke-super {p0, p1}, Landroid/view/View;->onRtlPropertiesChanged(I)V

    .line 642
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v0

    .line 643
    .local v0, max:I
    if-lez v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v3

    int-to-float v3, v3

    int-to-float v4, v0

    div-float v1, v3, v4

    .line 645
    .local v1, scale:F
    :goto_0
    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 646
    .local v2, thumb:Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    .line 647
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    const/high16 v4, -0x8000

    invoke-direct {p0, v3, v2, v1, v4}, Landroid/widget/AbsSeekBar;->setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V

    .line 653
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 655
    :cond_0
    return-void

    .line 643
    .end local v1           #scale:F
    .end local v2           #thumb:Landroid/graphics/drawable/Drawable;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 247
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ProgressBar;->onSizeChanged(IIII)V

    .line 248
    invoke-direct {p0, p1, p2}, Landroid/widget/AbsSeekBar;->updateThumbPos(II)V

    .line 249
    return-void
.end method

.method onStartTrackingTouch()V
    .locals 1

    .prologue
    .line 546
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsSeekBar;->mIsDragging:Z

    .line 547
    return-void
.end method

.method onStopTrackingTouch()V
    .locals 1

    .prologue
    .line 554
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AbsSeekBar;->mIsDragging:Z

    .line 555
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .parameter "event"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 361
    iget-boolean v9, p0, Landroid/widget/AbsSeekBar;->mIsUserSeekable:Z

    if-eqz v9, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v9

    if-nez v9, :cond_2

    :cond_0
    move v7, v8

    .line 498
    :cond_1
    :goto_0
    return v7

    .line 365
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    .line 366
    .local v6, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    packed-switch v9, :pswitch_data_0

    goto :goto_0

    .line 368
    :pswitch_0
    invoke-virtual {p0}, Landroid/view/View;->isInScrollingContainer()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 369
    iput v6, p0, Landroid/widget/AbsSeekBar;->mTouchDownX:F

    .line 370
    iget v9, p0, Landroid/widget/AbsSeekBar;->mTouchScrollMode:I

    if-ne v9, v7, :cond_1

    .line 371
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onStartTrackingTouch()V

    .line 372
    iput v6, p0, Landroid/widget/AbsSeekBar;->mDragTouchDownX:F

    .line 373
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    iput v9, p0, Landroid/widget/AbsSeekBar;->mDragTouchDownY:F

    .line 374
    iput-boolean v8, p0, Landroid/widget/AbsSeekBar;->mInDragoning:Z

    .line 375
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v8

    iput v8, p0, Landroid/widget/AbsSeekBar;->mTouchDownProgress:I

    .line 376
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->attemptClaimDrag()V

    goto :goto_0

    .line 379
    :cond_3
    invoke-virtual {p0, v7}, Landroid/view/View;->setPressed(Z)V

    .line 380
    iget-object v9, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v9, :cond_4

    .line 381
    iget-object v9, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {p0, v9}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    .line 383
    :cond_4
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onStartTrackingTouch()V

    .line 385
    iput v8, p0, Landroid/widget/AbsSeekBar;->mTouchDownProgress:I

    .line 386
    iget v9, p0, Landroid/widget/AbsSeekBar;->mTouchScrollMode:I

    if-ne v9, v7, :cond_5

    .line 387
    iput v6, p0, Landroid/widget/AbsSeekBar;->mDragTouchDownX:F

    .line 388
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    iput v9, p0, Landroid/widget/AbsSeekBar;->mDragTouchDownY:F

    .line 389
    iput-boolean v8, p0, Landroid/widget/AbsSeekBar;->mInDragoning:Z

    .line 390
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v8

    iput v8, p0, Landroid/widget/AbsSeekBar;->mTouchDownProgress:I

    .line 395
    :goto_1
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->attemptClaimDrag()V

    goto :goto_0

    .line 393
    :cond_5
    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 400
    :pswitch_1
    iget-boolean v8, p0, Landroid/widget/AbsSeekBar;->mIsDragging:Z

    if-eqz v8, :cond_8

    .line 401
    iget v8, p0, Landroid/widget/AbsSeekBar;->mTouchScrollMode:I

    if-ne v8, v7, :cond_7

    .line 403
    iget v8, p0, Landroid/widget/AbsSeekBar;->mDragTouchDownX:F

    sub-float v8, v6, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 404
    .local v1, deltaX:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    iget v9, p0, Landroid/widget/AbsSeekBar;->mDragTouchDownY:F

    sub-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 407
    .local v2, deltaY:F
    mul-float v8, v1, v1

    mul-float v9, v2, v2

    add-float/2addr v8, v9

    iget v9, p0, Landroid/widget/AbsSeekBar;->mTouchSlopSquare:I

    int-to-float v9, v9

    cmpl-float v8, v8, v9

    if-lez v8, :cond_6

    .line 408
    iget-boolean v8, p0, Landroid/widget/AbsSeekBar;->mInDragoning:Z

    if-nez v8, :cond_6

    .line 409
    iput v6, p0, Landroid/widget/AbsSeekBar;->mDragTouchDownX:F

    .line 410
    iput-boolean v7, p0, Landroid/widget/AbsSeekBar;->mInDragoning:Z

    .line 414
    :cond_6
    iget-boolean v8, p0, Landroid/widget/AbsSeekBar;->mInDragoning:Z

    if-eqz v8, :cond_1

    .line 418
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v8

    iget v9, p0, Landroid/view/View;->mPaddingLeft:I

    sub-int/2addr v8, v9

    iget v9, p0, Landroid/view/View;->mPaddingRight:I

    sub-int v0, v8, v9

    .line 419
    .local v0, available:I
    if-eqz v0, :cond_1

    .line 422
    iget v8, p0, Landroid/widget/AbsSeekBar;->mDragTouchDownX:F

    sub-float v8, v6, v8

    int-to-float v9, v0

    div-float v5, v8, v9

    .line 423
    .local v5, scale:F
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v3

    .line 425
    .local v3, max:I
    iget v8, p0, Landroid/widget/AbsSeekBar;->mTouchDownProgress:I

    int-to-float v9, v3

    mul-float/2addr v9, v5

    invoke-direct {p0, v9}, Landroid/widget/AbsSeekBar;->getIntFromFloat(F)I

    move-result v9

    add-int v4, v8, v9

    .line 426
    .local v4, progress:I
    invoke-virtual {p0, v4, v7}, Landroid/widget/ProgressBar;->setProgress(IZ)V

    goto/16 :goto_0

    .line 428
    .end local v0           #available:I
    .end local v1           #deltaX:F
    .end local v2           #deltaY:F
    .end local v3           #max:I
    .end local v4           #progress:I
    .end local v5           #scale:F
    :cond_7
    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 431
    :cond_8
    iget v8, p0, Landroid/widget/AbsSeekBar;->mTouchDownX:F

    sub-float v8, v6, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    iget v9, p0, Landroid/widget/AbsSeekBar;->mScaledTouchSlop:I

    int-to-float v9, v9

    cmpl-float v8, v8, v9

    if-lez v8, :cond_1

    .line 432
    invoke-virtual {p0, v7}, Landroid/view/View;->setPressed(Z)V

    .line 433
    iget-object v8, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_9

    .line 434
    iget-object v8, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {p0, v8}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    .line 436
    :cond_9
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onStartTrackingTouch()V

    .line 437
    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 438
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->attemptClaimDrag()V

    goto/16 :goto_0

    .line 444
    :pswitch_2
    iget-boolean v9, p0, Landroid/widget/AbsSeekBar;->mIsDragging:Z

    if-eqz v9, :cond_e

    .line 445
    iget v9, p0, Landroid/widget/AbsSeekBar;->mTouchScrollMode:I

    if-ne v9, v7, :cond_c

    iget-boolean v9, p0, Landroid/widget/AbsSeekBar;->mInDragoning:Z

    if-nez v9, :cond_c

    .line 447
    iget v9, p0, Landroid/widget/AbsSeekBar;->mTouchDownProgress:I

    iget v10, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    add-int/2addr v9, v10

    invoke-direct {p0, v9}, Landroid/widget/AbsSeekBar;->getPosByProgress(I)I

    move-result v9

    int-to-float v9, v9

    cmpl-float v9, v6, v9

    if-ltz v9, :cond_b

    iget v9, p0, Landroid/widget/AbsSeekBar;->mTouchDownProgress:I

    invoke-direct {p0, v9}, Landroid/widget/AbsSeekBar;->getPosByProgress(I)I

    move-result v9

    iget v10, p0, Landroid/widget/AbsSeekBar;->mHalfThumbWidth:I

    add-int/2addr v9, v10

    int-to-float v9, v9

    cmpl-float v9, v6, v9

    if-ltz v9, :cond_b

    iget v9, p0, Landroid/widget/AbsSeekBar;->mDragTouchDownX:F

    iget v10, p0, Landroid/widget/AbsSeekBar;->mTouchDownProgress:I

    invoke-direct {p0, v10}, Landroid/widget/AbsSeekBar;->getPosByProgress(I)I

    move-result v10

    iget v11, p0, Landroid/widget/AbsSeekBar;->mHalfThumbWidth:I

    add-int/2addr v10, v11

    int-to-float v10, v10

    cmpl-float v9, v9, v10

    if-ltz v9, :cond_b

    .line 451
    iget v9, p0, Landroid/widget/AbsSeekBar;->mTouchDownProgress:I

    iget v10, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    add-int/2addr v9, v10

    invoke-virtual {p0, v9, v7}, Landroid/widget/ProgressBar;->setProgress(IZ)V

    .line 474
    :cond_a
    :goto_2
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onStopTrackingTouch()V

    .line 475
    invoke-virtual {p0, v8}, Landroid/view/View;->setPressed(Z)V

    .line 486
    :goto_3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 487
    iput-boolean v8, p0, Landroid/widget/AbsSeekBar;->mInDragoning:Z

    goto/16 :goto_0

    .line 452
    :cond_b
    iget v9, p0, Landroid/widget/AbsSeekBar;->mTouchDownProgress:I

    iget v10, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    sub-int/2addr v9, v10

    invoke-direct {p0, v9}, Landroid/widget/AbsSeekBar;->getPosByProgress(I)I

    move-result v9

    int-to-float v9, v9

    cmpg-float v9, v6, v9

    if-gtz v9, :cond_a

    iget v9, p0, Landroid/widget/AbsSeekBar;->mTouchDownProgress:I

    invoke-direct {p0, v9}, Landroid/widget/AbsSeekBar;->getPosByProgress(I)I

    move-result v9

    iget v10, p0, Landroid/widget/AbsSeekBar;->mHalfThumbWidth:I

    sub-int/2addr v9, v10

    int-to-float v9, v9

    cmpg-float v9, v6, v9

    if-gtz v9, :cond_a

    iget v9, p0, Landroid/widget/AbsSeekBar;->mDragTouchDownX:F

    iget v10, p0, Landroid/widget/AbsSeekBar;->mTouchDownProgress:I

    invoke-direct {p0, v10}, Landroid/widget/AbsSeekBar;->getPosByProgress(I)I

    move-result v10

    iget v11, p0, Landroid/widget/AbsSeekBar;->mHalfThumbWidth:I

    sub-int/2addr v10, v11

    int-to-float v10, v10

    cmpg-float v9, v9, v10

    if-gtz v9, :cond_a

    .line 456
    iget v9, p0, Landroid/widget/AbsSeekBar;->mTouchDownProgress:I

    iget v10, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    sub-int/2addr v9, v10

    invoke-virtual {p0, v9, v7}, Landroid/widget/ProgressBar;->setProgress(IZ)V

    goto :goto_2

    .line 458
    :cond_c
    iget v9, p0, Landroid/widget/AbsSeekBar;->mTouchScrollMode:I

    if-ne v9, v7, :cond_d

    iget-boolean v9, p0, Landroid/widget/AbsSeekBar;->mInDragoning:Z

    if-ne v9, v7, :cond_d

    .line 461
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v9

    iget v10, p0, Landroid/view/View;->mPaddingLeft:I

    sub-int/2addr v9, v10

    iget v10, p0, Landroid/view/View;->mPaddingRight:I

    sub-int v0, v9, v10

    .line 462
    .restart local v0       #available:I
    if-eqz v0, :cond_1

    .line 465
    iget v9, p0, Landroid/widget/AbsSeekBar;->mDragTouchDownX:F

    sub-float v1, v6, v9

    .line 466
    .restart local v1       #deltaX:F
    int-to-float v9, v0

    div-float v5, v1, v9

    .line 467
    .restart local v5       #scale:F
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v3

    .line 469
    .restart local v3       #max:I
    iget v9, p0, Landroid/widget/AbsSeekBar;->mTouchDownProgress:I

    int-to-float v10, v3

    mul-float/2addr v10, v5

    invoke-direct {p0, v10}, Landroid/widget/AbsSeekBar;->getIntFromFloat(F)I

    move-result v10

    add-int/2addr v9, v10

    invoke-virtual {p0, v9, v7}, Landroid/widget/ProgressBar;->setProgress(IZ)V

    goto :goto_2

    .line 471
    .end local v0           #available:I
    .end local v1           #deltaX:F
    .end local v3           #max:I
    .end local v5           #scale:F
    :cond_d
    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    goto :goto_2

    .line 479
    :cond_e
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onStartTrackingTouch()V

    .line 480
    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 481
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onStopTrackingTouch()V

    goto :goto_3

    .line 491
    :pswitch_3
    iget-boolean v9, p0, Landroid/widget/AbsSeekBar;->mIsDragging:Z

    if-eqz v9, :cond_f

    .line 492
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onStopTrackingTouch()V

    .line 493
    invoke-virtual {p0, v8}, Landroid/view/View;->setPressed(Z)V

    .line 495
    :cond_f
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto/16 :goto_0

    .line 366
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 6
    .parameter "action"
    .parameter "arguments"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 609
    invoke-super {p0, p1, p2}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 635
    :goto_0
    return v2

    .line 612
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_1

    move v2, v3

    .line 613
    goto :goto_0

    .line 615
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v1

    .line 616
    .local v1, progress:I
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40a0

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 617
    .local v0, increment:I
    sparse-switch p1, :sswitch_data_0

    move v2, v3

    .line 635
    goto :goto_0

    .line 619
    :sswitch_0
    if-gtz v1, :cond_2

    move v2, v3

    .line 620
    goto :goto_0

    .line 622
    :cond_2
    sub-int v3, v1, v0

    invoke-virtual {p0, v3, v2}, Landroid/widget/ProgressBar;->setProgress(IZ)V

    .line 623
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onKeyChange()V

    goto :goto_0

    .line 627
    :sswitch_1
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v4

    if-lt v1, v4, :cond_3

    move v2, v3

    .line 628
    goto :goto_0

    .line 630
    :cond_3
    add-int v3, v1, v0

    invoke-virtual {p0, v3, v2}, Landroid/widget/ProgressBar;->setProgress(IZ)V

    .line 631
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onKeyChange()V

    goto :goto_0

    .line 617
    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_1
        0x2000 -> :sswitch_0
    .end sparse-switch
.end method

.method public setKeyProgressIncrement(I)V
    .locals 0
    .parameter "increment"

    .prologue
    .line 177
    if-gez p1, :cond_0

    neg-int p1, p1

    .end local p1
    :cond_0
    iput p1, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    .line 178
    return-void
.end method

.method public declared-synchronized setMax(I)V
    .locals 3
    .parameter "max"

    .prologue
    .line 194
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 196
    iget v0, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v0

    iget v1, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    div-int/2addr v0, v1

    const/16 v1, 0x14

    if-le v0, v1, :cond_1

    .line 199
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x41a0

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/AbsSeekBar;->setKeyProgressIncrement(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    :cond_1
    monitor-exit p0

    return-void

    .line 194
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setThumb(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .parameter "thumb"

    .prologue
    .line 103
    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_5

    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eq p1, v2, :cond_5

    .line 104
    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 105
    const/4 v0, 0x1

    .line 109
    .local v0, needUpdate:Z
    :goto_0
    if-eqz p1, :cond_3

    .line 110
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 111
    invoke-virtual {p0}, Landroid/view/View;->canResolveLayoutDirection()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 112
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)V

    .line 118
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    .line 121
    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget-object v3, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    if-ne v2, v3, :cond_1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    iget-object v3, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    if-eq v2, v3, :cond_2

    .line 124
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 127
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Landroid/widget/AbsSeekBar;->mHalfThumbWidth:I

    .line 129
    :cond_3
    iput-object p1, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 130
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 131
    if-eqz v0, :cond_4

    .line 132
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-direct {p0, v2, v3}, Landroid/widget/AbsSeekBar;->updateThumbPos(II)V

    .line 133
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 136
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v1

    .line 137
    .local v1, state:[I
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 140
    .end local v1           #state:[I
    :cond_4
    return-void

    .line 107
    .end local v0           #needUpdate:Z
    :cond_5
    const/4 v0, 0x0

    .restart local v0       #needUpdate:Z
    goto :goto_0
.end method

.method public setThumbOffset(I)V
    .locals 0
    .parameter "thumbOffset"

    .prologue
    .line 166
    iput p1, p0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    .line 167
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 168
    return-void
.end method

.method protected setTouchMode(I)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 684
    iput p1, p0, Landroid/widget/AbsSeekBar;->mTouchScrollMode:I

    .line 685
    iget v0, p0, Landroid/widget/AbsSeekBar;->mTouchScrollMode:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 686
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/AbsSeekBar;->mTouchScrollMode:I

    .line 687
    :cond_0
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .parameter "who"

    .prologue
    .line 205
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

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
