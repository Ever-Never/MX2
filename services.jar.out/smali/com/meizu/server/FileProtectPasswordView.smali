.class public Lcom/meizu/server/FileProtectPasswordView;
.super Landroid/app/Dialog;
.source "FileProtectPasswordView.java"

# interfaces
.implements Lcom/meizu/widget/SystemLockView$OnPanelListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/server/FileProtectPasswordView$OnAddGlobalUlockFileListener;,
        Lcom/meizu/server/FileProtectPasswordView$ShowType;
    }
.end annotation


# static fields
.field private static final MSG_TIMEOUT:I = 0x64

.field private static final TAG:Ljava/lang/String; = "FileProtect"


# instance fields
.field private mDuration:I

.field private mExtraData:Lcom/meizu/server/FileProtectManagerService$FileProtectData;

.field private mFileProtectHandler:Landroid/os/Handler;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mNewPassword:Ljava/lang/String;

.field private mOnAddGlobalUlockFileListener:Lcom/meizu/server/FileProtectPasswordView$OnAddGlobalUlockFileListener;

.field private mPasswordView:Lcom/meizu/widget/SystemLockView;

.field private mService:Lcom/meizu/server/FileProtectManagerService;

.field private mTimeOutHandler:Landroid/os/Handler;

.field private mType:Lcom/meizu/server/FileProtectPasswordView$ShowType;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/meizu/server/FileProtectManagerService;Lcom/android/internal/widget/LockPatternUtils;Lcom/meizu/server/FileProtectPasswordView$ShowType;)V
    .locals 1
    .parameter "context"
    .parameter "theme"
    .parameter "service"
    .parameter "lockPatternUtils"
    .parameter "type"

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 42
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/meizu/server/FileProtectPasswordView;->mFileProtectHandler:Landroid/os/Handler;

    .line 44
    const-string v0, ""

    iput-object v0, p0, Lcom/meizu/server/FileProtectPasswordView;->mNewPassword:Ljava/lang/String;

    .line 49
    new-instance v0, Lcom/meizu/server/FileProtectPasswordView$1;

    invoke-direct {v0, p0}, Lcom/meizu/server/FileProtectPasswordView$1;-><init>(Lcom/meizu/server/FileProtectPasswordView;)V

    iput-object v0, p0, Lcom/meizu/server/FileProtectPasswordView;->mTimeOutHandler:Landroid/os/Handler;

    .line 61
    iput-object p3, p0, Lcom/meizu/server/FileProtectPasswordView;->mService:Lcom/meizu/server/FileProtectManagerService;

    .line 62
    iput-object p4, p0, Lcom/meizu/server/FileProtectPasswordView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 63
    iput-object p5, p0, Lcom/meizu/server/FileProtectPasswordView;->mType:Lcom/meizu/server/FileProtectPasswordView$ShowType;

    .line 64
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/server/FileProtectPasswordView;)Lcom/meizu/widget/SystemLockView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/meizu/server/FileProtectPasswordView;->mPasswordView:Lcom/meizu/widget/SystemLockView;

    return-object v0
.end method

