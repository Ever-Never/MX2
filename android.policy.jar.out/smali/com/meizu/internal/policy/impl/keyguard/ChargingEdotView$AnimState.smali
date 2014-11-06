.class final enum Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;
.super Ljava/lang/Enum;
.source "ChargingEdotView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "AnimState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

.field public static final enum chargFull:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

.field public static final enum charged:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

.field public static final enum charging:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

.field public static final enum fadeIn:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

.field public static final enum fadeOutBattery:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

.field public static final enum fadeOutEdot:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

.field public static final enum fadeOutIlluminant:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

.field public static final enum none:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

.field public static final enum pause:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 116
    new-instance v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

    const-string v1, "fadeIn"

    invoke-direct {v0, v1, v3}, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;->fadeIn:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

    .line 117
    new-instance v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

    const-string v1, "fadeOutIlluminant"

    invoke-direct {v0, v1, v4}, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;->fadeOutIlluminant:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

    .line 118
    new-instance v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

    const-string v1, "fadeOutEdot"

    invoke-direct {v0, v1, v5}, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;->fadeOutEdot:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

    .line 119
    new-instance v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

    const-string v1, "fadeOutBattery"

    invoke-direct {v0, v1, v6}, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;->fadeOutBattery:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

    .line 120
    new-instance v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

    const-string v1, "charging"

    invoke-direct {v0, v1, v7}, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;->charging:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

    .line 121
    new-instance v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

    const-string v1, "chargFull"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;->chargFull:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

    .line 122
    new-instance v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

    const-string v1, "pause"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;->pause:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

    .line 123
    new-instance v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

    const-string v1, "charged"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;->charged:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

    .line 124
    new-instance v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

    const-string v1, "none"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;->none:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

    .line 115
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

    sget-object v1, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;->fadeIn:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;->fadeOutIlluminant:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;->fadeOutEdot:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;->fadeOutBattery:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;->charging:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;->chargFull:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;->pause:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;->charged:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;->none:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;->$VALUES:[Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

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
    .line 115
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;
    .locals 1
    .parameter "name"

    .prologue
    .line 115
    const-class v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

    return-object v0
.end method

.method public static values()[Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;
    .locals 1

    .prologue
    .line 115
    sget-object v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;->$VALUES:[Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

    return-object v0
.end method
