.class abstract Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView$checkFindPhoneLockClass;
.super Ljava/lang/Thread;
.source "KeyguardFindPhoneView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "checkFindPhoneLockClass"
.end annotation


# static fields
.field public static final CAMERA_TEST:Z


# instance fields
.field private mPasswordStr:Ljava/lang/String;

.field final synthetic this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;


# direct methods
.method public constructor <init>(Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "password"

    .prologue
    .line 487
    iput-object p1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView$checkFindPhoneLockClass;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 488
    iput-object p2, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView$checkFindPhoneLockClass;->mPasswordStr:Ljava/lang/String;

    .line 489
    return-void
.end method


# virtual methods
.method abstract onFindPhoneLockChangedResponse(Lcom/android/internal/widget/LockPatternUtils$FindPhoneData;)V
.end method

.method public run()V
    .locals 13

    .prologue
    .line 493
    iget-object v10, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView$checkFindPhoneLockClass;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;

    #calls: Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->getSN()Ljava/lang/String;
    invoke-static {v10}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->access$2000(Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;)Ljava/lang/String;

    move-result-object v9

    .line 494
    .local v9, sn:Ljava/lang/String;
    new-instance v7, Lcom/android/internal/widget/LockPatternUtils$FindPhoneData;

    invoke-direct {v7}, Lcom/android/internal/widget/LockPatternUtils$FindPhoneData;-><init>()V

    .line 495
    .local v7, ret:Lcom/android/internal/widget/LockPatternUtils$FindPhoneData;
    iget-object v10, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView$checkFindPhoneLockClass;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;

    #calls: Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->isUseProxy()Z
    invoke-static {v10}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->access$2100(Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;)Z

    move-result v1

    .line 496
    .local v1, isUseProxy:Z
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v5

    .line 497
    .local v5, proxy:Ljava/lang/String;
    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v4

    .line 498
    .local v4, port:I
    iget-object v10, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView$checkFindPhoneLockClass;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;

    #calls: Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->getUnlockInitKey()Ljava/lang/String;
    invoke-static {v10}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->access$2200(Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;)Ljava/lang/String;

    move-result-object v8

    .line 500
    .local v8, signKey:Ljava/lang/String;
    iget-object v10, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView$checkFindPhoneLockClass;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;

    iget-object v10, v10, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mHandler:Landroid/os/Handler;

    const/16 v11, 0x3ea

    invoke-virtual {v10, v11}, Landroid/os/Handler;->removeMessages(I)V

    .line 501
    iget-object v10, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView$checkFindPhoneLockClass;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mFlymeName:Ljava/lang/String;
    invoke-static {v10}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->access$2300(Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView$checkFindPhoneLockClass;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mFlymeName:Ljava/lang/String;
    invoke-static {v10}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->access$2300(Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 502
    :cond_0
    iget-object v10, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView$checkFindPhoneLockClass;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;

    #calls: Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->getFlymeName()I
    invoke-static {v10}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->access$1900(Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;)I

    move-result v3

    .line 506
    .local v3, mGetNameError:I
    :goto_0
    iget-object v10, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView$checkFindPhoneLockClass;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mFlymeName:Ljava/lang/String;
    invoke-static {v10}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->access$2300(Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_3

    iget-object v10, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView$checkFindPhoneLockClass;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mFlymeName:Ljava/lang/String;
    invoke-static {v10}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->access$2300(Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_3

    .line 510
    :try_start_0
    iget-object v10, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView$checkFindPhoneLockClass;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mFindPhoneService:Lcom/meizu/flyme/service/find/IPhoneLocationService;
    invoke-static {v10}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->access$1700(Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;)Lcom/meizu/flyme/service/find/IPhoneLocationService;

    move-result-object v10

    iget-object v11, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView$checkFindPhoneLockClass;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mFlymeName:Ljava/lang/String;
    invoke-static {v11}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->access$2300(Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;)Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView$checkFindPhoneLockClass;->mPasswordStr:Ljava/lang/String;

    invoke-interface {v10, v11, v12}, Lcom/meizu/flyme/service/find/IPhoneLocationService;->unLockPhone(Ljava/lang/String;Ljava/lang/String;)Lcom/meizu/flyme/service/find/FindPhoneData;

    move-result-object v2

    .line 511
    .local v2, mFindPhoneData:Lcom/meizu/flyme/service/find/FindPhoneData;
    iget-object v10, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView$checkFindPhoneLockClass;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;

    iget v11, v2, Lcom/meizu/flyme/service/find/FindPhoneData;->mCode:I

    #calls: Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->findPhoneErrorCodeTransformToLockPatternUtilsCode(I)I
    invoke-static {v10, v11}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->access$2400(Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;I)I

    move-result v10

    iput v10, v7, Lcom/android/internal/widget/LockPatternUtils$FindPhoneData;->mErrorCode:I

    .line 512
    iget-object v10, v2, Lcom/meizu/flyme/service/find/FindPhoneData;->mData:Ljava/lang/String;

    iput-object v10, v7, Lcom/android/internal/widget/LockPatternUtils$FindPhoneData;->mData:Ljava/lang/Object;

    .line 513
    iget-object v10, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView$checkFindPhoneLockClass;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v10}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->access$1200(Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v10

    iget v11, v7, Lcom/android/internal/widget/LockPatternUtils$FindPhoneData;->mErrorCode:I

    invoke-virtual {v10, v11}, Lcom/android/internal/widget/LockPatternUtils;->updateLimitedTime(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 523
    .end local v2           #mFindPhoneData:Lcom/meizu/flyme/service/find/FindPhoneData;
    :goto_1
    move-object v6, v7

    .line 528
    .local v6, result:Lcom/android/internal/widget/LockPatternUtils$FindPhoneData;
    iget-object v10, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView$checkFindPhoneLockClass;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;

    new-instance v11, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView$checkFindPhoneLockClass$1;

    invoke-direct {v11, p0, v6}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView$checkFindPhoneLockClass$1;-><init>(Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView$checkFindPhoneLockClass;Lcom/android/internal/widget/LockPatternUtils$FindPhoneData;)V

    invoke-virtual {v10, v11}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 533
    invoke-static {}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->access$1100()Z

    move-result v10

    if-eqz v10, :cond_1

    const-string v10, "FindPhone"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "account{ name = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView$checkFindPhoneLockClass;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mFlymeName:Ljava/lang/String;
    invoke-static {v12}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->access$2300(Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", sn = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", and ret = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    .end local v6           #result:Lcom/android/internal/widget/LockPatternUtils$FindPhoneData;
    :cond_1
    :goto_2
    return-void

    .line 504
    .end local v3           #mGetNameError:I
    :cond_2
    const/4 v3, 0x0

    .restart local v3       #mGetNameError:I
    goto/16 :goto_0

    .line 514
    :catch_0
    move-exception v0

    .line 515
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 535
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_3
    invoke-static {}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->access$1100()Z

    move-result v10

    if-eqz v10, :cond_4

    const-string v10, "FindPhone"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "accountName is null, sn = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "}"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    :cond_4
    iget-object v10, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView$checkFindPhoneLockClass;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;

    new-instance v11, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView$checkFindPhoneLockClass$2;

    invoke-direct {v11, p0, v3}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView$checkFindPhoneLockClass$2;-><init>(Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView$checkFindPhoneLockClass;I)V

    invoke-virtual {v10, v11}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_2
.end method
