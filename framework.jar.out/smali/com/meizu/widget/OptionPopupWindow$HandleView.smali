.class Lcom/meizu/widget/OptionPopupWindow$HandleView;
.super Landroid/view/View;
.source "OptionPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/widget/OptionPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HandleView"
.end annotation


# instance fields
.field private final ITEM_PADDING:I

.field private final ITEM_WIDTH_MAX:I

.field private final ITEM_WIDTH_MIN:I

.field private final TEXT_SIZE:I

.field USER_ITEM_WIDTH_MAX:I

.field USER_ITEM_WIDTH_MIN:I

.field private final kHeight:I

.field private final kMinWidth:I

.field private mActionIndex:I

.field private mActiveIndex:I

.field private mArrowOffsetX:I

.field private mBGPadding:Landroid/graphics/Rect;

.field private mBitmapPaint:Landroid/graphics/Paint;

.field private final mClickAction:Ljava/lang/Runnable;

.field mClickable:Z

.field private mFmi:Landroid/graphics/Paint$FontMetricsInt;

.field private mIsArrowUp:Z

.field private mLeftDrawable:Landroid/graphics/drawable/Drawable;

.field private mMiddleDrawable:Landroid/graphics/drawable/Drawable;

.field private mPaintLabel:Landroid/text/TextPaint;

