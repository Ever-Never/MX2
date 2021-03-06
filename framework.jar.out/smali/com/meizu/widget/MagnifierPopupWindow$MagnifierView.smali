.class Lcom/meizu/widget/MagnifierPopupWindow$MagnifierView;
.super Landroid/view/View;
.source "MagnifierPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/widget/MagnifierPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MagnifierView"
.end annotation


# instance fields
.field private final kDstHeight:I

.field private final kDstWidth:I

.field private mBGDrawable:Landroid/graphics/drawable/Drawable;

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBitmapPaint:Landroid/graphics/Paint;

.field private mBmpRect:Landroid/graphics/Rect;

.field private mDstRect:Landroid/graphics/Rect;

.field private mEffectDrawable:Landroid/graphics/drawable/Drawable;

.field private mSrcRect:Landroid/graphics/Rect;

.field private mTmpRect:Landroid/graphics/Rect;

.field final synthetic this$0:Lcom/meizu/widget/MagnifierPopupWindow;


# direct methods
.method public constructor <init>(Lcom/meizu/widget/MagnifierPopupWindow;Landroid/content/Context;)V
    .locals 4
    .parameter
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    .line 137
    iput-object p1, p0, Lcom/meizu/widget/MagnifierPopupWindow$MagnifierView;->this$0:Lcom/meizu/widget/MagnifierPopupWindow;

    .line 138
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 123
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/meizu/widget/MagnifierPopupWindow$MagnifierView;->mSrcRect:Landroid/graphics/Rect;

    .line 125
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/meizu/widget/MagnifierPopupWindow$MagnifierView;->mDstRect:Landroid/graphics/Rect;

    .line 127
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/meizu/widget/MagnifierPopupWindow$MagnifierView;->mTmpRect:Landroid/graphics/Rect;

    .line 129
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/meizu/widget/MagnifierPopupWindow$MagnifierView;->mBmpRect:Landroid/graphics/Rect;

    .line 140
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/meizu/widget/MagnifierPopupWindow$MagnifierView;->mBitmapPaint:Landroid/graphics/Paint;

    .line 141
    iget-object v1, p0, Lcom/meizu/widget/MagnifierPopupWindow$MagnifierView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 142
    iget-object v1, p0, Lcom/meizu/widget/MagnifierPopupWindow$MagnifierView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 143
    iget-object v1, p0, Lcom/meizu/widget/MagnifierPopupWindow$MagnifierView;->mBitmapPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 145
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 146
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x10800dd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/widget/MagnifierPopupWindow$MagnifierView;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    .line 147
    const v1, 0x10800de

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/widget/MagnifierPopupWindow$MagnifierView;->mEffectDrawable:Landroid/graphics/drawable/Drawable;

    .line 148
    const v1, 0x105011f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/meizu/widget/MagnifierPopupWindow$MagnifierView;->kDstWidth:I

    .line 149
    const v1, 0x1050120

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/meizu/widget/MagnifierPopupWindow$MagnifierView;->kDstHeight:I

    .line 150
    iget-object v1, p0, Lcom/meizu/widget/MagnifierPopupWindow$MagnifierView;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 151
    return-void
.end method


