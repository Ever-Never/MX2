.class public Lcom/meizu/util/ToastUtils;
.super Ljava/lang/Object;
.source "ToastUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static showToast(Landroid/view/View;Ljava/lang/CharSequence;)Landroid/widget/Toast;
    .locals 1
    .parameter "anchorView"
    .parameter "text"

    .prologue
    .line 30
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/meizu/util/ToastUtils;->showToast(Landroid/view/View;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    return-object v0
.end method

.method public static showToast(Landroid/view/View;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
    .locals 22
    .parameter "anchorView"
    .parameter "text"
    .parameter "duration"

    .prologue
    .line 40
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 41
    .local v5, context:Landroid/content/Context;
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    .line 42
    .local v9, metrics:Landroid/util/DisplayMetrics;
    iget v13, v9, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 43
    .local v13, screenWidth:I
    iget v11, v9, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 44
    .local v11, screenHeight:I
    div-int/lit8 v10, v11, 0x2

    .line 45
    .local v10, midScreenHeight:I
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 46
    .local v6, displayFrame:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 48
    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v12, v0, [I

    .line 49
    .local v12, screenPos:[I
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 50
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v17

    .line 51
    .local v17, width:I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v7

    .line 52
    .local v7, height:I
    const/16 v19, 0x1

    aget v19, v12, v19

    add-int v3, v19, v7

    .line 54
    .local v3, bottom:I
    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v5, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    .line 55
    .local v4, cheatSheet:Landroid/widget/Toast;
    invoke-virtual {v4}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v15

    .line 57
    .local v15, toastView:Landroid/view/View;
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x1050007

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 58
    .local v8, maxWidth:I
    const/high16 v19, -0x8000

    move/from16 v0, v19

    invoke-static {v8, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v19

    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v15, v0, v1}, Landroid/view/View;->measure(II)V

    .line 59
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    move-result v16

    .line 61
    .local v16, toastWidth:I
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x1050227

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    .line 63
    .local v14, smartbarHeight:I
    const/16 v18, 0x0

    .line 64
    .local v18, yOffset:I
    invoke-virtual {v5}, Landroid/content/Context;->isDeviceDefaultTheme()Z

    move-result v19

    if-eqz v19, :cond_0

    .line 65
    const/16 v18, 0x1e

    .line 68
    :cond_0
    if-ge v3, v10, :cond_1

    .line 70
    const/16 v19, 0x1

    aget v19, v12, v19

    add-int v19, v19, v7

    add-int v18, v18, v19

    .line 71
    const/16 v19, 0x33

    const/16 v20, 0x0

    aget v20, v12, v20

    div-int/lit8 v21, v17, 0x2

    add-int v20, v20, v21

    div-int/lit8 v21, v16, 0x2

    sub-int v20, v20, v21

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v18

    invoke-virtual {v4, v0, v1, v2}, Landroid/widget/Toast;->setGravity(III)V

    .line 80
    :goto_0
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 81
    return-object v4

    .line 75
    :cond_1
    const/16 v19, 0x1

    aget v19, v12, v19

    sub-int v19, v11, v19

    sub-int v19, v19, v14

    add-int v18, v18, v19

    .line 76
    const/16 v19, 0x53

    const/16 v20, 0x0

    aget v20, v12, v20

    div-int/lit8 v21, v17, 0x2

    add-int v20, v20, v21

    div-int/lit8 v21, v16, 0x2

    sub-int v20, v20, v21

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v18

    invoke-virtual {v4, v0, v1, v2}, Landroid/widget/Toast;->setGravity(III)V

    goto :goto_0
.end method
