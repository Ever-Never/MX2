.class final enum Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$ViewMode;
.super Ljava/lang/Enum;
.source "KeyguardViewContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ViewMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$ViewMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$ViewMode;

.field public static final enum FindPhone:Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$ViewMode;

.field public static final enum Password:Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$ViewMode;

.field public static final enum Slide:Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$ViewMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 39
    new-instance v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$ViewMode;

    const-string v1, "Slide"

    invoke-direct {v0, v1, v2}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$ViewMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$ViewMode;->Slide:Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$ViewMode;

    .line 40
    new-instance v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$ViewMode;

    const-string v1, "Password"

    invoke-direct {v0, v1, v3}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$ViewMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$ViewMode;->Password:Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$ViewMode;

    .line 41
    new-instance v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$ViewMode;

    const-string v1, "FindPhone"

    invoke-direct {v0, v1, v4}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$ViewMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$ViewMode;->FindPhone:Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$ViewMode;

    .line 38
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$ViewMode;

    sget-object v1, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$ViewMode;->Slide:Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$ViewMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$ViewMode;->Password:Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$ViewMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$ViewMode;->FindPhone:Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$ViewMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$ViewMode;->$VALUES:[Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$ViewMode;

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
    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$ViewMode;
    .locals 1
    .parameter "name"

    .prologue
    .line 38
    const-class v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$ViewMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$ViewMode;

    return-object v0
.end method

.method public static values()[Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$ViewMode;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$ViewMode;->$VALUES:[Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$ViewMode;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$ViewMode;

    return-object v0
.end method
