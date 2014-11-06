.class final enum Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$SimState;
.super Ljava/lang/Enum;
.source "KeyguardSecurityView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "SimState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$SimState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$SimState;

.field public static final enum checkPin:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$SimState;

.field public static final enum checkPuk:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$SimState;

.field public static final enum confirmNewPin:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$SimState;

.field public static final enum newPin:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$SimState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 87
    new-instance v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$SimState;

    const-string v1, "checkPin"

    invoke-direct {v0, v1, v2}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$SimState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$SimState;->checkPin:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$SimState;

    new-instance v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$SimState;

    const-string v1, "newPin"

    invoke-direct {v0, v1, v3}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$SimState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$SimState;->newPin:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$SimState;

    new-instance v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$SimState;

    const-string v1, "confirmNewPin"

    invoke-direct {v0, v1, v4}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$SimState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$SimState;->confirmNewPin:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$SimState;

    new-instance v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$SimState;

    const-string v1, "checkPuk"

    invoke-direct {v0, v1, v5}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$SimState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$SimState;->checkPuk:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$SimState;

    .line 86
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$SimState;

    sget-object v1, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$SimState;->checkPin:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$SimState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$SimState;->newPin:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$SimState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$SimState;->confirmNewPin:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$SimState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$SimState;->checkPuk:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$SimState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$SimState;->$VALUES:[Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$SimState;

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
    .line 86
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$SimState;
    .locals 1
    .parameter "name"

    .prologue
    .line 86
    const-class v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$SimState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$SimState;

    return-object v0
.end method

.method public static values()[Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$SimState;
    .locals 1

    .prologue
    .line 86
    sget-object v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$SimState;->$VALUES:[Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$SimState;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$SimState;

    return-object v0
.end method
