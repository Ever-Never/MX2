.class public Lcom/meizu/widget/LockDigitView;
.super Landroid/view/View;
.source "LockDigitView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/widget/LockDigitView$ShapeHolder;,
        Lcom/meizu/widget/LockDigitView$CellInfo;,
        Lcom/meizu/widget/LockDigitView$OnPatternListener;,
        Lcom/meizu/widget/LockDigitView$Cell;
    }
.end annotation


# static fields
.field public static final ASPECT_LOCK_HEIGHT:I = 0x2

.field public static final ASPECT_LOCK_WIDTH:I = 0x1

.field public static final ASPECT_SQUARE:I = 0x0

.field private static final BG_SIZE_MIN:I = 0xa0

.field private static final COLUMN_NUM:I = 0x3

.field private static final DEBUG_DRAWINGS:Z = false

.field private static final ROW_NUM:I = 0x4

.field static final TAG:Ljava/lang/String; = "LockDigitView"

.field private static final TEXT_COLOR_DEFAULT:I = -0x323233

.field private static final TEXT_COLOR_TOUCHED:I = -0x323233

.field private static final TEXT_SIZE_DEFAULT:I = 0x48


# instance fields
.field private isAnimating:Z

.field private mAspect:I

.field private mCellBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mCellInfoArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/meizu/widget/LockDigitView$CellInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCellPointDrawable:Landroid/graphics/drawable/Drawable;

.field private mDebugPaint:Landroid/graphics/Paint;

.field private mDefIcons:[Landroid/graphics/drawable/Drawable;

.field private mEnableHapticFeedback:Z

.field private mFMI:Landroid/graphics/Paint$FontMetricsInt;

.field private mHitFactor:F

.field private mInProgressX:F

.field private mInProgressY:F

.field private mInStealthMode:Z

.field private mInputEnabled:Z

.field private mKeyAsPoint:Z

.field private mNumShapeHolder:Lcom/meizu/widget/LockDigitView$ShapeHolder;

.field private mOnPatternListener:Lcom/meizu/widget/LockDigitView$OnPatternListener;

.field private mPattern:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/widget/LockDigitView$Cell;",
            ">;"
        }
    .end annotation
.end field

.field private mPatternDown:Z

.field private mPatternInProgress:Z

.field private mPointShapeHolder:Lcom/meizu/widget/LockDigitView$ShapeHolder;

.field private mScaleAnim:Landroid/animation/AnimatorSet;

.field private mSquareHeight:F

.field private mSquareWidth:F

.field private mTextPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 182
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/meizu/widget/LockDigitView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 183
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/high16 v4, -0x4080

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 186
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/meizu/widget/LockDigitView;->mDebugPaint:Landroid/graphics/Paint;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/meizu/widget/LockDigitView;->mPattern:Ljava/util/ArrayList;

    .line 63
    iput v4, p0, Lcom/meizu/widget/LockDigitView;->mInProgressX:F

    .line 64
    iput v4, p0, Lcom/meizu/widget/LockDigitView;->mInProgressY:F

    .line 66
    iput-boolean v3, p0, Lcom/meizu/widget/LockDigitView;->mInputEnabled:Z

    .line 67
    iput-boolean v2, p0, Lcom/meizu/widget/LockDigitView;->mInStealthMode:Z

    .line 68
    iput-boolean v2, p0, Lcom/meizu/widget/LockDigitView;->mEnableHapticFeedback:Z

    .line 69
    iput-boolean v2, p0, Lcom/meizu/widget/LockDigitView;->mPatternInProgress:Z

    .line 70
    iput-boolean v2, p0, Lcom/meizu/widget/LockDigitView;->mPatternDown:Z

    .line 72
    const v0, 0x3f4ccccd

    iput v0, p0, Lcom/meizu/widget/LockDigitView;->mHitFactor:F

    .line 82
    iput-boolean v2, p0, Lcom/meizu/widget/LockDigitView;->isAnimating:Z

    .line 610
    iput-boolean v2, p0, Lcom/meizu/widget/LockDigitView;->mKeyAsPoint:Z

    .line 611
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/meizu/widget/LockDigitView;->mCellInfoArray:Landroid/util/SparseArray;

    .line 188
    iput v2, p0, Lcom/meizu/widget/LockDigitView;->mAspect:I

    .line 189
    invoke-virtual {p0, v3}, Landroid/view/View;->setClickable(Z)V

    .line 191
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/meizu/widget/LockDigitView;->mTextPaint:Landroid/graphics/Paint;

    .line 192
    iget-object v0, p0, Lcom/meizu/widget/LockDigitView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 193
    iget-object v0, p0, Lcom/meizu/widget/LockDigitView;->mTextPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41c0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 194
    iget-object v0, p0, Lcom/meizu/widget/LockDigitView;->mTextPaint:Landroid/graphics/Paint;

    const v1, -0x323233

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 195
    iget-object v0, p0, Lcom/meizu/widget/LockDigitView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 197
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x108017f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/widget/LockDigitView;->mCellPointDrawable:Landroid/graphics/drawable/Drawable;

    .line 198
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080475

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/widget/LockDigitView;->mCellBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 199
    return-void
.end method

.method private addCellToPattern(Lcom/meizu/widget/LockDigitView$Cell;)V
    .locals 1
    .parameter "newCell"

    .prologue
    .line 419
    iget-object v0, p0, Lcom/meizu/widget/LockDigitView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 420
    invoke-direct {p0}, Lcom/meizu/widget/LockDigitView;->notifyCellAdded()V

    .line 421
    return-void
.end method