.field private mPixels:[I

.field private mRightDrawable:Landroid/graphics/drawable/Drawable;

.field private mSepDrawable:Landroid/graphics/drawable/Drawable;

.field private mSuspensionPointsWidth:F

.field private final mTouchSlop:I

.field final synthetic this$0:Lcom/meizu/widget/OptionPopupWindow;


# direct methods
.method public constructor <init>(Lcom/meizu/widget/OptionPopupWindow;Landroid/content/Context;)V
    .locals 6
    .parameter
    .parameter "c"

    .prologue
    const/4 v2, -0x1

    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 277
    iput-object p1, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->this$0:Lcom/meizu/widget/OptionPopupWindow;

    .line 278
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 231
    iput v2, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mActiveIndex:I

    .line 233
    iput v2, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mActionIndex:I

    .line 235
    iput-boolean v3, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mIsArrowUp:Z

    .line 247
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mBGPadding:Landroid/graphics/Rect;

    .line 251
    iput-boolean v5, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mClickable:Z

    .line 253
    iput v3, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->USER_ITEM_WIDTH_MAX:I

    .line 255
    iput v3, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->USER_ITEM_WIDTH_MIN:I

    .line 262
    new-instance v2, Lcom/meizu/widget/OptionPopupWindow$HandleView$1;

    invoke-direct {v2, p0}, Lcom/meizu/widget/OptionPopupWindow$HandleView$1;-><init>(Lcom/meizu/widget/OptionPopupWindow$HandleView;)V

    iput-object v2, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mClickAction:Ljava/lang/Runnable;

    .line 279
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 280
    .local v1, r:Landroid/content/res/Resources;
    const v2, 0x105011b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->TEXT_SIZE:I

    .line 281
    const v2, 0x105011c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->ITEM_PADDING:I

    .line 282
    const v2, 0x105011d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->ITEM_WIDTH_MIN:I

    .line 283
    const v2, 0x105011e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->ITEM_WIDTH_MAX:I

    .line 284
    const v2, 0x10804cf

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mLeftDrawable:Landroid/graphics/drawable/Drawable;

    .line 285
    const v2, 0x10804d2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mMiddleDrawable:Landroid/graphics/drawable/Drawable;

    .line 286
    const v2, 0x10804d5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mRightDrawable:Landroid/graphics/drawable/Drawable;

    .line 287
    const v2, 0x10804ce

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mSepDrawable:Landroid/graphics/drawable/Drawable;

    .line 288
    invoke-static {p2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mTouchSlop:I

    .line 290
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 291
    .local v0, padding:Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mLeftDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 292
    iget-object v2, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mBGPadding:Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mBGPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 293
    iget-object v2, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mBGPadding:Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mBGPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 294
    iget-object v2, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mBGPadding:Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mBGPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 296
    iget-object v2, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mMiddleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 297
    iget-object v2, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mBGPadding:Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mBGPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 298
    iget-object v2, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mBGPadding:Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mBGPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 300
    iget-object v2, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mRightDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 301
    iget-object v2, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mBGPadding:Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mBGPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 302
    iget-object v2, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mBGPadding:Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mBGPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 303
    iget-object v2, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mBGPadding:Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mBGPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 305
    iget-object v2, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mLeftDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget-object v3, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mMiddleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mRightDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->kMinWidth:I

    .line 308
    iget-object v2, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mMiddleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    iput v2, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->kHeight:I

    .line 310
    new-instance v2, Landroid/text/TextPaint;

    invoke-direct {v2}, Landroid/text/TextPaint;-><init>()V

    iput-object v2, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mPaintLabel:Landroid/text/TextPaint;

    .line 311
    iget-object v2, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mPaintLabel:Landroid/text/TextPaint;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 312
    iget-object v2, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mPaintLabel:Landroid/text/TextPaint;

    iget v3, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->TEXT_SIZE:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 313
    iget-object v2, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mPaintLabel:Landroid/text/TextPaint;

    const/high16 v3, -0x100

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 314
    iget-object v2, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mPaintLabel:Landroid/text/TextPaint;

    const-string/jumbo v3, "\u2025"

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    iput v2, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mSuspensionPointsWidth:F

    .line 315
    iget-object v2, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mPaintLabel:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mFmi:Landroid/graphics/Paint$FontMetricsInt;

    .line 317
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mBitmapPaint:Landroid/graphics/Paint;

    .line 318
    iget-object v2, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 319
    iget-object v2, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mBitmapPaint:Landroid/graphics/Paint;

    const v3, -0x333334

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 321
    return-void
.end method

.method static synthetic access$100(Lcom/meizu/widget/OptionPopupWindow$HandleView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 222
    iget v0, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mActionIndex:I

    return v0
.end method

.method static synthetic access$102(Lcom/meizu/widget/OptionPopupWindow$HandleView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 222
    iput p1, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mActionIndex:I

    return p1
.end method

.method private calcActiveIndex(FF)I
    .locals 6
    .parameter "x"
    .parameter "y"

    .prologue
    .line 529
    iget v0, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mActiveIndex:I

    .line 530
    .local v0, activeIndex:I
    iget-object v4, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->this$0:Lcom/meizu/widget/OptionPopupWindow;

    #getter for: Lcom/meizu/widget/OptionPopupWindow;->mOptionRects:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/meizu/widget/OptionPopupWindow;->access$300(Lcom/meizu/widget/OptionPopupWindow;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 531
    .local v2, count:I
    if-ltz v0, :cond_0

    if-ge v0, v2, :cond_0

    .line 532
    iget-object v4, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->this$0:Lcom/meizu/widget/OptionPopupWindow;

    #getter for: Lcom/meizu/widget/OptionPopupWindow;->mOptionRects:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/meizu/widget/OptionPopupWindow;->access$300(Lcom/meizu/widget/OptionPopupWindow;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 533
    .local v1, clip:Landroid/graphics/Rect;
    iget v4, v1, Landroid/graphics/Rect;->left:I

    iget v5, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mTouchSlop:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    cmpl-float v4, p1, v4

    if-ltz v4, :cond_0

    iget v4, v1, Landroid/graphics/Rect;->right:I

    iget v5, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mTouchSlop:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    cmpg-float v4, p1, v4

    if-gez v4, :cond_0

    iget v4, v1, Landroid/graphics/Rect;->top:I

    iget v5, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mTouchSlop:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    cmpl-float v4, p2, v4

    if-ltz v4, :cond_0

    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    iget v5, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mTouchSlop:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    cmpg-float v4, p2, v4

    if-gez v4, :cond_0

    .line 543
    .end local v0           #activeIndex:I
    .end local v1           #clip:Landroid/graphics/Rect;
    :goto_0
    return v0

    .line 537
    .restart local v0       #activeIndex:I
    :cond_0
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v2, :cond_2

    .line 538
    iget-object v4, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->this$0:Lcom/meizu/widget/OptionPopupWindow;

    #getter for: Lcom/meizu/widget/OptionPopupWindow;->mOptionRects:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/meizu/widget/OptionPopupWindow;->access$300(Lcom/meizu/widget/OptionPopupWindow;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 539
    .restart local v1       #clip:Landroid/graphics/Rect;
    float-to-int v4, p1

    float-to-int v5, p2

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_1

    move v0, v3

    .line 540
    goto :goto_0

    .line 537
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 543
    .end local v1           #clip:Landroid/graphics/Rect;
    :cond_2
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private canDrawDivider(Landroid/view/Menu;I)Z
    .locals 5
    .parameter "menu"
    .parameter "index"

    .prologue
    const/4 v2, 0x0

    .line 461
    if-lez p2, :cond_0

    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v3

    if-ge p2, v3, :cond_0

    .line 462
    add-int/lit8 v3, p2, -0x1

    invoke-interface {p1, v3}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 463
    .local v1, prev:Landroid/view/MenuItem;
    invoke-interface {p1, p2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 464
    .local v0, next:Landroid/view/MenuItem;
    invoke-interface {v1}, Landroid/view/MenuItem;->getGroupId()I

    move-result v3

    invoke-interface {v0}, Landroid/view/MenuItem;->getGroupId()I

    move-result v4

    if-eq v3, v4, :cond_0

    const/4 v2, 0x1

    .line 467
    .end local v0           #next:Landroid/view/MenuItem;
    .end local v1           #prev:Landroid/view/MenuItem;
    :cond_0
    return v2
.end method

.method private drawOptionItem(Landroid/graphics/Canvas;Landroid/view/MenuItem;IIII)V
    .locals 12
    .parameter "c"
    .parameter "item"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 501
    invoke-interface {p2}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    .line 502
    .local v6, s:Ljava/lang/CharSequence;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 503
    invoke-interface {p2}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 504
    .local v2, icon:Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    .line 505
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    .line 506
    .local v7, w:I
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 507
    .local v1, h:I
    add-int v10, p3, p5

    sub-int/2addr v10, v7

    div-int/lit8 v8, v10, 0x2

    .line 508
    .local v8, x:I
    add-int v10, p4, p6

    sub-int/2addr v10, v1

    div-int/lit8 v9, v10, 0x2

    .line 509
    .local v9, y:I
    add-int v10, v8, v7

    add-int v11, v9, v1

    invoke-virtual {v2, v8, v9, v10, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 510
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 526
    .end local v1           #h:I
    .end local v2           #icon:Landroid/graphics/drawable/Drawable;
    .end local v7           #w:I
    .end local v8           #x:I
    .end local v9           #y:I
    :cond_0
    :goto_0
    return-void

    .line 513
    :cond_1
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 514
    .local v4, labelToDraw:Ljava/lang/String;
    sub-int v10, p5, p3

    iget v11, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->ITEM_PADDING:I

    mul-int/lit8 v11, v11, 0x2

    sub-int/2addr v10, v11

    int-to-float v5, v10

    .line 515
    .local v5, maxMeasuredWidth:F
    iget-object v10, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mPaintLabel:Landroid/text/TextPaint;

    invoke-virtual {v10, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    .line 516
    .local v3, labelMeasuredWidth:F
    cmpl-float v10, v3, v5

    if-lez v10, :cond_2

    .line 517
    invoke-direct {p0, v4, v5}, Lcom/meizu/widget/OptionPopupWindow$HandleView;->getLimitedLabelForDrawing(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v4

    .line 518
    iget-object v10, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mPaintLabel:Landroid/text/TextPaint;

    invoke-virtual {v10, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    .line 521
    :cond_2
    iget-object v10, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mFmi:Landroid/graphics/Paint$FontMetricsInt;

    iget v10, v10, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget-object v11, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mFmi:Landroid/graphics/Paint$FontMetricsInt;

    iget v11, v11, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int v0, v10, v11

    .line 522
    .local v0, fontHeight:I
    add-int v10, p3, p5

    int-to-float v10, v10

    sub-float/2addr v10, v3

    const/high16 v11, 0x4000

    div-float v8, v10, v11

    .line 523
    .local v8, x:F
    add-int v10, p6, p4

    sub-int/2addr v10, v0

    int-to-float v10, v10

    const/high16 v11, 0x4000

    div-float/2addr v10, v11

    iget-object v11, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mFmi:Landroid/graphics/Paint$FontMetricsInt;

    iget v11, v11, Landroid/graphics/Paint$FontMetricsInt;->top:I

    int-to-float v11, v11

    sub-float v9, v10, v11

    .line 524
    .local v9, y:F
    iget-object v10, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mPaintLabel:Landroid/text/TextPaint;

    invoke-virtual {p1, v4, v8, v9, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method private getBackgrounds()[Landroid/graphics/Bitmap;
    .locals 28

    .prologue
    .line 417
    new-instance v20, Landroid/graphics/Canvas;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Canvas;-><init>()V

    .line 418
    .local v20, canvas:Landroid/graphics/Canvas;
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v21

    .line 419
    .local v21, height:I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v27

    .line 420
    .local v27, width:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mArrowOffsetX:I

    move/from16 v24, v0

    .line 421
    .local v24, midLeft:I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mArrowOffsetX:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mMiddleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    add-int v25, v4, v5

    .line 422
    .local v25, midRight:I
    invoke-direct/range {p0 .. p0}, Lcom/meizu/widget/OptionPopupWindow$HandleView;->getMaxWidth()I

    move-result v6

    .line 423
    .local v6, maxWidth:I
    const/4 v4, 0x2

    move-object/from16 v0, p0

    iget v5, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->kHeight:I

    #calls: Lcom/meizu/widget/OptionPopupWindow;->getBitmaps(III)[Landroid/graphics/Bitmap;
    invoke-static {v4, v6, v5}, Lcom/meizu/widget/OptionPopupWindow;->access$400(III)[Landroid/graphics/Bitmap;

    move-result-object v19

    .line 424
    .local v19, bitmaps:[Landroid/graphics/Bitmap;
    const/16 v22, 0x0

    .local v22, i:I
    :goto_0
    const/4 v4, 0x2

    move/from16 v0, v22

    if-ge v0, v4, :cond_3

    .line 425
    invoke-static {}, Lcom/meizu/widget/OptionPopupWindow;->access$500()[[I

    move-result-object v4

    aget-object v26, v4, v22

    .line 426
    .local v26, state:[I
    aget-object v3, v19, v22

    .line 427
    .local v3, bmp:Landroid/graphics/Bitmap;
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 428
    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 429
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mLeftDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 430
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mLeftDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x0

    const/4 v7, 0x0

    move/from16 v0, v24

    move/from16 v1, v21

    invoke-virtual {v4, v5, v7, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 431
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mLeftDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 433
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mMiddleDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 434
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mMiddleDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x0

    move/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v21

    invoke-virtual {v4, v0, v5, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 435
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mMiddleDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 437
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mRightDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 438
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mRightDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x0

    move/from16 v0, v25

    move/from16 v1, v27

    move/from16 v2, v21

    invoke-virtual {v4, v0, v5, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 439
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mRightDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 441
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mIsArrowUp:Z

    if-eqz v4, :cond_2

    .line 442
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mPixels:[I

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mPixels:[I

    array-length v4, v4

    mul-int/lit8 v5, v6, 0x2

    if-ge v4, v5, :cond_1

    .line 443
    :cond_0
    mul-int/lit8 v4, v6, 0x2

    new-array v4, v4, [I

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mPixels:[I

    .line 445
    :cond_1
    shr-int/lit8 v18, v21, 0x1

    .line 446
    .local v18, MID:I
    move/from16 v0, v27

    invoke-static {v6, v0}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 447
    .local v9, W:I
    const/16 v23, 0x0

    .local v23, j:I
    :goto_1
    move/from16 v0, v23

    move/from16 v1, v18

    if-ge v0, v1, :cond_2

    .line 448
    move/from16 v8, v23

    .line 449
    .local v8, top:I
    sub-int v4, v21, v23

    add-int/lit8 v15, v4, -0x1

    .line 450
    .local v15, bottom:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mPixels:[I

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x1

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 451
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mPixels:[I

    const/4 v14, 0x0

    const/16 v17, 0x1

    move-object v10, v3

    move v12, v6

    move v13, v6

    move/from16 v16, v9

    invoke-virtual/range {v10 .. v17}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 452
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mPixels:[I

    const/4 v7, 0x0

    const/4 v10, 0x1

    move v5, v6

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 453
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mPixels:[I

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/16 v17, 0x1

    move-object v10, v3

    move v13, v6

    move/from16 v16, v9

    invoke-virtual/range {v10 .. v17}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 447
    add-int/lit8 v23, v23, 0x1

    goto :goto_1

    .line 424
    .end local v8           #top:I
    .end local v9           #W:I
    .end local v15           #bottom:I
    .end local v18           #MID:I
    .end local v23           #j:I
    :cond_2
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_0

    .line 457
    .end local v3           #bmp:Landroid/graphics/Bitmap;
    .end local v26           #state:[I
    :cond_3
    return-object v19
.end method

.method private getLimitedLabelForDrawing(Ljava/lang/String;F)Ljava/lang/String;
    .locals 5
    .parameter "rawLabel"
    .parameter "widthToDraw"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 591
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 592
    .local v0, subLen:I
    if-gt v0, v4, :cond_0

    .line 597
    .end local p1
    :goto_0
    return-object p1

    .line 594
    .restart local p1
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 595
    iget-object v2, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mPaintLabel:Landroid/text/TextPaint;

    invoke-virtual {v2, p1, v3, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v1

    .line 596
    .local v1, width:F
    iget v2, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mSuspensionPointsWidth:F

    add-float/2addr v2, v1

    cmpg-float v2, v2, p2

    if-lez v2, :cond_1

    if-lt v4, v0, :cond_0

    .line 597
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\u2025"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private getMaxWidth()I
    .locals 2

    .prologue
    .line 324
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 325
    .local v0, res:Landroid/content/res/Resources;
    if-nez v0, :cond_0

    .line 326
    const/4 v1, 0x0

    .line 328
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    goto :goto_0
.end method

.method private measureMenuItem(Landroid/view/MenuItem;)I
    .locals 6
    .parameter "item"

    .prologue
    .line 359
    const/4 v2, 0x0

    .line 360
    .local v2, width:I
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 361
    invoke-interface {p1}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 362
    .local v0, icon:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 363
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 369
    .end local v0           #icon:Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_0
    return v2

    .line 366
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    .line 367
    .local v1, label:Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mPaintLabel:Landroid/text/TextPaint;

    const/4 v4, 0x0

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-virtual {v3, v1, v4, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v3

    float-to-int v2, v3

    goto :goto_0
.end method


# virtual methods
.method public getArrowOffsetX()I
    .locals 2

    .prologue
    .line 355
    iget v0, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mArrowOffsetX:I

    iget-object v1, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mMiddleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 18
    .parameter "c"

    .prologue
    .line 472
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->this$0:Lcom/meizu/widget/OptionPopupWindow;

    #getter for: Lcom/meizu/widget/OptionPopupWindow;->mActionMode:Lcom/meizu/widget/OptionPopupWindow$OptionActionMode;
    invoke-static {v1}, Lcom/meizu/widget/OptionPopupWindow;->access$000(Lcom/meizu/widget/OptionPopupWindow;)Lcom/meizu/widget/OptionPopupWindow$OptionActionMode;

    move-result-object v1

    if-nez v1, :cond_1

    .line 498
    :cond_0
    return-void

    .line 475
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->this$0:Lcom/meizu/widget/OptionPopupWindow;

    #getter for: Lcom/meizu/widget/OptionPopupWindow;->mActionMode:Lcom/meizu/widget/OptionPopupWindow$OptionActionMode;
    invoke-static {v1}, Lcom/meizu/widget/OptionPopupWindow;->access$000(Lcom/meizu/widget/OptionPopupWindow;)Lcom/meizu/widget/OptionPopupWindow$OptionActionMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/meizu/widget/OptionPopupWindow$OptionActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v15

    .line 476
    .local v15, menu:Landroid/view/Menu;
    invoke-direct/range {p0 .. p0}, Lcom/meizu/widget/OptionPopupWindow$HandleView;->getBackgrounds()[Landroid/graphics/Bitmap;

    move-result-object v10

    .line 477
    .local v10, bitmaps:[Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->this$0:Lcom/meizu/widget/OptionPopupWindow;

    #getter for: Lcom/meizu/widget/OptionPopupWindow;->mOptionRects:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/meizu/widget/OptionPopupWindow;->access$300(Lcom/meizu/widget/OptionPopupWindow;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-interface {v15}, Landroid/view/Menu;->size()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 478
    .local v8, N:I
    const/4 v13, 0x0

    .local v13, i:I
    :goto_0
    if-ge v13, v8, :cond_0

    .line 479
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->this$0:Lcom/meizu/widget/OptionPopupWindow;

    #getter for: Lcom/meizu/widget/OptionPopupWindow;->mOptionRects:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/meizu/widget/OptionPopupWindow;->access$300(Lcom/meizu/widget/OptionPopupWindow;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/graphics/Rect;

    .line 480
    .local v11, clip:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v1, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mActiveIndex:I

    if-ne v1, v13, :cond_3

    move-object/from16 v0, p0

    iget v1, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mActionIndex:I

    if-ne v1, v13, :cond_3

    const/4 v9, 0x1

    .line 481
    .local v9, active:Z
    :goto_1
    if-eqz v9, :cond_4

    const/4 v1, 0x1

    :goto_2
    aget-object v1, v10, v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mBitmapPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v11, v11, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 482
    move-object/from16 v0, p0

    invoke-direct {v0, v15, v13}, Lcom/meizu/widget/OptionPopupWindow$HandleView;->canDrawDivider(Landroid/view/Menu;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 483
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mSepDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v17

    .line 484
    .local v17, w:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mSepDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v12

    .line 485
    .local v12, h:I
    iget v1, v11, Landroid/graphics/Rect;->left:I

    div-int/lit8 v2, v17, 0x2

    sub-int v14, v1, v2

    .line 486
    .local v14, l:I
    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mBGPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mBGPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    sub-int/2addr v1, v12

    div-int/lit8 v16, v1, 0x2

    .line 487
    .local v16, t:I
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mIsArrowUp:Z

    if-eqz v1, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mBGPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    :goto_3
    add-int v16, v16, v1

    .line 488
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mSepDrawable:Landroid/graphics/drawable/Drawable;

    add-int v2, v14, v17

    add-int v3, v16, v12

    move/from16 v0, v16

    invoke-virtual {v1, v14, v0, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 489
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mSepDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 492
    .end local v12           #h:I
    .end local v14           #l:I
    .end local v16           #t:I
    .end local v17           #w:I
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mIsArrowUp:Z

    if-eqz v1, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mBGPadding:Landroid/graphics/Rect;

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    .line 493
    .local v5, top:I
    :goto_4
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v2

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mIsArrowUp:Z

    if-eqz v1, :cond_7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mBGPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    :goto_5
    sub-int v7, v2, v1

    .line 494
    .local v7, bottom:I
    if-nez v13, :cond_8

    iget v1, v11, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mBGPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int v4, v1, v2

    .line 495
    .local v4, left:I
    :goto_6
    add-int/lit8 v1, v8, -0x1

    if-ne v13, v1, :cond_9

    iget v1, v11, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mBGPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int v6, v1, v2

    .line 496
    .local v6, right:I
    :goto_7
    invoke-interface {v15, v13}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/meizu/widget/OptionPopupWindow$HandleView;->drawOptionItem(Landroid/graphics/Canvas;Landroid/view/MenuItem;IIII)V

    .line 478
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_0

    .line 480
    .end local v4           #left:I
    .end local v5           #top:I
    .end local v6           #right:I
    .end local v7           #bottom:I
    .end local v9           #active:Z
    :cond_3
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 481
    .restart local v9       #active:Z
    :cond_4
    const/4 v1, 0x0

    goto/16 :goto_2

    .line 487
    .restart local v12       #h:I
    .restart local v14       #l:I
    .restart local v16       #t:I
    .restart local v17       #w:I
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mBGPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    goto :goto_3

    .line 492
    .end local v12           #h:I
    .end local v14           #l:I
    .end local v16           #t:I
    .end local v17           #w:I
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mBGPadding:Landroid/graphics/Rect;

    iget v5, v1, Landroid/graphics/Rect;->top:I

    goto :goto_4

    .line 493
    .restart local v5       #top:I
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mBGPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    goto :goto_5

    .line 494
    .restart local v7       #bottom:I
    :cond_8
    iget v4, v11, Landroid/graphics/Rect;->left:I

    goto :goto_6

    .line 495
    .restart local v4       #left:I
    :cond_9
    iget v6, v11, Landroid/graphics/Rect;->right:I

    goto :goto_7
.end method

.method public onMeasure(II)V
    .locals 17
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 375
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->this$0:Lcom/meizu/widget/OptionPopupWindow;

    #getter for: Lcom/meizu/widget/OptionPopupWindow;->mActionMode:Lcom/meizu/widget/OptionPopupWindow$OptionActionMode;
    invoke-static {v12}, Lcom/meizu/widget/OptionPopupWindow;->access$000(Lcom/meizu/widget/OptionPopupWindow;)Lcom/meizu/widget/OptionPopupWindow$OptionActionMode;

    move-result-object v12

    if-nez v12, :cond_0

    .line 376
    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 414
    :goto_0
    return-void

    .line 380
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mBGPadding:Landroid/graphics/Rect;

    iget v4, v12, Landroid/graphics/Rect;->left:I

    .line 381
    .local v4, left:I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mBGPadding:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mBGPadding:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->right:I

    add-int v11, v12, v13

    .line 382
    .local v11, width:I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->this$0:Lcom/meizu/widget/OptionPopupWindow;

    #getter for: Lcom/meizu/widget/OptionPopupWindow;->mActionMode:Lcom/meizu/widget/OptionPopupWindow$OptionActionMode;
    invoke-static {v12}, Lcom/meizu/widget/OptionPopupWindow;->access$000(Lcom/meizu/widget/OptionPopupWindow;)Lcom/meizu/widget/OptionPopupWindow$OptionActionMode;

    move-result-object v12

    invoke-virtual {v12}, Lcom/meizu/widget/OptionPopupWindow$OptionActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v7

    .line 383
    .local v7, menu:Landroid/view/Menu;
    invoke-interface {v7}, Landroid/view/Menu;->size()I

    move-result v1

    .line 384
    .local v1, N:I
    invoke-direct/range {p0 .. p0}, Lcom/meizu/widget/OptionPopupWindow$HandleView;->getMaxWidth()I

    move-result v6

    .line 385
    .local v6, maxWidth:I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->this$0:Lcom/meizu/widget/OptionPopupWindow;

    #getter for: Lcom/meizu/widget/OptionPopupWindow;->mOptionRects:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/meizu/widget/OptionPopupWindow;->access$300(Lcom/meizu/widget/OptionPopupWindow;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    .line 386
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v1, :cond_3

    .line 387
    invoke-interface {v7, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/meizu/widget/OptionPopupWindow$HandleView;->measureMenuItem(Landroid/view/MenuItem;)I

    move-result v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->ITEM_PADDING:I

    mul-int/lit8 v13, v13, 0x2

    add-int v10, v12, v13

    .line 388
    .local v10, w:I
    move-object/from16 v0, p0

    iget v12, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->USER_ITEM_WIDTH_MAX:I

    if-eqz v12, :cond_5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->USER_ITEM_WIDTH_MAX:I

    .line 389
    .local v5, max:I
    :goto_2
    move-object/from16 v0, p0

    iget v12, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->USER_ITEM_WIDTH_MIN:I

    if-eqz v12, :cond_6

    move-object/from16 v0, p0

    iget v8, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->USER_ITEM_WIDTH_MIN:I

    .line 390
    .local v8, min:I
    :goto_3
    if-ge v10, v8, :cond_1

    .line 391
    move v10, v8

    .line 393
    :cond_1
    if-le v10, v5, :cond_2

    .line 394
    move v10, v5

    .line 396
    :cond_2
    add-int v12, v11, v10

    if-le v12, v6, :cond_7

    const/4 v12, 0x4

    if-le v2, v12, :cond_7

    .line 405
    .end local v5           #max:I
    .end local v8           #min:I
    .end local v10           #w:I
    :cond_3
    move-object/from16 v0, p0

    iget v12, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->kMinWidth:I

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 407
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->this$0:Lcom/meizu/widget/OptionPopupWindow;

    #getter for: Lcom/meizu/widget/OptionPopupWindow;->mOptionRects:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/meizu/widget/OptionPopupWindow;->access$300(Lcom/meizu/widget/OptionPopupWindow;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-lez v12, :cond_4

    .line 408
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->this$0:Lcom/meizu/widget/OptionPopupWindow;

    #getter for: Lcom/meizu/widget/OptionPopupWindow;->mOptionRects:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/meizu/widget/OptionPopupWindow;->access$300(Lcom/meizu/widget/OptionPopupWindow;)Ljava/util/ArrayList;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    .line 409
    .local v3, l:Landroid/graphics/Rect;
    const/4 v12, 0x0

    iput v12, v3, Landroid/graphics/Rect;->left:I

    .line 410
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->this$0:Lcom/meizu/widget/OptionPopupWindow;

    #getter for: Lcom/meizu/widget/OptionPopupWindow;->mOptionRects:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/meizu/widget/OptionPopupWindow;->access$300(Lcom/meizu/widget/OptionPopupWindow;)Ljava/util/ArrayList;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->this$0:Lcom/meizu/widget/OptionPopupWindow;

    #getter for: Lcom/meizu/widget/OptionPopupWindow;->mOptionRects:Ljava/util/ArrayList;
    invoke-static {v13}, Lcom/meizu/widget/OptionPopupWindow;->access$300(Lcom/meizu/widget/OptionPopupWindow;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Rect;

    .line 411
    .local v9, r:Landroid/graphics/Rect;
    iput v11, v9, Landroid/graphics/Rect;->right:I

    .line 413
    .end local v3           #l:Landroid/graphics/Rect;
    .end local v9           #r:Landroid/graphics/Rect;
    :cond_4
    move-object/from16 v0, p0

    iget v12, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->kHeight:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12}, Landroid/view/View;->setMeasuredDimension(II)V

    goto/16 :goto_0

    .line 388
    .restart local v10       #w:I
    :cond_5
    move-object/from16 v0, p0

    iget v5, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->ITEM_WIDTH_MAX:I

    goto :goto_2

    .line 389
    .restart local v5       #max:I
    :cond_6
    move-object/from16 v0, p0

    iget v8, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->ITEM_WIDTH_MIN:I

    goto :goto_3

    .line 400
    .restart local v8       #min:I
    :cond_7
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->this$0:Lcom/meizu/widget/OptionPopupWindow;

    #getter for: Lcom/meizu/widget/OptionPopupWindow;->mOptionRects:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/meizu/widget/OptionPopupWindow;->access$300(Lcom/meizu/widget/OptionPopupWindow;)Ljava/util/ArrayList;

    move-result-object v12

    new-instance v13, Landroid/graphics/Rect;

    const/4 v14, 0x0

    add-int v15, v4, v10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->kHeight:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-direct {v13, v4, v14, v15, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 401
    add-int/2addr v4, v10

    .line 402
    add-int/2addr v11, v10

    .line 386
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "ev"

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 548
    iget-boolean v3, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mClickable:Z

    if-nez v3, :cond_1

    .line 586
    :cond_0
    :goto_0
    return v5

    .line 551
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 553
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 554
    .local v1, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 555
    .local v2, y:F
    invoke-direct {p0, v1, v2}, Lcom/meizu/widget/OptionPopupWindow$HandleView;->calcActiveIndex(FF)I

    move-result v3

    iput v3, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mActiveIndex:I

    .line 556
    iget v3, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mActiveIndex:I

    iput v3, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mActionIndex:I

    .line 557
    iget v3, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mActiveIndex:I

    if-ltz v3, :cond_0

    .line 558
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    .line 562
    .end local v1           #x:F
    .end local v2           #y:F
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 563
    .restart local v1       #x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 564
    .restart local v2       #y:F
    invoke-direct {p0, v1, v2}, Lcom/meizu/widget/OptionPopupWindow$HandleView;->calcActiveIndex(FF)I

    move-result v0

    .line 565
    .local v0, activeIndex:I
    iget v3, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mActiveIndex:I

    if-eq v3, v0, :cond_0

    .line 566
    iget v3, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mActiveIndex:I

    if-gez v3, :cond_2

    if-ltz v0, :cond_3

    .line 567
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 569
    :cond_3
    iput v0, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mActiveIndex:I

    .line 570
    iget v3, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mActiveIndex:I

    iput v3, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mActionIndex:I

    goto :goto_0

    .line 575
    .end local v0           #activeIndex:I
    .end local v1           #x:F
    .end local v2           #y:F
    :pswitch_2
    iget v3, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mActiveIndex:I

    if-ltz v3, :cond_4

    .line 576
    iget-object v3, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mClickAction:Ljava/lang/Runnable;

    invoke-virtual {p0, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 577
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 579
    :cond_4
    iput v4, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mActiveIndex:I

    goto :goto_0

    .line 583
    :pswitch_3
    iput v4, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mActiveIndex:I

    goto :goto_0

    .line 551
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public setArrowOffsetX(II)V
    .locals 5
    .parameter "offset"
    .parameter "width"

    .prologue
    .line 336
    iget-object v4, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mMiddleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    div-int/lit8 v0, v4, 0x2

    .line 337
    .local v0, half:I
    iget-object v4, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mLeftDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    add-int v1, v4, v0

    .line 338
    .local v1, left:I
    iget-object v4, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mRightDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    add-int v2, v4, v0

    .line 339
    .local v2, right:I
    iget-boolean v4, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mIsArrowUp:Z

    if-eqz v4, :cond_0

    .line 340
    move v3, v1

    .line 341
    .local v3, tmp:I
    move v1, v2

    .line 342
    move v2, v3

    .line 344
    .end local v3           #tmp:I
    :cond_0
    sub-int v2, p2, v2

    .line 345
    if-ge p1, v1, :cond_1

    .line 346
    move p1, v1

    .line 348
    :cond_1
    if-le p1, v2, :cond_2

    .line 349
    move p1, v2

    .line 351
    :cond_2
    sub-int v4, p1, v0

    iput v4, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mArrowOffsetX:I

    .line 352
    return-void
.end method

.method public setArrowUp(Z)V
    .locals 0
    .parameter "up"

    .prologue
    .line 332
    iput-boolean p1, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mIsArrowUp:Z

    .line 333
    return-void
.end method
