.class Lcom/meizu/internal/policy/impl/keyguard/GlowView$GlowViewInfo;
.super Ljava/lang/Object;
.source "GlowView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/internal/policy/impl/keyguard/GlowView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GlowViewInfo"
.end annotation


# instance fields
.field isAlive:Z

.field mAlpha:I

.field mBornTime:J

.field mRadius:I

.field final synthetic this$0:Lcom/meizu/internal/policy/impl/keyguard/GlowView;


# direct methods
.method public constructor <init>(Lcom/meizu/internal/policy/impl/keyguard/GlowView;)V
    .locals 1
    .parameter

    .prologue
    .line 77
    iput-object p1, p0, Lcom/meizu/internal/policy/impl/keyguard/GlowView$GlowViewInfo;->this$0:Lcom/meizu/internal/policy/impl/keyguard/GlowView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/internal/policy/impl/keyguard/GlowView$GlowViewInfo;->isAlive:Z

    .line 79
    return-void
.end method