# virtual methods
.method public calcHeight()I
    .locals 2

    .prologue
    .line 234
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    iget v1, p0, Lcom/meizu/widget/MagnifierPopupWindow$MagnifierView;->kDstHeight:I

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public calcWidth()I
    .locals 2

    .prologue
    .line 230
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    iget v1, p0, Lcom/meizu/widget/MagnifierPopupWindow$MagnifierView;->kDstWidth:I

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter "canvas"

    .prologue
    const/4 v4, 0x0

    .line 207
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 208
    iget-object v0, p0, Lcom/meizu/widget/MagnifierPopupWindow$MagnifierView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/widget/MagnifierPopupWindow$MagnifierView;->mSrcRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/meizu/widget/MagnifierPopupWindow$MagnifierView;->mBmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/meizu/widget/MagnifierPopupWindow$MagnifierView;->mTmpRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/meizu/widget/MagnifierPopupWindow$MagnifierView;->mSrcRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p0, Lcom/meizu/widget/MagnifierPopupWindow$MagnifierView;->mSrcRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 212
    iget-object v0, p0, Lcom/meizu/widget/MagnifierPopupWindow$MagnifierView;->mTmpRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/meizu/widget/MagnifierPopupWindow$MagnifierView;->mSrcRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/meizu/widget/MagnifierPopupWindow$MagnifierView;->mBmpRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget-object v2, p0, Lcom/meizu/widget/MagnifierPopupWindow$MagnifierView;->mSrcRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/meizu/widget/MagnifierPopupWindow$MagnifierView;->mBmpRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 214
    iget-object v0, p0, Lcom/meizu/widget/MagnifierPopupWindow$MagnifierView;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/meizu/widget/MagnifierPopupWindow$MagnifierView;->mTmpRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/meizu/widget/MagnifierPopupWindow$MagnifierView;->mDstRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/meizu/widget/MagnifierPopupWindow$MagnifierView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/meizu/widget/MagnifierPopupWindow$MagnifierView;->mEffectDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 219
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/4 v3, 0x0

    .line 223
    invoke-virtual {p0}, Lcom/meizu/widget/MagnifierPopupWindow$MagnifierView;->calcWidth()I

    move-result v1

    .line 224
    .local v1, width:I
    invoke-virtual {p0}, Lcom/meizu/widget/MagnifierPopupWindow$MagnifierView;->calcHeight()I

    move-result v0

    .line 225
    .local v0, height:I
    invoke-virtual {p0, v1, v0}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 226
    iget-object v2, p0, Lcom/meizu/widget/MagnifierPopupWindow$MagnifierView;->mEffectDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3, v3, v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 227
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/meizu/widget/MagnifierPopupWindow$MagnifierView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/widget/MagnifierPopupWindow$MagnifierView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/meizu/widget/MagnifierPopupWindow$MagnifierView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 156
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/widget/MagnifierPopupWindow$MagnifierView;->mBitmap:Landroid/graphics/Bitmap;

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/meizu/widget/MagnifierPopupWindow$MagnifierView;->mSrcRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 159
    iget-object v0, p0, Lcom/meizu/widget/MagnifierPopupWindow$MagnifierView;->mDstRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 161
    iget-object v0, p0, Lcom/meizu/widget/MagnifierPopupWindow$MagnifierView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 162
    iget-object v0, p0, Lcom/meizu/widget/MagnifierPopupWindow$MagnifierView;->mBmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 163
    return-void
.end method

