.class Lcom/meizu/widget/MagnifierPopupWindow$Smoother;
.super Ljava/lang/Object;
.source "MagnifierPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/widget/MagnifierPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Smoother"
.end annotation


# instance fields
.field private mX:F

.field private mY:F


# direct methods
.method public constructor <init>(FF)V
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 242
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/meizu/widget/MagnifierPopupWindow$Smoother;->mX:F

    .line 243
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/meizu/widget/MagnifierPopupWindow$Smoother;->mY:F

    .line 244
    return-void
.end method


# virtual methods
.method public add(FF)V
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 255
    iget v0, p0, Lcom/meizu/widget/MagnifierPopupWindow$Smoother;->mX:F

    add-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    shr-int/lit8 v0, v0, 0x1

    int-to-float v0, v0

    iput v0, p0, Lcom/meizu/widget/MagnifierPopupWindow$Smoother;->mX:F

    .line 256
    iget v0, p0, Lcom/meizu/widget/MagnifierPopupWindow$Smoother;->mY:F

    add-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    shr-int/lit8 v0, v0, 0x1

    int-to-float v0, v0

    iput v0, p0, Lcom/meizu/widget/MagnifierPopupWindow$Smoother;->mY:F

    .line 257
    return-void
.end method

.method public getX()F
    .locals 1

    .prologue
    .line 247
    iget v0, p0, Lcom/meizu/widget/MagnifierPopupWindow$Smoother;->mX:F

    return v0
.end method

.method public getY()F
    .locals 1

    .prologue
    .line 251
    iget v0, p0, Lcom/meizu/widget/MagnifierPopupWindow$Smoother;->mY:F

    return v0
.end method
