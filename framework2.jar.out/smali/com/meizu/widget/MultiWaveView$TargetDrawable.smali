.class Lcom/meizu/widget/MultiWaveView$TargetDrawable;
.super Ljava/lang/Object;
.source "MultiWaveView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/widget/MultiWaveView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TargetDrawable"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/widget/MultiWaveView$TargetDrawable$DrawableWithAlpha;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final STATE_ACTIVE:[I = null

.field public static final STATE_FOCUSED:[I = null

.field public static final STATE_INACTIVE:[I = null

.field private static final TAG:Ljava/lang/String; = "TargetDrawable"


# instance fields
.field private mAlpha:F

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mEnabled:Z

.field private mPositionX:F

.field private mPositionY:F

.field private final mResourceId:I

.field private mRotate:F

.field private mScaleX:F

.field private mScaleY:F

.field private mTranslationX:F

.field private mTranslationY:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 1754
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->STATE_ACTIVE:[I

    .line 1756
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->STATE_INACTIVE:[I

    .line 1758
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->STATE_FOCUSED:[I

    return-void

    .line 1754
    :array_0
    .array-data 0x4
        0x9et 0x0t 0x1t 0x1t
        0xa2t 0x0t 0x1t 0x1t
    .end array-data

    .line 1756
    :array_1
    .array-data 0x4
        0x9et 0x0t 0x1t 0x1t
        0x5et 0xfft 0xfet 0xfet
    .end array-data

    .line 1758
    :array_2
    .array-data 0x4
        0x9et 0x0t 0x1t 0x1t
        0x5et 0xfft 0xfet 0xfet
        0x9ct 0x0t 0x1t 0x1t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/res/Resources;I)V
    .locals 2
    .parameter "res"
    .parameter "resId"

    .prologue
    const/high16 v1, 0x3f80

    const/4 v0, 0x0

    .line 1804
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1762
    iput v0, p0, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->mTranslationX:F

    .line 1763
    iput v0, p0, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->mTranslationY:F

    .line 1764
    iput v0, p0, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->mPositionX:F

    .line 1765
    iput v0, p0, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->mPositionY:F

    .line 1766
    iput v1, p0, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->mScaleX:F

    .line 1767
    iput v1, p0, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->mScaleY:F

    .line 1768
    iput v1, p0, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->mAlpha:F

    .line 1769
    iput v0, p0, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->mRotate:F

    .line 1771
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->mEnabled:Z

    .line 1805
    iput p2, p0, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->mResourceId:I

    .line 1806
    invoke-virtual {p0, p1, p2}, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->setDrawable(Landroid/content/res/Resources;I)V

    .line 1807
    return-void
.end method

.method public constructor <init>(Lcom/meizu/widget/MultiWaveView$TargetDrawable;)V
    .locals 2
    .parameter "other"

    .prologue
    const/high16 v1, 0x3f80

    const/4 v0, 0x0

    .line 1819
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1762
    iput v0, p0, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->mTranslationX:F

    .line 1763
    iput v0, p0, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->mTranslationY:F

    .line 1764
    iput v0, p0, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->mPositionX:F

    .line 1765
    iput v0, p0, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->mPositionY:F

    .line 1766
    iput v1, p0, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->mScaleX:F

    .line 1767
    iput v1, p0, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->mScaleY:F

    .line 1768
    iput v1, p0, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->mAlpha:F

    .line 1769
    iput v0, p0, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->mRotate:F

    .line 1771
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->mEnabled:Z

    .line 1820
    iget v0, p1, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->mResourceId:I

    iput v0, p0, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->mResourceId:I

    .line 1822
    iget-object v0, p1, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 1823
    invoke-direct {p0}, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->resizeDrawables()V

    .line 1824
    sget-object v0, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {p0, v0}, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->setState([I)V

    .line 1825
    return-void

    .line 1822
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private resizeDrawables()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 1877
    iget-object v5, p0, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v5, v5, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v5, :cond_1

    .line 1878
    iget-object v1, p0, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v1, Landroid/graphics/drawable/StateListDrawable;

    .line 1879
    .local v1, d:Landroid/graphics/drawable/StateListDrawable;
    const/4 v4, 0x0

    .line 1880
    .local v4, maxWidth:I
    const/4 v3, 0x0

    .line 1881
    .local v3, maxHeight:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {v1}, Landroid/graphics/drawable/StateListDrawable;->getStateCount()I

    move-result v5

    if-ge v2, v5, :cond_0

    .line 1882
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1883
    .local v0, childDrawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1884
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1881
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1888
    .end local v0           #childDrawable:Landroid/graphics/drawable/Drawable;
    :cond_0
    invoke-virtual {v1, v8, v8, v4, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1889
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1}, Landroid/graphics/drawable/StateListDrawable;->getStateCount()I

    move-result v5

    if-ge v2, v5, :cond_2

    .line 1890
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1893
    .restart local v0       #childDrawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, v8, v8, v4, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1889
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1895
    .end local v0           #childDrawable:Landroid/graphics/drawable/Drawable;
    .end local v1           #d:Landroid/graphics/drawable/StateListDrawable;
    .end local v2           #i:I
    .end local v3           #maxHeight:I
    .end local v4           #maxWidth:I
    :cond_1
    iget-object v5, p0, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_2

    .line 1896
    iget-object v5, p0, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    iget-object v7, p0, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    invoke-virtual {v5, v8, v8, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1899
    :cond_2
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 1974
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->draw(Landroid/graphics/Canvas;Z)V

    .line 1975
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Z)V
    .locals 5
    .parameter "canvas"
    .parameter "isChevron"

    .prologue
    const/4 v3, 0x0

    const/high16 v4, -0x4100

    .line 1978
    iget-object v0, p0, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->mEnabled:Z

    if-nez v0, :cond_1

    .line 1998
    :cond_0
    :goto_0
    return-void

    .line 1981
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->save(I)I

    .line 1982
    if-nez p2, :cond_2

    .line 1983
    iget v0, p0, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->mScaleX:F

    iget v1, p0, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->mScaleY:F

    iget v2, p0, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->mPositionX:F

    iget v3, p0, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->mPositionY:F

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 1984
    iget v0, p0, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->mTranslationX:F

    iget v1, p0, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->mPositionX:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->mTranslationY:F

    iget v2, p0, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->mPositionY:F

    add-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1986
    invoke-virtual {p0}, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v4

    invoke-virtual {p0}, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v4

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1987
    iget v0, p0, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->mRotate:F

    invoke-virtual {p0}, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 1995
    :goto_1
    iget-object v0, p0, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->mAlpha:F

    const/high16 v2, 0x437f

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1996
    iget-object v0, p0, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1997
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    .line 1989
    :cond_2
    iget v0, p0, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->mTranslationX:F

    iget v1, p0, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->mPositionX:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->mTranslationY:F

    iget v2, p0, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->mPositionY:F

    add-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1991
    iget v0, p0, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->mScaleX:F

    iget v1, p0, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->mScaleY:F

    invoke-virtual {p1, v0, v1, v3, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 1992
    invoke-virtual {p0}, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v4

    invoke-virtual {p0}, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v4

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_1
.end method

.method public getAlpha()F
    .locals 1

    .prologue
    .line 1942
    iget v0, p0, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->mAlpha:F

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 1970
    iget-object v0, p0, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPositionX()F
    .locals 1

    .prologue
    .line 1954
    iget v0, p0, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->mPositionX:F

    return v0
.end method

.method public getPositionY()F
    .locals 1

    .prologue
    .line 1958
    iget v0, p0, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->mPositionY:F

    return v0
.end method

.method public getResourceId()I
    .locals 1

    .prologue
    .line 2005
    iget v0, p0, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->mResourceId:I

    return v0
.end method

.method public getRotation()F
    .locals 1

    .prologue
    .line 1962
    iget v0, p0, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->mRotate:F

    return v0
.end method

.method public getScaleX()F
    .locals 1

    .prologue
    .line 1934
    iget v0, p0, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->mScaleX:F

    return v0
.end method

.method public getScaleY()F
    .locals 1

    .prologue
    .line 1938
    iget v0, p0, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->mScaleY:F

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 1966
    iget-object v0, p0, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getX()F
    .locals 1

    .prologue
    .line 1926
    iget v0, p0, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->mTranslationX:F

    return v0
.end method

.method public getY()F
    .locals 1

    .prologue
    .line 1930
    iget v0, p0, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->mTranslationY:F

    return v0
.end method

.method public hasState([I)Z
    .locals 4
    .parameter "state"

    .prologue
    const/4 v1, 0x0

    .line 1835
    iget-object v2, p0, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v2, v2, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v2, :cond_0

    .line 1836
    iget-object v0, p0, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/StateListDrawable;

    .line 1838
    .local v0, d:Landroid/graphics/drawable/StateListDrawable;
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawableIndex([I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v1, 0x1

    .line 1840
    .end local v0           #d:Landroid/graphics/drawable/StateListDrawable;
    :cond_0
    return v1
.end method

.method public isActive()Z
    .locals 5

    .prologue
    .line 1849
    iget-object v3, p0, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v3, v3, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v3, :cond_1

    .line 1850
    iget-object v0, p0, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/StateListDrawable;

    .line 1851
    .local v0, d:Landroid/graphics/drawable/StateListDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v2

    .line 1852
    .local v2, states:[I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 1853
    aget v3, v2, v1

    const v4, 0x101009c

    if-ne v3, v4, :cond_0

    .line 1854
    const/4 v3, 0x1

    .line 1858
    .end local v0           #d:Landroid/graphics/drawable/StateListDrawable;
    .end local v1           #i:I
    .end local v2           #states:[I
    :goto_1
    return v3

    .line 1852
    .restart local v0       #d:Landroid/graphics/drawable/StateListDrawable;
    .restart local v1       #i:I
    .restart local v2       #states:[I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1858
    .end local v0           #d:Landroid/graphics/drawable/StateListDrawable;
    .end local v1           #i:I
    .end local v2           #states:[I
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 1868
    iget-object v0, p0, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->mEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAlpha(F)V
    .locals 0
    .parameter "alpha"

    .prologue
    .line 1918
    iput p1, p0, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->mAlpha:F

    .line 1919
    return-void
.end method

.method public setDrawable(Landroid/content/res/Resources;I)V
    .locals 2
    .parameter "res"
    .parameter "resId"

    .prologue
    const/4 v1, 0x0

    .line 1812
    if-nez p2, :cond_1

    move-object v0, v1

    .line 1814
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_0
    iput-object v1, p0, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 1815
    invoke-direct {p0}, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->resizeDrawables()V

    .line 1816
    sget-object v1, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {p0, v1}, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->setState([I)V

    .line 1817
    return-void

    .line 1812
    .end local v0           #drawable:Landroid/graphics/drawable/Drawable;
    :cond_1
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 2001
    iput-boolean p1, p0, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->mEnabled:Z

    .line 2002
    return-void
.end method

.method public setPositionX(F)V
    .locals 0
    .parameter "x"

    .prologue
    .line 1946
    iput p1, p0, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->mPositionX:F

    .line 1947
    return-void
.end method

.method public setPositionY(F)V
    .locals 0
    .parameter "y"

    .prologue
    .line 1950
    iput p1, p0, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->mPositionY:F

    .line 1951
    return-void
.end method

.method public setRotation(F)V
    .locals 0
    .parameter "rotate"

    .prologue
    .line 1922
    iput p1, p0, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->mRotate:F

    .line 1923
    return-void
.end method

.method public setScaleX(F)V
    .locals 0
    .parameter "x"

    .prologue
    .line 1910
    iput p1, p0, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->mScaleX:F

    .line 1911
    return-void
.end method

.method public setScaleY(F)V
    .locals 0
    .parameter "y"

    .prologue
    .line 1914
    iput p1, p0, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->mScaleY:F

    .line 1915
    return-void
.end method

.method public setState([I)V
    .locals 2
    .parameter "state"

    .prologue
    .line 1828
    iget-object v1, p0, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v1, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v1, :cond_0

    .line 1829
    iget-object v0, p0, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/StateListDrawable;

    .line 1830
    .local v0, d:Landroid/graphics/drawable/StateListDrawable;
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1832
    .end local v0           #d:Landroid/graphics/drawable/StateListDrawable;
    :cond_0
    return-void
.end method

.method public setX(F)V
    .locals 0
    .parameter "x"

    .prologue
    .line 1902
    iput p1, p0, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->mTranslationX:F

    .line 1903
    return-void
.end method

.method public setY(F)V
    .locals 0
    .parameter "y"

    .prologue
    .line 1906
    iput p1, p0, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->mTranslationY:F

    .line 1907
    return-void
.end method
