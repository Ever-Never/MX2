.class Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$6;
.super Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$checkPasswordClass;
.source "KeyguardSecurityView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->checkPassword(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;


# direct methods
.method constructor <init>(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 787
    iput-object p1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$6;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;

    invoke-direct {p0, p1, p2, p3}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$checkPasswordClass;-><init>(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method onPassworkLockChangedResponse(Z)V
    .locals 9
    .parameter "result"

    .prologue
    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 790
    invoke-static {}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->access$100()Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkPassword:result = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    :cond_0
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$6;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;

    #setter for: Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mIsChecking:Z
    invoke-static {v4, v5}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->access$1902(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;Z)Z

    .line 792
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$6;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mCallback:Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$KeyguardViewCallback;
    invoke-static {v4}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->access$1600(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;)Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$KeyguardViewCallback;

    move-result-object v4

    const-wide/16 v6, 0x0

    invoke-interface {v4, v6, v7}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$KeyguardViewCallback;->userActivity(J)V

    .line 793
    if-eqz p1, :cond_2

    .line 794
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$6;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;

    #setter for: Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mIsKyeguardDone:Z
    invoke-static {v4, v8}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->access$2302(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;Z)Z

    .line 795
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$6;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mCallback:Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$KeyguardViewCallback;
    invoke-static {v4}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->access$1600(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;)Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$KeyguardViewCallback;

    move-result-object v4

    invoke-interface {v4}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$KeyguardViewCallback;->onUserActivityTimeoutChanged()V

    .line 796
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$6;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;

    #setter for: Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mPasswordError:Z
    invoke-static {v4, v5}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->access$2402(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;Z)Z

    .line 797
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$6;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mCallback:Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$KeyguardViewCallback;
    invoke-static {v4}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->access$1600(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;)Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$KeyguardViewCallback;

    move-result-object v4

    invoke-interface {v4}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$KeyguardViewCallback;->dismiss()V

    .line 799
    :try_start_0
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$6;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mPackageManager:Landroid/content/pm/IPackageManager;
    invoke-static {v4}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->access$2500(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;)Landroid/content/pm/IPackageManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Landroid/content/pm/IPackageManager;->upadteGuestMode(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 804
    :goto_0
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$6;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mAcm:Landroid/content/pm/AccessControlManager;
    invoke-static {v4}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->access$2600(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;)Landroid/content/pm/AccessControlManager;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 805
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$6;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mAcm:Landroid/content/pm/AccessControlManager;
    invoke-static {v4}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->access$2600(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;)Landroid/content/pm/AccessControlManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/pm/AccessControlManager;->addTopAppAccessControlPass()V

    .line 840
    :cond_1
    :goto_1
    return-void

    .line 800
    :catch_0
    move-exception v0

    .line 801
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 808
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_2
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$6;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;

    #setter for: Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mPasswordError:Z
    invoke-static {v4, v8}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->access$2402(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;Z)Z

    .line 809
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$6;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;

    invoke-static {v4}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->access$2708(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;)I

    .line 810
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$6;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;

    invoke-virtual {v4}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->updateInputTips()V

    .line 811
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$6;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;

    #calls: Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->setKeypadAsNum()V
    invoke-static {v4}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->access$2100(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;)V

    .line 812
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$6;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;

    iget-object v6, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$6;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;

    iget-object v6, v6, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mRestKeypadAsPoint:Ljava/lang/Runnable;

    invoke-virtual {v4, v6}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 813
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$6;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v4}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->access$2800(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->getPasswordLeftTimes()I

    move-result v1

    .line 814
    .local v1, leftTimes:I
    const/4 v4, 0x3

    if-ge v1, v4, :cond_4

    iget-object v4, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$6;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;

    invoke-virtual {v4}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->isOpenFindLock()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 815
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$6;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->access$2900(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;)Landroid/content/Context;

    move-result-object v4

    const v6, 0x10405e3

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 816
    .local v2, text:Ljava/lang/String;
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$6;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->access$3000(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;)Landroid/content/Context;

    move-result-object v6

    new-array v7, v8, [Ljava/lang/Object;

    if-gez v1, :cond_3

    move v4, v5

    :goto_2
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v7, v5

    invoke-static {v2, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 817
    .local v3, toast:Landroid/widget/Toast;
    const/16 v4, 0x7d9

    invoke-virtual {v3, v4}, Landroid/widget/Toast;->setType(I)V

    .line 818
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 819
    if-ge v1, v8, :cond_1

    .line 820
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$6;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mKeypadView:Lcom/meizu/widget/LockDigitView;
    invoke-static {v4}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->access$300(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;)Lcom/meizu/widget/LockDigitView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/meizu/widget/LockDigitView;->disableInput()V

    .line 823
    :try_start_1
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$6;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mPackageManager:Landroid/content/pm/IPackageManager;
    invoke-static {v4}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->access$2500(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;)Landroid/content/pm/IPackageManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Landroid/content/pm/IPackageManager;->upadteGuestMode(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 827
    :goto_3
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$6;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mAcm:Landroid/content/pm/AccessControlManager;
    invoke-static {v4}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->access$2600(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;)Landroid/content/pm/AccessControlManager;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 828
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$6;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mAcm:Landroid/content/pm/AccessControlManager;
    invoke-static {v4}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->access$2600(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;)Landroid/content/pm/AccessControlManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/pm/AccessControlManager;->addTopAppAccessControlPass()V

    goto/16 :goto_1

    .end local v3           #toast:Landroid/widget/Toast;
    :cond_3
    move v4, v1

    .line 816
    goto :goto_2

    .line 824
    .restart local v3       #toast:Landroid/widget/Toast;
    :catch_1
    move-exception v0

    .line 825
    .restart local v0       #e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    .line 832
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v2           #text:Ljava/lang/String;
    .end local v3           #toast:Landroid/widget/Toast;
    :cond_4
    invoke-static {}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->access$100()Z

    move-result v4

    if-eqz v4, :cond_5

    sget-object v4, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mPasswordErrorTime:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$6;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mPasswordErrorTime:I
    invoke-static {v6}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->access$2700(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " leftTimes:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    :cond_5
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$6;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mPasswordErrorTime:I
    invoke-static {v4}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->access$2700(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;)I

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$6;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mPasswordErrorTime:I
    invoke-static {v4}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->access$2700(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;)I

    move-result v4

    rem-int/lit8 v4, v4, 0x5

    if-nez v4, :cond_6

    .line 834
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$6;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;

    const-wide/32 v5, 0xea60

    #calls: Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->handleAttemptLockout(J)V
    invoke-static {v4, v5, v6}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->access$3100(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;J)V

    goto/16 :goto_1

    .line 836
    :cond_6
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$6;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;

    iget-object v5, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$6;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;

    iget-object v5, v5, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mRestKeypadAsPoint:Ljava/lang/Runnable;

    const-wide/16 v6, 0x1388

    invoke-virtual {v4, v5, v6, v7}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1
.end method