.method private canAdd2Pattern(II)Z
    .locals 4
    .parameter "row"
    .parameter "column"

    .prologue
    const/4 v2, 0x0

    .line 779
    invoke-static {p1, p2}, Lcom/meizu/widget/LockDigitView$Cell;->indexOf(II)I

    move-result v1

    .line 780
    .local v1, key:I
    iget-object v3, p0, Lcom/meizu/widget/LockDigitView;->mCellInfoArray:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/widget/LockDigitView$CellInfo;

    .line 781
    .local v0, info:Lcom/meizu/widget/LockDigitView$CellInfo;
    if-eqz v0, :cond_2

    .line 782
    iget-object v3, v0, Lcom/meizu/widget/LockDigitView$CellInfo;->icon:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_1

    iget-object v3, v0, Lcom/meizu/widget/LockDigitView$CellInfo;->label:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 788
    :cond_0
    :goto_0
    return v2

    .line 785
    :cond_1
    iget-boolean v2, v0, Lcom/meizu/widget/LockDigitView$CellInfo;->enabled:Z

    goto :goto_0

    .line 787
    :cond_2
    invoke-direct {p0, v1}, Lcom/meizu/widget/LockDigitView;->getDefaultIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 788
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private checkForNewHit(FFZ)Lcom/meizu/widget/LockDigitView$Cell;
    .locals 13
    .parameter "x"
    .parameter "y"
    .parameter "moving"

    .prologue
    .line 426
    iget v8, p0, Lcom/meizu/widget/LockDigitView;->mSquareWidth:F

    .line 427
    .local v8, squareWidth:F
    iget v9, p0, Lcom/meizu/widget/LockDigitView;->mHitFactor:F

    mul-float/2addr v9, v8

    const/high16 v10, 0x4000

    div-float/2addr v9, v10

    float-to-double v9, v9

    const-wide/high16 v11, 0x4000

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    double-to-float v3, v9

    .line 429
    .local v3, hitRadius:F
    const/4 v7, -0x1

    .line 430
    .local v7, rowHit:I
    const/4 v0, -0x1

    .line 432
    .local v0, columnHit:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    const/4 v9, 0x3

    if-ge v4, v9, :cond_2

    .line 433
    const/4 v5, 0x0

    .local v5, j:I
    :goto_1
    const/4 v9, 0x4

    if-ge v5, v9, :cond_1

    .line 434
    invoke-direct {p0, v4}, Lcom/meizu/widget/LockDigitView;->getCenterXForColumn(I)F

    move-result v9

    sub-float v1, p1, v9

    .line 435
    .local v1, cx:F
    invoke-direct {p0, v5}, Lcom/meizu/widget/LockDigitView;->getCenterYForRow(I)F

    move-result v9

    sub-float v2, p2, v9

    .line 436
    .local v2, cy:F
    mul-float v9, v1, v1

    mul-float v10, v2, v2

    add-float/2addr v9, v10

    cmpg-float v9, v9, v3

    if-gez v9, :cond_0

    .line 437
    move v7, v5

    .line 438
    move v0, v4

    .line 433
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 432
    .end local v1           #cx:F
    .end local v2           #cy:F
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 443
    .end local v5           #j:I
    :cond_2
    const/4 v9, -0x1

    if-eq v7, v9, :cond_3

    const/4 v9, -0x1

    if-ne v0, v9, :cond_4

    .line 444
    :cond_3
    const/4 v9, 0x0

    .line 457
    :goto_2
    return-object v9

    .line 446
    :cond_4
    if-eqz p3, :cond_5

    iget-object v9, p0, Lcom/meizu/widget/LockDigitView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_5

    .line 447
    iget-object v9, p0, Lcom/meizu/widget/LockDigitView;->mPattern:Ljava/util/ArrayList;

    iget-object v10, p0, Lcom/meizu/widget/LockDigitView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/meizu/widget/LockDigitView$Cell;

    .line 448
    .local v6, last:Lcom/meizu/widget/LockDigitView$Cell;
    iget v9, v6, Lcom/meizu/widget/LockDigitView$Cell;->row:I

    if-ne v9, v7, :cond_5

    iget v9, v6, Lcom/meizu/widget/LockDigitView$Cell;->column:I

    if-ne v9, v0, :cond_5

    .line 449
    const/4 v9, 0x0

    goto :goto_2

    .line 453
    .end local v6           #last:Lcom/meizu/widget/LockDigitView$Cell;
    :cond_5
    invoke-direct {p0, v7, v0}, Lcom/meizu/widget/LockDigitView;->canAdd2Pattern(II)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 455
    invoke-static {v7, v0}, Lcom/meizu/widget/LockDigitView$Cell;->of(II)Lcom/meizu/widget/LockDigitView$Cell;

    move-result-object v9

    goto :goto_2

    .line 457
    :cond_6
    const/4 v9, 0x0

    goto :goto_2
.end method

