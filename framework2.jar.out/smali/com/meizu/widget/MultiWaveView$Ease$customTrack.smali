.class Lcom/meizu/widget/MultiWaveView$Ease$customTrack;
.super Ljava/lang/Object;
.source "MultiWaveView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/widget/MultiWaveView$Ease;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "customTrack"
.end annotation


# static fields
.field public static final easeLadderShape:Landroid/animation/TimeInterpolator;

.field public static final easeSinShape:Landroid/animation/TimeInterpolator;

.field static mOutput:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1569
    const/high16 v0, 0x3f80

    sput v0, Lcom/meizu/widget/MultiWaveView$Ease$customTrack;->mOutput:F

    .line 1570
    new-instance v0, Lcom/meizu/widget/MultiWaveView$Ease$customTrack$1;

    invoke-direct {v0}, Lcom/meizu/widget/MultiWaveView$Ease$customTrack$1;-><init>()V

    sput-object v0, Lcom/meizu/widget/MultiWaveView$Ease$customTrack;->easeLadderShape:Landroid/animation/TimeInterpolator;

    .line 1581
    new-instance v0, Lcom/meizu/widget/MultiWaveView$Ease$customTrack$2;

    invoke-direct {v0}, Lcom/meizu/widget/MultiWaveView$Ease$customTrack$2;-><init>()V

    sput-object v0, Lcom/meizu/widget/MultiWaveView$Ease$customTrack;->easeSinShape:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 1568
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
