.class final Lcom/meizu/widget/MultiWaveView$Ease$customTrack$1;
.super Ljava/lang/Object;
.source "MultiWaveView.java"

# interfaces
.implements Landroid/animation/TimeInterpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/widget/MultiWaveView$Ease$customTrack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1570
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 4
    .parameter "input"

    .prologue
    .line 1572
    float-to-double v0, p1

    const-wide v2, 0x3fdae147ae147ae1L

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_1

    .line 1573
    const v0, 0x40186186

    mul-float/2addr v0, p1

    sput v0, Lcom/meizu/widget/MultiWaveView$Ease$customTrack;->mOutput:F

    .line 1577
    :cond_0
    :goto_0
    sget v0, Lcom/meizu/widget/MultiWaveView$Ease$customTrack;->mOutput:F

    return v0

    .line 1574
    :cond_1
    float-to-double v0, p1

    const-wide v2, 0x3fe4cccccccccccdL

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    .line 1575
    const-wide v0, -0x3ff9249249249249L

    float-to-double v2, p1

    mul-double/2addr v0, v2

    const-wide v2, 0x4006db6db6db6db7L

    add-double/2addr v0, v2

    double-to-float v0, v0

    sput v0, Lcom/meizu/widget/MultiWaveView$Ease$customTrack;->mOutput:F

    goto :goto_0
.end method
