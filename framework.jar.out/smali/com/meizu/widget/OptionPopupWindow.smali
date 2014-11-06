.class public Lcom/meizu/widget/OptionPopupWindow;
.super Landroid/widget/PopupWindow;
.source "OptionPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/widget/OptionPopupWindow$OptionActionMode;,
        Lcom/meizu/widget/OptionPopupWindow$HandleView;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final GOLD_RATIO:F = 0.618034f

.field private static final STATE_EMPTY:I = 0x0

.field private static final STATE_MAX:I = 0x2

.field private static final STATE_PRESSED:I = 0x1

.field private static final STATE_SETS:[[I = null

.field private static final SUSPENSION_POINTS:Ljava/lang/String; = "\u2025"

.field private static final TAG:Ljava/lang/String; = "OptionPopupWindow"

.field private static sTmpBitmaps:[Landroid/graphics/Bitmap;


# instance fields
.field private mActionMode:Lcom/meizu/widget/OptionPopupWindow$OptionActionMode;

.field private mContext:Landroid/content/Context;

.field private mDisableAlignBottom:Z

.field private mGravity:I

.field private mHandleView:Lcom/meizu/widget/OptionPopupWindow$HandleView;

.field private mLocationInWindow:[I

.field private final mOptionRects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private mParent:Landroid/view/View;

.field private mWndRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 51
    const/4 v0, 0x2

    new-array v0, v0, [[I

    sput-object v0, Lcom/meizu/widget/OptionPopupWindow;->STATE_SETS:[[I

    .line 52
    sget-object v0, Lcom/meizu/widget/OptionPopupWindow;->STATE_SETS:[[I

    new-array v1, v4, [I

    const v2, 0x10100a9

    aput v2, v1, v3

    aput-object v1, v0, v3

    .line 53
    sget-object v0, Lcom/meizu/widget/OptionPopupWindow;->STATE_SETS:[[I

    new-array v1, v4, [I

    const v2, 0x10100a7

    aput v2, v1, v3

    aput-object v1, v0, v4

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, -0x2

    const/4 v2, 0x1

    .line 75
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 58
    iput v4, p0, Lcom/meizu/widget/OptionPopupWindow;->mGravity:I

    .line 60
    new-array v0, v5, [I

    iput-object v0, p0, Lcom/meizu/widget/OptionPopupWindow;->mLocationInWindow:[I

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/meizu/widget/OptionPopupWindow;->mOptionRects:Ljava/util/ArrayList;

    .line 77
    iput-object p1, p0, Lcom/meizu/widget/OptionPopupWindow;->mContext:Landroid/content/Context;

    .line 78
    invoke-virtual {p0, v2}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 79
    invoke-virtual {p0, v2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 80
    invoke-virtual {p0, v2}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 81
    invoke-virtual {p0, v3, v3}, Landroid/widget/PopupWindow;->setWindowLayoutMode(II)V

    .line 82
    invoke-virtual {p0, v5}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 83
    const/16 v0, 0x3ea

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    .line 84
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 86
    new-instance v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;

    iget-object v1, p0, Lcom/meizu/widget/OptionPopupWindow;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/meizu/widget/OptionPopupWindow$HandleView;-><init>(Lcom/meizu/widget/OptionPopupWindow;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/meizu/widget/OptionPopupWindow;->mHandleView:Lcom/meizu/widget/OptionPopupWindow$HandleView;

    .line 87
    iget-object v0, p0, Lcom/meizu/widget/OptionPopupWindow;->mHandleView:Lcom/meizu/widget/OptionPopupWindow$HandleView;

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 88
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/widget/OptionPopupWindow;)Lcom/meizu/widget/OptionPopupWindow$OptionActionMode;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/meizu/widget/OptionPopupWindow;->mActionMode:Lcom/meizu/widget/OptionPopupWindow$OptionActionMode;

    return-object v0
.end method

.method static synthetic access$002(Lcom/meizu/widget/OptionPopupWindow;Lcom/meizu/widget/OptionPopupWindow$OptionActionMode;)Lcom/meizu/widget/OptionPopupWindow$OptionActionMode;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput-object p1, p0, Lcom/meizu/widget/OptionPopupWindow;->mActionMode:Lcom/meizu/widget/OptionPopupWindow$OptionActionMode;

    return-object p1
.end method

.method static synthetic access$300(Lcom/meizu/widget/OptionPopupWindow;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/meizu/widget/OptionPopupWindow;->mOptionRects:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(III)[Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 37
    invoke-static {p0, p1, p2}, Lcom/meizu/widget/OptionPopupWindow;->getBitmaps(III)[Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500()[[I
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/meizu/widget/OptionPopupWindow;->STATE_SETS:[[I

    return-object v0
.end method

.method static synthetic access$600(Lcom/meizu/widget/OptionPopupWindow;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/meizu/widget/OptionPopupWindow;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private static getBitmaps(III)[Landroid/graphics/Bitmap;
    .locals 3
    .parameter "count"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 708
    sget-object v2, Lcom/meizu/widget/OptionPopupWindow;->sTmpBitmaps:[Landroid/graphics/Bitmap;

    if-nez v2, :cond_4

    .line 709
    new-array v2, p0, [Landroid/graphics/Bitmap;

    sput-object v2, Lcom/meizu/widget/OptionPopupWindow;->sTmpBitmaps:[Landroid/graphics/Bitmap;

    .line 715
    :cond_0
    :goto_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, p0, :cond_5

    .line 716
    sget-object v2, Lcom/meizu/widget/OptionPopupWindow;->sTmpBitmaps:[Landroid/graphics/Bitmap;

    aget-object v0, v2, v1

    .line 717
    .local v0, bmp:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-lt v2, p1, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-ge v2, p2, :cond_3

    .line 718
    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 719
    :cond_2
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 721
    :cond_3
    sget-object v2, Lcom/meizu/widget/OptionPopupWindow;->sTmpBitmaps:[Landroid/graphics/Bitmap;

    aput-object v0, v2, v1

    .line 715
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 711
    .end local v0           #bmp:Landroid/graphics/Bitmap;
    .end local v1           #i:I
    :cond_4
    sget-object v2, Lcom/meizu/widget/OptionPopupWindow;->sTmpBitmaps:[Landroid/graphics/Bitmap;

    array-length v2, v2

    if-ge v2, p0, :cond_0

    .line 712
    sget-object v2, Lcom/meizu/widget/OptionPopupWindow;->sTmpBitmaps:[Landroid/graphics/Bitmap;

    invoke-static {v2, p0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/graphics/Bitmap;

    sput-object v2, Lcom/meizu/widget/OptionPopupWindow;->sTmpBitmaps:[Landroid/graphics/Bitmap;

    goto :goto_0

    .line 723
    .restart local v1       #i:I
    :cond_5
    sget-object v2, Lcom/meizu/widget/OptionPopupWindow;->sTmpBitmaps:[Landroid/graphics/Bitmap;

    return-object v2
.end method


# virtual methods
.method public disableAlignBottom(Z)V
    .locals 0
    .parameter "disableAlignBottom"

    .prologue
    .line 105
    iput-boolean p1, p0, Lcom/meizu/widget/OptionPopupWindow;->mDisableAlignBottom:Z

    .line 106
    return-void
.end method

.method public setClickable(Z)V
    .locals 1
    .parameter "clickable"

    .prologue
    .line 203
    iget-object v0, p0, Lcom/meizu/widget/OptionPopupWindow;->mHandleView:Lcom/meizu/widget/OptionPopupWindow$HandleView;

    iput-boolean p1, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mClickable:Z

    .line 204
    return-void
.end method

.method public setGravity(I)V
    .locals 0
    .parameter "gravity"

    .prologue
    .line 195
    iput p1, p0, Lcom/meizu/widget/OptionPopupWindow;->mGravity:I

    .line 196
    return-void
.end method

.method public setItemMaxWidth(I)V
    .locals 1
    .parameter "max"

    .prologue
    .line 219
    iget-object v0, p0, Lcom/meizu/widget/OptionPopupWindow;->mHandleView:Lcom/meizu/widget/OptionPopupWindow$HandleView;

    iput p1, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->USER_ITEM_WIDTH_MAX:I

    .line 220
    return-void
.end method

.method public setItemMinWidth(I)V
    .locals 1
    .parameter "min"

    .prologue
    .line 211
    iget-object v0, p0, Lcom/meizu/widget/OptionPopupWindow;->mHandleView:Lcom/meizu/widget/OptionPopupWindow$HandleView;

    iput p1, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->USER_ITEM_WIDTH_MIN:I

    .line 212
    return-void
.end method

.method public showOptions(Landroid/view/View;Landroid/graphics/RectF;)Z
    .locals 13
    .parameter "parent"
    .parameter "selRect"

    .prologue
    .line 109
    iget-object v9, p0, Lcom/meizu/widget/OptionPopupWindow;->mParent:Landroid/view/View;

    if-ne p1, v9, :cond_0

    iget-object v9, p0, Lcom/meizu/widget/OptionPopupWindow;->mActionMode:Lcom/meizu/widget/OptionPopupWindow$OptionActionMode;

    if-nez v9, :cond_1

    .line 110
    :cond_0
    const/4 v9, 0x0

    .line 187
    :goto_0
    return v9

    .line 112
    :cond_1
    iget-object v9, p0, Lcom/meizu/widget/OptionPopupWindow;->mWndRect:Landroid/graphics/Rect;

    if-nez v9, :cond_2

    .line 113
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    iput-object v9, p0, Lcom/meizu/widget/OptionPopupWindow;->mWndRect:Landroid/graphics/Rect;

    .line 115
    :cond_2
    iget-object v8, p0, Lcom/meizu/widget/OptionPopupWindow;->mWndRect:Landroid/graphics/Rect;

    .line 116
    .local v8, wndRect:Landroid/graphics/Rect;
    iget-object v9, p0, Lcom/meizu/widget/OptionPopupWindow;->mParent:Landroid/view/View;

    invoke-virtual {v9, v8}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 117
    iget-object v9, p0, Lcom/meizu/widget/OptionPopupWindow;->mParent:Landroid/view/View;

    iget-object v10, p0, Lcom/meizu/widget/OptionPopupWindow;->mLocationInWindow:[I

    invoke-virtual {v9, v10}, Landroid/view/View;->getLocationInWindow([I)V

    .line 118
    iget-object v9, p0, Lcom/meizu/widget/OptionPopupWindow;->mLocationInWindow:[I

    const/4 v10, 0x0

    aget v9, v9, v10

    int-to-float v9, v9

    iget-object v10, p0, Lcom/meizu/widget/OptionPopupWindow;->mLocationInWindow:[I

    const/4 v11, 0x1

    aget v10, v10, v11

    int-to-float v10, v10

    invoke-virtual {p2, v9, v10}, Landroid/graphics/RectF;->offset(FF)V

    .line 119
    iget v9, p2, Landroid/graphics/RectF;->top:F

    iget v10, v8, Landroid/graphics/Rect;->top:I

    int-to-float v10, v10

    cmpg-float v9, v9, v10

    if-gez v9, :cond_3

    .line 120
    iget v9, v8, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    iput v9, p2, Landroid/graphics/RectF;->top:F

    .line 122
    :cond_3
    iget v9, p2, Landroid/graphics/RectF;->bottom:F

    iget v10, v8, Landroid/graphics/Rect;->bottom:I

    int-to-float v10, v10

    cmpl-float v9, v9, v10

    if-lez v9, :cond_4

    .line 123
    iget v9, v8, Landroid/graphics/Rect;->bottom:I

    int-to-float v9, v9

    iput v9, p2, Landroid/graphics/RectF;->bottom:F

    .line 126
    :cond_4
    iget-object v9, p0, Lcom/meizu/widget/OptionPopupWindow;->mHandleView:Lcom/meizu/widget/OptionPopupWindow$HandleView;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/view/View;->measure(II)V

    .line 128
    iget-object v9, p0, Lcom/meizu/widget/OptionPopupWindow;->mHandleView:Lcom/meizu/widget/OptionPopupWindow$HandleView;

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    .line 129
    .local v7, width:I
    iget-object v9, p0, Lcom/meizu/widget/OptionPopupWindow;->mHandleView:Lcom/meizu/widget/OptionPopupWindow$HandleView;

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 131
    .local v3, height:I
    const/4 v2, 0x0

    .line 132
    .local v2, gravity:I
    const v5, 0x7f7fffff

    .line 133
    .local v5, nearestDis:F
    iget v9, v8, Landroid/graphics/Rect;->top:I

    add-int/2addr v9, v3

    int-to-float v9, v9

    iget v10, p2, Landroid/graphics/RectF;->top:F

    cmpg-float v9, v9, v10

    if-gtz v9, :cond_5

    .line 134
    invoke-virtual {v8}, Landroid/graphics/Rect;->centerY()I

    move-result v9

    int-to-float v9, v9

    iget v10, p2, Landroid/graphics/RectF;->top:F

    shr-int/lit8 v11, v3, 0x1

    int-to-float v11, v11

    sub-float/2addr v10, v11

    sub-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 135
    const/16 v2, 0x30

    .line 137
    :cond_5
    iget-boolean v9, p0, Lcom/meizu/widget/OptionPopupWindow;->mDisableAlignBottom:Z

    if-nez v9, :cond_6

    iget v9, v8, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v9, v3

    int-to-float v9, v9

    iget v10, p2, Landroid/graphics/RectF;->bottom:F

    cmpl-float v9, v9, v10

    if-lez v9, :cond_6

    .line 138
    invoke-virtual {v8}, Landroid/graphics/Rect;->centerY()I

    move-result v9

    int-to-float v9, v9

    iget v10, p2, Landroid/graphics/RectF;->bottom:F

    shr-int/lit8 v11, v3, 0x1

    int-to-float v11, v11

    add-float/2addr v10, v11

    sub-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 139
    .local v1, dis:F
    cmpg-float v9, v1, v5

    if-gez v9, :cond_6

    .line 140
    move v5, v1

    .line 141
    const/16 v2, 0x50

    .line 144
    .end local v1           #dis:F
    :cond_6
    iget-boolean v9, p0, Lcom/meizu/widget/OptionPopupWindow;->mDisableAlignBottom:Z

    if-eqz v9, :cond_8

    if-nez v2, :cond_8

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v9

    shl-int/lit8 v10, v3, 0x1

    int-to-float v10, v10

    cmpg-float v9, v9, v10

    if-ltz v9, :cond_7

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v9

    add-int/lit8 v10, v7, 0x32

    int-to-float v10, v10

    cmpg-float v9, v9, v10

    if-gez v9, :cond_8

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v9

    shl-int/lit8 v10, v3, 0x1

    add-int/lit16 v10, v10, 0xa0

    int-to-float v10, v10

    cmpg-float v9, v9, v10

    if-gez v9, :cond_8

    .line 147
    :cond_7
    const/16 v2, 0x50

    .line 149
    :cond_8
    iget v9, p0, Lcom/meizu/widget/OptionPopupWindow;->mGravity:I

    if-eqz v9, :cond_9

    .line 150
    iget v2, p0, Lcom/meizu/widget/OptionPopupWindow;->mGravity:I

    .line 152
    :cond_9
    const/4 v6, 0x0

    .line 153
    .local v6, top:F
    const/16 v9, 0x30

    if-ne v2, v9, :cond_a

    .line 154
    iget-object v9, p0, Lcom/meizu/widget/OptionPopupWindow;->mHandleView:Lcom/meizu/widget/OptionPopupWindow$HandleView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/meizu/widget/OptionPopupWindow$HandleView;->setArrowUp(Z)V

    .line 155
    iget v9, p2, Landroid/graphics/RectF;->top:F

    int-to-float v10, v3

    sub-float v6, v9, v10

    .line 165
    :goto_1
    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    .line 166
    .local v4, left:F
    div-int/lit8 v9, v7, 0x2

    int-to-float v9, v9

    add-float/2addr v9, v4

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v10

    int-to-float v10, v10

    cmpl-float v9, v9, v10

    if-lez v9, :cond_c

    .line 167
    int-to-float v9, v7

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v10

    int-to-float v10, v10

    sub-float/2addr v10, v4

    sub-float/2addr v9, v10

    float-to-int v0, v9

    .line 168
    .local v0, arrowpos:I
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v9

    sub-int/2addr v9, v7

    int-to-float v4, v9

    .line 176
    :goto_2
    iget-object v9, p0, Lcom/meizu/widget/OptionPopupWindow;->mHandleView:Lcom/meizu/widget/OptionPopupWindow$HandleView;

    invoke-virtual {v9, v0, v7}, Lcom/meizu/widget/OptionPopupWindow$HandleView;->setArrowOffsetX(II)V

    .line 177
    iget-object v9, p0, Lcom/meizu/widget/OptionPopupWindow;->mHandleView:Lcom/meizu/widget/OptionPopupWindow$HandleView;

    invoke-virtual {v9}, Lcom/meizu/widget/OptionPopupWindow$HandleView;->getArrowOffsetX()I

    move-result v9

    sub-int v9, v0, v9

    int-to-float v9, v9

    add-float/2addr v4, v9

    .line 178
    iget-object v9, p0, Lcom/meizu/widget/OptionPopupWindow;->mHandleView:Lcom/meizu/widget/OptionPopupWindow$HandleView;

    invoke-virtual {v9}, Landroid/view/View;->invalidate()V

    .line 181
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v9

    if-eqz v9, :cond_e

    .line 182
    float-to-int v9, v4

    float-to-int v10, v6

    const/4 v11, -0x1

    const/4 v12, -0x1

    invoke-virtual {p0, v9, v10, v11, v12}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 187
    :goto_3
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 156
    .end local v0           #arrowpos:I
    .end local v4           #left:F
    :cond_a
    const/16 v9, 0x50

    if-ne v2, v9, :cond_b

    .line 157
    iget-object v9, p0, Lcom/meizu/widget/OptionPopupWindow;->mHandleView:Lcom/meizu/widget/OptionPopupWindow$HandleView;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/meizu/widget/OptionPopupWindow$HandleView;->setArrowUp(Z)V

    .line 158
    iget v6, p2, Landroid/graphics/RectF;->bottom:F

    goto :goto_1

    .line 160
    :cond_b
    iget-object v9, p0, Lcom/meizu/widget/OptionPopupWindow;->mHandleView:Lcom/meizu/widget/OptionPopupWindow$HandleView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/meizu/widget/OptionPopupWindow$HandleView;->setArrowUp(Z)V

    .line 161
    iget v9, p2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v10

    const v11, 0x3f1e377a

    mul-float/2addr v10, v11

    sub-float/2addr v9, v10

    shr-int/lit8 v10, v3, 0x1

    int-to-float v10, v10

    sub-float v6, v9, v10

    goto :goto_1

    .line 169
    .restart local v4       #left:F
    :cond_c
    div-int/lit8 v9, v7, 0x2

    int-to-float v9, v9

    cmpg-float v9, v4, v9

    if-gez v9, :cond_d

    .line 170
    float-to-int v0, v4

    .line 171
    .restart local v0       #arrowpos:I
    const/4 v4, 0x0

    goto :goto_2

    .line 173
    .end local v0           #arrowpos:I
    :cond_d
    div-int/lit8 v0, v7, 0x2

    .line 174
    .restart local v0       #arrowpos:I
    int-to-float v9, v0

    sub-float/2addr v4, v9

    goto :goto_2

    .line 184
    :cond_e
    iget-object v9, p0, Lcom/meizu/widget/OptionPopupWindow;->mParent:Landroid/view/View;

    const/4 v10, 0x0

    float-to-int v11, v4

    float-to-int v12, v6

    invoke-virtual {p0, v9, v10, v11, v12}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_3
.end method

.method public startPopupActionMode(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 2
    .parameter "parent"
    .parameter "cb"

    .prologue
    .line 91
    iput-object p1, p0, Lcom/meizu/widget/OptionPopupWindow;->mParent:Landroid/view/View;

    .line 92
    iget-object v1, p0, Lcom/meizu/widget/OptionPopupWindow;->mActionMode:Lcom/meizu/widget/OptionPopupWindow$OptionActionMode;

    if-eqz v1, :cond_0

    .line 93
    iget-object v1, p0, Lcom/meizu/widget/OptionPopupWindow;->mActionMode:Lcom/meizu/widget/OptionPopupWindow$OptionActionMode;

    invoke-virtual {v1}, Lcom/meizu/widget/OptionPopupWindow$OptionActionMode;->finish()V

    .line 95
    :cond_0
    new-instance v0, Lcom/meizu/widget/OptionPopupWindow$OptionActionMode;

    invoke-direct {v0, p0, p2}, Lcom/meizu/widget/OptionPopupWindow$OptionActionMode;-><init>(Lcom/meizu/widget/OptionPopupWindow;Landroid/view/ActionMode$Callback;)V

    .line 96
    .local v0, mode:Lcom/meizu/widget/OptionPopupWindow$OptionActionMode;
    invoke-virtual {v0}, Lcom/meizu/widget/OptionPopupWindow$OptionActionMode;->dispatchOnCreate()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 97
    invoke-virtual {v0}, Lcom/meizu/widget/OptionPopupWindow$OptionActionMode;->invalidate()V

    .line 98
    iput-object v0, p0, Lcom/meizu/widget/OptionPopupWindow;->mActionMode:Lcom/meizu/widget/OptionPopupWindow$OptionActionMode;

    .line 101
    .end local v0           #mode:Lcom/meizu/widget/OptionPopupWindow$OptionActionMode;
    :goto_0
    return-object v0

    .restart local v0       #mode:Lcom/meizu/widget/OptionPopupWindow$OptionActionMode;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
