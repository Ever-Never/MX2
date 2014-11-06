.class Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$1;
.super Ljava/lang/Object;
.source "KeyguardViewContainer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;


# direct methods
.method constructor <init>(Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;)V
    .locals 0
    .parameter

    .prologue
    .line 219
    iput-object p1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$1;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$1;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;->mCallback:Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$KeyguardViewCallback;
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;->access$100(Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;)Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$KeyguardViewCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$1;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;->access$200(Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;->getInstance(Landroid/content/Context;)Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;->onKeyguardAttached()V

    .line 224
    :cond_0
    return-void
.end method
