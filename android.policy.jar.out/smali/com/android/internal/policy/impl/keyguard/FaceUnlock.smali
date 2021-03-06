.class public Lcom/android/internal/policy/impl/keyguard/FaceUnlock;
.super Ljava/lang/Object;
.source "FaceUnlock.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lcom/android/internal/policy/impl/keyguard/BiometricSensorUnlock;


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "FULLockscreen"


# instance fields
.field private final BACKUP_LOCK_TIMEOUT:I

.field private final MSG_CANCEL:I

.field private final MSG_POKE_WAKELOCK:I

.field private final MSG_REPORT_FAILED_ATTEMPT:I

.field private final MSG_SERVICE_CONNECTED:I

.field private final MSG_SERVICE_DISCONNECTED:I

.field private final MSG_UNLOCK:I

.field private mBoundToService:Z

.field private mConnection:Landroid/content/ServiceConnection;

.field private final mContext:Landroid/content/Context;

.field private final mFaceUnlockCallback:Lcom/android/internal/policy/IFaceLockCallback;

.field private mFaceUnlockView:Landroid/view/View;

.field private mHandler:Landroid/os/Handler;

.field private volatile mIsRunning:Z

.field mKeyguardScreenCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mService:Lcom/android/internal/policy/IFaceLockInterface;

.field private mServiceRunning:Z

