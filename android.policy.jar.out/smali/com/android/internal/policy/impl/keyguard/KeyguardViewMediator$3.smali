.class Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$3;
.super Landroid/content/BroadcastReceiver;
.source "KeyguardViewMediator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)V
    .locals 0
    .parameter

    .prologue
    .line 1259
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v6, 0x1

    .line 1262
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1263
    .local v0, action:Ljava/lang/String;
    const-string v4, "com.android.internal.policy.impl.PhoneWindowManager.DELAYED_KEYGUARD"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1264
    const-string v4, "seq"

    const/4 v5, 0x0

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 1265
    .local v2, sequence:I
    const-string v4, "KeyguardViewMediator"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "received DELAYED_KEYGUARD_ACTION with seq = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mDelayedShowingSequence = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mDelayedShowingSequence:I
    invoke-static {v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$1400(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1267
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    monitor-enter v5

    .line 1268
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mDelayedShowingSequence:I
    invoke-static {v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$1400(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)I

    move-result v4

    if-ne v4, v2, :cond_0

    .line 1270
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    const/4 v6, 0x1

    #setter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mSuppressNextLockSound:Z
    invoke-static {v4, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$1502(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;Z)Z

    .line 1271
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->doKeyguardLocked()V
    invoke-static {v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$600(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)V

    .line 1273
    :cond_0
    monitor-exit v5

    .line 1317
    .end local v2           #sequence:I
    :cond_1
    :goto_0
    return-void

    .line 1273
    .restart local v2       #sequence:I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 1276
    .end local v2           #sequence:I
    :cond_2
    const-string v4, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1277
    const-string v4, "KeyguardViewMediator"

    const-string v5, "receive  ACTION_BOOT_COMPLETED"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1278
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    #setter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mBootComplete:Z
    invoke-static {v4, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$1602(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;Z)Z

    .line 1280
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1282
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mRealPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;
    invoke-static {v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$1200(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)Lcom/android/internal/policy/impl/PhoneWindowManager;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateKeyguardStatusBar(Z)V

    .line 1284
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$300(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->isFindphoneLocked()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1285
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$200(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mSecurityLockIntent:Landroid/content/Intent;
    invoke-static {v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$1700(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1290
    :cond_3
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$1800()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1291
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$200(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockIntent:Landroid/content/Intent;
    invoke-static {v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$1900(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 1294
    :cond_4
    const-string v4, "android.intent.action.MEIZU_SCREEN_DIM_CHANGE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1295
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$900(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)Landroid/os/Handler;

    move-result-object v4

    const/16 v5, 0x12

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1301
    :cond_5
    const-string v4, "com.android.internal.policy.impl.PhoneWindowManager.DELAYED_PLAYVIDEO"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1302
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$1800()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1305
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/app/IActivityManager;->dismissKeyguardOnNextActivity()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1309
    :goto_1
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1310
    .local v3, videoIntent:Landroid/content/Intent;
    const-string v4, "com.meizu.media.video"

    const-string v5, "com.meizu.media.video.experience.ExperienceVideoActivity"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1311
    const-string v4, "playSource"

    const/16 v5, 0xb

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1312
    const/high16 v4, 0x1000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1313
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$200(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1314
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mPlayVideoWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$2000(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    const-wide/16 v5, 0x1388

    invoke-virtual {v4, v5, v6}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 1315
    const-string v4, "demoTest"

    const-string v5, "receive DELAYED_PLAYVIDEO_ACTION and start playIntent"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1306
    .end local v3           #videoIntent:Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 1307
    .local v1, e:Landroid/os/RemoteException;
    const-string v4, "demoMode"

    const-string v5, "can\'t dismiss keyguard on launch"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
