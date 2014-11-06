.class public final enum Lcom/meizu/server/FileProtectPasswordView$ShowType;
.super Ljava/lang/Enum;
.source "FileProtectPasswordView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/server/FileProtectPasswordView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ShowType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/meizu/server/FileProtectPasswordView$ShowType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/meizu/server/FileProtectPasswordView$ShowType;

.field public static final enum ADD_GLOBAL_UNLOCK_FILE:Lcom/meizu/server/FileProtectPasswordView$ShowType;

.field public static final enum CHECK_PASSWORD:Lcom/meizu/server/FileProtectPasswordView$ShowType;

.field public static final enum ENSURE_PASSWORD:Lcom/meizu/server/FileProtectPasswordView$ShowType;

.field public static final enum OPEN_PASSWORD:Lcom/meizu/server/FileProtectPasswordView$ShowType;

.field public static final enum REQUEST_GRANTED:Lcom/meizu/server/FileProtectPasswordView$ShowType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 24
    new-instance v0, Lcom/meizu/server/FileProtectPasswordView$ShowType;

    const-string v1, "REQUEST_GRANTED"

    invoke-direct {v0, v1, v2}, Lcom/meizu/server/FileProtectPasswordView$ShowType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/server/FileProtectPasswordView$ShowType;->REQUEST_GRANTED:Lcom/meizu/server/FileProtectPasswordView$ShowType;

    .line 25
    new-instance v0, Lcom/meizu/server/FileProtectPasswordView$ShowType;

    const-string v1, "CHECK_PASSWORD"

    invoke-direct {v0, v1, v3}, Lcom/meizu/server/FileProtectPasswordView$ShowType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/server/FileProtectPasswordView$ShowType;->CHECK_PASSWORD:Lcom/meizu/server/FileProtectPasswordView$ShowType;

    .line 26
    new-instance v0, Lcom/meizu/server/FileProtectPasswordView$ShowType;

    const-string v1, "OPEN_PASSWORD"

    invoke-direct {v0, v1, v4}, Lcom/meizu/server/FileProtectPasswordView$ShowType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/server/FileProtectPasswordView$ShowType;->OPEN_PASSWORD:Lcom/meizu/server/FileProtectPasswordView$ShowType;

    .line 27
    new-instance v0, Lcom/meizu/server/FileProtectPasswordView$ShowType;

    const-string v1, "ENSURE_PASSWORD"

    invoke-direct {v0, v1, v5}, Lcom/meizu/server/FileProtectPasswordView$ShowType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/server/FileProtectPasswordView$ShowType;->ENSURE_PASSWORD:Lcom/meizu/server/FileProtectPasswordView$ShowType;

    .line 28
    new-instance v0, Lcom/meizu/server/FileProtectPasswordView$ShowType;

    const-string v1, "ADD_GLOBAL_UNLOCK_FILE"

    invoke-direct {v0, v1, v6}, Lcom/meizu/server/FileProtectPasswordView$ShowType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/server/FileProtectPasswordView$ShowType;->ADD_GLOBAL_UNLOCK_FILE:Lcom/meizu/server/FileProtectPasswordView$ShowType;

    .line 23
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/meizu/server/FileProtectPasswordView$ShowType;

    sget-object v1, Lcom/meizu/server/FileProtectPasswordView$ShowType;->REQUEST_GRANTED:Lcom/meizu/server/FileProtectPasswordView$ShowType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/meizu/server/FileProtectPasswordView$ShowType;->CHECK_PASSWORD:Lcom/meizu/server/FileProtectPasswordView$ShowType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/meizu/server/FileProtectPasswordView$ShowType;->OPEN_PASSWORD:Lcom/meizu/server/FileProtectPasswordView$ShowType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/meizu/server/FileProtectPasswordView$ShowType;->ENSURE_PASSWORD:Lcom/meizu/server/FileProtectPasswordView$ShowType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/meizu/server/FileProtectPasswordView$ShowType;->ADD_GLOBAL_UNLOCK_FILE:Lcom/meizu/server/FileProtectPasswordView$ShowType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/meizu/server/FileProtectPasswordView$ShowType;->$VALUES:[Lcom/meizu/server/FileProtectPasswordView$ShowType;

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
    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/meizu/server/FileProtectPasswordView$ShowType;
    .locals 1
    .parameter "name"

    .prologue
    .line 23
    const-class v0, Lcom/meizu/server/FileProtectPasswordView$ShowType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/meizu/server/FileProtectPasswordView$ShowType;

    return-object v0
.end method

.method public static values()[Lcom/meizu/server/FileProtectPasswordView$ShowType;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/meizu/server/FileProtectPasswordView$ShowType;->$VALUES:[Lcom/meizu/server/FileProtectPasswordView$ShowType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/meizu/server/FileProtectPasswordView$ShowType;

    return-object v0
.end method
