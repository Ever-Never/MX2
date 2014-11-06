.class Lcom/meizu/widget/MultiWaveView$MyPoint;
.super Ljava/lang/Object;
.source "MultiWaveView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/widget/MultiWaveView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyPoint"
.end annotation


# instance fields
.field public x:F

.field public y:F


# direct methods
.method public constructor <init>(FF)V
    .locals 0
    .parameter "x"
    .parameter "y"

    .prologue
    .line 2017
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2018
    iput p1, p0, Lcom/meizu/widget/MultiWaveView$MyPoint;->x:F

    .line 2019
    iput p2, p0, Lcom/meizu/widget/MultiWaveView$MyPoint;->y:F

    .line 2020
    return-void
.end method


# virtual methods
.method public getX()F
    .locals 1

    .prologue
    .line 2031
    iget v0, p0, Lcom/meizu/widget/MultiWaveView$MyPoint;->x:F

    return v0
.end method

.method public getY()F
    .locals 1

    .prologue
    .line 2035
    iget v0, p0, Lcom/meizu/widget/MultiWaveView$MyPoint;->y:F

    return v0
.end method

.method public setX(F)V
    .locals 0
    .parameter "x"

    .prologue
    .line 2023
    iput p1, p0, Lcom/meizu/widget/MultiWaveView$MyPoint;->x:F

    .line 2024
    return-void
.end method

.method public setY(F)V
    .locals 0
    .parameter "y"

    .prologue
    .line 2027
    iput p1, p0, Lcom/meizu/widget/MultiWaveView$MyPoint;->y:F

    .line 2028
    return-void
.end method