.method public updateMagnifier(Landroid/view/View;FFFZ)V
    .locals 14
    .parameter "v"
    .parameter "x"
    .parameter "y"
    .parameter "scale"
    .parameter "refresh"

    .prologue
    .line 166
    iget v9, p0, Lcom/meizu/widget/MagnifierPopupWindow$MagnifierView;->kDstWidth:I

    int-to-float v9, v9

    div-float v9, v9, p4

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 167
    .local v8, fromWidth:I
    iget v9, p0, Lcom/meizu/widget/MagnifierPopupWindow$MagnifierView;->kDstHeight:I

    int-to-float v9, v9

    div-float v9, v9, p4

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 168
    .local v5, fromHeight:I
    div-int/lit8 v9, v8, 0x2

    int-to-float v9, v9

    sub-float v9, p2, v9

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 169
    .local v6, fromLeft:I
    div-int/lit8 v9, v5, 0x2

    int-to-float v9, v9

    sub-float v9, p3, v9

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 171
    .local v7, fromTop:I
    iget-object v9, p0, Lcom/meizu/widget/MagnifierPopupWindow$MagnifierView;->mTmpRect:Landroid/graphics/Rect;

    iget-object v10, p0, Lcom/meizu/widget/MagnifierPopupWindow$MagnifierView;->mSrcRect:Landroid/graphics/Rect;

    invoke-virtual {v9, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 172
    iget-object v9, p0, Lcom/meizu/widget/MagnifierPopupWindow$MagnifierView;->mSrcRect:Landroid/graphics/Rect;

    add-int v10, v6, v8

    add-int v11, v7, v5

    invoke-virtual {v9, v6, v7, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    .line 173
    iget-object v9, p0, Lcom/meizu/widget/MagnifierPopupWindow$MagnifierView;->mSrcRect:Landroid/graphics/Rect;

    const/4 v10, 0x0

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/meizu/widget/MagnifierPopupWindow$MagnifierView;->this$0:Lcom/meizu/widget/MagnifierPopupWindow;

    #getter for: Lcom/meizu/widget/MagnifierPopupWindow;->mFrameRect:Landroid/graphics/Rect;
    invoke-static {v12}, Lcom/meizu/widget/MagnifierPopupWindow;->access$000(Lcom/meizu/widget/MagnifierPopupWindow;)Landroid/graphics/Rect;

    move-result-object v12

    iget v12, v12, Landroid/graphics/Rect;->right:I

    iget-object v13, p0, Lcom/meizu/widget/MagnifierPopupWindow$MagnifierView;->this$0:Lcom/meizu/widget/MagnifierPopupWindow;

    #getter for: Lcom/meizu/widget/MagnifierPopupWindow;->mFrameRect:Landroid/graphics/Rect;
    invoke-static {v13}, Lcom/meizu/widget/MagnifierPopupWindow;->access$000(Lcom/meizu/widget/MagnifierPopupWindow;)Landroid/graphics/Rect;

    move-result-object v13

    iget v13, v13, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 174
    iget-object v9, p0, Lcom/meizu/widget/MagnifierPopupWindow$MagnifierView;->mDstRect:Landroid/graphics/Rect;

    iget-object v10, p0, Lcom/meizu/widget/MagnifierPopupWindow$MagnifierView;->mSrcRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    sub-int/2addr v10, v6

    iget-object v11, p0, Lcom/meizu/widget/MagnifierPopupWindow$MagnifierView;->mSrcRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    sub-int/2addr v11, v7

    iget-object v12, p0, Lcom/meizu/widget/MagnifierPopupWindow$MagnifierView;->mSrcRect:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->right:I

    sub-int/2addr v12, v6

    iget-object v13, p0, Lcom/meizu/widget/MagnifierPopupWindow$MagnifierView;->mSrcRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v13, v7

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/graphics/Rect;->set(IIII)V

    .line 176
    iget-object v9, p0, Lcom/meizu/widget/MagnifierPopupWindow$MagnifierView;->mDstRect:Landroid/graphics/Rect;

    move/from16 v0, p4

    invoke-virtual {v9, v0}, Landroid/graphics/Rect;->scale(F)V

    .line 177
    iget-object v9, p0, Lcom/meizu/widget/MagnifierPopupWindow$MagnifierView;->mDstRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v10

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v11

    invoke-virtual {v9, v10, v11}, Landroid/graphics/Rect;->offset(II)V

    .line 183
    :goto_0
    if-nez p5, :cond_0

    iget-object v9, p0, Lcom/meizu/widget/MagnifierPopupWindow$MagnifierView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/meizu/widget/MagnifierPopupWindow$MagnifierView;->mBmpRect:Landroid/graphics/Rect;

    iget-object v10, p0, Lcom/meizu/widget/MagnifierPopupWindow$MagnifierView;->mSrcRect:Landroid/graphics/Rect;

    invoke-virtual {v9, v10}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 185
    :cond_0
    iget-object v9, p0, Lcom/meizu/widget/MagnifierPopupWindow$MagnifierView;->mSrcRect:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    .line 186
    .local v3, cx:I
    iget-object v9, p0, Lcom/meizu/widget/MagnifierPopupWindow$MagnifierView;->mSrcRect:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    .line 187
    .local v4, cy:I
    iget-object v9, p0, Lcom/meizu/widget/MagnifierPopupWindow$MagnifierView;->mSrcRect:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 188
    .local v2, cw:I
    iget-object v9, p0, Lcom/meizu/widget/MagnifierPopupWindow$MagnifierView;->mSrcRect:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 189
    .local v1, ch:I
    iget-object v9, p0, Lcom/meizu/widget/MagnifierPopupWindow$MagnifierView;->mBmpRect:Landroid/graphics/Rect;

    sub-int v10, v3, v2

    sub-int v11, v4, v1

    add-int v12, v3, v2

    add-int v13, v4, v1

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/graphics/Rect;->set(IIII)V

    .line 190
    iget-object v9, p0, Lcom/meizu/widget/MagnifierPopupWindow$MagnifierView;->mBmpRect:Landroid/graphics/Rect;

    const/4 v10, 0x0

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/meizu/widget/MagnifierPopupWindow$MagnifierView;->this$0:Lcom/meizu/widget/MagnifierPopupWindow;

    #getter for: Lcom/meizu/widget/MagnifierPopupWindow;->mFrameRect:Landroid/graphics/Rect;
    invoke-static {v12}, Lcom/meizu/widget/MagnifierPopupWindow;->access$000(Lcom/meizu/widget/MagnifierPopupWindow;)Landroid/graphics/Rect;

    move-result-object v12

    iget v12, v12, Landroid/graphics/Rect;->right:I

    iget-object v13, p0, Lcom/meizu/widget/MagnifierPopupWindow$MagnifierView;->this$0:Lcom/meizu/widget/MagnifierPopupWindow;

    #getter for: Lcom/meizu/widget/MagnifierPopupWindow;->mFrameRect:Landroid/graphics/Rect;
    invoke-static {v13}, Lcom/meizu/widget/MagnifierPopupWindow;->access$000(Lcom/meizu/widget/MagnifierPopupWindow;)Landroid/graphics/Rect;

    move-result-object v13

    iget v13, v13, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 191
    iget-object v9, p0, Lcom/meizu/widget/MagnifierPopupWindow$MagnifierView;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v10, p0, Lcom/meizu/widget/MagnifierPopupWindow$MagnifierView;->mBmpRect:Landroid/graphics/Rect;

    const/4 v11, -0x1

    invoke-virtual {p1, v9, v10, v11}, Landroid/view/View;->createSnapshot(Landroid/graphics/Bitmap;Landroid/graphics/Rect;I)Landroid/graphics/Bitmap;

    move-result-object v9

    iput-object v9, p0, Lcom/meizu/widget/MagnifierPopupWindow$MagnifierView;->mBitmap:Landroid/graphics/Bitmap;

    .line 197
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 203
    .end local v1           #ch:I
    .end local v2           #cw:I
    .end local v3           #cx:I
    .end local v4           #cy:I
    :cond_1
    :goto_2
    return-void

    .line 179
    :cond_2
    iget-object v9, p0, Lcom/meizu/widget/MagnifierPopupWindow$MagnifierView;->mSrcRect:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->setEmpty()V

    .line 180
    iget-object v9, p0, Lcom/meizu/widget/MagnifierPopupWindow$MagnifierView;->mDstRect:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_0

    .line 193
    .restart local v1       #ch:I
    .restart local v2       #cw:I
    .restart local v3       #cx:I
    .restart local v4       #cy:I
    :cond_3
    iget-object v9, p0, Lcom/meizu/widget/MagnifierPopupWindow$MagnifierView;->mBmpRect:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_1

    .line 199
    .end local v1           #ch:I
    .end local v2           #cw:I
    .end local v3           #cx:I
    .end local v4           #cy:I
    :cond_4
    iget-object v9, p0, Lcom/meizu/widget/MagnifierPopupWindow$MagnifierView;->mTmpRect:Landroid/graphics/Rect;

    iget-object v10, p0, Lcom/meizu/widget/MagnifierPopupWindow$MagnifierView;->mSrcRect:Landroid/graphics/Rect;

    invoke-virtual {v9, v10}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 200
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_2
.end method
