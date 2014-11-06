.class Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$3;
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
    .line 354
    iput-object p1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$3;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 358
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$3;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;->mKeyguardView:Lcom/meizu/internal/policy/impl/keyguard/KeyguardScreen;
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;->access$500(Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;)Lcom/meizu/internal/policy/impl/keyguard/KeyguardScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$3;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;->mLastDoubleHomeKeyTime:J
    invoke-static {v2}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;->access$600(Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x96

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 359
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$3;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;->mKeyguardView:Lcom/meizu/internal/policy/impl/keyguard/KeyguardScreen;
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;->access$500(Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;)Lcom/meizu/internal/policy/impl/keyguard/KeyguardScreen;

    move-result-object v0

    invoke-interface {v0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardScreen;->homekeyEvent()V

    .line 360
    :cond_0
    return-void
.end method
