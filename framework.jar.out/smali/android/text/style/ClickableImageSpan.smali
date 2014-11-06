.class public abstract Landroid/text/style/ClickableImageSpan;
.super Landroid/text/style/ImageSpan;
.source "ClickableImageSpan.java"


# instance fields
.field private end:I

.field private mActionBitmapN:Landroid/graphics/Bitmap;

.field private mActionBitmapP:Landroid/graphics/Bitmap;

.field private mActionDrawable:Landroid/graphics/drawable/Drawable;

.field private mActionDrawablePress:Landroid/graphics/drawable/Drawable;

.field private mClickable:Z

.field private mDrawDrawable:Landroid/graphics/drawable/Drawable;

.field private mDrawableRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private mRect:Landroid/graphics/RectF;

.field private mainX:F

.field private mainY:F

.field pressed:I

.field private start:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "resourceId"

    .prologue
    .line 84
    invoke-direct {p0, p1, p2}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;I)V

    .line 38
    const v0, 0x10100a7

    iput v0, p0, Landroid/text/style/ClickableImageSpan;->pressed:I

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/text/style/ClickableImageSpan;->mClickable:Z

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1
    .parameter "context"
    .parameter "resourceId"
    .parameter "verticalAlignment"

    .prologue
    .line 88
    invoke-direct {p0, p1, p2, p3}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;II)V

    .line 38
    const v0, 0x10100a7

    iput v0, p0, Landroid/text/style/ClickableImageSpan;->pressed:I

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/text/style/ClickableImageSpan;->mClickable:Z

    .line 89
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "context"
    .parameter "b"

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;)V

    .line 38
    const v0, 0x10100a7

    iput v0, p0, Landroid/text/style/ClickableImageSpan;->pressed:I

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/text/style/ClickableImageSpan;->mClickable:Z

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/graphics/Bitmap;I)V
    .locals 1
    .parameter "context"
    .parameter "b"
    .parameter "verticalAlignment"

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;I)V

    .line 38
    const v0, 0x10100a7

    iput v0, p0, Landroid/text/style/ClickableImageSpan;->pressed:I

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/text/style/ClickableImageSpan;->mClickable:Z

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 1
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 38
    const v0, 0x10100a7

    iput v0, p0, Landroid/text/style/ClickableImageSpan;->pressed:I

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/text/style/ClickableImageSpan;->mClickable:Z

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;I)V
    .locals 1
    .parameter "context"
    .parameter "uri"
    .parameter "verticalAlignment"

    .prologue
    .line 80
    invoke-direct {p0, p1, p2, p3}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;Landroid/net/Uri;I)V

    .line 38
    const v0, 0x10100a7

    iput v0, p0, Landroid/text/style/ClickableImageSpan;->pressed:I

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/text/style/ClickableImageSpan;->mClickable:Z

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "d"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 38
    const v0, 0x10100a7

    iput v0, p0, Landroid/text/style/ClickableImageSpan;->pressed:I

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/text/style/ClickableImageSpan;->mClickable:Z

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;I)V
    .locals 1
    .parameter "d"
    .parameter "verticalAlignment"

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    .line 38
    const v0, 0x10100a7

    iput v0, p0, Landroid/text/style/ClickableImageSpan;->pressed:I

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/text/style/ClickableImageSpan;->mClickable:Z

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 1
    .parameter "d"
    .parameter "source"

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 38
    const v0, 0x10100a7

    iput v0, p0, Landroid/text/style/ClickableImageSpan;->pressed:I

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/text/style/ClickableImageSpan;->mClickable:Z

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;I)V
    .locals 1
    .parameter "d"
    .parameter "source"
    .parameter "verticalAlignment"

    .prologue
    .line 72
    invoke-direct {p0, p1, p2, p3}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;I)V

    .line 38
    const v0, 0x10100a7

    iput v0, p0, Landroid/text/style/ClickableImageSpan;->pressed:I

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/text/style/ClickableImageSpan;->mClickable:Z

    .line 73
    return-void
