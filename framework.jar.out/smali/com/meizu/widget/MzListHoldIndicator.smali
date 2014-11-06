.class public Lcom/meizu/widget/MzListHoldIndicator;
.super Ljava/lang/Object;
.source "MzListHoldIndicator.java"


# static fields
.field static final ALPHA_MAX:I = 0xff

.field static final FADE_DURATION:J = 0xc8L

.field private static final STATE_ENTER:I = 0x2

.field private static final STATE_EXIT:I = 0x3

.field private static final STATE_NONE:I = 0x0

.field private static final STATE_VISIBLE:I = 0x1


# instance fields
.field private mExtraOffset:I

.field private mHoldDrawable:Landroid/graphics/drawable/Drawable;

.field private mHoldDrawableHeight:I

.field private mHoldDrawableWidth:I

.field private mStartTime:J

.field private mState:I

.field private mTopOffset:I

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 4
    .parameter "context"
    .parameter "view"

    .prologue
    const/4 v3, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput v3, p0, Lcom/meizu/widget/MzListHoldIndicator;->mState:I

    .line 29
    iput-object p2, p0, Lcom/meizu/widget/MzListHoldIndicator;->mView:Landroid/view/View;

    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10805b1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/widget/MzListHoldIndicator;->mHoldDrawable:Landroid/graphics/drawable/Drawable;

    .line 33
    iget-object v0, p0, Lcom/meizu/widget/MzListHoldIndicator;->mHoldDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/meizu/widget/MzListHoldIndicator;->mHoldDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/meizu/widget/MzListHoldIndicator;->mHoldDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10501fe

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/meizu/widget/MzListHoldIndicator;->mTopOffset:I

    .line 39
    iget-object v0, p0, Lcom/meizu/widget/MzListHoldIndicator;->mHoldDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/meizu/widget/MzListHoldIndicator;->mHoldDrawableWidth:I

    .line 40
    iget-object v0, p0, Lcom/meizu/widget/MzListHoldIndicator;->mHoldDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/meizu/widget/MzListHoldIndicator;->mHoldDrawableHeight:I

    .line 41
    return-void
.end method

