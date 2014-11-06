.class Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;
.super Ljava/lang/Object;
.source "ChargingEdotView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EdotInfo"
.end annotation


# instance fields
.field public alpha:I

.field public alphaDuration:I

.field public alphaStartTime:J

.field public edotType:I

.field public horizontalAnimType:I

.field public horizontalDuration:I

.field public horizontalStartTime:J

.field public isLive:Z

.field public lastV:F

.field public mEdotPosition:Landroid/graphics/Point;

.field public radius:I

.field public spaceForDiedX:I

.field public spaceForDiedY:I

.field public startX:I

.field public startY:I

.field final synthetic this$0:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;

.field public toRight:Z

.field public verticalDuration:I

.field public verticalSpace:I

.field public verticalStartTime:J

.field public zoomRate:F


# direct methods
.method public constructor <init>(Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 246
    iput-object p1, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;->this$0:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 226
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;->mEdotPosition:Landroid/graphics/Point;

    .line 230
    iput-boolean v1, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;->toRight:Z

    .line 231
    iput v1, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;->radius:I

    .line 247
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;->mEdotPosition:Landroid/graphics/Point;

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Point;->set(II)V

    .line 248
    iput-boolean v1, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;->isLive:Z

    .line 250
    iput v1, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;->alphaDuration:I

    .line 251
    iput v1, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;->verticalDuration:I

    .line 252
    iput v1, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;->horizontalDuration:I

    .line 254
    const/16 v0, 0xff

    iput v0, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;->alpha:I

    .line 255
    #getter for: Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->ANIMATE_VERTICAL_SPACE:I
    invoke-static {p1}, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->access$000(Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;)I

    move-result v0

    add-int/lit8 v0, v0, -0xa

    iput v0, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;->verticalSpace:I

    .line 256
    const/4 v0, 0x0

    iput v0, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;->zoomRate:F

    .line 257
    return-void
.end method