.end method

.method private getActionBitmap()Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 173
    iget-object v0, p0, Landroid/text/style/ClickableImageSpan;->mDrawDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/text/style/ClickableImageSpan;->mActionDrawablePress:Landroid/graphics/drawable/Drawable;

    if-ne v0, v1, :cond_2

    .line 174
    iget-object v0, p0, Landroid/text/style/ClickableImageSpan;->mActionBitmapP:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/text/style/ClickableImageSpan;->mActionBitmapP:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 175
    :cond_0
    iget-object v0, p0, Landroid/text/style/ClickableImageSpan;->mActionDrawablePress:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Landroid/text/style/ClickableImageSpan;->mActionBitmapP:Landroid/graphics/Bitmap;

    .line 177
    :cond_1
    iget-object v0, p0, Landroid/text/style/ClickableImageSpan;->mActionBitmapP:Landroid/graphics/Bitmap;

    .line 182
    :goto_0
    return-object v0

    .line 179
    :cond_2
    iget-object v0, p0, Landroid/text/style/ClickableImageSpan;->mActionBitmapN:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/text/style/ClickableImageSpan;->mActionBitmapN:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 180
    :cond_3
    iget-object v0, p0, Landroid/text/style/ClickableImageSpan;->mActionDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Landroid/text/style/ClickableImageSpan;->mActionBitmapN:Landroid/graphics/Bitmap;

    .line 182
    :cond_4
    iget-object v0, p0, Landroid/text/style/ClickableImageSpan;->mActionBitmapN:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method private getCachedDrawable()Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    .line 198
    iget-object v1, p0, Landroid/text/style/ClickableImageSpan;->mDrawableRef:Ljava/lang/ref/WeakReference;

    .line 199
    .local v1, wr:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable;>;"
    const/4 v0, 0x0

    .line 201
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 202
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 204
    .restart local v0       #d:Landroid/graphics/drawable/Drawable;
    :cond_0
    if-nez v0, :cond_1

    .line 205
    invoke-virtual {p0}, Landroid/text/style/ImageSpan;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 206
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Landroid/text/style/ClickableImageSpan;->mDrawableRef:Ljava/lang/ref/WeakReference;

    .line 209
    :cond_1
    return-object v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 10
    .parameter "canvas"
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "x"
    .parameter "top"
    .parameter "y"
    .parameter "bottom"
    .parameter "paint"

    .prologue
    .line 142
    iput p3, p0, Landroid/text/style/ClickableImageSpan;->start:I

    .line 143
    iput p4, p0, Landroid/text/style/ClickableImageSpan;->end:I

    .line 144
    invoke-direct {p0}, Landroid/text/style/ClickableImageSpan;->getCachedDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 145
    .local v1, b:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 146
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int v5, p8, v6

    .line 147
    .local v5, transY:I
    iget v6, p0, Landroid/text/style/DynamicDrawableSpan;->mVerticalAlignment:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 148
    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    sub-int/2addr v5, v6

    .line 150
    :cond_0
    iput p5, p0, Landroid/text/style/ClickableImageSpan;->mainX:F

    .line 151
    int-to-float v6, v5

    iput v6, p0, Landroid/text/style/ClickableImageSpan;->mainY:F

    .line 152
    int-to-float v6, v5

    invoke-virtual {p1, p5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 153
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 154
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 155
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 156
    iget-object v6, p0, Landroid/text/style/ClickableImageSpan;->mDrawDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_1

    .line 157
    invoke-direct {p0}, Landroid/text/style/ClickableImageSpan;->getActionBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 158
    .local v2, mBitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v6, p5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v6, v7

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    add-int/2addr v7, v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    move-object/from16 v0, p9

    invoke-virtual {p1, v2, v6, v7, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 162
    const/16 v6, 0x1f

    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->save(I)I

    .line 163
    iget v6, p0, Landroid/text/style/ClickableImageSpan;->mainX:F

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    iget-object v7, p0, Landroid/text/style/ClickableImageSpan;->mDrawDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    int-to-float v7, v7

    sub-float v3, v6, v7

    .line 165
    .local v3, minx:F
    iget v6, p0, Landroid/text/style/ClickableImageSpan;->mainY:F

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    iget-object v7, p0, Landroid/text/style/ClickableImageSpan;->mDrawDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    int-to-float v7, v7

    sub-float v4, v6, v7

    .line 167
    .local v4, miny:F
    new-instance v6, Landroid/graphics/RectF;

    iget v7, p0, Landroid/text/style/ClickableImageSpan;->mainX:F

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v7, v8

    iget v8, p0, Landroid/text/style/ClickableImageSpan;->mainY:F

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v8, v9

    invoke-direct {v6, v3, v4, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v6, p0, Landroid/text/style/ClickableImageSpan;->mRect:Landroid/graphics/RectF;

    .line 170
    .end local v2           #mBitmap:Landroid/graphics/Bitmap;
    .end local v3           #minx:F
    .end local v4           #miny:F
    :cond_1
    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 188
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 189
    iget-object v0, p0, Landroid/text/style/ClickableImageSpan;->mActionBitmapN:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/text/style/ClickableImageSpan;->mActionBitmapN:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 190
    iget-object v0, p0, Landroid/text/style/ClickableImageSpan;->mActionBitmapN:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 192
    :cond_0
    iget-object v0, p0, Landroid/text/style/ClickableImageSpan;->mActionBitmapP:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/text/style/ClickableImageSpan;->mActionBitmapP:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 193
    iget-object v0, p0, Landroid/text/style/ClickableImageSpan;->mActionBitmapP:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 195
    :cond_1
    return-void
.end method

.method public abstract onActionButtonClick(Landroid/view/View;)V
.end method

.method public abstract onClick(Landroid/view/View;)V
.end method

.method public onClick(Landroid/view/MotionEvent;Landroid/text/Spannable;Landroid/widget/TextView;)Z
    .locals 8
    .parameter "event"
    .parameter "buffer"
    .parameter "widget"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 219
    iget-boolean v5, p0, Landroid/text/style/ClickableImageSpan;->mClickable:Z

    if-nez v5, :cond_0

    .line 256
    :goto_0
    return v3

    .line 222
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 223
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v1, v5

    .line 224
    .local v1, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v2, v5

    .line 225
    .local v2, y:I
    invoke-virtual {p3}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v5

    sub-int/2addr v1, v5

    .line 226
    invoke-virtual {p3}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v5

    sub-int/2addr v2, v5

    .line 227
    invoke-virtual {p3}, Landroid/view/View;->getScrollX()I

    move-result v5

    add-int/2addr v1, v5

    .line 228
    invoke-virtual {p3}, Landroid/view/View;->getScrollY()I

    move-result v5

    add-int/2addr v2, v5

    .line 229
    if-nez v0, :cond_2

    .line 230
    iget-object v3, p0, Landroid/text/style/ClickableImageSpan;->mRect:Landroid/graphics/RectF;

    int-to-float v5, v1

    int-to-float v6, v2

    invoke-virtual {v3, v5, v6}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 231
    invoke-virtual {p0, v4, p3}, Landroid/text/style/ClickableImageSpan;->updateActionButtonState(ZLandroid/widget/TextView;)V

    .line 232
    invoke-virtual {p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v3, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_1
    :goto_1
    move v3, v4

    .line 256
    goto :goto_0

    .line 234
    :cond_2
    const/4 v5, 0x2

    if-ne v0, v5, :cond_4

    .line 235
    iget-object v5, p0, Landroid/text/style/ClickableImageSpan;->mRect:Landroid/graphics/RectF;

    int-to-float v6, v1

    int-to-float v7, v2

    invoke-virtual {v5, v6, v7}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 236
    invoke-virtual {p0, v4, p3}, Landroid/text/style/ClickableImageSpan;->updateActionButtonState(ZLandroid/widget/TextView;)V

    goto :goto_1

    .line 238
    :cond_3
    invoke-virtual {p0, v3, p3}, Landroid/text/style/ClickableImageSpan;->updateActionButtonState(ZLandroid/widget/TextView;)V

    goto :goto_1

    .line 240
    :cond_4
    if-ne v0, v4, :cond_7

    .line 241
    invoke-virtual {p0, v3, p3}, Landroid/text/style/ClickableImageSpan;->updateActionButtonState(ZLandroid/widget/TextView;)V

    .line 242
    iget-object v5, p0, Landroid/text/style/ClickableImageSpan;->mActionDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v5, :cond_5

    .line 243
    invoke-virtual {p0, p3}, Landroid/text/style/ClickableImageSpan;->onClick(Landroid/view/View;)V

    .line 251
    :goto_2
    invoke-virtual {p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    invoke-interface {v5, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_1

    .line 245
    :cond_5
    iget-object v5, p0, Landroid/text/style/ClickableImageSpan;->mRect:Landroid/graphics/RectF;

    int-to-float v6, v1

    int-to-float v7, v2

    invoke-virtual {v5, v6, v7}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 246
    invoke-virtual {p0, p3}, Landroid/text/style/ClickableImageSpan;->onActionButtonClick(Landroid/view/View;)V

    goto :goto_2

    .line 248
    :cond_6
    invoke-virtual {p0, p3}, Landroid/text/style/ClickableImageSpan;->onClick(Landroid/view/View;)V

    goto :goto_2

    .line 253
    :cond_7
    invoke-virtual {p0, v3, p3}, Landroid/text/style/ClickableImageSpan;->updateActionButtonState(ZLandroid/widget/TextView;)V

    .line 254
    invoke-virtual {p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    invoke-interface {v5, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_1
.end method

.method public setActionDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 6
    .parameter "drawable"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 98
    instance-of v2, p1, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v2, :cond_0

    move-object v1, p1

    .line 99
    check-cast v1, Landroid/graphics/drawable/StateListDrawable;

    .line 100
    .local v1, sd:Landroid/graphics/drawable/StateListDrawable;
    new-array v2, v5, [I

    iget v3, p0, Landroid/text/style/ClickableImageSpan;->pressed:I

    neg-int v3, v3

    aput v3, v2, v4

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawableIndex([I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Landroid/text/style/ClickableImageSpan;->mActionDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v2, p0, Landroid/text/style/ClickableImageSpan;->mDrawDrawable:Landroid/graphics/drawable/Drawable;

    .line 102
    new-array v2, v5, [I

    iget v3, p0, Landroid/text/style/ClickableImageSpan;->pressed:I

    aput v3, v2, v4

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawableIndex([I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Landroid/text/style/ClickableImageSpan;->mActionDrawablePress:Landroid/graphics/drawable/Drawable;

    .line 108
    .end local v1           #sd:Landroid/graphics/drawable/StateListDrawable;
    :goto_0
    invoke-direct {p0}, Landroid/text/style/ClickableImageSpan;->getCachedDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 109
    .local v0, b:Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_1

    .line 110
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Please set the main Drawable before set the action Drawable"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 105
    .end local v0           #b:Landroid/graphics/drawable/Drawable;
    :cond_0
    iput-object p1, p0, Landroid/text/style/ClickableImageSpan;->mActionDrawable:Landroid/graphics/drawable/Drawable;

    iput-object p1, p0, Landroid/text/style/ClickableImageSpan;->mDrawDrawable:Landroid/graphics/drawable/Drawable;

    .line 106
    iput-object p1, p0, Landroid/text/style/ClickableImageSpan;->mActionDrawablePress:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 112
    .restart local v0       #b:Landroid/graphics/drawable/Drawable;
    :cond_1
    iget-object v2, p0, Landroid/text/style/ClickableImageSpan;->mActionDrawablePress:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_3

    .line 113
    iget-object v2, p0, Landroid/text/style/ClickableImageSpan;->mActionDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v2, p0, Landroid/text/style/ClickableImageSpan;->mActionDrawablePress:Landroid/graphics/drawable/Drawable;

    .line 128
    :cond_2
    return-void

    .line 114
    :cond_3
    iget-object v2, p0, Landroid/text/style/ClickableImageSpan;->mActionDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_4

    .line 115
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "the action Drawable is null"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 116
    :cond_4
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    iget-object v3, p0, Landroid/text/style/ClickableImageSpan;->mActionDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    if-le v2, v3, :cond_5

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    iget-object v3, p0, Landroid/text/style/ClickableImageSpan;->mActionDrawablePress:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    if-gt v2, v3, :cond_6

    .line 120
    :cond_5
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "the Height of action Drawable must be < the main one"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 122
    :cond_6
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget-object v3, p0, Landroid/text/style/ClickableImageSpan;->mActionDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    if-le v2, v3, :cond_7

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget-object v3, p0, Landroid/text/style/ClickableImageSpan;->mActionDrawablePress:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    if-gt v2, v3, :cond_2

    .line 125
    :cond_7
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "the Width of action Drawable must be < the main one"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public setClickable(Z)V
    .locals 1
    .parameter "clickable"

    .prologue
    .line 135
    iget-boolean v0, p0, Landroid/text/style/ClickableImageSpan;->mClickable:Z

    if-eq v0, p1, :cond_0

    .line 136
    iput-boolean p1, p0, Landroid/text/style/ClickableImageSpan;->mClickable:Z

    .line 137
    :cond_0
    return-void
.end method

.method public updateActionButtonState(ZLandroid/widget/TextView;)V
    .locals 2
    .parameter "press"
    .parameter "widget"

    .prologue
    .line 266
    iget-object v0, p0, Landroid/text/style/ClickableImageSpan;->mActionDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    .line 280
    :cond_0
    :goto_0
    return-void

    .line 268
    :cond_1
    if-eqz p1, :cond_2

    .line 269
    iget-object v0, p0, Landroid/text/style/ClickableImageSpan;->mDrawDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/text/style/ClickableImageSpan;->mActionDrawablePress:Landroid/graphics/drawable/Drawable;

    if-eq v0, v1, :cond_0

    .line 270
    iget-object v0, p0, Landroid/text/style/ClickableImageSpan;->mActionDrawablePress:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Landroid/text/style/ClickableImageSpan;->mDrawDrawable:Landroid/graphics/drawable/Drawable;

    .line 271
    iget v0, p0, Landroid/text/style/ClickableImageSpan;->start:I

    iget v1, p0, Landroid/text/style/ClickableImageSpan;->end:I

    invoke-virtual {p2, v0, v1}, Landroid/widget/TextView;->invalidateTextDisplayList(II)V

    goto :goto_0

    .line 274
    :cond_2
    iget-object v0, p0, Landroid/text/style/ClickableImageSpan;->mDrawDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/text/style/ClickableImageSpan;->mActionDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v0, v1, :cond_0

    .line 275
    iget-object v0, p0, Landroid/text/style/ClickableImageSpan;->mActionDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Landroid/text/style/ClickableImageSpan;->mDrawDrawable:Landroid/graphics/drawable/Drawable;

    .line 276
    iget v0, p0, Landroid/text/style/ClickableImageSpan;->start:I

    iget v1, p0, Landroid/text/style/ClickableImageSpan;->end:I

    invoke-virtual {p2, v0, v1}, Landroid/widget/TextView;->invalidateTextDisplayList(II)V

    goto :goto_0
.end method