.field private final mServiceRunningLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/FaceUnlock;->mServiceRunning:Z

    .line 49
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/FaceUnlock;->mServiceRunningLock:Ljava/lang/Object;

    .line 51
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/FaceUnlock;->mBoundToService:Z

    .line 55
    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/FaceUnlock;->MSG_SERVICE_CONNECTED:I

    .line 56
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/FaceUnlock;->MSG_SERVICE_DISCONNECTED:I

    .line 57
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/FaceUnlock;->MSG_UNLOCK:I

    .line 58
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/FaceUnlock;->MSG_CANCEL:I

    .line 59
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/FaceUnlock;->MSG_REPORT_FAILED_ATTEMPT:I

    .line 60
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/FaceUnlock;->MSG_POKE_WAKELOCK:I

    .line 65
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/FaceUnlock;->mIsRunning:Z

    .line 69
    const/16 v0, 0x1388

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/FaceUnlock;->BACKUP_LOCK_TIMEOUT:I

    .line 347
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/FaceUnlock$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/FaceUnlock$1;-><init>(Lcom/android/internal/policy/impl/keyguard/FaceUnlock;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/FaceUnlock;->mConnection:Landroid/content/ServiceConnection;

    .line 417
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/FaceUnlock$2;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/FaceUnlock$2;-><init>(Lcom/android/internal/policy/impl/keyguard/FaceUnlock;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/FaceUnlock;->mFaceUnlockCallback:Lcom/android/internal/policy/IFaceLockCallback;

    .line 78
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/FaceUnlock;->mContext:Landroid/content/Context;

    .line 79
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/FaceUnlock;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 80
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/FaceUnlock;->mHandler:Landroid/os/Handler;

    .line 81
    return-void
.end method

.method static synthetic access$002(Lcom/android/internal/policy/impl/keyguard/FaceUnlock;Lcom/android/internal/policy/IFaceLockInterface;)Lcom/android/internal/policy/IFaceLockInterface;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/FaceUnlock;->mService:Lcom/android/internal/policy/IFaceLockInterface;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/keyguard/FaceUnlock;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/FaceUnlock;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private startUi(Landroid/os/IBinder;IIII)V
    .locals 9
    .parameter "windowToken"
    .parameter "x"
    .parameter "y"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 371
    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/FaceUnlock;->mServiceRunningLock:Ljava/lang/Object;

    monitor-enter v8

    .line 372
    :try_start_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/FaceUnlock;->mServiceRunning:Z

    if-nez v0, :cond_0

    .line 373
    const-string v0, "FULLockscreen"

    const-string v1, "Starting Face Unlock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 375
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/FaceUnlock;->mService:Lcom/android/internal/policy/IFaceLockInterface;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/FaceUnlock;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricWeakLivelinessEnabled()Z

    move-result v6

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/policy/IFaceLockInterface;->startUi(Landroid/os/IBinder;IIIIZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 381
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/FaceUnlock;->mServiceRunning:Z

    .line 385
    :goto_0
    monitor-exit v8

    .line 386
    :goto_1
    return-void

    .line 377
    :catch_0
    move-exception v7

    .line 378
    .local v7, e:Landroid/os/RemoteException;
    const-string v0, "FULLockscreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Caught exception starting Face Unlock: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    monitor-exit v8

    goto :goto_1

    .line 385
    .end local v7           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 383
    :cond_0
    :try_start_3
    const-string v0, "FULLockscreen"

    const-string v1, "startUi() attempted while running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method private stopUi()V
    .locals 5

    .prologue
    .line 396
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/FaceUnlock;->mServiceRunningLock:Ljava/lang/Object;

    monitor-enter v2

    .line 397
    :try_start_0
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/FaceUnlock;->mServiceRunning:Z

    if-eqz v1, :cond_0

    .line 398
    const-string v1, "FULLockscreen"

    const-string v3, "Stopping Face Unlock"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 400
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/FaceUnlock;->mService:Lcom/android/internal/policy/IFaceLockInterface;

    invoke-interface {v1}, Lcom/android/internal/policy/IFaceLockInterface;->stopUi()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 404
    :goto_0
    const/4 v1, 0x0

    :try_start_2
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/FaceUnlock;->mServiceRunning:Z

    .line 411
    :cond_0
    monitor-exit v2

    .line 412
    return-void

    .line 401
    :catch_0
    move-exception v0

    .line 402
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "FULLockscreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Caught exception stopping Face Unlock: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 411
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/FaceUnlock;->mService:Lcom/android/internal/policy/IFaceLockInterface;

    if-eqz v0, :cond_0

    .line 187
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/FaceUnlock;->mService:Lcom/android/internal/policy/IFaceLockInterface;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/FaceUnlock;->mFaceUnlockCallback:Lcom/android/internal/policy/IFaceLockCallback;

    invoke-interface {v0, v1}, Lcom/android/internal/policy/IFaceLockInterface;->unregisterCallback(Lcom/android/internal/policy/IFaceLockCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    :goto_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/FaceUnlock;->stopUi()V

    .line 192
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/FaceUnlock;->mService:Lcom/android/internal/policy/IFaceLockInterface;

    .line 194
    :cond_0
    return-void

    .line 188
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getQuality()I
    .locals 1

    .prologue
    .line 200
    const v0, 0x8000

    return v0
.end method

.method handleCancel()V
    .locals 3

    .prologue
    .line 314
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/FaceUnlock;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->setAlternateUnlockEnabled(Z)V

    .line 316
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/FaceUnlock;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->showBackupSecurity()V

    .line 317
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/FaceUnlock;->stop()Z

    .line 318
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/FaceUnlock;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    const-wide/16 v1, 0x1388

    invoke-interface {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    .line 319
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 2
    .parameter "msg"

    .prologue
    .line 209
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 229
    const-string v0, "FULLockscreen"

    const-string v1, "Unhandled message"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    const/4 v0, 0x0

    .line 232
    :goto_0
    return v0

    .line 211
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/FaceUnlock;->handleServiceConnected()V

    .line 232
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 214
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/FaceUnlock;->handleServiceDisconnected()V

    goto :goto_1

    .line 217
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/FaceUnlock;->handleUnlock()V

    goto :goto_1

    .line 220
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/FaceUnlock;->handleCancel()V

    goto :goto_1

    .line 223
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/FaceUnlock;->handleReportFailedAttempt()V

    goto :goto_1

    .line 226
    :pswitch_5
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/FaceUnlock;->handlePokeWakelock(I)V

    goto :goto_1

    .line 209
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method handlePokeWakelock(I)V
    .locals 4
    .parameter "millis"

    .prologue
    .line 338
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/FaceUnlock;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 339
    .local v0, powerManager:Landroid/os/PowerManager;
    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 340
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/FaceUnlock;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    int-to-long v2, p1

    invoke-interface {v1, v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    .line 342
    :cond_0
    return-void
.end method

.method handleReportFailedAttempt()V
    .locals 2

    .prologue
    .line 328
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/FaceUnlock;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->setAlternateUnlockEnabled(Z)V

    .line 330
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/FaceUnlock;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->reportFailedUnlockAttempt()V

    .line 331
    return-void
.end method

.method handleServiceConnected()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 240
    const-string v0, "FULLockscreen"

    const-string v2, "handleServiceConnected()"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/FaceUnlock;->mBoundToService:Z

    if-nez v0, :cond_1

    .line 248
    const-string v0, "FULLockscreen"

    const-string v2, "Dropping startUi() in handleServiceConnected() because no longer bound"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    :cond_0
    :goto_0
    return-void

    .line 253
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/FaceUnlock;->mService:Lcom/android/internal/policy/IFaceLockInterface;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/FaceUnlock;->mFaceUnlockCallback:Lcom/android/internal/policy/IFaceLockCallback;

    invoke-interface {v0, v2}, Lcom/android/internal/policy/IFaceLockInterface;->registerCallback(Lcom/android/internal/policy/IFaceLockCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/FaceUnlock;->mFaceUnlockView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/FaceUnlock;->mFaceUnlockView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    .line 264
    .local v1, windowToken:Landroid/os/IBinder;
    if-eqz v1, :cond_2

    .line 268
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/FaceUnlock;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    const-wide/16 v2, 0x0

    invoke-interface {v0, v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    .line 271
    const/4 v0, 0x2

    new-array v7, v0, [I

    .line 272
    .local v7, position:[I
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/FaceUnlock;->mFaceUnlockView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->getLocationInWindow([I)V

    .line 273
    aget v2, v7, v4

    const/4 v0, 0x1

    aget v3, v7, v0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/FaceUnlock;->mFaceUnlockView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v4

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/FaceUnlock;->mFaceUnlockView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/keyguard/FaceUnlock;->startUi(Landroid/os/IBinder;IIII)V

    goto :goto_0

    .line 254
    .end local v1           #windowToken:Landroid/os/IBinder;
    .end local v7           #position:[I
    :catch_0
    move-exception v6

    .line 255
    .local v6, e:Landroid/os/RemoteException;
    const-string v0, "FULLockscreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Caught exception connecting to Face Unlock: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v6}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/FaceUnlock;->mService:Lcom/android/internal/policy/IFaceLockInterface;

    .line 257
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/FaceUnlock;->mBoundToService:Z

    .line 258
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/FaceUnlock;->mIsRunning:Z

    goto :goto_0

    .line 276
    .end local v6           #e:Landroid/os/RemoteException;
    .restart local v1       #windowToken:Landroid/os/IBinder;
    :cond_2
    const-string v0, "FULLockscreen"

    const-string v2, "windowToken is null in handleServiceConnected()"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method handleServiceDisconnected()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 286
    const-string v0, "FULLockscreen"

    const-string v1, "handleServiceDisconnected()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/FaceUnlock;->mServiceRunningLock:Ljava/lang/Object;

    monitor-enter v1

    .line 290
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/FaceUnlock;->mService:Lcom/android/internal/policy/IFaceLockInterface;

    .line 291
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/FaceUnlock;->mServiceRunning:Z

    .line 292
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 293
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/FaceUnlock;->mBoundToService:Z

    .line 294
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/FaceUnlock;->mIsRunning:Z

    .line 295
    return-void

    .line 292
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method handleUnlock()V
    .locals 2

    .prologue
    .line 302
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/FaceUnlock;->stop()Z

    .line 303
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/FaceUnlock;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->reportSuccessfulUnlockAttempt()V

    .line 304
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/FaceUnlock;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    .line 305
    return-void
.end method

.method public initializeView(Landroid/view/View;)V
    .locals 2
    .parameter "biometricUnlockView"

    .prologue
    .line 93
    const-string v0, "FULLockscreen"

    const-string v1, "initializeView()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/FaceUnlock;->mFaceUnlockView:Landroid/view/View;

    .line 95
    return-void
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/FaceUnlock;->mIsRunning:Z

    return v0
.end method

.method public setKeyguardCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;)V
    .locals 0
    .parameter "keyguardScreenCallback"

    .prologue
    .line 84
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/FaceUnlock;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    .line 85
    return-void
.end method

.method public start()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 119
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/FaceUnlock;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 120
    const-string v0, "FULLockscreen"

    const-string v1, "start() called off of the UI thread"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/FaceUnlock;->mIsRunning:Z

    if-eqz v0, :cond_1

    .line 124
    const-string v0, "FULLockscreen"

    const-string v1, "start() called when already running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/FaceUnlock;->mBoundToService:Z

    if-nez v0, :cond_2

    .line 128
    const-string v0, "FULLockscreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Binding to Face Unlock service for user="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/FaceUnlock;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/FaceUnlock;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/internal/policy/IFaceLockInterface;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/FaceUnlock;->mConnection:Landroid/content/ServiceConnection;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/FaceUnlock;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v3

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;II)Z

    .line 134
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/FaceUnlock;->mBoundToService:Z

    .line 139
    :goto_0
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/FaceUnlock;->mIsRunning:Z

    .line 140
    return v4

    .line 136
    :cond_2
    const-string v0, "FULLockscreen"

    const-string v1, "Attempt to bind to Face Unlock when already bound"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public stop()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 148
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/FaceUnlock;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v1, v2, :cond_0

    .line 149
    const-string v1, "FULLockscreen"

    const-string v2, "stop() called from non-UI thread"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/FaceUnlock;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 155
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/FaceUnlock;->mIsRunning:Z

    .line 157
    .local v0, mWasRunning:Z
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/FaceUnlock;->stopUi()V

    .line 159
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/FaceUnlock;->mBoundToService:Z

    if-eqz v1, :cond_2

    .line 160
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/FaceUnlock;->mService:Lcom/android/internal/policy/IFaceLockInterface;

    if-eqz v1, :cond_1

    .line 162
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/FaceUnlock;->mService:Lcom/android/internal/policy/IFaceLockInterface;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/FaceUnlock;->mFaceUnlockCallback:Lcom/android/internal/policy/IFaceLockCallback;

    invoke-interface {v1, v2}, Lcom/android/internal/policy/IFaceLockInterface;->unregisterCallback(Lcom/android/internal/policy/IFaceLockCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    :cond_1
    :goto_0
    const-string v1, "FULLockscreen"

    const-string v2, "Unbinding from Face Unlock service"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/FaceUnlock;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/FaceUnlock;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 169
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/FaceUnlock;->mBoundToService:Z

    .line 176
    :cond_2
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/FaceUnlock;->mIsRunning:Z

    .line 177
    return v0

    .line 163
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public stopAndShowBackup()V
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/FaceUnlock;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 110
    return-void
.end method
