.class final Lcom/meizu/widget/MultiWaveView$Ease$customTrack$2;
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
    .line 1581
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 7
    .parameter "input"

    .prologue
    .line 1583
    const/4 v0, 0x0

    .line 1584
    .local v0, data:F
    float-to-double v1, p1

    const-wide v3, 0x3fd5c28f5c28f5c3L

    cmpg-double v1, v1, v3

    if-gtz v1, :cond_0

    .line 1585
    const-wide v1, 0x4033a28c59d5433bL

    float-to-double v3, p1

    mul-double/2addr v1, v3

    const-wide v3, 0x3fd921fb54442d18L

    sub-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    double-to-float v0, v1

    .line 1597
    :goto_0
    return v0

    .line 1586
    :cond_0
    float-to-double v1, p1

    const-wide v3, 0x3fe3d70a3d70a3d7L

    cmpg-double v1, v1, v3

    if-gtz v1, :cond_1

    .line 1587
    const-wide v1, 0x3fe6666666666666L

    const-wide v3, 0x403a2e1077c7044fL

    float-to-double v5, p1

    mul-double/2addr v3, v5

    const-wide v5, 0x4023e591a2b5f908L

    sub-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    mul-double/2addr v1, v3

    double-to-float v0, v1

    goto :goto_0

    .line 1589
    :cond_1
    float-to-double v1, p1

    const-wide v3, 0x3febd70a3d70a3d7L

    cmpg-double v1, v1, v3

    if-gtz v1, :cond_2

    .line 1590
    const-wide v1, 0x3fd3333333333333L

    const-wide v3, 0x403670a066aa95faL

    float-to-double v5, p1

    mul-double/2addr v3, v5

    const-wide v5, 0x402a7aa8cb10f8a7L

    sub-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    mul-double/2addr v1, v3

    double-to-float v0, v1

    goto :goto_0

    .line 1592
    :cond_2
    float-to-double v1, p1

    const-wide v3, 0x3feccccccccccccdL

    cmpg-double v1, v1, v3

    if-gtz v1, :cond_3

    .line 1593
    const-wide v1, 0x400aaaaaaaaaaaabL

    float-to-double v3, p1

    mul-double/2addr v1, v3

    const-wide v3, 0x4007333333333333L

    sub-double/2addr v1, v3

    double-to-float v0, v1

    goto :goto_0

    .line 1595
    :cond_3
    const/high16 v1, -0x4080

    mul-float/2addr v1, p1

    float-to-double v1, v1

    const-wide/high16 v3, 0x3ff0

    add-double/2addr v1, v3

    double-to-float v0, v1

    goto :goto_0
.end method
