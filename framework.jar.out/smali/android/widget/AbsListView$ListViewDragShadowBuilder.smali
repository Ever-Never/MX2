.class Landroid/widget/AbsListView$ListViewDragShadowBuilder;
.super Landroid/view/View$DragShadowBuilder;
.source "AbsListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView;
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

.field private mBitmapCache:Landroid/graphics/Bitmap;

.field private mFilterColorNormal:I

.field private mFilterColorWarning:I

.field private mHeight:I

.field private mHightLightNormal:Landroid/graphics/drawable/Drawable;

.field private mHightLightWarning:Landroid/graphics/drawable/Drawable;

.field private mNeedBackground:Z

.field private mState:I

.field private mWidth:I

.field final synthetic this$0:Landroid/widget/AbsListView;


# direct methods
.method public constructor <init>(Landroid/widget/AbsListView;Landroid/view/View;)V
    .locals 1
    .parameter
    .parameter "view"

    .prologue
    .line 7478
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/AbsListView$ListViewDragShadowBuilder;-><init>(Landroid/widget/AbsListView;Landroid/view/View;Z)V

    .line 7479
    return-void
.end method

.method public constructor <init>(Landroid/widget/AbsListView;Landroid/view/View;Z)V
    .locals 12
    .parameter
    .parameter "view"
    .parameter "needBg"

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 7481
    iput-object p1, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->this$0:Landroid/widget/AbsListView;

    .line 7482
    invoke-direct {p0, p2}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    .line 7469
    iput-boolean v10, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mNeedBackground:Z

    .line 7473
    iput v9, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mFilterColorNormal:I

    .line 7474
    iput v9, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mFilterColorWarning:I

    .line 7593
    const/4 v6, -0x1

    iput v6, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mState:I

    .line 7483
    iput-boolean p3, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mNeedBackground:Z

    .line 7484
    if-nez p2, :cond_0

    .line 7532
    :goto_0
    return-void

    .line 7485
    :cond_0
    if-eqz p3, :cond_3

    .line 7486
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    #getter for: Landroid/widget/AbsListView;->mDragViewBackground:I
    invoke-static {p1}, Landroid/widget/AbsListView;->access$4200(Landroid/widget/AbsListView;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 7487
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mBackgroundPadding:Landroid/graphics/Rect;

    .line 7488
    iget-object v6, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mBackground:Landroid/graphics/drawable/Drawable;

    iget-object v7, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mBackgroundPadding:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 7489
    iget-object v4, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mBackgroundPadding:Landroid/graphics/Rect;

    .line 7490
    .local v4, padding:Landroid/graphics/Rect;
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v5

    .line 7491
    .local v5, width:I
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 7492
    .local v1, height:I
    iget v6, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v5

    iget v7, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v7

    iput v6, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mWidth:I

    .line 7493
    iget v6, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v1

    iget v7, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v7

    iput v6, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mHeight:I

    .line 7494
    iget-object v6, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mBackground:Landroid/graphics/drawable/Drawable;

    iget v7, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mWidth:I

    iget v8, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mHeight:I

    invoke-virtual {v6, v9, v9, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 7496
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    #getter for: Landroid/widget/AbsListView;->mDragViewBackgroundFilter:I
    invoke-static {p1}, Landroid/widget/AbsListView;->access$4300(Landroid/widget/AbsListView;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mHightLightNormal:Landroid/graphics/drawable/Drawable;

    .line 7497
    iget-object v6, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mHightLightNormal:Landroid/graphics/drawable/Drawable;

    iget v7, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mWidth:I

    iget v8, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mHeight:I

    invoke-virtual {v6, v9, v9, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 7499
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    #getter for: Landroid/widget/AbsListView;->mDragViewBackgroundDelete:I
    invoke-static {p1}, Landroid/widget/AbsListView;->access$4400(Landroid/widget/AbsListView;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mHightLightWarning:Landroid/graphics/drawable/Drawable;

    .line 7500
    iget-object v6, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mHightLightWarning:Landroid/graphics/drawable/Drawable;

    iget v7, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mWidth:I

    iget v8, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mHeight:I

    invoke-virtual {v6, v9, v9, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 7512
    .end local v1           #height:I
    .end local v4           #padding:Landroid/graphics/Rect;
    .end local v5           #width:I
    :goto_1
    #setter for: Landroid/widget/AbsListView;->mDragScrollY:I
    invoke-static {p1, v9}, Landroid/widget/AbsListView;->access$4502(Landroid/widget/AbsListView;I)I

    .line 7513
    iget v6, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mHeight:I

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v7

    if-le v6, v7, :cond_2

    .line 7516
    new-array v2, v11, [I

    .line 7517
    .local v2, listLocation:[I
    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 7519
    new-array v0, v11, [I

    .line 7520
    .local v0, dragLocation:[I
    invoke-virtual {p2, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 7522
    aget v6, v0, v10

    aget v7, v2, v10

    if-ge v6, v7, :cond_1

    .line 7523
    aget v6, v2, v10

    aget v7, v0, v10

    sub-int/2addr v6, v7

    #setter for: Landroid/widget/AbsListView;->mDragScrollY:I
    invoke-static {p1, v6}, Landroid/widget/AbsListView;->access$4502(Landroid/widget/AbsListView;I)I

    .line 7524
    iget v6, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mHeight:I

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v7

    sub-int v3, v6, v7

    .line 7525
    .local v3, maxDragScrollY:I
    #getter for: Landroid/widget/AbsListView;->mDragScrollY:I
    invoke-static {p1}, Landroid/widget/AbsListView;->access$4500(Landroid/widget/AbsListView;)I

    move-result v6

    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    #setter for: Landroid/widget/AbsListView;->mDragScrollY:I
    invoke-static {p1, v6}, Landroid/widget/AbsListView;->access$4502(Landroid/widget/AbsListView;I)I

    .line 7528
    .end local v3           #maxDragScrollY:I
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v6

    iput v6, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mHeight:I

    .line 7531
    .end local v0           #dragLocation:[I
    .end local v2           #listLocation:[I
    :cond_2
    invoke-direct {p0}, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->createBitmapCache()V

    goto/16 :goto_0

    .line 7503
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v6

    iput v6, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mWidth:I

    .line 7504
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v6

    iput v6, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mHeight:I

    .line 7506
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x106008a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    iput v6, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mFilterColorNormal:I

    .line 7508
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x106008b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    iput v6, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mFilterColorWarning:I

    goto :goto_1
.end method

.method private createBitmapCache()V
    .locals 8

    .prologue
    .line 7601
    invoke-virtual {p0}, Landroid/view/View$DragShadowBuilder;->getView()Landroid/view/View;

    move-result-object v4

    .line 7602
    .local v4, view:Landroid/view/View;
    if-nez v4, :cond_0

    .line 7623
    :goto_0
    return-void

    .line 7606
    :cond_0
    const/4 v0, 0x0

    .line 7608
    .local v0, bitmap:Landroid/graphics/Bitmap;
    :try_start_0
    iget v5, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mWidth:I

    iget v6, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mHeight:I

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 7609
    iget-object v5, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v5}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v0, v5}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 7610
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 7615
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 7616
    .local v1, canvas:Landroid/graphics/Canvas;
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    .line 7617
    .local v3, restoreCount:I
    const/4 v5, 0x0

    iget-object v6, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mDragScrollY:I
    invoke-static {v6}, Landroid/widget/AbsListView;->access$4500(Landroid/widget/AbsListView;)I

    move-result v6

    neg-int v6, v6

    int-to-float v6, v6

    invoke-virtual {v1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 7618
    invoke-virtual {v4, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 7619
    invoke-virtual {v1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 7620
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 7622
    iput-object v0, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mBitmapCache:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 7611
    .end local v1           #canvas:Landroid/graphics/Canvas;
    .end local v3           #restoreCount:I
    :catch_0
    move-exception v2

    .line 7612
    .local v2, e:Ljava/lang/OutOfMemoryError;
    goto :goto_0
.end method


# virtual methods
.method public onDrawShadow(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter "canvas"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 7548
    iget-boolean v2, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mNeedBackground:Z

    if-eqz v2, :cond_4

    .line 7549
    iget v2, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mState:I

    if-nez v2, :cond_1

    .line 7550
    iget-object v2, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mHightLightNormal:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 7557
    :goto_0
    iget-object v2, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mBitmapCache:Landroid/graphics/Bitmap;

    if-nez v2, :cond_3

    .line 7558
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 7559
    .local v1, restoreCount:I
    iget-object v2, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget-object v3, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mDragScrollY:I
    invoke-static {v4}, Landroid/widget/AbsListView;->access$4500(Landroid/widget/AbsListView;)I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 7560
    invoke-super {p0, p1}, Landroid/view/View$DragShadowBuilder;->onDrawShadow(Landroid/graphics/Canvas;)V

    .line 7561
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 7588
    .end local v1           #restoreCount:I
    :cond_0
    :goto_1
    return-void

    .line 7551
    :cond_1
    iget v2, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mState:I

    if-ne v2, v4, :cond_2

    .line 7552
    iget-object v2, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mHightLightWarning:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 7554
    :cond_2
    iget-object v2, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 7563
    :cond_3
    iget-object v2, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mBitmapCache:Landroid/graphics/Bitmap;

    iget-object v3, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iget-object v4, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 7566
    :cond_4
    const/4 v0, 0x0

    .line 7567
    .local v0, filterColor:I
    iget v2, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mState:I

    if-nez v2, :cond_7

    .line 7568
    iget v0, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mFilterColorNormal:I

    .line 7573
    :cond_5
    :goto_2
    iget-object v2, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mBitmapCache:Landroid/graphics/Bitmap;

    if-nez v2, :cond_8

    .line 7574
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 7575
    .restart local v1       #restoreCount:I
    iget-object v2, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mDragScrollY:I
    invoke-static {v2}, Landroid/widget/AbsListView;->access$4500(Landroid/widget/AbsListView;)I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {p1, v3, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 7576
    invoke-super {p0, p1}, Landroid/view/View$DragShadowBuilder;->onDrawShadow(Landroid/graphics/Canvas;)V

    .line 7577
    if-eqz v0, :cond_6

    .line 7578
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 7580
    :cond_6
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_1

    .line 7569
    .end local v1           #restoreCount:I
    :cond_7
    iget v2, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mState:I

    if-ne v2, v4, :cond_5

    .line 7570
    iget v0, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mFilterColorWarning:I

    goto :goto_2

    .line 7582
    :cond_8
    iget-object v2, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mBitmapCache:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v2, v3, v3, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 7583
    if-eqz v0, :cond_0

    .line 7584
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_1
.end method

.method public onProvideShadowMetrics(Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 3
    .parameter "shadowSize"
    .parameter "shadowTouchPoint"

    .prologue
    .line 7536
    invoke-super {p0, p1, p2}, Landroid/view/View$DragShadowBuilder;->onProvideShadowMetrics(Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 7537
    iget v0, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mWidth:I

    iget v1, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mHeight:I

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Point;->set(II)V

    .line 7539
    iget-boolean v0, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mNeedBackground:Z

    if-eqz v0, :cond_0

    .line 7540
    iget-object v0, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mDragOffsetX:I
    invoke-static {v0}, Landroid/widget/AbsListView;->access$4600(Landroid/widget/AbsListView;)I

    move-result v0

    iget-object v1, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mDragOffsetY:I
    invoke-static {v1}, Landroid/widget/AbsListView;->access$4700(Landroid/widget/AbsListView;)I

    move-result v1

    iget-object v2, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    iget-object v2, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mDragScrollY:I
    invoke-static {v2}, Landroid/widget/AbsListView;->access$4500(Landroid/widget/AbsListView;)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Point;->set(II)V

    .line 7544
    :goto_0
    return-void

    .line 7542
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mDragOffsetX:I
    invoke-static {v0}, Landroid/widget/AbsListView;->access$4600(Landroid/widget/AbsListView;)I

    move-result v0

    iget-object v1, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mDragOffsetY:I
    invoke-static {v1}, Landroid/widget/AbsListView;->access$4700(Landroid/widget/AbsListView;)I

    move-result v1

    iget-object v2, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mDragScrollY:I
    invoke-static {v2}, Landroid/widget/AbsListView;->access$4500(Landroid/widget/AbsListView;)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Point;->set(II)V

    goto :goto_0
.end method

.method public setDragingState(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 7597
    iput p1, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mState:I

    .line 7598
    return-void
.end method
