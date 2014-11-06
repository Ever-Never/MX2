.class Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$4;
.super Ljava/lang/Object;
.source "KeyguardViewContainer.java"

# interfaces
.implements Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$KeyguardViewCallback;


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
    .line 409
    iput-object p1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$4;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .prologue
    .line 418
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$4;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;->access$900(Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;)Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;->keyguardDone(Z)V

    .line 419
    return-void
.end method

.method public isScreenOn()Z
    .locals 1

    .prologue
    .line 435
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$4;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;->access$1200(Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;)Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;->isScreenOn()Z

    move-result v0

    return v0
.end method

.method public isScreenOnBecauseOfSlideKey()Z
    .locals 1

    .prologue
    .line 426
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$4;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;->access$1000(Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;)Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;->isScreenOnBecauseOfSlideKey()Z

    move-result v0

    return v0
.end method

.method public onUserActivityTimeoutChanged()V
    .locals 1

    .prologue
    .line 431
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$4;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;->access$1100(Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;)Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;->onUserActivityTimeoutChanged()V

    .line 432
    return-void
.end method

.method public showAlertDialog(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .parameter "title"
    .parameter "msg"
    .parameter "iconResId"

    .prologue
    .line 440
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$4;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;->access$1300(Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;)Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 441
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$4;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;->access$1400(Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;)Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;->showAlertDialog(Ljava/lang/String;Ljava/lang/String;I)V

    .line 443
    :cond_0
    return-void
.end method

.method public showNextSecurityScreenOrFinish()V
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$4;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;

    invoke-virtual {v0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;->showNextSecurityScreenOrFinish()V

    .line 423
    return-void
.end method

.method public userActivity(J)V
    .locals 1
    .parameter "timeout"

    .prologue
    .line 412
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$4;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;->access$700(Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;)Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 413
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$4;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;->access$800(Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;)Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;->userActivity(J)V

    .line 415
    :cond_0
    return-void
.end method
