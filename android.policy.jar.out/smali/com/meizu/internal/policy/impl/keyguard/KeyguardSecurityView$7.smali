.class Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$7;
.super Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$CheckSimPin;
.source "KeyguardSecurityView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->checkPin(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;


# direct methods
.method constructor <init>(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 901
    iput-object p1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$7;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;

    invoke-direct {p0, p1, p2}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$CheckSimPin;-><init>(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method onSimLockChangedResponse(Z)V
    .locals 5
    .parameter "success"

    .prologue
    const-wide/16 v3, 0x0

    .line 903
    invoke-static {}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CheckSimPin :success ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    :cond_0
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$7;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;

    const/4 v1, 0x0

    #setter for: Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mIsChecking:Z
    invoke-static {v0, v1}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->access$1902(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;Z)Z

    .line 905
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$7;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->access$3200(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 906
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$7;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->access$3200(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    .line 907
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$7;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->access$3200(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 909
    :cond_1
    if-eqz p1, :cond_3

    .line 910
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$7;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->access$3300(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->reportSimUnlocked()V

    .line 911
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$7;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mCallback:Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$KeyguardViewCallback;
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->access$1600(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;)Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$KeyguardViewCallback;

    move-result-object v0

    invoke-interface {v0, v3, v4}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$KeyguardViewCallback;->userActivity(J)V

    .line 912
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$7;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;

    const/4 v1, -0x1

    #setter for: Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mLeftTimes:I
    invoke-static {v0, v1}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->access$3402(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;I)I

    .line 913
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$7;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mCallback:Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$KeyguardViewCallback;
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->access$1600(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;)Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$KeyguardViewCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$KeyguardViewCallback;->showNextSecurityScreenOrFinish()V

    .line 914
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$7;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;

    const/4 v1, 0x1

    #setter for: Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mIsKyeguardDone:Z
    invoke-static {v0, v1}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->access$2302(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;Z)Z

    .line 922
    :cond_2
    :goto_0
    return-void

    .line 916
    :cond_3
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$7;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mCallback:Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$KeyguardViewCallback;
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->access$1600(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;)Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$KeyguardViewCallback;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 917
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$7;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;

    invoke-virtual {v0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->updateViewForMode()V

    .line 918
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$7;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mCallback:Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$KeyguardViewCallback;
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->access$1600(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;)Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$KeyguardViewCallback;

    move-result-object v0

    invoke-interface {v0, v3, v4}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$KeyguardViewCallback;->userActivity(J)V

    .line 919
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$7;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mKeypadView:Lcom/meizu/widget/LockDigitView;
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->access$300(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;)Lcom/meizu/widget/LockDigitView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/widget/LockDigitView;->resetPattern()V

    goto :goto_0
.end method
