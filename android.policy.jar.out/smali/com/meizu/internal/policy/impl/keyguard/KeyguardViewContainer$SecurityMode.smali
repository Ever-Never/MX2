.class final enum Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$SecurityMode;
.super Ljava/lang/Enum;
.source "KeyguardViewContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "SecurityMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$SecurityMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$SecurityMode;

.field public static final enum FindPhone:Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$SecurityMode;

.field public static final enum Invalid:Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$SecurityMode;

.field public static final enum None:Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$SecurityMode;

.field public static final enum Password:Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$SecurityMode;

.field public static final enum SimPin:Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$SecurityMode;

.field public static final enum SimPuk:Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$SecurityMode;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 30
    new-instance v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$SecurityMode;

    const-string v1, "Invalid"

    invoke-direct {v0, v1, v3}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$SecurityMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$SecurityMode;->Invalid:Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$SecurityMode;

    .line 31
    new-instance v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$SecurityMode;

    const-string v1, "None"

    invoke-direct {v0, v1, v4}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$SecurityMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$SecurityMode;->None:Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$SecurityMode;

    .line 32
    new-instance v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$SecurityMode;

    const-string v1, "SimPin"

    invoke-direct {v0, v1, v5}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$SecurityMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$SecurityMode;->SimPin:Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$SecurityMode;

    .line 33
    new-instance v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$SecurityMode;

    const-string v1, "SimPuk"

    invoke-direct {v0, v1, v6}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$SecurityMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$SecurityMode;->SimPuk:Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$SecurityMode;

    .line 34
    new-instance v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$SecurityMode;

    const-string v1, "Password"

    invoke-direct {v0, v1, v7}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$SecurityMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$SecurityMode;->Password:Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$SecurityMode;

    .line 35
    new-instance v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$SecurityMode;

    const-string v1, "FindPhone"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$SecurityMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$SecurityMode;->FindPhone:Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$SecurityMode;

    .line 29
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$SecurityMode;

    sget-object v1, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$SecurityMode;->Invalid:Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$SecurityMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$SecurityMode;->None:Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$SecurityMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$SecurityMode;->SimPin:Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$SecurityMode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$SecurityMode;->SimPuk:Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$SecurityMode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$SecurityMode;->Password:Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$SecurityMode;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$SecurityMode;->FindPhone:Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$SecurityMode;

    aput-object v2, v0, v1

    sput-object v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$SecurityMode;->$VALUES:[Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$SecurityMode;

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
    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$SecurityMode;
    .locals 1
    .parameter "name"

    .prologue
    .line 29
    const-class v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$SecurityMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$SecurityMode;

    return-object v0
.end method

.method public static values()[Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$SecurityMode;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$SecurityMode;->$VALUES:[Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$SecurityMode;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$SecurityMode;

    return-object v0
.end method
