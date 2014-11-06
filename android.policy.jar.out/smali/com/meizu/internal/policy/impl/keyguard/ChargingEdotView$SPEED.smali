.class public final enum Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$SPEED;
.super Ljava/lang/Enum;
.source "ChargingEdotView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SPEED"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$SPEED;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$SPEED;

.field public static final enum NORMAL:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$SPEED;

.field public static final enum PAUSE:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$SPEED;

.field public static final enum SLOW:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$SPEED;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 164
    new-instance v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$SPEED;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v2}, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$SPEED;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$SPEED;->NORMAL:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$SPEED;

    .line 165
    new-instance v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$SPEED;

    const-string v1, "PAUSE"

    invoke-direct {v0, v1, v3}, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$SPEED;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$SPEED;->PAUSE:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$SPEED;

    .line 166
    new-instance v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$SPEED;

    const-string v1, "SLOW"

    invoke-direct {v0, v1, v4}, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$SPEED;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$SPEED;->SLOW:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$SPEED;

    .line 163
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$SPEED;

    sget-object v1, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$SPEED;->NORMAL:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$SPEED;

    aput-object v1, v0, v2

    sget-object v1, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$SPEED;->PAUSE:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$SPEED;

    aput-object v1, v0, v3

    sget-object v1, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$SPEED;->SLOW:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$SPEED;

    aput-object v1, v0, v4

    sput-object v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$SPEED;->$VALUES:[Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$SPEED;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 163
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$SPEED;
    .locals 1
    .parameter "name"

    .prologue
    .line 163
    const-class v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$SPEED;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$SPEED;

    return-object v0
.end method

.method public static values()[Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$SPEED;
    .locals 1

    .prologue
    .line 163
    sget-object v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$SPEED;->$VALUES:[Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$SPEED;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$SPEED;

    return-object v0
.end method