.method private createLockView()Lcom/meizu/widget/SystemLockView;
    .locals 7

    .prologue
    const v6, 0x108021f

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 147
    new-instance v0, Lcom/meizu/widget/SystemLockView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/meizu/widget/SystemLockView;-><init>(Landroid/content/Context;)V

    .line 148
    .local v0, lockView:Lcom/meizu/widget/SystemLockView;
    invoke-virtual {v0, p0}, Lcom/meizu/widget/SystemLockView;->setPanelListener(Lcom/meizu/widget/SystemLockView$OnPanelListener;)V

    .line 149
    invoke-virtual {v0, v4}, Lcom/meizu/widget/SystemLockView;->setWidgetLayoutVisibility(Z)V

    .line 150
    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 152
    const v2, 0x108021e

    invoke-virtual {v0, v5, v2}, Lcom/meizu/widget/SystemLockView;->setKeyLeftButtonVisibility(ZI)V

    .line 154
    iget-object v2, p0, Lcom/meizu/server/FileProtectPasswordView;->mType:Lcom/meizu/server/FileProtectPasswordView$ShowType;

    sget-object v3, Lcom/meizu/server/FileProtectPasswordView$ShowType;->OPEN_PASSWORD:Lcom/meizu/server/FileProtectPasswordView$ShowType;

    if-ne v2, v3, :cond_0

    .line 155
    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Lcom/meizu/widget/SystemLockView;->setMaxLen(I)V

    .line 156
    invoke-virtual {v0, v4}, Lcom/meizu/widget/SystemLockView;->setHollowVisible(Z)V

    .line 157
    invoke-virtual {v0, v4, v4}, Lcom/meizu/widget/SystemLockView;->setInputTextButtonStat(II)V

    .line 158
    invoke-virtual {v0, v5}, Lcom/meizu/widget/SystemLockView;->setInputTextButtonVisibility(Z)V

    .line 159
    const v2, 0x1080220

    invoke-virtual {v0, v5, v2}, Lcom/meizu/widget/SystemLockView;->setKeyRightButtonVisibility(ZI)V

    .line 161
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1040620

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/meizu/widget/SystemLockView;->setTip(Ljava/lang/String;)V

    .line 182
    :goto_0
    return-object v0

    .line 163
    :cond_0
    iget-object v2, p0, Lcom/meizu/server/FileProtectPasswordView;->mType:Lcom/meizu/server/FileProtectPasswordView$ShowType;

    sget-object v3, Lcom/meizu/server/FileProtectPasswordView$ShowType;->ENSURE_PASSWORD:Lcom/meizu/server/FileProtectPasswordView$ShowType;

    if-ne v2, v3, :cond_1

    .line 164
    iget-object v2, p0, Lcom/meizu/server/FileProtectPasswordView;->mNewPassword:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/meizu/widget/SystemLockView;->setMaxLen(I)V

    .line 165
    invoke-virtual {v0, v5}, Lcom/meizu/widget/SystemLockView;->setHollowVisible(Z)V

    .line 166
    invoke-virtual {v0, v4}, Lcom/meizu/widget/SystemLockView;->setInputTextButtonVisibility(Z)V

    .line 167
    invoke-virtual {v0, v5, v6}, Lcom/meizu/widget/SystemLockView;->setKeyRightButtonVisibility(ZI)V

    .line 169
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1040621

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/meizu/widget/SystemLockView;->setTip(Ljava/lang/String;)V

    goto :goto_0

    .line 172
    :cond_1
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "meizu_password_length"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 174
    .local v1, maxLen:I
    invoke-virtual {v0, v1}, Lcom/meizu/widget/SystemLockView;->setMaxLen(I)V

    .line 175
    invoke-virtual {v0, v4}, Lcom/meizu/widget/SystemLockView;->setInputTextButtonVisibility(Z)V

    .line 176
    invoke-virtual {v0, v5}, Lcom/meizu/widget/SystemLockView;->setHollowVisible(Z)V

    .line 177
    invoke-virtual {v0, v5, v6}, Lcom/meizu/widget/SystemLockView;->setKeyRightButtonVisibility(ZI)V

    .line 179
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x104061f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/meizu/widget/SystemLockView;->setTip(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private pokeWakeLocked()V
    .locals 4

    .prologue
    .line 345
    monitor-enter p0

    .line 346
    :try_start_0
    iget-object v0, p0, Lcom/meizu/server/FileProtectPasswordView;->mTimeOutHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 347
    iget v0, p0, Lcom/meizu/server/FileProtectPasswordView;->mDuration:I

    if-nez v0, :cond_1

    .line 348
    iget-object v0, p0, Lcom/meizu/server/FileProtectPasswordView;->mTimeOutHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 352
    :cond_0
    :goto_0
    monitor-exit p0

    .line 353
    return-void

    .line 349
    :cond_1
    iget v0, p0, Lcom/meizu/server/FileProtectPasswordView;->mDuration:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 350
    iget-object v0, p0, Lcom/meizu/server/FileProtectPasswordView;->mTimeOutHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 352
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public dimissSuccess()V
    .locals 3

    .prologue
    .line 140
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 141
    iget-object v0, p0, Lcom/meizu/server/FileProtectPasswordView;->mTimeOutHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 142
    const-string v0, "FileProtect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Success] I am dismissed because of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/server/FileProtectPasswordView;->mType:Lcom/meizu/server/FileProtectPasswordView$ShowType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-object v0, p0, Lcom/meizu/server/FileProtectPasswordView;->mService:Lcom/meizu/server/FileProtectManagerService;

    invoke-virtual {v0}, Lcom/meizu/server/FileProtectManagerService;->OnDismiss()V

    .line 144
    return-void
.end method

.method public dismiss()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 101
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 102
    iget-object v1, p0, Lcom/meizu/server/FileProtectPasswordView;->mTimeOutHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 104
    const-string v1, "FileProtect"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "I am dismissed because of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/meizu/server/FileProtectPasswordView;->mType:Lcom/meizu/server/FileProtectPasswordView$ShowType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-object v1, p0, Lcom/meizu/server/FileProtectPasswordView;->mType:Lcom/meizu/server/FileProtectPasswordView$ShowType;

    sget-object v2, Lcom/meizu/server/FileProtectPasswordView$ShowType;->REQUEST_GRANTED:Lcom/meizu/server/FileProtectPasswordView$ShowType;

    if-ne v1, v2, :cond_1

    .line 106
    iget-object v1, p0, Lcom/meizu/server/FileProtectPasswordView;->mService:Lcom/meizu/server/FileProtectManagerService;

    iget-object v2, p0, Lcom/meizu/server/FileProtectPasswordView;->mExtraData:Lcom/meizu/server/FileProtectManagerService$FileProtectData;

    iget v2, v2, Lcom/meizu/server/FileProtectManagerService$FileProtectData;->pid:I

    invoke-virtual {v1, v2}, Lcom/meizu/server/FileProtectManagerService;->isPidGrantedLocked(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 108
    :try_start_0
    iget-object v1, p0, Lcom/meizu/server/FileProtectPasswordView;->mExtraData:Lcom/meizu/server/FileProtectManagerService$FileProtectData;

    iget-object v1, v1, Lcom/meizu/server/FileProtectManagerService$FileProtectData;->notifier:Lmeizu/app/INotifier;

    invoke-interface {v1}, Lmeizu/app/INotifier;->notifyFailedGranted()V

    .line 109
    const-string v1, "FileProtect"

    const-string v2, "notifyFailedGranted after dismissed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/meizu/server/FileProtectPasswordView;->mService:Lcom/meizu/server/FileProtectManagerService;

    invoke-virtual {v1}, Lcom/meizu/server/FileProtectManagerService;->OnDismiss()V

    .line 137
    return-void

    .line 110
    :catch_0
    move-exception v0

    .line 111
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 115
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    iget-object v1, p0, Lcom/meizu/server/FileProtectPasswordView;->mType:Lcom/meizu/server/FileProtectPasswordView$ShowType;

    sget-object v2, Lcom/meizu/server/FileProtectPasswordView$ShowType;->CHECK_PASSWORD:Lcom/meizu/server/FileProtectPasswordView$ShowType;

    if-ne v1, v2, :cond_2

    .line 117
    :try_start_1
    iget-object v1, p0, Lcom/meizu/server/FileProtectPasswordView;->mExtraData:Lcom/meizu/server/FileProtectManagerService$FileProtectData;

    iget-object v1, v1, Lcom/meizu/server/FileProtectManagerService$FileProtectData;->notifier:Lmeizu/app/INotifier;

    if-eqz v1, :cond_0

    .line 118
    iget-object v1, p0, Lcom/meizu/server/FileProtectPasswordView;->mExtraData:Lcom/meizu/server/FileProtectManagerService$FileProtectData;

    iget-object v1, v1, Lcom/meizu/server/FileProtectManagerService$FileProtectData;->notifier:Lmeizu/app/INotifier;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lmeizu/app/INotifier;->OnPasswordChecked(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 120
    :catch_1
    move-exception v0

    .line 121
    .restart local v0       #e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 123
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_2
    iget-object v1, p0, Lcom/meizu/server/FileProtectPasswordView;->mType:Lcom/meizu/server/FileProtectPasswordView$ShowType;

    sget-object v2, Lcom/meizu/server/FileProtectPasswordView$ShowType;->OPEN_PASSWORD:Lcom/meizu/server/FileProtectPasswordView$ShowType;

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Lcom/meizu/server/FileProtectPasswordView;->mType:Lcom/meizu/server/FileProtectPasswordView$ShowType;

    sget-object v2, Lcom/meizu/server/FileProtectPasswordView$ShowType;->ENSURE_PASSWORD:Lcom/meizu/server/FileProtectPasswordView$ShowType;

    if-ne v1, v2, :cond_4

    .line 125
    :cond_3
    :try_start_2
    iget-object v1, p0, Lcom/meizu/server/FileProtectPasswordView;->mExtraData:Lcom/meizu/server/FileProtectManagerService$FileProtectData;

    iget-object v1, v1, Lcom/meizu/server/FileProtectManagerService$FileProtectData;->notifier:Lmeizu/app/INotifier;

    if-eqz v1, :cond_0

    .line 126
    iget-object v1, p0, Lcom/meizu/server/FileProtectPasswordView;->mExtraData:Lcom/meizu/server/FileProtectManagerService$FileProtectData;

    iget-object v1, v1, Lcom/meizu/server/FileProtectManagerService$FileProtectData;->notifier:Lmeizu/app/INotifier;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lmeizu/app/INotifier;->OnPasswordOpened(Z)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 128
    :catch_2
    move-exception v0

    .line 129
    .restart local v0       #e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 131
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_4
    iget-object v1, p0, Lcom/meizu/server/FileProtectPasswordView;->mType:Lcom/meizu/server/FileProtectPasswordView$ShowType;

    sget-object v2, Lcom/meizu/server/FileProtectPasswordView$ShowType;->ADD_GLOBAL_UNLOCK_FILE:Lcom/meizu/server/FileProtectPasswordView$ShowType;

    if-ne v1, v2, :cond_0

    .line 132
    iget-object v1, p0, Lcom/meizu/server/FileProtectPasswordView;->mOnAddGlobalUlockFileListener:Lcom/meizu/server/FileProtectPasswordView$OnAddGlobalUlockFileListener;

    if-eqz v1, :cond_0

    .line 133
    iget-object v1, p0, Lcom/meizu/server/FileProtectPasswordView;->mOnAddGlobalUlockFileListener:Lcom/meizu/server/FileProtectPasswordView$OnAddGlobalUlockFileListener;

    iget-object v2, p0, Lcom/meizu/server/FileProtectPasswordView;->mExtraData:Lcom/meizu/server/FileProtectManagerService$FileProtectData;

    invoke-interface {v1, v4, v2}, Lcom/meizu/server/FileProtectPasswordView$OnAddGlobalUlockFileListener;->onResult(ZLjava/lang/Object;)V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 95
    invoke-super {p0}, Landroid/app/Dialog;->onBackPressed()V

    .line 96
    return-void
.end method

.method public onCellAdded(Ljava/lang/String;)V
    .locals 0
    .parameter "password"

    .prologue
    .line 192
    invoke-direct {p0}, Lcom/meizu/server/FileProtectPasswordView;->pokeWakeLocked()V

    .line 193
    return-void
.end method

.method public onCellCleared(Ljava/lang/String;)V
    .locals 0
    .parameter "password"

    .prologue
    .line 187
    invoke-direct {p0}, Lcom/meizu/server/FileProtectPasswordView;->pokeWakeLocked()V

    .line 188
    return-void
.end method

.method public onCellFhish(Ljava/lang/String;)V
    .locals 8
    .parameter "password"

    .prologue
    const v7, 0x104061e

    const/4 v6, 0x1

    .line 203
    const-string v3, "FileProtect"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCellFhish and type is  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/meizu/server/FileProtectPasswordView;->mType:Lcom/meizu/server/FileProtectPasswordView$ShowType;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iget-object v3, p0, Lcom/meizu/server/FileProtectPasswordView;->mType:Lcom/meizu/server/FileProtectPasswordView$ShowType;

    sget-object v4, Lcom/meizu/server/FileProtectPasswordView$ShowType;->REQUEST_GRANTED:Lcom/meizu/server/FileProtectPasswordView$ShowType;

    if-ne v3, v4, :cond_3

    .line 206
    iget-object v3, p0, Lcom/meizu/server/FileProtectPasswordView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3, p1}, Lcom/android/internal/widget/LockPatternUtils;->checkPassword(Ljava/lang/String;)Z

    move-result v2

    .line 207
    .local v2, result:Z
    if-eqz v2, :cond_2

    .line 208
    iget-object v3, p0, Lcom/meizu/server/FileProtectPasswordView;->mService:Lcom/meizu/server/FileProtectManagerService;

    iget-object v4, p0, Lcom/meizu/server/FileProtectPasswordView;->mExtraData:Lcom/meizu/server/FileProtectManagerService$FileProtectData;

    iget v4, v4, Lcom/meizu/server/FileProtectManagerService$FileProtectData;->pid:I

    iget-object v5, p0, Lcom/meizu/server/FileProtectPasswordView;->mExtraData:Lcom/meizu/server/FileProtectManagerService$FileProtectData;

    iget-object v5, v5, Lcom/meizu/server/FileProtectManagerService$FileProtectData;->notifier:Lmeizu/app/INotifier;

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/meizu/server/FileProtectManagerService;->addPidLocked(ILmeizu/app/INotifier;Z)V

    .line 210
    :try_start_0
    const-string v3, "FileProtect"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCellFhish success. add info, pid is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/meizu/server/FileProtectPasswordView;->mExtraData:Lcom/meizu/server/FileProtectManagerService$FileProtectData;

    iget v5, v5, Lcom/meizu/server/FileProtectManagerService$FileProtectData;->pid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", notifier is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/meizu/server/FileProtectPasswordView;->mExtraData:Lcom/meizu/server/FileProtectManagerService$FileProtectData;

    iget-object v5, v5, Lcom/meizu/server/FileProtectManagerService$FileProtectData;->notifier:Lmeizu/app/INotifier;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    iget-object v3, p0, Lcom/meizu/server/FileProtectPasswordView;->mExtraData:Lcom/meizu/server/FileProtectManagerService$FileProtectData;

    iget-object v3, v3, Lcom/meizu/server/FileProtectManagerService$FileProtectData;->notifier:Lmeizu/app/INotifier;

    if-eqz v3, :cond_0

    .line 212
    iget-object v3, p0, Lcom/meizu/server/FileProtectPasswordView;->mExtraData:Lcom/meizu/server/FileProtectManagerService$FileProtectData;

    iget-object v3, v3, Lcom/meizu/server/FileProtectManagerService$FileProtectData;->notifier:Lmeizu/app/INotifier;

    invoke-interface {v3}, Lmeizu/app/INotifier;->notifyCompleteGranted()V

    .line 213
    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 214
    const-string v3, "FileProtect"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCellFhish and dismiss dialog: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/meizu/server/FileProtectPasswordView;->mType:Lcom/meizu/server/FileProtectPasswordView$ShowType;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    invoke-virtual {p0}, Lcom/meizu/server/FileProtectPasswordView;->dimissSuccess()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 284
    .end local v2           #result:Z
    :cond_1
    :goto_0
    return-void

    .line 217
    .restart local v2       #result:Z
    :catch_0
    move-exception v0

    .line 218
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 221
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_2
    iget-object v3, p0, Lcom/meizu/server/FileProtectPasswordView;->mPasswordView:Lcom/meizu/widget/SystemLockView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/meizu/widget/SystemLockView;->setTip(Ljava/lang/String;)V

    .line 223
    iget-object v3, p0, Lcom/meizu/server/FileProtectPasswordView;->mPasswordView:Lcom/meizu/widget/SystemLockView;

    invoke-virtual {v3, v6}, Lcom/meizu/widget/SystemLockView;->clearCell(Z)V

    goto :goto_0

    .line 225
    .end local v2           #result:Z
    :cond_3
    iget-object v3, p0, Lcom/meizu/server/FileProtectPasswordView;->mType:Lcom/meizu/server/FileProtectPasswordView$ShowType;

    sget-object v4, Lcom/meizu/server/FileProtectPasswordView$ShowType;->CHECK_PASSWORD:Lcom/meizu/server/FileProtectPasswordView$ShowType;

    if-ne v3, v4, :cond_6

    .line 226
    iget-object v3, p0, Lcom/meizu/server/FileProtectPasswordView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3, p1}, Lcom/android/internal/widget/LockPatternUtils;->checkPassword(Ljava/lang/String;)Z

    move-result v2

    .line 227
    .restart local v2       #result:Z
    if-eqz v2, :cond_5

    .line 229
    :try_start_1
    iget-object v3, p0, Lcom/meizu/server/FileProtectPasswordView;->mExtraData:Lcom/meizu/server/FileProtectManagerService$FileProtectData;

    iget-object v3, v3, Lcom/meizu/server/FileProtectManagerService$FileProtectData;->notifier:Lmeizu/app/INotifier;

    if-eqz v3, :cond_4

    .line 230
    iget-object v3, p0, Lcom/meizu/server/FileProtectPasswordView;->mExtraData:Lcom/meizu/server/FileProtectManagerService$FileProtectData;

    iget-object v3, v3, Lcom/meizu/server/FileProtectManagerService$FileProtectData;->notifier:Lmeizu/app/INotifier;

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Lmeizu/app/INotifier;->OnPasswordChecked(Z)V

    .line 231
    :cond_4
    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 232
    const-string v3, "FileProtect"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCellFhish and dismiss dialog: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/meizu/server/FileProtectPasswordView;->mType:Lcom/meizu/server/FileProtectPasswordView$ShowType;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    invoke-virtual {p0}, Lcom/meizu/server/FileProtectPasswordView;->dimissSuccess()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 235
    :catch_1
    move-exception v0

    .line 236
    .restart local v0       #e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 239
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_5
    iget-object v3, p0, Lcom/meizu/server/FileProtectPasswordView;->mPasswordView:Lcom/meizu/widget/SystemLockView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/meizu/widget/SystemLockView;->setTip(Ljava/lang/String;)V

    .line 241
    iget-object v3, p0, Lcom/meizu/server/FileProtectPasswordView;->mPasswordView:Lcom/meizu/widget/SystemLockView;

    invoke-virtual {v3, v6}, Lcom/meizu/widget/SystemLockView;->clearCell(Z)V

    goto :goto_0

    .line 243
    .end local v2           #result:Z
    :cond_6
    iget-object v3, p0, Lcom/meizu/server/FileProtectPasswordView;->mType:Lcom/meizu/server/FileProtectPasswordView$ShowType;

    sget-object v4, Lcom/meizu/server/FileProtectPasswordView$ShowType;->ENSURE_PASSWORD:Lcom/meizu/server/FileProtectPasswordView$ShowType;

    if-ne v3, v4, :cond_9

    .line 244
    if-eqz p1, :cond_8

    iget-object v3, p0, Lcom/meizu/server/FileProtectPasswordView;->mNewPassword:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 245
    iget-object v3, p0, Lcom/meizu/server/FileProtectPasswordView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/high16 v4, 0x2

    invoke-virtual {v3, p1, v4}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPassword(Ljava/lang/String;I)V

    .line 247
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "meizu_password_length"

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 250
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.ACCESS_CONTROL_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 251
    .local v1, intent_access:Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 254
    :try_start_2
    iget-object v3, p0, Lcom/meizu/server/FileProtectPasswordView;->mExtraData:Lcom/meizu/server/FileProtectManagerService$FileProtectData;

    iget-object v3, v3, Lcom/meizu/server/FileProtectManagerService$FileProtectData;->notifier:Lmeizu/app/INotifier;

    if-eqz v3, :cond_7

    .line 255
    iget-object v3, p0, Lcom/meizu/server/FileProtectPasswordView;->mExtraData:Lcom/meizu/server/FileProtectManagerService$FileProtectData;

    iget-object v3, v3, Lcom/meizu/server/FileProtectManagerService$FileProtectData;->notifier:Lmeizu/app/INotifier;

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Lmeizu/app/INotifier;->OnPasswordOpened(Z)V

    .line 256
    :cond_7
    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 257
    const-string v3, "FileProtect"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCellFhish and dismiss dialog: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/meizu/server/FileProtectPasswordView;->mType:Lcom/meizu/server/FileProtectPasswordView$ShowType;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    invoke-virtual {p0}, Lcom/meizu/server/FileProtectPasswordView;->dimissSuccess()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 260
    :catch_2
    move-exception v0

    .line 261
    .restart local v0       #e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    .line 264
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v1           #intent_access:Landroid/content/Intent;
    :cond_8
    iget-object v3, p0, Lcom/meizu/server/FileProtectPasswordView;->mPasswordView:Lcom/meizu/widget/SystemLockView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1040622

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/meizu/widget/SystemLockView;->setTip(Ljava/lang/String;)V

    .line 266
    iget-object v3, p0, Lcom/meizu/server/FileProtectPasswordView;->mPasswordView:Lcom/meizu/widget/SystemLockView;

    invoke-virtual {v3, v6}, Lcom/meizu/widget/SystemLockView;->clearCell(Z)V

    goto/16 :goto_0

    .line 268
    :cond_9
    iget-object v3, p0, Lcom/meizu/server/FileProtectPasswordView;->mType:Lcom/meizu/server/FileProtectPasswordView$ShowType;

    sget-object v4, Lcom/meizu/server/FileProtectPasswordView$ShowType;->ADD_GLOBAL_UNLOCK_FILE:Lcom/meizu/server/FileProtectPasswordView$ShowType;

    if-ne v3, v4, :cond_1

    .line 269
    iget-object v3, p0, Lcom/meizu/server/FileProtectPasswordView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3, p1}, Lcom/android/internal/widget/LockPatternUtils;->checkPassword(Ljava/lang/String;)Z

    move-result v2

    .line 270
    .restart local v2       #result:Z
    if-eqz v2, :cond_b

    .line 271
    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 272
    const-string v3, "FileProtect"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCellFhish and dismiss dialog: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/meizu/server/FileProtectPasswordView;->mType:Lcom/meizu/server/FileProtectPasswordView$ShowType;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    invoke-virtual {p0}, Lcom/meizu/server/FileProtectPasswordView;->dimissSuccess()V

    .line 275
    :cond_a
    iget-object v3, p0, Lcom/meizu/server/FileProtectPasswordView;->mOnAddGlobalUlockFileListener:Lcom/meizu/server/FileProtectPasswordView$OnAddGlobalUlockFileListener;

    if-eqz v3, :cond_1

    .line 276
    iget-object v3, p0, Lcom/meizu/server/FileProtectPasswordView;->mOnAddGlobalUlockFileListener:Lcom/meizu/server/FileProtectPasswordView$OnAddGlobalUlockFileListener;

    iget-object v4, p0, Lcom/meizu/server/FileProtectPasswordView;->mExtraData:Lcom/meizu/server/FileProtectManagerService$FileProtectData;

    invoke-interface {v3, v6, v4}, Lcom/meizu/server/FileProtectPasswordView$OnAddGlobalUlockFileListener;->onResult(ZLjava/lang/Object;)V

    goto/16 :goto_0

    .line 279
    :cond_b
    iget-object v3, p0, Lcom/meizu/server/FileProtectPasswordView;->mPasswordView:Lcom/meizu/widget/SystemLockView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/meizu/widget/SystemLockView;->setTip(Ljava/lang/String;)V

    .line 281
    iget-object v3, p0, Lcom/meizu/server/FileProtectPasswordView;->mPasswordView:Lcom/meizu/widget/SystemLockView;

    invoke-virtual {v3, v6}, Lcom/meizu/widget/SystemLockView;->clearCell(Z)V

    goto/16 :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/meizu/server/FileProtectPasswordView;->createLockView()Lcom/meizu/widget/SystemLockView;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/server/FileProtectPasswordView;->mPasswordView:Lcom/meizu/widget/SystemLockView;

    .line 84
    iget-object v2, p0, Lcom/meizu/server/FileProtectPasswordView;->mPasswordView:Lcom/meizu/widget/SystemLockView;

    invoke-virtual {p0, v2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 85
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 86
    .local v1, window:Landroid/view/Window;
    const/16 v2, 0x53

    invoke-virtual {v1, v2}, Landroid/view/Window;->setGravity(I)V

    .line 87
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 88
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    const/16 v2, 0x7d3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 89
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v2, v2, 0x800

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 90
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 91
    return-void
.end method

.method public onInputTextButtonClick(Ljava/lang/String;)V
    .locals 2
    .parameter "password"

    .prologue
    .line 298
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 299
    invoke-direct {p0}, Lcom/meizu/server/FileProtectPasswordView;->pokeWakeLocked()V

    .line 300
    iget-object v0, p0, Lcom/meizu/server/FileProtectPasswordView;->mPasswordView:Lcom/meizu/widget/SystemLockView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/meizu/widget/SystemLockView;->clearCell(Z)V

    .line 302
    :cond_0
    return-void
.end method

.method public onKeyLeftButtonClick(Ljava/lang/String;)V
    .locals 4
    .parameter "password"

    .prologue
    .line 306
    invoke-direct {p0}, Lcom/meizu/server/FileProtectPasswordView;->pokeWakeLocked()V

    .line 307
    iget-object v0, p0, Lcom/meizu/server/FileProtectPasswordView;->mFileProtectHandler:Landroid/os/Handler;

    new-instance v1, Lcom/meizu/server/FileProtectPasswordView$2;

    invoke-direct {v1, p0}, Lcom/meizu/server/FileProtectPasswordView$2;-><init>(Lcom/meizu/server/FileProtectPasswordView;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 313
    return-void
.end method

.method public onKeyRightButtonClick(Ljava/lang/String;)V
    .locals 3
    .parameter "password"

    .prologue
    const/4 v2, 0x1

    .line 317
    invoke-direct {p0}, Lcom/meizu/server/FileProtectPasswordView;->pokeWakeLocked()V

    .line 318
    iget-object v0, p0, Lcom/meizu/server/FileProtectPasswordView;->mType:Lcom/meizu/server/FileProtectPasswordView$ShowType;

    sget-object v1, Lcom/meizu/server/FileProtectPasswordView$ShowType;->OPEN_PASSWORD:Lcom/meizu/server/FileProtectPasswordView$ShowType;

    if-ne v0, v1, :cond_2

    .line 319
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 342
    :cond_0
    :goto_0
    return-void

    .line 322
    :cond_1
    iput-object p1, p0, Lcom/meizu/server/FileProtectPasswordView;->mNewPassword:Ljava/lang/String;

    .line 323
    sget-object v0, Lcom/meizu/server/FileProtectPasswordView$ShowType;->ENSURE_PASSWORD:Lcom/meizu/server/FileProtectPasswordView$ShowType;

    iput-object v0, p0, Lcom/meizu/server/FileProtectPasswordView;->mType:Lcom/meizu/server/FileProtectPasswordView$ShowType;

    .line 324
    iget-object v0, p0, Lcom/meizu/server/FileProtectPasswordView;->mPasswordView:Lcom/meizu/widget/SystemLockView;

    invoke-virtual {v0, v2}, Lcom/meizu/widget/SystemLockView;->clearCell(Z)V

    .line 325
    iget-object v0, p0, Lcom/meizu/server/FileProtectPasswordView;->mPasswordView:Lcom/meizu/widget/SystemLockView;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/meizu/widget/SystemLockView;->setMaxLen(I)V

    .line 326
    iget-object v0, p0, Lcom/meizu/server/FileProtectPasswordView;->mPasswordView:Lcom/meizu/widget/SystemLockView;

    invoke-virtual {v0, v2}, Lcom/meizu/widget/SystemLockView;->setHollowVisible(Z)V

    .line 327
    iget-object v0, p0, Lcom/meizu/server/FileProtectPasswordView;->mPasswordView:Lcom/meizu/widget/SystemLockView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/meizu/widget/SystemLockView;->setInputTextButtonVisibility(Z)V

    .line 328
    iget-object v0, p0, Lcom/meizu/server/FileProtectPasswordView;->mPasswordView:Lcom/meizu/widget/SystemLockView;

    const v1, 0x108021f

    invoke-virtual {v0, v2, v1}, Lcom/meizu/widget/SystemLockView;->setKeyRightButtonVisibility(ZI)V

    .line 330
    iget-object v0, p0, Lcom/meizu/server/FileProtectPasswordView;->mPasswordView:Lcom/meizu/widget/SystemLockView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040621

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/widget/SystemLockView;->setTip(Ljava/lang/String;)V

    goto :goto_0

    .line 333
    :cond_2
    iget-object v0, p0, Lcom/meizu/server/FileProtectPasswordView;->mFileProtectHandler:Landroid/os/Handler;

    new-instance v1, Lcom/meizu/server/FileProtectPasswordView$3;

    invoke-direct {v1, p0, p1}, Lcom/meizu/server/FileProtectPasswordView$3;-><init>(Lcom/meizu/server/FileProtectPasswordView;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onLeftButtonClick(Ljava/lang/String;)V
    .locals 0
    .parameter "password"

    .prologue
    .line 289
    return-void
.end method

.method public onRightButtonClick(Ljava/lang/String;)V
    .locals 0
    .parameter "password"

    .prologue
    .line 294
    return-void
.end method

.method public setExtraData(Ljava/lang/Object;)V
    .locals 0
    .parameter "data"

    .prologue
    .line 73
    check-cast p1, Lcom/meizu/server/FileProtectManagerService$FileProtectData;

    .end local p1
    iput-object p1, p0, Lcom/meizu/server/FileProtectPasswordView;->mExtraData:Lcom/meizu/server/FileProtectManagerService$FileProtectData;

    .line 74
    return-void
.end method

.method public setOnAddGlobalUlockFileListener(Lcom/meizu/server/FileProtectPasswordView$OnAddGlobalUlockFileListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 77
    iput-object p1, p0, Lcom/meizu/server/FileProtectPasswordView;->mOnAddGlobalUlockFileListener:Lcom/meizu/server/FileProtectPasswordView$OnAddGlobalUlockFileListener;

    .line 78
    return-void
.end method

.method public show(I)V
    .locals 0
    .parameter "duration"

    .prologue
    .line 67
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 68
    iput p1, p0, Lcom/meizu/server/FileProtectPasswordView;->mDuration:I

    .line 69
    invoke-direct {p0}, Lcom/meizu/server/FileProtectPasswordView;->pokeWakeLocked()V

    .line 70
    return-void
.end method
