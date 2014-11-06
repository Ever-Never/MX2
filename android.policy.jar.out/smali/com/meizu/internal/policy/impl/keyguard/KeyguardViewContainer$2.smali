.class Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$2;
.super Ljava/lang/Object;
.source "KeyguardViewContainer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;->wakeWhenReadyTq(I)V
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
    .line 269
    iput-object p1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$2;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$2;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;->access$300(Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;)Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$2;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;->access$400(Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;)Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;->wakeUp()V

    .line 275
    :cond_0
    return-void
.end method
