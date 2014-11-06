.class Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView$5;
.super Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView$checkFindPhoneLockClass;
.source "KeyguardFindPhoneView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->checkFindPhoneLock(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;


# direct methods
.method constructor <init>(Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 334
    iput-object p1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView$5;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;

    invoke-direct {p0, p1, p2}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView$checkFindPhoneLockClass;-><init>(Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method onFindPhoneLockChangedResponse(Lcom/android/internal/widget/LockPatternUtils$FindPhoneData;)V
    .locals 13
    .parameter "result"

    .prologue
    .line 338
    const-string v10, "FindPhone"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "checkFindPhoneLock result = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    iget-object v10, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView$5;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v10}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->access$300(Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;)Landroid/app/ProgressDialog;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 340
    iget-object v10, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView$5;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v10}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->access$300(Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;)Landroid/app/ProgressDialog;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Dialog;->hide()V

    .line 341
    iget-object v10, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView$5;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v10}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->access$300(Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;)Landroid/app/ProgressDialog;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Dialog;->dismiss()V

    .line 343
    :cond_0
    iget-object v7, p1, Lcom/android/internal/widget/LockPatternUtils$FindPhoneData;->mData:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    .line 344
    .local v7, signKey:Ljava/lang/String;
    iget-object v10, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView$5;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;

    iget v11, p1, Lcom/android/internal/widget/LockPatternUtils$FindPhoneData;->mErrorCode:I

    #setter for: Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mFindPhonePasswordError:I
    invoke-static {v10, v11}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->access$402(Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;I)I

    .line 345
    iget-object v10, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView$5;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mFindPhonePasswordError:I
    invoke-static {v10}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->access$400(Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_8

    .line 346
    iget-object v10, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView$5;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;

    const/4 v11, 0x0

    #setter for: Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mCheckCount:I
    invoke-static {v10, v11}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->access$502(Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;I)I

    .line 347
    iget-object v10, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView$5;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mForceMobileDataEnabled:Z
    invoke-static {v10}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->access$600(Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 348
    iget-object v10, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView$5;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;

    const/4 v11, 0x0

    #setter for: Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mForceMobileDataEnabled:Z
    invoke-static {v10, v11}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->access$602(Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;Z)Z

    .line 349
    iget-object v10, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView$5;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mConnManager:Landroid/net/ConnectivityManager;
    invoke-static {v10}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->access$700(Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;)Landroid/net/ConnectivityManager;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 352
    :cond_1
    iget-object v10, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView$5;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mForceWifiDisabled:Z
    invoke-static {v10}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->access$800(Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 353
    iget-object v10, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView$5;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;

    const/4 v11, 0x0

    #setter for: Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mForceWifiDisabled:Z
    invoke-static {v10, v11}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->access$802(Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;Z)Z

    .line 354
    iget-object v10, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView$5;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v10}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->access$900(Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;)Landroid/net/wifi/WifiManager;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 357
    :cond_2
    iget-object v10, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView$5;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mCallback:Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$KeyguardViewCallback;
    invoke-static {v10}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->access$000(Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;)Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$KeyguardViewCallback;

    move-result-object v10

    const-wide/16 v11, 0x0

    invoke-interface {v10, v11, v12}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$KeyguardViewCallback;->userActivity(J)V

    .line 359
    const/4 v4, 0x0

    .line 360
    .local v4, realUnlock:Z
    const/4 v5, 0x0

    .line 361
    .local v5, recoveryLockState:I
    iget-object v10, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView$5;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mPowerManager:Landroid/os/PowerManager;
    invoke-static {v10}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->access$1000(Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;)Landroid/os/PowerManager;

    move-result-object v10

    sget-object v11, Landroid/os/PowerManager$RemoteHandle;->Lock:Landroid/os/PowerManager$RemoteHandle;

    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/os/PowerManager;->doCheckState(I)I

    move-result v5

    .line 362
    invoke-static {}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->access$1100()Z

    move-result v10

    if-eqz v10, :cond_3

    const-string v10, "FindPhone"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "check findphone success and setLockState 0, recoveryLockState = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    :cond_3
    const/4 v10, 0x1

    if-ne v5, v10, :cond_7

    .line 364
    iget-object v10, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView$5;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mPowerManager:Landroid/os/PowerManager;
    invoke-static {v10}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->access$1000(Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;)Landroid/os/PowerManager;

    move-result-object v10

    sget-object v11, Landroid/os/PowerManager$RemoteHandle;->Unlock:Landroid/os/PowerManager$RemoteHandle;

    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    const/4 v12, 0x0

    invoke-static {v7, v12}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/os/PowerManager;->doCommand(I[B)I

    move-result v6

    .line 365
    .local v6, resultRecovery:I
    if-nez v6, :cond_6

    .line 366
    const/4 v4, 0x1

    .line 374
    .end local v6           #resultRecovery:I
    :goto_0
    if-eqz v4, :cond_5

    .line 375
    iget-object v10, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView$5;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v10}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->access$1200(Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/widget/LockPatternUtils;->getPasswordLeftTimes()I

    move-result v10

    if-gtz v10, :cond_4

    .line 376
    iget-object v10, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView$5;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v10}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->access$1200(Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/internal/widget/LockPatternUtils;->clearLock(Z)V

    .line 377
    new-instance v3, Landroid/content/Intent;

    const-string v10, "android.intent.action.ACCESS_CONTROL_CHANGED"

    invoke-direct {v3, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 378
    .local v3, intent:Landroid/content/Intent;
    iget-object v10, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView$5;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v10}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->access$1300(Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;)Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 380
    .end local v3           #intent:Landroid/content/Intent;
    :cond_4
    iget-object v10, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView$5;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v10}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->access$1200(Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/internal/widget/LockPatternUtils;->saveFindPhoneLockState(Z)V

    .line 382
    new-instance v3, Landroid/content/Intent;

    const-string v10, "meizu.intent.action.FINDPHONE_STATE_CHANGED"

    invoke-direct {v3, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 383
    .restart local v3       #intent:Landroid/content/Intent;
    const-string v10, "securityLock"

    const/4 v11, 0x0

    invoke-virtual {v3, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 384
    iget-object v10, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView$5;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v10}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->access$1400(Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;)Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 385
    new-instance v1, Landroid/content/Intent;

    const-string v10, "meizu.intent.action.FLYME_FINDPHONE_UNLOCK"

    invoke-direct {v1, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 386
    .local v1, i:Landroid/content/Intent;
    const-string v10, "Lock"

    const-string v11, "off"

    invoke-virtual {v1, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 387
    iget-object v10, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView$5;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v10}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->access$1500(Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;)Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 388
    iget-object v10, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView$5;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mCallback:Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$KeyguardViewCallback;
    invoke-static {v10}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->access$000(Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;)Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$KeyguardViewCallback;

    move-result-object v10

    invoke-interface {v10}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$KeyguardViewCallback;->showNextSecurityScreenOrFinish()V

    .line 478
    .end local v1           #i:Landroid/content/Intent;
    .end local v3           #intent:Landroid/content/Intent;
    .end local v4           #realUnlock:Z
    .end local v5           #recoveryLockState:I
    :cond_5
    :goto_1
    return-void

    .line 368
    .restart local v4       #realUnlock:Z
    .restart local v5       #recoveryLockState:I
    .restart local v6       #resultRecovery:I
    :cond_6
    const-string v10, "FindPhone"

    const-string v11, "unlock recovery error"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 371
    .end local v6           #resultRecovery:I
    :cond_7
    const/4 v4, 0x1

    goto :goto_0

    .line 390
    .end local v4           #realUnlock:Z
    .end local v5           #recoveryLockState:I
    :cond_8
    iget-object v10, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView$5;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mFindPhonePasswordError:I
    invoke-static {v10}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->access$400(Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;)I

    move-result v10

    const/4 v11, 0x3

    if-ne v10, v11, :cond_9

    .line 394
    iget-object v10, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView$5;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;

    #calls: Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->clearInput()V
    invoke-static {v10}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->access$1600(Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;)V

    .line 395
    iget-object v10, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView$5;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;

    invoke-virtual {v10}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->showToast()V

    .line 396
    iget-object v10, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView$5;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mCallback:Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$KeyguardViewCallback;
    invoke-static {v10}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->access$000(Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;)Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$KeyguardViewCallback;

    move-result-object v10

    const-wide/16 v11, 0x0

    invoke-interface {v10, v11, v12}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$KeyguardViewCallback;->userActivity(J)V

    goto :goto_1

    .line 398
    :cond_9
    iget-object v10, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView$5;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mFindPhonePasswordError:I
    invoke-static {v10}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->access$400(Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;)I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_b

    .line 399
    iget-object v10, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView$5;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;

    iget-object v11, v10, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mFindPhoneConnection:Landroid/content/ServiceConnection;

    monitor-enter v11

    .line 400
    :try_start_0
    iget-object v10, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView$5;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;

    invoke-static {v10}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->access$508(Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;)I

    .line 401
    iget-object v10, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView$5;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mFindPhoneService:Lcom/meizu/flyme/service/find/IPhoneLocationService;
    invoke-static {v10}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->access$1700(Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;)Lcom/meizu/flyme/service/find/IPhoneLocationService;

    move-result-object v10

    if-eqz v10, :cond_a

    .line 404
    new-instance v3, Landroid/content/Intent;

    const-string v10, "com.meizu.flyme.FindPhone"

    invoke-direct {v3, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 405
    .restart local v3       #intent:Landroid/content/Intent;
    const-string v10, "msg"

    const-string v12, "takephoto"

    invoke-virtual {v3, v10, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 406
    const-string v10, "auto_take"

    const/4 v12, 0x1

    invoke-virtual {v3, v10, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 407
    iget-object v10, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView$5;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v10}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->access$1800(Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;)Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 439
    .end local v3           #intent:Landroid/content/Intent;
    :cond_a
    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 442
    :cond_b
    iget-object v10, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView$5;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mFindPhonePasswordError:I
    invoke-static {v10}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->access$400(Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;)I

    move-result v10

    const/4 v11, 0x6

    if-ne v10, v11, :cond_c

    .line 443
    iget-object v10, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView$5;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;

    #calls: Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->getFlymeName()I
    invoke-static {v10}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->access$1900(Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;)I

    .line 447
    :cond_c
    iget-object v10, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView$5;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mConnManager:Landroid/net/ConnectivityManager;
    invoke-static {v10}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->access$700(Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;)Landroid/net/ConnectivityManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 448
    .local v2, info:Landroid/net/NetworkInfo;
    if-eqz v2, :cond_f

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v10

    if-eqz v10, :cond_f

    .line 449
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v9

    .line 450
    .local v9, type:I
    const/4 v10, 0x1

    if-ne v9, v10, :cond_e

    const-string v8, "wifi"

    .line 451
    .local v8, tips:Ljava/lang/String;
    :goto_2
    invoke-static {}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->access$1100()Z

    move-result v10

    if-eqz v10, :cond_d

    const-string v10, "FindPhone"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "network is available, type = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    .end local v8           #tips:Ljava/lang/String;
    .end local v9           #type:I
    :cond_d
    :goto_3
    iget-object v10, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView$5;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;

    #calls: Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->clearInput()V
    invoke-static {v10}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->access$1600(Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;)V

    .line 474
    iget-object v10, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView$5;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;

    invoke-virtual {v10}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->showToast()V

    .line 475
    iget-object v10, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView$5;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mCallback:Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$KeyguardViewCallback;
    invoke-static {v10}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->access$000(Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;)Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$KeyguardViewCallback;

    move-result-object v10

    const-wide/16 v11, 0x0

    invoke-interface {v10, v11, v12}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$KeyguardViewCallback;->userActivity(J)V

    goto/16 :goto_1

    .line 439
    .end local v2           #info:Landroid/net/NetworkInfo;
    :catchall_0
    move-exception v10

    :try_start_1
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v10

    .line 450
    .restart local v2       #info:Landroid/net/NetworkInfo;
    .restart local v9       #type:I
    :cond_e
    const-string v8, "mobile"

    goto :goto_2

    .line 453
    .end local v9           #type:I
    :cond_f
    invoke-static {}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->access$1100()Z

    move-result v10

    if-eqz v10, :cond_10

    const-string v10, "FindPhone"

    const-string v11, "network is unavailable"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    :cond_10
    iget-object v10, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView$5;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mConnManager:Landroid/net/ConnectivityManager;
    invoke-static {v10}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->access$700(Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;)Landroid/net/ConnectivityManager;

    move-result-object v10

    if-eqz v10, :cond_11

    .line 455
    iget-object v10, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView$5;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mConnManager:Landroid/net/ConnectivityManager;
    invoke-static {v10}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->access$700(Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;)Landroid/net/ConnectivityManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v0

    .line 456
    .local v0, dataEnabled:Z
    if-nez v0, :cond_11

    .line 457
    iget-object v10, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView$5;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;

    const/4 v11, 0x1

    #setter for: Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mForceMobileDataEnabled:Z
    invoke-static {v10, v11}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->access$602(Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;Z)Z

    .line 458
    iget-object v10, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView$5;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mConnManager:Landroid/net/ConnectivityManager;
    invoke-static {v10}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->access$700(Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;)Landroid/net/ConnectivityManager;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 459
    invoke-static {}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->access$1100()Z

    move-result v10

    if-eqz v10, :cond_11

    const-string v10, "FindPhone"

    const-string v11, " ---- open mobile data"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    .end local v0           #dataEnabled:Z
    :cond_11
    iget-object v10, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView$5;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;

    const/4 v11, 0x3

    #setter for: Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mFindPhonePasswordError:I
    invoke-static {v10, v11}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->access$402(Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;I)I

    goto :goto_3
.end method