.method private startFade(Z)V
    .locals 2
    .parameter "enter"

    .prologue
    .line 91
    if-eqz p1, :cond_0

    .line 92
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/meizu/widget/MzListHoldIndicator;->setState(I)V

    .line 97
    :goto_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/meizu/widget/MzListHoldIndicator;->mStartTime:J

    .line 98
    return-void

    .line 94
    :cond_0
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/meizu/widget/MzListHoldIndicator;->setState(I)V

    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 13
    .parameter "canvas"

    .prologue
    const-wide/16 v11, 0xff

    const/4 v10, 0x0

    const-wide/16 v7, 0xc8

    .line 44
    const/4 v0, 0x0

    .line 46
    .local v0, alpha:I
    iget v5, p0, Lcom/meizu/widget/MzListHoldIndicator;->mState:I

    packed-switch v5, :pswitch_data_0

    .line 73
    :goto_0
    iget-object v5, p0, Lcom/meizu/widget/MzListHoldIndicator;->mHoldDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 74
    iget-object v5, p0, Lcom/meizu/widget/MzListHoldIndicator;->mView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    iget v6, p0, Lcom/meizu/widget/MzListHoldIndicator;->mHoldDrawableWidth:I

    sub-int/2addr v5, v6

    div-int/lit8 v4, v5, 0x2

    .line 76
    .local v4, x:I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    .line 77
    .local v3, restoreCount:I
    iget-object v5, p0, Lcom/meizu/widget/MzListHoldIndicator;->mView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getScrollX()I

    move-result v5

    add-int/2addr v5, v4

    int-to-float v5, v5

    iget-object v6, p0, Lcom/meizu/widget/MzListHoldIndicator;->mView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getScrollY()I

    move-result v6

    iget v7, p0, Lcom/meizu/widget/MzListHoldIndicator;->mExtraOffset:I

    add-int/2addr v6, v7

    iget v7, p0, Lcom/meizu/widget/MzListHoldIndicator;->mTopOffset:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 78
    iget-object v5, p0, Lcom/meizu/widget/MzListHoldIndicator;->mHoldDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 79
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 80
    .end local v3           #restoreCount:I
    .end local v4           #x:I
    :pswitch_0
    return-void

    .line 50
    :pswitch_1
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    .line 51
    .local v1, now:J
    iget-wide v5, p0, Lcom/meizu/widget/MzListHoldIndicator;->mStartTime:J

    add-long/2addr v5, v7

    cmp-long v5, v1, v5

    if-lez v5, :cond_0

    .line 52
    const/16 v0, 0xff

    .line 53
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/meizu/widget/MzListHoldIndicator;->setState(I)V

    goto :goto_0

    .line 55
    :cond_0
    iget-wide v5, p0, Lcom/meizu/widget/MzListHoldIndicator;->mStartTime:J

    sub-long v5, v1, v5

    mul-long/2addr v5, v11

    div-long/2addr v5, v7

    long-to-int v0, v5

    .line 56
    iget-object v5, p0, Lcom/meizu/widget/MzListHoldIndicator;->mView:Landroid/view/View;

    iget v6, p0, Lcom/meizu/widget/MzListHoldIndicator;->mTopOffset:I

    iget-object v7, p0, Lcom/meizu/widget/MzListHoldIndicator;->mView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    iget v8, p0, Lcom/meizu/widget/MzListHoldIndicator;->mTopOffset:I

    iget v9, p0, Lcom/meizu/widget/MzListHoldIndicator;->mHoldDrawableHeight:I

    add-int/2addr v8, v9

    invoke-virtual {v5, v10, v6, v7, v8}, Landroid/view/View;->invalidate(IIII)V

    goto :goto_0

    .line 60
    .end local v1           #now:J
    :pswitch_2
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    .line 61
    .restart local v1       #now:J
    iget-wide v5, p0, Lcom/meizu/widget/MzListHoldIndicator;->mStartTime:J

    add-long/2addr v5, v7

    cmp-long v5, v1, v5

    if-lez v5, :cond_1

    .line 62
    invoke-virtual {p0, v10}, Lcom/meizu/widget/MzListHoldIndicator;->setState(I)V

    goto :goto_0

    .line 64
    :cond_1
    iget-wide v5, p0, Lcom/meizu/widget/MzListHoldIndicator;->mStartTime:J

    sub-long v5, v1, v5

    mul-long/2addr v5, v11

    div-long/2addr v5, v7

    sub-long v5, v11, v5

    long-to-int v0, v5

    .line 65
    iget-object v5, p0, Lcom/meizu/widget/MzListHoldIndicator;->mView:Landroid/view/View;

    iget v6, p0, Lcom/meizu/widget/MzListHoldIndicator;->mTopOffset:I

    iget-object v7, p0, Lcom/meizu/widget/MzListHoldIndicator;->mView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    iget v8, p0, Lcom/meizu/widget/MzListHoldIndicator;->mTopOffset:I

    iget v9, p0, Lcom/meizu/widget/MzListHoldIndicator;->mHoldDrawableHeight:I

    add-int/2addr v8, v9

    invoke-virtual {v5, v10, v6, v7, v8}, Landroid/view/View;->invalidate(IIII)V

    goto/16 :goto_0

    .line 69
    .end local v1           #now:J
    :pswitch_3
    const/16 v0, 0xff

    goto/16 :goto_0

    .line 46
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/meizu/widget/MzListHoldIndicator;->startFade(Z)V

    .line 88
    return-void
.end method

.method public isShowing()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 108
    iget v1, p0, Lcom/meizu/widget/MzListHoldIndicator;->mState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/meizu/widget/MzListHoldIndicator;->mState:I

    if-ne v1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setExtraOffset(I)V
    .locals 0
    .parameter "offset"

    .prologue
    .line 112
    iput p1, p0, Lcom/meizu/widget/MzListHoldIndicator;->mExtraOffset:I

    .line 113
    return-void
.end method

.method public setState(I)V
    .locals 6
    .parameter "state"

    .prologue
    .line 101
    iget v0, p0, Lcom/meizu/widget/MzListHoldIndicator;->mState:I

    if-eq v0, p1, :cond_0

    .line 102
    iput p1, p0, Lcom/meizu/widget/MzListHoldIndicator;->mState:I

    .line 103
    iget-object v0, p0, Lcom/meizu/widget/MzListHoldIndicator;->mView:Landroid/view/View;

    const/4 v1, 0x0

    iget v2, p0, Lcom/meizu/widget/MzListHoldIndicator;->mTopOffset:I

    iget-object v3, p0, Lcom/meizu/widget/MzListHoldIndicator;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/meizu/widget/MzListHoldIndicator;->mTopOffset:I

    iget v5, p0, Lcom/meizu/widget/MzListHoldIndicator;->mHoldDrawableHeight:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->invalidate(IIII)V

    .line 105
    :cond_0
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/meizu/widget/MzListHoldIndicator;->startFade(Z)V

    .line 84
    return-void
.end method
