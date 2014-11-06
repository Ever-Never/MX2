.class Landroid/widget/Gallery$ListViewDragShadowBuilder;
.super Landroid/view/View$DragShadowBuilder;
.source "Gallery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Gallery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ListViewDragShadowBuilder"
.end annotation


# static fields
.field private static final STATE_ENTER_NORMAL:I = 0x0

.field private static final STATE_ENTER_WARNING:I = 0x1

.field private static final STATE_IDLE:I = -0x1


# instance fields
.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mBackgroundPadding:Landroid/graphics/Rect;

.field private mHeight:I

.field private mHightLightNormal:Landroid/graphics/drawable/Drawable;

.field private mHightLightWarning:Landroid/graphics/drawable/Drawable;

.field private mNeedBackground:Z

.field private mShowPoint:Landroid/graphics/Point;

.field private mState:I

.field private mWidth:I

.field final synthetic this$0:Landroid/widget/Gallery;


# direct methods
.method public constructor <init>(Landroid/widget/Gallery;Landroid/view/View;)V
    .locals 2
    .parameter
    .parameter "view"

    .prologue
    .line 2444
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/widget/Gallery$ListViewDragShadowBuilder;-><init>(Landroid/widget/Gallery;Landroid/view/View;ZLandroid/graphics/Point;)V

    .line 2445
    return-void
.end method