.method private createAnimation()V
    .locals 12

    .prologue
    const v11, 0x10e0050

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 833
    iget-object v6, p0, Lcom/meizu/widget/LockDigitView;->mScaleAnim:Landroid/animation/AnimatorSet;

    if-nez v6, :cond_0

    .line 838
    new-instance v6, Lcom/meizu/widget/LockDigitView$ShapeHolder;

    invoke-direct {v6, p0}, Lcom/meizu/widget/LockDigitView$ShapeHolder;-><init>(Lcom/meizu/widget/LockDigitView;)V

    iput-object v6, p0, Lcom/meizu/widget/LockDigitView;->mPointShapeHolder:Lcom/meizu/widget/LockDigitView$ShapeHolder;

    .line 839
    const-string v6, "scale"

    new-array v7, v10, [F

    fill-array-data v7, :array_0

    invoke-static {v6, v7}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    .line 840
    .local v5, pointScalePHolder:Landroid/animation/PropertyValuesHolder;
    iget-object v6, p0, Lcom/meizu/widget/LockDigitView;->mPointShapeHolder:Lcom/meizu/widget/LockDigitView$ShapeHolder;

    new-array v7, v9, [Landroid/animation/PropertyValuesHolder;

    aput-object v5, v7, v8

    invoke-static {v6, v7}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 841
    .local v4, pointAnimator:Landroid/animation/ObjectAnimator;
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10e0051

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v4, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 842
    invoke-virtual {v4, v8}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 844
    new-instance v6, Lcom/meizu/widget/LockDigitView$ShapeHolder;

    invoke-direct {v6, p0}, Lcom/meizu/widget/LockDigitView$ShapeHolder;-><init>(Lcom/meizu/widget/LockDigitView;)V

    iput-object v6, p0, Lcom/meizu/widget/LockDigitView;->mNumShapeHolder:Lcom/meizu/widget/LockDigitView$ShapeHolder;

    .line 845
    const-string v6, "scale"

    new-array v7, v10, [F

    fill-array-data v7, :array_1

    invoke-static {v6, v7}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 846
    .local v3, numScalePHolder:Landroid/animation/PropertyValuesHolder;
    iget-object v6, p0, Lcom/meizu/widget/LockDigitView;->mNumShapeHolder:Lcom/meizu/widget/LockDigitView$ShapeHolder;

    new-array v7, v9, [Landroid/animation/PropertyValuesHolder;

    aput-object v3, v7, v8

    invoke-static {v6, v7}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 847
    .local v2, numScaleAnimator:Landroid/animation/ObjectAnimator;
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v2, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 848
    invoke-virtual {v2, v8}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 849
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x10c0022

    invoke-static {v6, v7}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 850
    invoke-virtual {v2, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 852
    const-string v6, "alpha"

    new-array v7, v10, [F

    fill-array-data v7, :array_2

    invoke-static {v6, v7}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 853
    .local v1, numAlphaPHolder:Landroid/animation/PropertyValuesHolder;
    iget-object v6, p0, Lcom/meizu/widget/LockDigitView;->mNumShapeHolder:Lcom/meizu/widget/LockDigitView$ShapeHolder;

    new-array v7, v9, [Landroid/animation/PropertyValuesHolder;

    aput-object v1, v7, v8

    invoke-static {v6, v7}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 854
    .local v0, numAlphaAnimator:Landroid/animation/ObjectAnimator;
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 855
    invoke-virtual {v0, v8}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 857
    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v6, p0, Lcom/meizu/widget/LockDigitView;->mScaleAnim:Landroid/animation/AnimatorSet;

    .line 858
    iget-object v6, p0, Lcom/meizu/widget/LockDigitView;->mScaleAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v6, p0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 859
    iget-object v6, p0, Lcom/meizu/widget/LockDigitView;->mScaleAnim:Landroid/animation/AnimatorSet;

    const/4 v7, 0x3

    new-array v7, v7, [Landroid/animation/Animator;

    aput-object v4, v7, v8

    aput-object v2, v7, v9

    aput-object v0, v7, v10

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 861
    .end local v0           #numAlphaAnimator:Landroid/animation/ObjectAnimator;
    .end local v1           #numAlphaPHolder:Landroid/animation/PropertyValuesHolder;
    .end local v2           #numScaleAnimator:Landroid/animation/ObjectAnimator;
    .end local v3           #numScalePHolder:Landroid/animation/PropertyValuesHolder;
    .end local v4           #pointAnimator:Landroid/animation/ObjectAnimator;
    .end local v5           #pointScalePHolder:Landroid/animation/PropertyValuesHolder;
    :cond_0
    return-void

    .line 839
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 845
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 852
    :array_2
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method private detectAndAddHit(FFZ)Lcom/meizu/widget/LockDigitView$Cell;
    .locals 3
    .parameter "x"
    .parameter "y"
    .parameter "moving"

    .prologue
    .line 405
    invoke-direct {p0, p1, p2, p3}, Lcom/meizu/widget/LockDigitView;->checkForNewHit(FFZ)Lcom/meizu/widget/LockDigitView$Cell;

    move-result-object v0

    .line 406
    .local v0, cell:Lcom/meizu/widget/LockDigitView$Cell;
    if-eqz v0, :cond_1

    .line 407
    invoke-direct {p0, v0}, Lcom/meizu/widget/LockDigitView;->addCellToPattern(Lcom/meizu/widget/LockDigitView$Cell;)V

    .line 408
    iget-boolean v1, p0, Lcom/meizu/widget/LockDigitView;->mEnableHapticFeedback:Z

    if-eqz v1, :cond_0

    .line 409
    const/4 v1, 0x1

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Landroid/view/View;->performHapticFeedback(II)Z

    .line 415
    .end local v0           #cell:Lcom/meizu/widget/LockDigitView$Cell;
    :cond_0
    :goto_0
    return-object v0

    .restart local v0       #cell:Lcom/meizu/widget/LockDigitView$Cell;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private drawCell(Landroid/graphics/Canvas;IILcom/meizu/widget/LockDigitView$Cell;)Z
    .locals 22
    .parameter "canvas"
    .parameter "row"
    .parameter "column"
    .parameter "active"

    .prologue
    .line 700
    const/4 v12, 0x0

    .line 701
    .local v12, label:Ljava/lang/String;
    const/4 v9, 0x0

    .line 702
    .local v9, icon:Landroid/graphics/drawable/Drawable;
    const/4 v7, 0x1

    .line 704
    .local v7, enabled:Z
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/meizu/widget/LockDigitView;->getCenterXForColumn(I)F

    move-result v5

    .line 705
    .local v5, cx:F
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/meizu/widget/LockDigitView;->getCenterYForRow(I)F

    move-result v6

    .line 716
    .local v6, cy:F
    invoke-static/range {p2 .. p3}, Lcom/meizu/widget/LockDigitView$Cell;->indexOf(II)I

    move-result v11

    .line 717
    .local v11, key:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/LockDigitView;->mCellInfoArray:Landroid/util/SparseArray;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/meizu/widget/LockDigitView$CellInfo;

    .line 718
    .local v10, info:Lcom/meizu/widget/LockDigitView$CellInfo;
    if-eqz v10, :cond_2

    .line 719
    iget-object v9, v10, Lcom/meizu/widget/LockDigitView$CellInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 720
    iget-object v12, v10, Lcom/meizu/widget/LockDigitView$CellInfo;->label:Ljava/lang/String;

    .line 721
    iget-boolean v7, v10, Lcom/meizu/widget/LockDigitView$CellInfo;->enabled:Z

    .line 726
    :goto_0
    if-nez v9, :cond_0

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_1

    :cond_0
    if-nez v7, :cond_3

    .line 727
    :cond_1
    const/16 v20, 0x0

    .line 775
    :goto_1
    return v20

    .line 723
    :cond_2
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/meizu/widget/LockDigitView;->getDefaultIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    goto :goto_0

    .line 730
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/meizu/widget/LockDigitView;->mKeyAsPoint:Z

    move/from16 v20, v0

    if-eqz v20, :cond_8

    .line 731
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/meizu/widget/LockDigitView;->isCellNumeric(II)Z

    move-result v20

    if-eqz v20, :cond_8

    .line 732
    const/4 v13, 0x0

    .line 733
    .local v13, selected:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/LockDigitView;->mPattern:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :cond_4
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/meizu/widget/LockDigitView$Cell;

    .line 734
    .local v16, theCell:Lcom/meizu/widget/LockDigitView$Cell;
    invoke-virtual/range {v16 .. v16}, Lcom/meizu/widget/LockDigitView$Cell;->getRow()I

    move-result v20

    move/from16 v0, v20

    move/from16 v1, p2

    if-ne v0, v1, :cond_4

    invoke-virtual/range {v16 .. v16}, Lcom/meizu/widget/LockDigitView$Cell;->getColumn()I

    move-result v20

    move/from16 v0, v20

    move/from16 v1, p3

    if-ne v0, v1, :cond_4

    .line 735
    const/4 v13, 0x1

    goto :goto_2

    .line 738
    .end local v16           #theCell:Lcom/meizu/widget/LockDigitView$Cell;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/LockDigitView;->mCellPointDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v20, v0

    if-eqz v20, :cond_6

    .line 739
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/LockDigitView;->mCellPointDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v21, v0

    if-eqz v13, :cond_7

    sget-object v20, Landroid/view/View;->SELECTED_STATE_SET:[I

    :goto_3
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 741
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/LockDigitView;->mCellPointDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    move/from16 v3, p2

    move/from16 v4, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/meizu/widget/LockDigitView;->drawIcon(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;II)V

    .line 742
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/meizu/widget/LockDigitView;->isAnimating:Z

    move/from16 v20, v0

    if-nez v20, :cond_8

    .line 743
    const/16 v20, 0x1

    goto :goto_1

    .line 739
    :cond_7
    sget-object v20, Landroid/view/View;->EMPTY_STATE_SET:[I

    goto :goto_3

    .line 749
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v13           #selected:Z
    :cond_8
    if-eqz p4, :cond_b

    invoke-virtual/range {p4 .. p4}, Lcom/meizu/widget/LockDigitView$Cell;->getRow()I

    move-result v20

    move/from16 v0, v20

    move/from16 v1, p2

    if-ne v0, v1, :cond_b

    invoke-virtual/range {p4 .. p4}, Lcom/meizu/widget/LockDigitView$Cell;->getColumn()I

    move-result v20

    move/from16 v0, v20

    move/from16 v1, p3

    if-ne v0, v1, :cond_b

    const/16 v17, 0x1

    .line 750
    .local v17, touched:Z
    :goto_4
    if-eqz v10, :cond_9

    iget-object v0, v10, Lcom/meizu/widget/LockDigitView$CellInfo;->icon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v20, v0

    if-nez v20, :cond_d

    .line 751
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/LockDigitView;->mCellBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v20, v0

    if-eqz v20, :cond_a

    .line 752
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/LockDigitView;->mCellBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v21, v0

    if-eqz v17, :cond_c

    sget-object v20, Landroid/view/View;->PRESSED_STATE_SET:[I

    :goto_5
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 753
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/LockDigitView;->mCellBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    move/from16 v3, p2

    move/from16 v4, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/meizu/widget/LockDigitView;->drawIcon(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;II)V

    .line 758
    :goto_6
    if-eqz v9, :cond_f

    .line 759
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/meizu/widget/LockDigitView;->drawIcon(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;II)V

    .line 775
    :goto_7
    const/16 v20, 0x1

    goto/16 :goto_1

    .line 749
    .end local v17           #touched:Z
    :cond_b
    const/16 v17, 0x0

    goto :goto_4

    .line 752
    .restart local v17       #touched:Z
    :cond_c
    sget-object v20, Landroid/view/View;->EMPTY_STATE_SET:[I

    goto :goto_5

    .line 755
    :cond_d
    iget-object v0, v10, Lcom/meizu/widget/LockDigitView$CellInfo;->icon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v21, v0

    if-eqz v17, :cond_e

    sget-object v20, Landroid/view/View;->PRESSED_STATE_SET:[I

    :goto_8
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_6

    :cond_e
    sget-object v20, Landroid/view/View;->EMPTY_STATE_SET:[I

    goto :goto_8

    .line 761
    :cond_f
    if-eqz v17, :cond_10

    const v14, -0x323233

    .line 762
    .local v14, textColor:I
    :goto_9
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_11

    const/16 v15, 0x48

    .line 763
    .local v15, textSize:I
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/LockDigitView;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Landroid/graphics/Paint;->setColor(I)V

    .line 764
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/LockDigitView;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    int-to-float v0, v15

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 765
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/LockDigitView;->mFMI:Landroid/graphics/Paint$FontMetricsInt;

    move-object/from16 v20, v0

    if-nez v20, :cond_12

    .line 766
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/LockDigitView;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/meizu/widget/LockDigitView;->mFMI:Landroid/graphics/Paint$FontMetricsInt;

    .line 770
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/LockDigitView;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v20

    const/high16 v21, 0x4000

    div-float v20, v20, v21

    sub-float v18, v5, v20

    .line 771
    .local v18, x:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/LockDigitView;->mFMI:Landroid/graphics/Paint$FontMetricsInt;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/LockDigitView;->mFMI:Landroid/graphics/Paint$FontMetricsInt;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v21, v0

    add-int v20, v20, v21

    div-int/lit8 v20, v20, 0x2

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    sub-float v19, v6, v20

    .line 772
    .local v19, y:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/LockDigitView;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    move-object/from16 v3, v20

    invoke-virtual {v0, v12, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_7

    .line 761
    .end local v14           #textColor:I
    .end local v15           #textSize:I
    .end local v18           #x:F
    .end local v19           #y:F
    :cond_10
    const v14, -0x323233

    goto/16 :goto_9

    .line 762
    .restart local v14       #textColor:I
    :cond_11
    const/16 v15, 0x24

    goto :goto_a

    .line 768
    .restart local v15       #textSize:I
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/LockDigitView;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/LockDigitView;->mFMI:Landroid/graphics/Paint$FontMetricsInt;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/graphics/Paint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    goto :goto_b
.end method

.method private drawIcon(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;II)V
    .locals 10
    .parameter "canvas"
    .parameter "icon"
    .parameter "row"
    .parameter "column"

    .prologue
    const/high16 v9, 0x4000

    .line 666
    if-eqz p2, :cond_0

    .line 667
    const/4 v5, 0x0

    .line 668
    .local v5, w:I
    const/4 v0, 0x0

    .line 669
    .local v0, h:I
    const/4 v2, 0x0

    .line 670
    .local v2, l:I
    const/4 v4, 0x0

    .line 671
    .local v4, t:I
    iget-boolean v7, p0, Lcom/meizu/widget/LockDigitView;->isAnimating:Z

    if-eqz v7, :cond_2

    .line 673
    iget-object v7, p0, Lcom/meizu/widget/LockDigitView;->mCellPointDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p2, v7, :cond_1

    .line 674
    iget-object v3, p0, Lcom/meizu/widget/LockDigitView;->mPointShapeHolder:Lcom/meizu/widget/LockDigitView$ShapeHolder;

    .line 679
    .local v3, shapeHolder:Lcom/meizu/widget/LockDigitView$ShapeHolder;
    :goto_0
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v3}, Lcom/meizu/widget/LockDigitView$ShapeHolder;->getScale()F

    move-result v8

    mul-float v6, v7, v8

    .line 680
    .local v6, width:F
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v3}, Lcom/meizu/widget/LockDigitView$ShapeHolder;->getScale()F

    move-result v8

    mul-float v1, v7, v8

    .line 681
    .local v1, height:F
    invoke-direct {p0, p4}, Lcom/meizu/widget/LockDigitView;->getCenterXForColumn(I)F

    move-result v7

    div-float v8, v6, v9

    sub-float/2addr v7, v8

    float-to-int v2, v7

    .line 682
    invoke-direct {p0, p3}, Lcom/meizu/widget/LockDigitView;->getCenterYForRow(I)F

    move-result v7

    div-float v8, v1, v9

    sub-float/2addr v7, v8

    float-to-int v4, v7

    .line 683
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 684
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 685
    add-int v7, v2, v5

    add-int v8, v4, v0

    invoke-virtual {p2, v2, v4, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 686
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 697
    .end local v0           #h:I
    .end local v1           #height:F
    .end local v2           #l:I
    .end local v3           #shapeHolder:Lcom/meizu/widget/LockDigitView$ShapeHolder;
    .end local v4           #t:I
    .end local v5           #w:I
    .end local v6           #width:F
    :cond_0
    :goto_1
    return-void

    .line 676
    .restart local v0       #h:I
    .restart local v2       #l:I
    .restart local v4       #t:I
    .restart local v5       #w:I
    :cond_1
    iget-object v3, p0, Lcom/meizu/widget/LockDigitView;->mNumShapeHolder:Lcom/meizu/widget/LockDigitView$ShapeHolder;

    .line 677
    .restart local v3       #shapeHolder:Lcom/meizu/widget/LockDigitView$ShapeHolder;
    invoke-virtual {v3}, Lcom/meizu/widget/LockDigitView$ShapeHolder;->getAlpha()F

    move-result v7

    const/high16 v8, 0x437f

    mul-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    invoke-virtual {p2, v7}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_0

    .line 688
    .end local v3           #shapeHolder:Lcom/meizu/widget/LockDigitView$ShapeHolder;
    :cond_2
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    .line 689
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 690
    invoke-direct {p0, p4}, Lcom/meizu/widget/LockDigitView;->getCenterXForColumn(I)F

    move-result v7

    div-int/lit8 v8, v5, 0x2

    int-to-float v8, v8

    sub-float/2addr v7, v8

    float-to-int v2, v7

    .line 691
    invoke-direct {p0, p3}, Lcom/meizu/widget/LockDigitView;->getCenterYForRow(I)F

    move-result v7

    div-int/lit8 v8, v0, 0x2

    int-to-float v8, v8

    sub-float/2addr v7, v8

    float-to-int v4, v7

    .line 692
    add-int v7, v2, v5

    add-int v8, v4, v0

    invoke-virtual {p2, v2, v4, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 693
    const/16 v7, 0xff

    invoke-virtual {p2, v7}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 694
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1
.end method

.method private getCenterXForColumn(I)F
    .locals 3
    .parameter "column"

    .prologue
    .line 574
    iget v0, p0, Landroid/view/View;->mPaddingLeft:I

    int-to-float v0, v0

    int-to-float v1, p1

    iget v2, p0, Lcom/meizu/widget/LockDigitView;->mSquareWidth:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/meizu/widget/LockDigitView;->mSquareWidth:F

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method private getCenterYForRow(I)F
    .locals 3
    .parameter "row"

    .prologue
    .line 578
    iget v0, p0, Landroid/view/View;->mPaddingTop:I

    int-to-float v0, v0

    int-to-float v1, p1

    iget v2, p0, Lcom/meizu/widget/LockDigitView;->mSquareHeight:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/meizu/widget/LockDigitView;->mSquareHeight:F

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method private getDefaultIcon(I)Landroid/graphics/drawable/Drawable;
    .locals 6
    .parameter "index"

    .prologue
    const/16 v5, 0xc

    .line 202
    iget-object v3, p0, Lcom/meizu/widget/LockDigitView;->mDefIcons:[Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_1

    .line 203
    const/16 v0, 0xc

    .line 204
    .local v0, N:I
    new-array v3, v5, [Landroid/graphics/drawable/Drawable;

    iput-object v3, p0, Lcom/meizu/widget/LockDigitView;->mDefIcons:[Landroid/graphics/drawable/Drawable;

    .line 205
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x107003b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 206
    .local v2, icons:Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v5, :cond_0

    .line 207
    iget-object v3, p0, Lcom/meizu/widget/LockDigitView;->mDefIcons:[Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v3, v1

    .line 206
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 209
    :cond_0
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 211
    .end local v0           #N:I
    .end local v1           #i:I
    .end local v2           #icons:Landroid/content/res/TypedArray;
    :cond_1
    iget-object v3, p0, Lcom/meizu/widget/LockDigitView;->mDefIcons:[Landroid/graphics/drawable/Drawable;

    aget-object v3, v3, p1

    return-object v3
.end method

.method private handleActionDown(Landroid/view/MotionEvent;)V
    .locals 5
    .parameter "event"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 557
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 558
    .local v1, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 559
    .local v2, y:F
    invoke-direct {p0, v1, v2, v3}, Lcom/meizu/widget/LockDigitView;->detectAndAddHit(FFZ)Lcom/meizu/widget/LockDigitView$Cell;

    move-result-object v0

    .line 560
    .local v0, hitCell:Lcom/meizu/widget/LockDigitView$Cell;
    if-eqz v0, :cond_0

    .line 561
    iput-boolean v4, p0, Lcom/meizu/widget/LockDigitView;->mPatternInProgress:Z

    .line 562
    invoke-direct {p0}, Lcom/meizu/widget/LockDigitView;->notifyPatternStarted()V

    .line 563
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 568
    :goto_0
    iput v1, p0, Lcom/meizu/widget/LockDigitView;->mInProgressX:F

    .line 569
    iput v2, p0, Lcom/meizu/widget/LockDigitView;->mInProgressY:F

    .line 570
    iput-boolean v4, p0, Lcom/meizu/widget/LockDigitView;->mPatternDown:Z

    .line 571
    return-void

    .line 565
    :cond_0
    iput-boolean v3, p0, Lcom/meizu/widget/LockDigitView;->mPatternInProgress:Z

    .line 566
    invoke-direct {p0}, Lcom/meizu/widget/LockDigitView;->notifyPatternCleared()V

    goto :goto_0
.end method

.method private handleActionMove(Landroid/view/MotionEvent;)V
    .locals 12
    .parameter "event"

    .prologue
    const/4 v11, 0x1

    .line 508
    iget-boolean v8, p0, Lcom/meizu/widget/LockDigitView;->mPatternDown:Z

    if-nez v8, :cond_1

    .line 538
    :cond_0
    return-void

    .line 512
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v2

    .line 513
    .local v2, historySize:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    add-int/lit8 v8, v2, 0x1

    if-ge v4, v8, :cond_0

    .line 514
    iget-boolean v8, p0, Lcom/meizu/widget/LockDigitView;->mPatternDown:Z

    if-eqz v8, :cond_0

    .line 515
    if-ge v4, v2, :cond_5

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v6

    .line 516
    .local v6, x:F
    :goto_1
    if-ge v4, v2, :cond_6

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v7

    .line 517
    .local v7, y:F
    :goto_2
    invoke-direct {p0, v6, v7, v11}, Lcom/meizu/widget/LockDigitView;->detectAndAddHit(FFZ)Lcom/meizu/widget/LockDigitView$Cell;

    move-result-object v3

    .line 518
    .local v3, hitCell:Lcom/meizu/widget/LockDigitView$Cell;
    iget-object v8, p0, Lcom/meizu/widget/LockDigitView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 519
    .local v5, patternSize:I
    if-eqz v3, :cond_2

    if-ne v5, v11, :cond_2

    .line 520
    iput-boolean v11, p0, Lcom/meizu/widget/LockDigitView;->mPatternInProgress:Z

    .line 521
    invoke-direct {p0}, Lcom/meizu/widget/LockDigitView;->notifyPatternStarted()V

    .line 523
    :cond_2
    if-eqz v3, :cond_3

    .line 524
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 527
    :cond_3
    iget v8, p0, Lcom/meizu/widget/LockDigitView;->mInProgressX:F

    sub-float v8, v6, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 528
    .local v0, dx:F
    iget v8, p0, Lcom/meizu/widget/LockDigitView;->mInProgressY:F

    sub-float v8, v7, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 529
    .local v1, dy:F
    add-float v8, v0, v1

    iget v9, p0, Lcom/meizu/widget/LockDigitView;->mSquareWidth:F

    const v10, 0x3c23d70a

    mul-float/2addr v9, v10

    cmpl-float v8, v8, v9

    if-lez v8, :cond_4

    .line 530
    iput v6, p0, Lcom/meizu/widget/LockDigitView;->mInProgressX:F

    .line 531
    iput v7, p0, Lcom/meizu/widget/LockDigitView;->mInProgressY:F

    .line 533
    if-eqz v3, :cond_4

    .line 534
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 513
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 515
    .end local v0           #dx:F
    .end local v1           #dy:F
    .end local v3           #hitCell:Lcom/meizu/widget/LockDigitView$Cell;
    .end local v5           #patternSize:I
    .end local v6           #x:F
    .end local v7           #y:F
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    goto :goto_1

    .line 516
    .restart local v6       #x:F
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    goto :goto_2
.end method

.method private handleActionUp(Landroid/view/MotionEvent;)V
    .locals 2
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    .line 548
    iput-boolean v1, p0, Lcom/meizu/widget/LockDigitView;->mPatternDown:Z

    .line 549
    iget-object v0, p0, Lcom/meizu/widget/LockDigitView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 550
    iput-boolean v1, p0, Lcom/meizu/widget/LockDigitView;->mPatternInProgress:Z

    .line 551
    invoke-direct {p0}, Lcom/meizu/widget/LockDigitView;->notifyPatternDetected()V

    .line 552
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 554
    :cond_0
    return-void
.end method

.method private isCellNumeric(II)Z
    .locals 1
    .parameter "row"
    .parameter "column"

    .prologue
    .line 793
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    if-eqz p2, :cond_0

    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 794
    :cond_0
    const/4 v0, 0x0

    .line 796
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private notifyCellAdded()V
    .locals 2

    .prologue
    .line 282
    iget-object v0, p0, Lcom/meizu/widget/LockDigitView;->mOnPatternListener:Lcom/meizu/widget/LockDigitView$OnPatternListener;

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/meizu/widget/LockDigitView;->mOnPatternListener:Lcom/meizu/widget/LockDigitView$OnPatternListener;

    iget-object v1, p0, Lcom/meizu/widget/LockDigitView;->mPattern:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/meizu/widget/LockDigitView$OnPatternListener;->onPatternCellAdded(Ljava/util/List;)V

    .line 285
    :cond_0
    const v0, 0x104031f

    invoke-direct {p0, v0}, Lcom/meizu/widget/LockDigitView;->sendAccessEvent(I)V

    .line 286
    return-void
.end method

.method private notifyPatternCleared()V
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/meizu/widget/LockDigitView;->mOnPatternListener:Lcom/meizu/widget/LockDigitView$OnPatternListener;

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/meizu/widget/LockDigitView;->mOnPatternListener:Lcom/meizu/widget/LockDigitView$OnPatternListener;

    invoke-interface {v0}, Lcom/meizu/widget/LockDigitView$OnPatternListener;->onPatternCleared()V

    .line 306
    :cond_0
    const v0, 0x104031e

    invoke-direct {p0, v0}, Lcom/meizu/widget/LockDigitView;->sendAccessEvent(I)V

    .line 307
    return-void
.end method

.method private notifyPatternDetected()V
    .locals 2

    .prologue
    .line 296
    iget-object v0, p0, Lcom/meizu/widget/LockDigitView;->mOnPatternListener:Lcom/meizu/widget/LockDigitView$OnPatternListener;

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/meizu/widget/LockDigitView;->mOnPatternListener:Lcom/meizu/widget/LockDigitView$OnPatternListener;

    iget-object v1, p0, Lcom/meizu/widget/LockDigitView;->mPattern:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/meizu/widget/LockDigitView$OnPatternListener;->onPatternDetected(Ljava/util/List;)V

    .line 299
    :cond_0
    const v0, 0x1040320

    invoke-direct {p0, v0}, Lcom/meizu/widget/LockDigitView;->sendAccessEvent(I)V

    .line 300
    return-void
.end method

.method private notifyPatternStarted()V
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/meizu/widget/LockDigitView;->mOnPatternListener:Lcom/meizu/widget/LockDigitView$OnPatternListener;

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/meizu/widget/LockDigitView;->mOnPatternListener:Lcom/meizu/widget/LockDigitView$OnPatternListener;

    invoke-interface {v0}, Lcom/meizu/widget/LockDigitView$OnPatternListener;->onPatternStart()V

    .line 292
    :cond_0
    const v0, 0x104031d

    invoke-direct {p0, v0}, Lcom/meizu/widget/LockDigitView;->sendAccessEvent(I)V

    .line 293
    return-void
.end method

.method private resolveMeasured(II)I
    .locals 3
    .parameter "measureSpec"
    .parameter "desired"

    .prologue
    .line 343
    const/4 v0, 0x0

    .line 344
    .local v0, result:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 345
    .local v1, specSize:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 354
    move v0, v1

    .line 356
    :goto_0
    return v0

    .line 347
    :sswitch_0
    move v0, p2

    .line 348
    goto :goto_0

    .line 350
    :sswitch_1
    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 351
    goto :goto_0

    .line 345
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
    .end sparse-switch
.end method

.method private sendAccessEvent(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 541
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 542
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 543
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 544
    return-void
.end method


# virtual methods
.method public deleteLastCell()V
    .locals 3

    .prologue
    .line 800
    iget-object v1, p0, Lcom/meizu/widget/LockDigitView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 801
    .local v0, size:I
    if-lez v0, :cond_0

    .line 802
    iget-object v1, p0, Lcom/meizu/widget/LockDigitView;->mPattern:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 803
    :cond_0
    return-void
.end method

.method public disableInput()V
    .locals 1

    .prologue
    .line 323
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/widget/LockDigitView;->mInputEnabled:Z

    .line 324
    return-void
.end method

.method public enableInput()V
    .locals 1

    .prologue
    .line 330
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/widget/LockDigitView;->mInputEnabled:Z

    .line 331
    return-void
.end method

.method public getShowPointIfEmpty()Z
    .locals 1

    .prologue
    .line 663
    const/4 v0, 0x0

    return v0
.end method

.method protected getSuggestedMinimumHeight()I
    .locals 1

    .prologue
    .line 368
    const/16 v0, 0x280

    return v0
.end method

.method protected getSuggestedMinimumWidth()I
    .locals 1

    .prologue
    .line 362
    const/16 v0, 0x1e0

    return v0
.end method

.method public isInStealthMode()Z
    .locals 1

    .prologue
    .line 228
    iget-boolean v0, p0, Lcom/meizu/widget/LockDigitView;->mInStealthMode:Z

    return v0
.end method

.method public isKeyAsPoint()Z
    .locals 1

    .prologue
    .line 653
    iget-boolean v0, p0, Lcom/meizu/widget/LockDigitView;->mKeyAsPoint:Z

    return v0
.end method

.method public isTactileFeedbackEnabled()Z
    .locals 1

    .prologue
    .line 235
    iget-boolean v0, p0, Lcom/meizu/widget/LockDigitView;->mEnableHapticFeedback:Z

    return v0
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 881
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .parameter "animation"

    .prologue
    const/4 v0, 0x0

    .line 874
    iput-boolean v0, p0, Lcom/meizu/widget/LockDigitView;->isAnimating:Z

    .line 875
    iput-boolean v0, p0, Lcom/meizu/widget/LockDigitView;->mKeyAsPoint:Z

    .line 876
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 877
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 885
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 870
    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 865
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 866
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter "canvas"

    .prologue
    .line 583
    iget-object v4, p0, Lcom/meizu/widget/LockDigitView;->mPattern:Ljava/util/ArrayList;

    .line 584
    .local v4, pattern:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/widget/LockDigitView$Cell;>;"
    const/4 v3, 0x0

    .line 586
    .local v3, lastPattern:Lcom/meizu/widget/LockDigitView$Cell;
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 587
    .local v0, N:I
    if-lez v0, :cond_0

    iget-boolean v5, p0, Lcom/meizu/widget/LockDigitView;->mPatternInProgress:Z

    if-eqz v5, :cond_0

    .line 588
    add-int/lit8 v5, v0, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #lastPattern:Lcom/meizu/widget/LockDigitView$Cell;
    check-cast v3, Lcom/meizu/widget/LockDigitView$Cell;

    .line 591
    .restart local v3       #lastPattern:Lcom/meizu/widget/LockDigitView$Cell;
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/4 v5, 0x4

    if-ge v1, v5, :cond_2

    .line 592
    const/4 v2, 0x0

    .local v2, j:I
    :goto_1
    const/4 v5, 0x3

    if-ge v2, v5, :cond_1

    .line 593
    invoke-direct {p0, p1, v1, v2, v3}, Lcom/meizu/widget/LockDigitView;->drawCell(Landroid/graphics/Canvas;IILcom/meizu/widget/LockDigitView$Cell;)Z

    .line 592
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 591
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 596
    .end local v2           #j:I
    :cond_2
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 462
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 463
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 464
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    .line 475
    :goto_0
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/meizu/widget/LockDigitView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 476
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 478
    .end local v0           #action:I
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 466
    .restart local v0       #action:I
    :pswitch_1
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    .line 469
    :pswitch_2
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    .line 472
    :pswitch_3
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    .line 464
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 6
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 373
    invoke-virtual {p0}, Lcom/meizu/widget/LockDigitView;->getSuggestedMinimumWidth()I

    move-result v2

    .line 374
    .local v2, minimumWidth:I
    invoke-virtual {p0}, Lcom/meizu/widget/LockDigitView;->getSuggestedMinimumHeight()I

    move-result v1

    .line 375
    .local v1, minimumHeight:I
    invoke-direct {p0, p1, v2}, Lcom/meizu/widget/LockDigitView;->resolveMeasured(II)I

    move-result v4

    .line 376
    .local v4, viewWidth:I
    invoke-direct {p0, p2, v1}, Lcom/meizu/widget/LockDigitView;->resolveMeasured(II)I

    move-result v3

    .line 377
    .local v3, viewHeight:I
    mul-int/lit8 v5, v4, 0x4

    div-int/lit8 v5, v5, 0x3

    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 379
    .local v0, minSize:I
    iget v5, p0, Lcom/meizu/widget/LockDigitView;->mAspect:I

    packed-switch v5, :pswitch_data_0

    .line 393
    :goto_0
    invoke-virtual {p0, v4, v3}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 394
    return-void

    .line 381
    :pswitch_0
    move v3, v0

    .line 382
    mul-int/lit8 v5, v0, 0x3

    div-int/lit8 v4, v5, 0x4

    .line 383
    goto :goto_0

    .line 385
    :pswitch_1
    move v3, v0

    .line 386
    goto :goto_0

    .line 388
    :pswitch_2
    mul-int/lit8 v5, v0, 0x3

    div-int/lit8 v4, v5, 0x4

    goto :goto_0

    .line 379
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onSizeChanged(IIII)V
    .locals 4
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 335
    iget v2, p0, Landroid/view/View;->mPaddingLeft:I

    sub-int v2, p1, v2

    iget v3, p0, Landroid/view/View;->mPaddingRight:I

    sub-int v1, v2, v3

    .line 336
    .local v1, width:I
    int-to-float v2, v1

    const/high16 v3, 0x4040

    div-float/2addr v2, v3

    iput v2, p0, Lcom/meizu/widget/LockDigitView;->mSquareWidth:F

    .line 338
    iget v2, p0, Landroid/view/View;->mPaddingTop:I

    sub-int v2, p2, v2

    iget v3, p0, Landroid/view/View;->mPaddingBottom:I

    sub-int v0, v2, v3

    .line 339
    .local v0, height:I
    int-to-float v2, v0

    const/high16 v3, 0x4080

    div-float/2addr v2, v3

    iput v2, p0, Lcom/meizu/widget/LockDigitView;->mSquareHeight:F

    .line 340
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 483
    iget-boolean v2, p0, Lcom/meizu/widget/LockDigitView;->mInputEnabled:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move v0, v1

    .line 504
    :goto_0
    return v0

    .line 487
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 504
    goto :goto_0

    .line 489
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/meizu/widget/LockDigitView;->handleActionDown(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 492
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/meizu/widget/LockDigitView;->handleActionUp(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 495
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/meizu/widget/LockDigitView;->handleActionMove(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 498
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/meizu/widget/LockDigitView;->handleActionUp(Landroid/view/MotionEvent;)V

    .line 499
    invoke-virtual {p0}, Lcom/meizu/widget/LockDigitView;->resetPattern()V

    .line 500
    iput-boolean v1, p0, Lcom/meizu/widget/LockDigitView;->mPatternInProgress:Z

    .line 501
    invoke-direct {p0}, Lcom/meizu/widget/LockDigitView;->notifyPatternCleared()V

    goto :goto_0

    .line 487
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public resetPattern()V
    .locals 1

    .prologue
    .line 313
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/widget/LockDigitView;->mPatternDown:Z

    .line 314
    iget-object v0, p0, Lcom/meizu/widget/LockDigitView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 315
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 316
    return-void
.end method

.method public setAspect(I)V
    .locals 0
    .parameter "aspect"

    .prologue
    .line 221
    iput p1, p0, Lcom/meizu/widget/LockDigitView;->mAspect:I

    .line 222
    return-void
.end method

.method public setCellBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "bg"

    .prologue
    .line 807
    iput-object p1, p0, Lcom/meizu/widget/LockDigitView;->mCellBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 808
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 809
    return-void
.end method

.method public setCellInfo(IILjava/lang/String;Landroid/graphics/drawable/Drawable;Z)V
    .locals 6
    .parameter "row"
    .parameter "column"
    .parameter "label"
    .parameter "icon"
    .parameter "enabled"

    .prologue
    .line 622
    invoke-static {p1, p2}, Lcom/meizu/widget/LockDigitView$Cell;->indexOf(II)I

    move-result v0

    .line 623
    .local v0, index:I
    if-nez p3, :cond_0

    if-nez p4, :cond_0

    const/4 v3, 0x1

    if-ne p5, v3, :cond_0

    .line 624
    iget-object v3, p0, Lcom/meizu/widget/LockDigitView;->mCellInfoArray:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 628
    :goto_0
    iget v3, p0, Landroid/view/View;->mPaddingLeft:I

    int-to-float v3, v3

    int-to-float v4, p2

    iget v5, p0, Lcom/meizu/widget/LockDigitView;->mSquareWidth:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    float-to-int v1, v3

    .line 629
    .local v1, x:I
    iget v3, p0, Landroid/view/View;->mPaddingTop:I

    int-to-float v3, v3

    int-to-float v4, p1

    iget v5, p0, Lcom/meizu/widget/LockDigitView;->mSquareHeight:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    float-to-int v2, v3

    .line 630
    .local v2, y:I
    int-to-float v3, v1

    iget v4, p0, Lcom/meizu/widget/LockDigitView;->mSquareWidth:F

    add-float/2addr v3, v4

    float-to-int v3, v3

    int-to-float v4, v2

    iget v5, p0, Lcom/meizu/widget/LockDigitView;->mSquareHeight:F

    add-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/view/View;->invalidate(IIII)V

    .line 631
    return-void

    .line 626
    .end local v1           #x:I
    .end local v2           #y:I
    :cond_0
    iget-object v3, p0, Lcom/meizu/widget/LockDigitView;->mCellInfoArray:Landroid/util/SparseArray;

    new-instance v4, Lcom/meizu/widget/LockDigitView$CellInfo;

    invoke-direct {v4, p3, p4, p5}, Lcom/meizu/widget/LockDigitView$CellInfo;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Z)V

    invoke-virtual {v3, v0, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public setCellPointDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "cellPointDrawable"

    .prologue
    .line 813
    iput-object p1, p0, Lcom/meizu/widget/LockDigitView;->mCellPointDrawable:Landroid/graphics/drawable/Drawable;

    .line 814
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 815
    return-void
.end method

.method public setDefIcons([Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter "defIcons"

    .prologue
    .line 823
    if-eqz p1, :cond_0

    .line 824
    array-length v0, p1

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    .line 825
    iput-object p1, p0, Lcom/meizu/widget/LockDigitView;->mDefIcons:[Landroid/graphics/drawable/Drawable;

    .line 828
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 829
    return-void
.end method

.method public setInStealthMode(Z)V
    .locals 0
    .parameter "inStealthMode"

    .prologue
    .line 245
    iput-boolean p1, p0, Lcom/meizu/widget/LockDigitView;->mInStealthMode:Z

    .line 246
    return-void
.end method

.method public setKeyAsPoint(Z)V
    .locals 1
    .parameter "keyAsPoint"

    .prologue
    .line 637
    iget-boolean v0, p0, Lcom/meizu/widget/LockDigitView;->mKeyAsPoint:Z

    if-eq v0, p1, :cond_0

    .line 638
    if-nez p1, :cond_1

    iget-boolean v0, p0, Lcom/meizu/widget/LockDigitView;->isAnimating:Z

    if-nez v0, :cond_1

    .line 639
    invoke-direct {p0}, Lcom/meizu/widget/LockDigitView;->createAnimation()V

    .line 640
    iget-object v0, p0, Lcom/meizu/widget/LockDigitView;->mScaleAnim:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    .line 641
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/widget/LockDigitView;->isAnimating:Z

    .line 642
    iget-object v0, p0, Lcom/meizu/widget/LockDigitView;->mScaleAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 650
    :cond_0
    :goto_0
    return-void

    .line 646
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/widget/LockDigitView;->isAnimating:Z

    .line 647
    iput-boolean p1, p0, Lcom/meizu/widget/LockDigitView;->mKeyAsPoint:Z

    .line 648
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0
.end method

.method public setOnPatternListener(Lcom/meizu/widget/LockDigitView$OnPatternListener;)V
    .locals 0
    .parameter "onPatternListener"

    .prologue
    .line 265
    iput-object p1, p0, Lcom/meizu/widget/LockDigitView;->mOnPatternListener:Lcom/meizu/widget/LockDigitView$OnPatternListener;

    .line 266
    return-void
.end method

.method public setPattern(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/widget/LockDigitView$Cell;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 276
    .local p1, pattern:Ljava/util/List;,"Ljava/util/List<Lcom/meizu/widget/LockDigitView$Cell;>;"
    iget-object v0, p0, Lcom/meizu/widget/LockDigitView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 277
    iget-object v0, p0, Lcom/meizu/widget/LockDigitView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 278
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 279
    return-void
.end method

.method public setShowPointIfEmpty(Z)V
    .locals 0
    .parameter "showPointIfEmpty"

    .prologue
    .line 659
    return-void
.end method

.method public setTactileFeedbackEnabled(Z)V
    .locals 0
    .parameter "tactileFeedbackEnabled"

    .prologue
    .line 255
    iput-boolean p1, p0, Lcom/meizu/widget/LockDigitView;->mEnableHapticFeedback:Z

    .line 256
    return-void
.end method
