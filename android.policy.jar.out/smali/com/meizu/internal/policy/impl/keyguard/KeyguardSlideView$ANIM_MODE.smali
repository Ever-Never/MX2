.class public final enum Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$ANIM_MODE;
.super Ljava/lang/Enum;
.source "KeyguardSlideView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ANIM_MODE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$ANIM_MODE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$ANIM_MODE;

.field public static final enum DRAG:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$ANIM_MODE;

.field public static final enum LOCK_V:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$ANIM_MODE;

.field public static final enum NONE:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$ANIM_MODE;

.field public static final enum UNLOCK_V:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$ANIM_MODE;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 50
    new-instance v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$ANIM_MODE;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$ANIM_MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$ANIM_MODE;->NONE:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$ANIM_MODE;

    .line 51
    new-instance v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$ANIM_MODE;

    const-string v1, "DRAG"

    invoke-direct {v0, v1, v3}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$ANIM_MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$ANIM_MODE;->DRAG:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$ANIM_MODE;

    .line 52
    new-instance v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$ANIM_MODE;

    const-string v1, "LOCK_V"

    invoke-direct {v0, v1, v4}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$ANIM_MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$ANIM_MODE;->LOCK_V:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$ANIM_MODE;

    .line 53
    new-instance v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$ANIM_MODE;

    const-string v1, "UNLOCK_V"

    invoke-direct {v0, v1, v5}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$ANIM_MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$ANIM_MODE;->UNLOCK_V:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$ANIM_MODE;

    .line 49
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$ANIM_MODE;

    sget-object v1, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$ANIM_MODE;->NONE:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$ANIM_MODE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$ANIM_MODE;->DRAG:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$ANIM_MODE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$ANIM_MODE;->LOCK_V:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$ANIM_MODE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$ANIM_MODE;->UNLOCK_V:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$ANIM_MODE;

    aput-object v1, v0, v5

    sput-object v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$ANIM_MODE;->$VALUES:[Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$ANIM_MODE;

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
    .line 49
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$ANIM_MODE;
    .locals 1
    .parameter "name"

    .prologue
    .line 49
    const-class v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$ANIM_MODE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$ANIM_MODE;

    return-object v0
.end method

.method public static values()[Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$ANIM_MODE;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$ANIM_MODE;->$VALUES:[Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$ANIM_MODE;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$ANIM_MODE;

    return-object v0
.end method