.method public constructor <init>(Landroid/widget/Gallery;Landroid/view/View;ZLandroid/graphics/Point;)V
    .locals 11
    .parameter
    .parameter "view"
    .parameter "needBg"
    .parameter "shadowTouchPoint"

    .prologue
    .line 2447
    iput-object p1, p0, Landroid/widget/Gallery$ListViewDragShadowBuilder;->this$0:Landroid/widget/Gallery;

    .line 2448
    invoke-direct {p0, p2}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    .line 2438
    const/4 v6, 0x1

    iput-boolean v6, p0, Landroid/widget/Gallery$ListViewDragShadowBuilder;->mNeedBackground:Z

    .line 2439
    const/4 v6, 0x0

    iput-object v6, p0, Landroid/widget/Gallery$ListViewDragShadowBuilder;->mShowPoint:Landroid/graphics/Point;

    .line 2536
    const/4 v6, -0x1

    iput v6, p0, Landroid/widget/Gallery$ListViewDragShadowBuilder;->mState:I

    .line 2449
    iput-boolean p3, p0, Landroid/widget/Gallery$ListViewDragShadowBuilder;->mNeedBackground:Z

    .line 2450
    iput-object p4, p0, Landroid/widget/Gallery$ListViewDragShadowBuilder;->mShowPoint:Landroid/graphics/Point;

    .line 2451
    if-nez p2, :cond_1

    .line 2493
    :cond_0
    :goto_0
    return-void

    .line 2452
    :cond_1
    if-eqz p3, :cond_3

    .line 2453
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    #getter for: Landroid/widget/Gallery;->mDragViewBackground:I
    invoke-static {p1}, Landroid/widget/Gallery;->access$1900(Landroid/widget/Gallery;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Landroid/widget/Gallery$ListViewDragShadowBuilder;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 2454
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, p0, Landroid/widget/Gallery$ListViewDragShadowBuilder;->mBackgroundPadding:Landroid/graphics/Rect;

    .line 2455
    iget-object v6, p0, Landroid/widget/Gallery$ListViewDragShadowBuilder;->mBackground:Landroid/graphics/drawable/Drawable;

    iget-object v7, p0, Landroid/widget/Gallery$ListViewDragShadowBuilder;->mBackgroundPadding:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 2456
    iget-object v4, p0, Landroid/widget/Gallery$ListViewDragShadowBuilder;->mBackgroundPadding:Landroid/graphics/Rect;

    .line 2457
    .local v4, padding:Landroid/graphics/Rect;
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v5

    .line 2458
    .local v5, width:I
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 2459
    .local v1, height:I
    iget v6, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v5

    iget v7, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v7

    iput v6, p0, Landroid/widget/Gallery$ListViewDragShadowBuilder;->mWidth:I

    .line 2460
    iget v6, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v1

    iget v7, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v7

    iput v6, p0, Landroid/widget/Gallery$ListViewDragShadowBuilder;->mHeight:I

    .line 2461
    iget-object v6, p0, Landroid/widget/Gallery$ListViewDragShadowBuilder;->mBackground:Landroid/graphics/drawable/Drawable;

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget v9, p0, Landroid/widget/Gallery$ListViewDragShadowBuilder;->mWidth:I

    iget v10, p0, Landroid/widget/Gallery$ListViewDragShadowBuilder;->mHeight:I

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2463
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    #getter for: Landroid/widget/Gallery;->mDragViewBackgroundFilter:I
    invoke-static {p1}, Landroid/widget/Gallery;->access$2000(Landroid/widget/Gallery;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Landroid/widget/Gallery$ListViewDragShadowBuilder;->mHightLightNormal:Landroid/graphics/drawable/Drawable;

    .line 2464
    iget-object v6, p0, Landroid/widget/Gallery$ListViewDragShadowBuilder;->mHightLightNormal:Landroid/graphics/drawable/Drawable;

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget v9, p0, Landroid/widget/Gallery$ListViewDragShadowBuilder;->mWidth:I

    iget v10, p0, Landroid/widget/Gallery$ListViewDragShadowBuilder;->mHeight:I

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2466
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    #getter for: Landroid/widget/Gallery;->mDragViewBackgroundDelete:I
    invoke-static {p1}, Landroid/widget/Gallery;->access$2100(Landroid/widget/Gallery;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Landroid/widget/Gallery$ListViewDragShadowBuilder;->mHightLightWarning:Landroid/graphics/drawable/Drawable;

    .line 2467
    iget-object v6, p0, Landroid/widget/Gallery$ListViewDragShadowBuilder;->mHightLightWarning:Landroid/graphics/drawable/Drawable;

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget v9, p0, Landroid/widget/Gallery$ListViewDragShadowBuilder;->mWidth:I

    iget v10, p0, Landroid/widget/Gallery$ListViewDragShadowBuilder;->mHeight:I

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2474
    .end local v1           #height:I
    .end local v4           #padding:Landroid/graphics/Rect;
    .end local v5           #width:I
    :goto_1
    const/4 v6, 0x0

    #setter for: Landroid/widget/Gallery;->mDragScrollY:I
    invoke-static {p1, v6}, Landroid/widget/Gallery;->access$2202(Landroid/widget/Gallery;I)I

    .line 2475
    iget v6, p0, Landroid/widget/Gallery$ListViewDragShadowBuilder;->mHeight:I

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v7

    if-le v6, v7, :cond_0

    .line 2478
    const/4 v6, 0x2

    new-array v2, v6, [I

    .line 2479
    .local v2, listLocation:[I
    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 2481
    const/4 v6, 0x2

    new-array v0, v6, [I

    .line 2482
    .local v0, dragLocation:[I
    invoke-virtual {p2, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 2484
    const/4 v6, 0x1

    aget v6, v0, v6

    const/4 v7, 0x1

    aget v7, v2, v7

    if-ge v6, v7, :cond_2

    .line 2485
    const/4 v6, 0x1

    aget v6, v2, v6

    const/4 v7, 0x1

    aget v7, v0, v7

    sub-int/2addr v6, v7

    #setter for: Landroid/widget/Gallery;->mDragScrollY:I
    invoke-static {p1, v6}, Landroid/widget/Gallery;->access$2202(Landroid/widget/Gallery;I)I

    .line 2486
    iget v6, p0, Landroid/widget/Gallery$ListViewDragShadowBuilder;->mHeight:I

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v7

    sub-int v3, v6, v7

    .line 2487
    .local v3, maxDragScrollY:I
    #getter for: Landroid/widget/Gallery;->mDragScrollY:I
    invoke-static {p1}, Landroid/widget/Gallery;->access$2200(Landroid/widget/Gallery;)I

    move-result v6

    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    #setter for: Landroid/widget/Gallery;->mDragScrollY:I
    invoke-static {p1, v6}, Landroid/widget/Gallery;->access$2202(Landroid/widget/Gallery;I)I

    .line 2490
    .end local v3           #maxDragScrollY:I
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v6

    iput v6, p0, Landroid/widget/Gallery$ListViewDragShadowBuilder;->mHeight:I

    goto/16 :goto_0

    .line 2470
    .end local v0           #dragLocation:[I
    .end local v2           #listLocation:[I
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v6

    iput v6, p0, Landroid/widget/Gallery$ListViewDragShadowBuilder;->mWidth:I

    .line 2471
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v6

    iput v6, p0, Landroid/widget/Gallery$ListViewDragShadowBuilder;->mHeight:I

    goto :goto_1
.end method


# virtual methods
.method public getDragingState()I
    .locals 1

    .prologue
    .line 2543
    iget v0, p0, Landroid/widget/Gallery$ListViewDragShadowBuilder;->mState:I

    return v0
.end method

.method public onDrawShadow(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    .line 2509
    iget-boolean v0, p0, Landroid/widget/Gallery$ListViewDragShadowBuilder;->mNeedBackground:Z

    if-eqz v0, :cond_2

    .line 2510
    iget v0, p0, Landroid/widget/Gallery$ListViewDragShadowBuilder;->mState:I

    if-nez v0, :cond_0

    .line 2511
    iget-object v0, p0, Landroid/widget/Gallery$ListViewDragShadowBuilder;->mHightLightNormal:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2517
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2518
    iget-object v0, p0, Landroid/widget/Gallery$ListViewDragShadowBuilder;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget-object v1, p0, Landroid/widget/Gallery$ListViewDragShadowBuilder;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Landroid/widget/Gallery$ListViewDragShadowBuilder;->this$0:Landroid/widget/Gallery;

    #getter for: Landroid/widget/Gallery;->mDragScrollY:I
    invoke-static {v2}, Landroid/widget/Gallery;->access$2200(Landroid/widget/Gallery;)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2519
    invoke-super {p0, p1}, Landroid/view/View$DragShadowBuilder;->onDrawShadow(Landroid/graphics/Canvas;)V

    .line 2520
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 2531
    :goto_1
    return-void

    .line 2512
    :cond_0
    iget v0, p0, Landroid/widget/Gallery$ListViewDragShadowBuilder;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2513
    iget-object v0, p0, Landroid/widget/Gallery$ListViewDragShadowBuilder;->mHightLightWarning:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 2515
    :cond_1
    iget-object v0, p0, Landroid/widget/Gallery$ListViewDragShadowBuilder;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 2522
    :cond_2
    iget-object v0, p0, Landroid/widget/Gallery$ListViewDragShadowBuilder;->this$0:Landroid/widget/Gallery;

    #getter for: Landroid/widget/Gallery;->mDragScrollY:I
    invoke-static {v0}, Landroid/widget/Gallery;->access$2200(Landroid/widget/Gallery;)I

    move-result v0

    if-eqz v0, :cond_3

    .line 2523
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2524
    const/4 v0, 0x0

    iget-object v1, p0, Landroid/widget/Gallery$ListViewDragShadowBuilder;->this$0:Landroid/widget/Gallery;

    #getter for: Landroid/widget/Gallery;->mDragScrollY:I
    invoke-static {v1}, Landroid/widget/Gallery;->access$2200(Landroid/widget/Gallery;)I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2525
    invoke-super {p0, p1}, Landroid/view/View$DragShadowBuilder;->onDrawShadow(Landroid/graphics/Canvas;)V

    .line 2526
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_1

    .line 2528
    :cond_3
    invoke-super {p0, p1}, Landroid/view/View$DragShadowBuilder;->onDrawShadow(Landroid/graphics/Canvas;)V

    goto :goto_1
.end method

.method public onProvideShadowMetrics(Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 3
    .parameter "shadowSize"
    .parameter "shadowTouchPoint"

    .prologue
    .line 2497
    invoke-super {p0, p1, p2}, Landroid/view/View$DragShadowBuilder;->onProvideShadowMetrics(Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 2498
    iget v0, p0, Landroid/widget/Gallery$ListViewDragShadowBuilder;->mWidth:I

    iget v1, p0, Landroid/widget/Gallery$ListViewDragShadowBuilder;->mHeight:I

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Point;->set(II)V

    .line 2500
    iget-boolean v0, p0, Landroid/widget/Gallery$ListViewDragShadowBuilder;->mNeedBackground:Z

    if-eqz v0, :cond_0

    .line 2501
    iget-object v0, p0, Landroid/widget/Gallery$ListViewDragShadowBuilder;->this$0:Landroid/widget/Gallery;

    #getter for: Landroid/widget/Gallery;->mDragOffsetX:I
    invoke-static {v0}, Landroid/widget/Gallery;->access$2300(Landroid/widget/Gallery;)I

    move-result v0

    iget-object v1, p0, Landroid/widget/Gallery$ListViewDragShadowBuilder;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/widget/Gallery$ListViewDragShadowBuilder;->this$0:Landroid/widget/Gallery;

    #getter for: Landroid/widget/Gallery;->mDragOffsetY:I
    invoke-static {v1}, Landroid/widget/Gallery;->access$2400(Landroid/widget/Gallery;)I

    move-result v1

    iget-object v2, p0, Landroid/widget/Gallery$ListViewDragShadowBuilder;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    iget-object v2, p0, Landroid/widget/Gallery$ListViewDragShadowBuilder;->this$0:Landroid/widget/Gallery;

    #getter for: Landroid/widget/Gallery;->mDragScrollY:I
    invoke-static {v2}, Landroid/widget/Gallery;->access$2200(Landroid/widget/Gallery;)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Point;->set(II)V

    .line 2505
    :goto_0
    return-void

    .line 2503
    :cond_0
    iget-object v0, p0, Landroid/widget/Gallery$ListViewDragShadowBuilder;->this$0:Landroid/widget/Gallery;

    #getter for: Landroid/widget/Gallery;->mDragOffsetX:I
    invoke-static {v0}, Landroid/widget/Gallery;->access$2300(Landroid/widget/Gallery;)I

    move-result v0

    iget-object v1, p0, Landroid/widget/Gallery$ListViewDragShadowBuilder;->this$0:Landroid/widget/Gallery;

    #getter for: Landroid/widget/Gallery;->mDragOffsetY:I
    invoke-static {v1}, Landroid/widget/Gallery;->access$2400(Landroid/widget/Gallery;)I

    move-result v1

    iget-object v2, p0, Landroid/widget/Gallery$ListViewDragShadowBuilder;->this$0:Landroid/widget/Gallery;

    #getter for: Landroid/widget/Gallery;->mDragScrollY:I
    invoke-static {v2}, Landroid/widget/Gallery;->access$2200(Landroid/widget/Gallery;)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Point;->set(II)V

    goto :goto_0
.end method

.method public setDragingState(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 2539
    iput p1, p0, Landroid/widget/Gallery$ListViewDragShadowBuilder;->mState:I

    .line 2540
    return-void
.end method
