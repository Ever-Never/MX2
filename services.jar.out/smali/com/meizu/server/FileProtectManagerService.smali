.class public Lcom/meizu/server/FileProtectManagerService;
.super Lmeizu/app/IFileProtect$Stub;
.source "FileProtectManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/server/FileProtectManagerService$PathsContentObserver;,
        Lcom/meizu/server/FileProtectManagerService$FileProtectData;
    }
.end annotation


# static fields
.field private static final EXTERNAL_DIR:Ljava/lang/String; = null

.field public static final EXTERNAL_DIR_END_WITH_DIV:Ljava/lang/String; = null

#the value of this static final field might be set in the static constructor
.field private static final EXTERNAL_LEN:I = 0x0

.field private static final MSG_ADD_GLOBAL_UNLOCK_FILE:I = 0x6a

.field private static final MSG_CHECK_PASSWORD:I = 0x67

.field private static final MSG_GRANTED_EXPIRED:I = 0x69

.field private static final MSG_LOCKED_PATHS_CHANGED:I = 0x64

.field private static final MSG_OPEN_PASSWORD:I = 0x68

.field private static final MSG_PASSWORD_CHANGED:I = 0x65

.field private static final MSG_REQUEST_GRANTED:I = 0x66

.field private static final PATHS_FILE:Ljava/lang/String; = "/proc/fp_config/protected_list"

.field private static final PIDS_FILE:Ljava/lang/String; = "/proc/fp_config/granted_pids"

.field private static final TAG:Ljava/lang/String; = "FileProtect"


# instance fields
.field private mActivityManager:Landroid/app/IActivityManager;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mDialog:Lcom/meizu/server/FileProtectPasswordView;

.field private mGlobalUnlockFileSet:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mGrantedPids:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lmeizu/app/INotifier;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mPasswordEnable:Z

.field private mPathsContentObserver:Landroid/database/ContentObserver;

.field private mProcessObserver:Landroid/app/IProcessObserver;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSilentGrantedPids:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lmeizu/app/INotifier;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 594
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectoryMzInternal()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/meizu/server/FileProtectManagerService;->EXTERNAL_DIR:Ljava/lang/String;

    .line 596
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/meizu/server/FileProtectManagerService;->EXTERNAL_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/meizu/server/FileProtectManagerService;->EXTERNAL_DIR_END_WITH_DIV:Ljava/lang/String;

    .line 597
    sget-object v0, Lcom/meizu/server/FileProtectManagerService;->EXTERNAL_DIR_END_WITH_DIV:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lcom/meizu/server/FileProtectManagerService;->EXTERNAL_LEN:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/IActivityManager;)V
    .locals 1
    .parameter "context"
    .parameter "activityManager"

    .prologue
    .line 104
    invoke-direct {p0}, Lmeizu/app/IFileProtect$Stub;-><init>()V

    .line 92
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/meizu/server/FileProtectManagerService;->mGrantedPids:Ljava/util/HashMap;

    .line 97
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/meizu/server/FileProtectManagerService;->mSilentGrantedPids:Ljava/util/HashMap;

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/server/FileProtectManagerService;->mGlobalUnlockFileSet:Ljava/util/ArrayList;

    .line 518
    new-instance v0, Lcom/meizu/server/FileProtectManagerService$2;

    invoke-direct {v0, p0}, Lcom/meizu/server/FileProtectManagerService$2;-><init>(Lcom/meizu/server/FileProtectManagerService;)V

    iput-object v0, p0, Lcom/meizu/server/FileProtectManagerService;->mHandler:Landroid/os/Handler;

    .line 560
    new-instance v0, Lcom/meizu/server/FileProtectManagerService$3;

    invoke-direct {v0, p0}, Lcom/meizu/server/FileProtectManagerService$3;-><init>(Lcom/meizu/server/FileProtectManagerService;)V

    iput-object v0, p0, Lcom/meizu/server/FileProtectManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 578
    new-instance v0, Lcom/meizu/server/FileProtectManagerService$4;

    invoke-direct {v0, p0}, Lcom/meizu/server/FileProtectManagerService$4;-><init>(Lcom/meizu/server/FileProtectManagerService;)V

    iput-object v0, p0, Lcom/meizu/server/FileProtectManagerService;->mProcessObserver:Landroid/app/IProcessObserver;

    .line 105
    iput-object p1, p0, Lcom/meizu/server/FileProtectManagerService;->mContext:Landroid/content/Context;

    .line 106
    iput-object p2, p0, Lcom/meizu/server/FileProtectManagerService;->mActivityManager:Landroid/app/IActivityManager;

    .line 107
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/server/FileProtectManagerService;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/meizu/server/FileProtectManagerService;->mGlobalUnlockFileSet:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/meizu/server/FileProtectManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/meizu/server/FileProtectManagerService;->setAllPaths()V

    return-void
.end method

.method static synthetic access$1000(Lcom/meizu/server/FileProtectManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/meizu/server/FileProtectManagerService;->handlerGrantedExpired()V

    return-void
.end method

.method static synthetic access$1100(Lcom/meizu/server/FileProtectManagerService;Lcom/meizu/server/FileProtectManagerService$FileProtectData;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/meizu/server/FileProtectManagerService;->handleAddGlobalUnlockFile(Lcom/meizu/server/FileProtectManagerService$FileProtectData;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/meizu/server/FileProtectManagerService;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/meizu/server/FileProtectManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$200(Lcom/meizu/server/FileProtectManagerService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/meizu/server/FileProtectManagerService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/meizu/server/FileProtectManagerService;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/meizu/server/FileProtectManagerService;->mGrantedPids:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$400(Lcom/meizu/server/FileProtectManagerService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/meizu/server/FileProtectManagerService;->mPasswordEnable:Z

    return v0
.end method

.method static synthetic access$402(Lcom/meizu/server/FileProtectManagerService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/meizu/server/FileProtectManagerService;->mPasswordEnable:Z

    return p1
.end method

.method static synthetic access$500(Lcom/meizu/server/FileProtectManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/meizu/server/FileProtectManagerService;->setAllPids()V

    return-void
.end method

.method static synthetic access$600(Lcom/meizu/server/FileProtectManagerService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/meizu/server/FileProtectManagerService;->setPid(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/meizu/server/FileProtectManagerService;Lcom/meizu/server/FileProtectManagerService$FileProtectData;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/meizu/server/FileProtectManagerService;->handleRequestGranted(Lcom/meizu/server/FileProtectManagerService$FileProtectData;)V

    return-void
.end method

.method static synthetic access$800(Lcom/meizu/server/FileProtectManagerService;Lmeizu/app/INotifier;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/meizu/server/FileProtectManagerService;->handlerCheckPassword(Lmeizu/app/INotifier;)V

    return-void
.end method

.method static synthetic access$900(Lcom/meizu/server/FileProtectManagerService;Lmeizu/app/INotifier;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/meizu/server/FileProtectManagerService;->handlerOpenPassword(Lmeizu/app/INotifier;)V

    return-void
.end method

.method private formatPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "path"

    .prologue
    .line 599
    if-nez p1, :cond_0

    .line 600
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "path is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 603
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 605
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sget v2, Lcom/meizu/server/FileProtectManagerService;->EXTERNAL_LEN:I

    if-le v1, v2, :cond_1

    sget-object v1, Lcom/meizu/server/FileProtectManagerService;->EXTERNAL_DIR_END_WITH_DIV:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 607
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid path: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", that must starts with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/meizu/server/FileProtectManagerService;->EXTERNAL_DIR_END_WITH_DIV:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 611
    :cond_2
    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 612
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 613
    .local v0, len:I
    sget v1, Lcom/meizu/server/FileProtectManagerService;->EXTERNAL_LEN:I

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 615
    .end local v0           #len:I
    :goto_0
    return-object v1

    :cond_3
    sget v1, Lcom/meizu/server/FileProtectManagerService;->EXTERNAL_LEN:I

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private handleAddGlobalUnlockFile(Lcom/meizu/server/FileProtectManagerService$FileProtectData;)V
    .locals 10
    .parameter "data"

    .prologue
    const/4 v9, 0x1

    .line 448
    const/4 v7, 0x0

    .line 449
    .local v7, result:I
    iget-object v8, p0, Lcom/meizu/server/FileProtectManagerService;->mGlobalUnlockFileSet:Ljava/util/ArrayList;

    monitor-enter v8

    .line 450
    :try_start_0
    iget-object v0, p0, Lcom/meizu/server/FileProtectManagerService;->mGlobalUnlockFileSet:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/meizu/server/FileProtectManagerService$FileProtectData;->globalFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 451
    const/4 v7, -0x1

    .line 492
    :goto_0
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 495
    const/4 v0, -0x1

    if-ne v7, v0, :cond_4

    .line 496
    :try_start_1
    iget-object v0, p1, Lcom/meizu/server/FileProtectManagerService$FileProtectData;->notifier:Lmeizu/app/INotifier;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lmeizu/app/INotifier;->onAddGlobalUnlcokFileResult(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 505
    :cond_0
    :goto_1
    return-void

    .line 452
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/meizu/server/FileProtectManagerService;->mGrantedPids:Ljava/util/HashMap;

    iget v1, p1, Lcom/meizu/server/FileProtectManagerService$FileProtectData;->pid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 453
    const/4 v7, 0x1

    .line 454
    iget-object v0, p0, Lcom/meizu/server/FileProtectManagerService;->mGlobalUnlockFileSet:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/meizu/server/FileProtectManagerService$FileProtectData;->globalFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 455
    invoke-direct {p0}, Lcom/meizu/server/FileProtectManagerService;->setAllPaths()V

    goto :goto_0

    .line 492
    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 457
    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/meizu/server/FileProtectManagerService;->mDialog:Lcom/meizu/server/FileProtectPasswordView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/meizu/server/FileProtectManagerService;->mDialog:Lcom/meizu/server/FileProtectPasswordView;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 458
    const-string v0, "FileProtect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleAddGlobalUnlockFile but there is another dialog, let\'s close it. mDialog is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/server/FileProtectManagerService;->mDialog:Lcom/meizu/server/FileProtectPasswordView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    iget-object v0, p0, Lcom/meizu/server/FileProtectManagerService;->mDialog:Lcom/meizu/server/FileProtectPasswordView;

    invoke-virtual {v0}, Lcom/meizu/server/FileProtectPasswordView;->dismiss()V

    .line 461
    :cond_3
    new-instance v0, Lcom/meizu/server/FileProtectPasswordView;

    iget-object v1, p0, Lcom/meizu/server/FileProtectManagerService;->mContext:Landroid/content/Context;

    const v2, 0x1030009

    iget-object v4, p0, Lcom/meizu/server/FileProtectManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget-object v5, Lcom/meizu/server/FileProtectPasswordView$ShowType;->ADD_GLOBAL_UNLOCK_FILE:Lcom/meizu/server/FileProtectPasswordView$ShowType;

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/meizu/server/FileProtectPasswordView;-><init>(Landroid/content/Context;ILcom/meizu/server/FileProtectManagerService;Lcom/android/internal/widget/LockPatternUtils;Lcom/meizu/server/FileProtectPasswordView$ShowType;)V

    iput-object v0, p0, Lcom/meizu/server/FileProtectManagerService;->mDialog:Lcom/meizu/server/FileProtectPasswordView;

    .line 463
    iget-object v0, p0, Lcom/meizu/server/FileProtectManagerService;->mDialog:Lcom/meizu/server/FileProtectPasswordView;

    invoke-virtual {v0, p1}, Lcom/meizu/server/FileProtectPasswordView;->setExtraData(Ljava/lang/Object;)V

    .line 464
    iget-object v0, p0, Lcom/meizu/server/FileProtectManagerService;->mDialog:Lcom/meizu/server/FileProtectPasswordView;

    new-instance v1, Lcom/meizu/server/FileProtectManagerService$1;

    invoke-direct {v1, p0, p1}, Lcom/meizu/server/FileProtectManagerService$1;-><init>(Lcom/meizu/server/FileProtectManagerService;Lcom/meizu/server/FileProtectManagerService$FileProtectData;)V

    invoke-virtual {v0, v1}, Lcom/meizu/server/FileProtectPasswordView;->setOnAddGlobalUlockFileListener(Lcom/meizu/server/FileProtectPasswordView$OnAddGlobalUlockFileListener;)V

    .line 490
    iget-object v0, p0, Lcom/meizu/server/FileProtectManagerService;->mDialog:Lcom/meizu/server/FileProtectPasswordView;

    iget v1, p1, Lcom/meizu/server/FileProtectManagerService$FileProtectData;->duration:I

    invoke-virtual {v0, v1}, Lcom/meizu/server/FileProtectPasswordView;->show(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 497
    :cond_4
    if-ne v7, v9, :cond_0

    .line 498
    :try_start_4
    iget-object v0, p1, Lcom/meizu/server/FileProtectManagerService$FileProtectData;->notifier:Lmeizu/app/INotifier;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lmeizu/app/INotifier;->onAddGlobalUnlcokFileResult(Z)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    .line 500
    :catch_0
    move-exception v6

    .line 502
    .local v6, e:Landroid/os/RemoteException;
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method private handleRequestGranted(Lcom/meizu/server/FileProtectManagerService$FileProtectData;)V
    .locals 7
    .parameter "data"

    .prologue
    .line 374
    iget-object v6, p0, Lcom/meizu/server/FileProtectManagerService;->mGrantedPids:Ljava/util/HashMap;

    monitor-enter v6

    .line 375
    :try_start_0
    iget-object v0, p0, Lcom/meizu/server/FileProtectManagerService;->mGrantedPids:Ljava/util/HashMap;

    iget v1, p1, Lcom/meizu/server/FileProtectManagerService$FileProtectData;->pid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 376
    const-string v0, "FileProtect"

    const-string v1, "handleRequestGranted but the pid has been granted"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    monitor-exit v6

    .line 390
    :goto_0
    return-void

    .line 379
    :cond_0
    iget-object v0, p0, Lcom/meizu/server/FileProtectManagerService;->mDialog:Lcom/meizu/server/FileProtectPasswordView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/meizu/server/FileProtectManagerService;->mDialog:Lcom/meizu/server/FileProtectPasswordView;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 380
    const-string v0, "FileProtect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleRequestGranted but there is another dialog, let\'s close it. mDialog is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/server/FileProtectManagerService;->mDialog:Lcom/meizu/server/FileProtectPasswordView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    iget-object v0, p0, Lcom/meizu/server/FileProtectManagerService;->mDialog:Lcom/meizu/server/FileProtectPasswordView;

    invoke-virtual {v0}, Lcom/meizu/server/FileProtectPasswordView;->dismiss()V

    .line 383
    :cond_1
    new-instance v0, Lcom/meizu/server/FileProtectPasswordView;

    iget-object v1, p0, Lcom/meizu/server/FileProtectManagerService;->mContext:Landroid/content/Context;

    const v2, 0x1030009

    iget-object v4, p0, Lcom/meizu/server/FileProtectManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget-object v5, Lcom/meizu/server/FileProtectPasswordView$ShowType;->REQUEST_GRANTED:Lcom/meizu/server/FileProtectPasswordView$ShowType;

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/meizu/server/FileProtectPasswordView;-><init>(Landroid/content/Context;ILcom/meizu/server/FileProtectManagerService;Lcom/android/internal/widget/LockPatternUtils;Lcom/meizu/server/FileProtectPasswordView$ShowType;)V

    iput-object v0, p0, Lcom/meizu/server/FileProtectManagerService;->mDialog:Lcom/meizu/server/FileProtectPasswordView;

    .line 385
    iget-object v0, p0, Lcom/meizu/server/FileProtectManagerService;->mDialog:Lcom/meizu/server/FileProtectPasswordView;

    invoke-virtual {v0, p1}, Lcom/meizu/server/FileProtectPasswordView;->setExtraData(Ljava/lang/Object;)V

    .line 386
    iget-object v0, p0, Lcom/meizu/server/FileProtectManagerService;->mDialog:Lcom/meizu/server/FileProtectPasswordView;

    iget v1, p1, Lcom/meizu/server/FileProtectManagerService$FileProtectData;->duration:I

    invoke-virtual {v0, v1}, Lcom/meizu/server/FileProtectPasswordView;->show(I)V

    .line 388
    const-string v0, "FileProtect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleRequestGranted. create and show dialog. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/server/FileProtectManagerService;->mDialog:Lcom/meizu/server/FileProtectPasswordView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    monitor-exit v6

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private handlerCheckPassword(Lmeizu/app/INotifier;)V
    .locals 8
    .parameter "notifier"

    .prologue
    const/4 v7, -0x1

    .line 393
    iget-object v0, p0, Lcom/meizu/server/FileProtectManagerService;->mDialog:Lcom/meizu/server/FileProtectPasswordView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/server/FileProtectManagerService;->mDialog:Lcom/meizu/server/FileProtectPasswordView;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 394
    const-string v0, "FileProtect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handlerCheckPassword but there is another dialog, let\'s close it. mDialog is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/server/FileProtectManagerService;->mDialog:Lcom/meizu/server/FileProtectPasswordView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    iget-object v0, p0, Lcom/meizu/server/FileProtectManagerService;->mDialog:Lcom/meizu/server/FileProtectPasswordView;

    invoke-virtual {v0}, Lcom/meizu/server/FileProtectPasswordView;->dismiss()V

    .line 398
    :cond_0
    new-instance v0, Lcom/meizu/server/FileProtectPasswordView;

    iget-object v1, p0, Lcom/meizu/server/FileProtectManagerService;->mContext:Landroid/content/Context;

    const v2, 0x1030009

    iget-object v4, p0, Lcom/meizu/server/FileProtectManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget-object v5, Lcom/meizu/server/FileProtectPasswordView$ShowType;->CHECK_PASSWORD:Lcom/meizu/server/FileProtectPasswordView$ShowType;

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/meizu/server/FileProtectPasswordView;-><init>(Landroid/content/Context;ILcom/meizu/server/FileProtectManagerService;Lcom/android/internal/widget/LockPatternUtils;Lcom/meizu/server/FileProtectPasswordView$ShowType;)V

    iput-object v0, p0, Lcom/meizu/server/FileProtectManagerService;->mDialog:Lcom/meizu/server/FileProtectPasswordView;

    .line 401
    new-instance v6, Lcom/meizu/server/FileProtectManagerService$FileProtectData;

    invoke-direct {v6}, Lcom/meizu/server/FileProtectManagerService$FileProtectData;-><init>()V

    .line 402
    .local v6, data:Lcom/meizu/server/FileProtectManagerService$FileProtectData;
    iput-object p1, v6, Lcom/meizu/server/FileProtectManagerService$FileProtectData;->notifier:Lmeizu/app/INotifier;

    .line 403
    const/4 v0, 0x0

    iput v0, v6, Lcom/meizu/server/FileProtectManagerService$FileProtectData;->pid:I

    .line 404
    iput v7, v6, Lcom/meizu/server/FileProtectManagerService$FileProtectData;->duration:I

    .line 405
    iget-object v0, p0, Lcom/meizu/server/FileProtectManagerService;->mDialog:Lcom/meizu/server/FileProtectPasswordView;

    invoke-virtual {v0, v6}, Lcom/meizu/server/FileProtectPasswordView;->setExtraData(Ljava/lang/Object;)V

    .line 406
    iget-object v0, p0, Lcom/meizu/server/FileProtectManagerService;->mDialog:Lcom/meizu/server/FileProtectPasswordView;

    invoke-virtual {v0, v7}, Lcom/meizu/server/FileProtectPasswordView;->show(I)V

    .line 407
    const-string v0, "FileProtect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handlerCheckPassword.create and show dialog. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/server/FileProtectManagerService;->mDialog:Lcom/meizu/server/FileProtectPasswordView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    return-void
.end method

.method private handlerGrantedExpired()V
    .locals 5

    .prologue
    .line 428
    iget-object v4, p0, Lcom/meizu/server/FileProtectManagerService;->mGrantedPids:Ljava/util/HashMap;

    monitor-enter v4

    .line 429
    :try_start_0
    iget-object v3, p0, Lcom/meizu/server/FileProtectManagerService;->mGrantedPids:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmeizu/app/INotifier;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 431
    .local v2, notifier:Lmeizu/app/INotifier;
    :try_start_1
    invoke-interface {v2}, Lmeizu/app/INotifier;->notifyUngranted()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 432
    :catch_0
    move-exception v0

    .line 433
    .local v0, e:Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 440
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #notifier:Lmeizu/app/INotifier;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 438
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_3
    iget-object v3, p0, Lcom/meizu/server/FileProtectManagerService;->mGrantedPids:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 439
    invoke-direct {p0}, Lcom/meizu/server/FileProtectManagerService;->setAllPids()V

    .line 440
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 441
    iget-object v4, p0, Lcom/meizu/server/FileProtectManagerService;->mGlobalUnlockFileSet:Ljava/util/ArrayList;

    monitor-enter v4

    .line 442
    :try_start_4
    iget-object v3, p0, Lcom/meizu/server/FileProtectManagerService;->mGlobalUnlockFileSet:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 443
    invoke-direct {p0}, Lcom/meizu/server/FileProtectManagerService;->setAllPaths()V

    .line 444
    monitor-exit v4

    .line 445
    return-void

    .line 444
    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v3
.end method

.method private handlerOpenPassword(Lmeizu/app/INotifier;)V
    .locals 8
    .parameter "notifier"

    .prologue
    const/4 v7, -0x1

    .line 411
    iget-object v0, p0, Lcom/meizu/server/FileProtectManagerService;->mDialog:Lcom/meizu/server/FileProtectPasswordView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/server/FileProtectManagerService;->mDialog:Lcom/meizu/server/FileProtectPasswordView;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 412
    const-string v0, "FileProtect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handlerCheckPassword but there is another dialog, let\'s close it. mDialog is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/server/FileProtectManagerService;->mDialog:Lcom/meizu/server/FileProtectPasswordView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    iget-object v0, p0, Lcom/meizu/server/FileProtectManagerService;->mDialog:Lcom/meizu/server/FileProtectPasswordView;

    invoke-virtual {v0}, Lcom/meizu/server/FileProtectPasswordView;->dismiss()V

    .line 416
    :cond_0
    new-instance v0, Lcom/meizu/server/FileProtectPasswordView;

    iget-object v1, p0, Lcom/meizu/server/FileProtectManagerService;->mContext:Landroid/content/Context;

    const v2, 0x1030009

    iget-object v4, p0, Lcom/meizu/server/FileProtectManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget-object v5, Lcom/meizu/server/FileProtectPasswordView$ShowType;->OPEN_PASSWORD:Lcom/meizu/server/FileProtectPasswordView$ShowType;

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/meizu/server/FileProtectPasswordView;-><init>(Landroid/content/Context;ILcom/meizu/server/FileProtectManagerService;Lcom/android/internal/widget/LockPatternUtils;Lcom/meizu/server/FileProtectPasswordView$ShowType;)V

    iput-object v0, p0, Lcom/meizu/server/FileProtectManagerService;->mDialog:Lcom/meizu/server/FileProtectPasswordView;

    .line 418
    new-instance v6, Lcom/meizu/server/FileProtectManagerService$FileProtectData;

    invoke-direct {v6}, Lcom/meizu/server/FileProtectManagerService$FileProtectData;-><init>()V

    .line 419
    .local v6, data:Lcom/meizu/server/FileProtectManagerService$FileProtectData;
    iput-object p1, v6, Lcom/meizu/server/FileProtectManagerService$FileProtectData;->notifier:Lmeizu/app/INotifier;

    .line 420
    const/4 v0, 0x0

    iput v0, v6, Lcom/meizu/server/FileProtectManagerService$FileProtectData;->pid:I

    .line 421
    iput v7, v6, Lcom/meizu/server/FileProtectManagerService$FileProtectData;->duration:I

    .line 422
    iget-object v0, p0, Lcom/meizu/server/FileProtectManagerService;->mDialog:Lcom/meizu/server/FileProtectPasswordView;

    invoke-virtual {v0, v6}, Lcom/meizu/server/FileProtectPasswordView;->setExtraData(Ljava/lang/Object;)V

    .line 423
    iget-object v0, p0, Lcom/meizu/server/FileProtectManagerService;->mDialog:Lcom/meizu/server/FileProtectPasswordView;

    invoke-virtual {v0, v7}, Lcom/meizu/server/FileProtectPasswordView;->show(I)V

    .line 424
    const-string v0, "FileProtect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handlerOpenPassword.create and show dialog. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/server/FileProtectManagerService;->mDialog:Lcom/meizu/server/FileProtectPasswordView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    return-void
.end method

.method private setAllPaths()V
    .locals 9

    .prologue
    .line 271
    const/4 v0, 0x0

    .line 273
    .local v0, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v6, p0, Lcom/meizu/server/FileProtectManagerService;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v6}, Lcom/meizu/provider/ProtectedFiles$ProtectFile;->getAllPath(Landroid/content/ContentResolver;)Landroid/database/Cursor;

    move-result-object v0

    .line 274
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-gtz v6, :cond_2

    .line 298
    :cond_0
    if-eqz v0, :cond_1

    .line 299
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 302
    :cond_1
    return-void

    .line 277
    :cond_2
    :try_start_1
    new-instance v2, Ljava/io/FileOutputStream;

    const-string v6, "/proc/fp_config/protected_list"

    invoke-direct {v2, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 278
    .local v2, fos:Ljava/io/FileOutputStream;
    if-eqz v2, :cond_5

    .line 279
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "|"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 280
    .local v5, pathsString:Ljava/lang/StringBuilder;
    const-string v6, "file_path"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 281
    .local v4, pathColumn:I
    const/4 v6, -0x1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 282
    :cond_3
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 283
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 284
    .local v3, path:Ljava/lang/String;
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, p0, Lcom/meizu/server/FileProtectManagerService;->mGlobalUnlockFileSet:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 285
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    const/16 v6, 0x7c

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 294
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .end local v3           #path:Ljava/lang/String;
    .end local v4           #pathColumn:I
    .end local v5           #pathsString:Ljava/lang/StringBuilder;
    :catch_0
    move-exception v1

    .line 295
    .local v1, e:Ljava/lang/Exception;
    :try_start_2
    const-string v6, "FileProtect"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "FileProtectManager setAllPath "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 298
    if-eqz v0, :cond_1

    goto :goto_0

    .line 289
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    .restart local v4       #pathColumn:I
    .restart local v5       #pathsString:Ljava/lang/StringBuilder;
    :cond_4
    :try_start_3
    const-string v6, "FileProtect"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "---------setAllPaths. the paths is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/OutputStream;->write([B)V

    .line 291
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 298
    .end local v4           #pathColumn:I
    .end local v5           #pathsString:Ljava/lang/StringBuilder;
    :cond_5
    if-eqz v0, :cond_1

    goto/16 :goto_0

    .end local v2           #fos:Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v6

    if-eqz v0, :cond_6

    .line 299
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 298
    :cond_6
    throw v6
.end method

.method private setAllPids()V
    .locals 8

    .prologue
    .line 320
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    const-string v5, "/proc/fp_config/granted_pids"

    invoke-direct {v1, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 321
    .local v1, fos:Ljava/io/FileOutputStream;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 322
    .local v4, pidString:Ljava/lang/StringBuilder;
    iget-object v5, p0, Lcom/meizu/server/FileProtectManagerService;->mGrantedPids:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 323
    .local v3, pid:I
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 324
    const/16 v5, 0x2c

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 333
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #pid:I
    .end local v4           #pidString:Ljava/lang/StringBuilder;
    :catch_0
    move-exception v0

    .line 334
    .local v0, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 338
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :goto_1
    return-void

    .line 326
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v4       #pidString:Ljava/lang/StringBuilder;
    :cond_0
    :try_start_1
    iget-object v5, p0, Lcom/meizu/server/FileProtectManagerService;->mSilentGrantedPids:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 327
    .restart local v3       #pid:I
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 328
    const/16 v5, 0x2c

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 335
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #pid:I
    .end local v4           #pidString:Ljava/lang/StringBuilder;
    :catch_1
    move-exception v0

    .line 336
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 330
    .end local v0           #e:Ljava/io/IOException;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v4       #pidString:Ljava/lang/StringBuilder;
    :cond_1
    :try_start_2
    const-string v5, "FileProtect"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setAllPids. pids is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/OutputStream;->write([B)V

    .line 332
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1
.end method

.method private setPid(I)V
    .locals 6
    .parameter "pid"

    .prologue
    .line 306
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    const-string v3, "/proc/fp_config/granted_pids"

    invoke-direct {v1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 307
    .local v1, fos:Ljava/io/FileOutputStream;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x2c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 308
    .local v2, pidString:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/OutputStream;->write([B)V

    .line 309
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 310
    const-string v3, "FileProtect"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setPid. pid is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 316
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .end local v2           #pidString:Ljava/lang/String;
    :goto_0
    return-void

    .line 311
    :catch_0
    move-exception v0

    .line 312
    .local v0, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 313
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 314
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method OnDismiss()V
    .locals 3

    .prologue
    .line 369
    const-string v0, "FileProtect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set dialog null.  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/server/FileProtectManagerService;->mDialog:Lcom/meizu/server/FileProtectPasswordView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/server/FileProtectManagerService;->mDialog:Lcom/meizu/server/FileProtectPasswordView;

    .line 371
    return-void
.end method

.method public addGlobalUnlockFile(Ljava/lang/String;Lmeizu/app/INotifier;)V
    .locals 6
    .parameter "filePath"
    .parameter "notifier"

    .prologue
    const/16 v5, 0x6a

    .line 209
    iget-object v2, p0, Lcom/meizu/server/FileProtectManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.ADD_GLOBAL_UNLOCK_FILE"

    const-string v4, "requestGranted"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    invoke-direct {p0, p1}, Lcom/meizu/server/FileProtectManagerService;->formatPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 214
    .local v1, formatPath:Ljava/lang/String;
    new-instance v0, Lcom/meizu/server/FileProtectManagerService$FileProtectData;

    invoke-direct {v0}, Lcom/meizu/server/FileProtectManagerService$FileProtectData;-><init>()V

    .line 215
    .local v0, data:Lcom/meizu/server/FileProtectManagerService$FileProtectData;
    iput-object p2, v0, Lcom/meizu/server/FileProtectManagerService$FileProtectData;->notifier:Lmeizu/app/INotifier;

    .line 216
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    iput v2, v0, Lcom/meizu/server/FileProtectManagerService$FileProtectData;->pid:I

    .line 217
    const/4 v2, -0x1

    iput v2, v0, Lcom/meizu/server/FileProtectManagerService$FileProtectData;->duration:I

    .line 218
    iput-object v1, v0, Lcom/meizu/server/FileProtectManagerService$FileProtectData;->globalFilePath:Ljava/lang/String;

    .line 219
    iget-object v2, p0, Lcom/meizu/server/FileProtectManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 220
    iget-object v2, p0, Lcom/meizu/server/FileProtectManagerService;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/meizu/server/FileProtectManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 221
    return-void
.end method

.method addPidLocked(ILmeizu/app/INotifier;Z)V
    .locals 3
    .parameter "pid"
    .parameter "notifier"
    .parameter "silent"

    .prologue
    .line 341
    iget-object v1, p0, Lcom/meizu/server/FileProtectManagerService;->mGrantedPids:Ljava/util/HashMap;

    monitor-enter v1

    .line 342
    if-eqz p3, :cond_0

    .line 343
    :try_start_0
    iget-object v0, p0, Lcom/meizu/server/FileProtectManagerService;->mSilentGrantedPids:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    :goto_0
    invoke-direct {p0}, Lcom/meizu/server/FileProtectManagerService;->setAllPids()V

    .line 348
    monitor-exit v1

    .line 349
    return-void

    .line 345
    :cond_0
    iget-object v0, p0, Lcom/meizu/server/FileProtectManagerService;->mGrantedPids:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 348
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public checkGranted()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 148
    iget-object v2, p0, Lcom/meizu/server/FileProtectManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 149
    const-string v2, "FileProtect"

    const-string v3, "checkGranted but no password"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :goto_0
    return v1

    .line 152
    :cond_0
    iget-object v2, p0, Lcom/meizu/server/FileProtectManagerService;->mGrantedPids:Ljava/util/HashMap;

    monitor-enter v2

    .line 153
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 154
    .local v0, pid:I
    iget-object v3, p0, Lcom/meizu/server/FileProtectManagerService;->mGrantedPids:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/meizu/server/FileProtectManagerService;->mSilentGrantedPids:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 155
    :cond_1
    const-string v3, "FileProtect"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkGranted, return true and pid is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    monitor-exit v2

    goto :goto_0

    .line 160
    .end local v0           #pid:I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 158
    .restart local v0       #pid:I
    :cond_2
    :try_start_1
    const-string v1, "FileProtect"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkGranted ,return false and pid is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    const/4 v1, 0x0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public checkPassword(Lmeizu/app/INotifier;)V
    .locals 3
    .parameter "notifier"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x67

    .line 240
    iget-object v0, p0, Lcom/meizu/server/FileProtectManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 241
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "please set system password"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/meizu/server/FileProtectManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 244
    iget-object v0, p0, Lcom/meizu/server/FileProtectManagerService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/meizu/server/FileProtectManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 245
    return-void
.end method

.method public grantedExpired()V
    .locals 4

    .prologue
    const/16 v3, 0x69

    .line 264
    iget-object v0, p0, Lcom/meizu/server/FileProtectManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.FORCE_CLEAR_WHEN_GRANTED_EXPIRED"

    const-string v2, "grantedExpired"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    iget-object v0, p0, Lcom/meizu/server/FileProtectManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 267
    iget-object v0, p0, Lcom/meizu/server/FileProtectManagerService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/meizu/server/FileProtectManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 268
    return-void
.end method

.method public isGlobalUnlockFile(Ljava/lang/String;)Z
    .locals 2
    .parameter "filePath"

    .prologue
    .line 229
    iget-object v1, p0, Lcom/meizu/server/FileProtectManagerService;->mGlobalUnlockFileSet:Ljava/util/ArrayList;

    monitor-enter v1

    .line 230
    :try_start_0
    iget-object v0, p0, Lcom/meizu/server/FileProtectManagerService;->mGlobalUnlockFileSet:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 231
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method isPidGrantedLocked(I)Z
    .locals 3
    .parameter "pid"

    .prologue
    .line 363
    iget-object v1, p0, Lcom/meizu/server/FileProtectManagerService;->mGrantedPids:Ljava/util/HashMap;

    monitor-enter v1

    .line 364
    :try_start_0
    iget-object v0, p0, Lcom/meizu/server/FileProtectManagerService;->mGrantedPids:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 365
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public openPassword(Lmeizu/app/INotifier;)V
    .locals 3
    .parameter "notifier"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x68

    .line 252
    iget-object v0, p0, Lcom/meizu/server/FileProtectManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 253
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "password is opened"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/meizu/server/FileProtectManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 256
    iget-object v0, p0, Lcom/meizu/server/FileProtectManagerService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/meizu/server/FileProtectManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 257
    return-void
.end method

.method removePidLocked(I)Z
    .locals 3
    .parameter "pid"

    .prologue
    .line 352
    iget-object v1, p0, Lcom/meizu/server/FileProtectManagerService;->mGrantedPids:Ljava/util/HashMap;

    monitor-enter v1

    .line 353
    :try_start_0
    iget-object v0, p0, Lcom/meizu/server/FileProtectManagerService;->mGrantedPids:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 354
    iget-object v0, p0, Lcom/meizu/server/FileProtectManagerService;->mGrantedPids:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    invoke-direct {p0}, Lcom/meizu/server/FileProtectManagerService;->setAllPids()V

    .line 356
    const/4 v0, 0x1

    monitor-exit v1

    .line 358
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    .line 359
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public requestGranted(ZLmeizu/app/INotifier;I)V
    .locals 6
    .parameter "silent"
    .parameter "notifier"
    .parameter "duration"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x66

    .line 172
    const-string v2, "FileProtect"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Service requestGranted, notifier is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    if-nez p1, :cond_1

    .line 175
    iget-object v2, p0, Lcom/meizu/server/FileProtectManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.REQUEST_GRANT_ACCESS_PROTECT_FILE"

    const-string v4, "requestGranted"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    iget-object v2, p0, Lcom/meizu/server/FileProtectManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 178
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "please set system password"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 182
    :cond_0
    new-instance v0, Lcom/meizu/server/FileProtectManagerService$FileProtectData;

    invoke-direct {v0}, Lcom/meizu/server/FileProtectManagerService$FileProtectData;-><init>()V

    .line 183
    .local v0, data:Lcom/meizu/server/FileProtectManagerService$FileProtectData;
    iput-object p2, v0, Lcom/meizu/server/FileProtectManagerService$FileProtectData;->notifier:Lmeizu/app/INotifier;

    .line 184
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    iput v2, v0, Lcom/meizu/server/FileProtectManagerService$FileProtectData;->pid:I

    .line 185
    iput p3, v0, Lcom/meizu/server/FileProtectManagerService$FileProtectData;->duration:I

    .line 188
    iget-object v2, p0, Lcom/meizu/server/FileProtectManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 189
    iget-object v2, p0, Lcom/meizu/server/FileProtectManagerService;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/meizu/server/FileProtectManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 190
    const-string v2, "FileProtect"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestGranted ,silent is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " pis is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/meizu/server/FileProtectManagerService$FileProtectData;->pid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "notifier is + "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    .end local v0           #data:Lcom/meizu/server/FileProtectManagerService$FileProtectData;
    :goto_0
    return-void

    .line 193
    :cond_1
    iget-object v2, p0, Lcom/meizu/server/FileProtectManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.FORCE_GRANT_ACCESS_PROTECT_FILE"

    const-string v4, "requestGranted"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 198
    .local v1, pid:I
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3}, Lcom/meizu/server/FileProtectManagerService;->addPidLocked(ILmeizu/app/INotifier;Z)V

    goto :goto_0
.end method

.method public systemReady()V
    .locals 6

    .prologue
    .line 112
    :try_start_0
    iget-object v2, p0, Lcom/meizu/server/FileProtectManagerService;->mActivityManager:Landroid/app/IActivityManager;

    iget-object v3, p0, Lcom/meizu/server/FileProtectManagerService;->mProcessObserver:Landroid/app/IProcessObserver;

    invoke-interface {v2, v3}, Landroid/app/IActivityManager;->registerProcessObserver(Landroid/app/IProcessObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    :goto_0
    iget-object v2, p0, Lcom/meizu/server/FileProtectManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/server/FileProtectManagerService;->mContentResolver:Landroid/content/ContentResolver;

    .line 119
    new-instance v2, Lcom/meizu/server/FileProtectManagerService$PathsContentObserver;

    iget-object v3, p0, Lcom/meizu/server/FileProtectManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v3}, Lcom/meizu/server/FileProtectManagerService$PathsContentObserver;-><init>(Lcom/meizu/server/FileProtectManagerService;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/meizu/server/FileProtectManagerService;->mPathsContentObserver:Landroid/database/ContentObserver;

    .line 120
    iget-object v2, p0, Lcom/meizu/server/FileProtectManagerService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/meizu/provider/ProtectedFiles$ProtectFile;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/meizu/server/FileProtectManagerService;->mPathsContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 124
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 125
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.ACCESS_CONTROL_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 126
    iget-object v2, p0, Lcom/meizu/server/FileProtectManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/meizu/server/FileProtectManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 129
    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v3, p0, Lcom/meizu/server/FileProtectManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/meizu/server/FileProtectManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 130
    iget-object v2, p0, Lcom/meizu/server/FileProtectManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled()Z

    move-result v2

    iput-boolean v2, p0, Lcom/meizu/server/FileProtectManagerService;->mPasswordEnable:Z

    .line 131
    const-string v2, "FileProtect"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FileProtect service system ready .then set all pathes. mIsPasswordEnable is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/meizu/server/FileProtectManagerService;->mPasswordEnable:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-boolean v2, p0, Lcom/meizu/server/FileProtectManagerService;->mPasswordEnable:Z

    if-nez v2, :cond_0

    .line 135
    const/4 v2, -0x1

    invoke-direct {p0, v2}, Lcom/meizu/server/FileProtectManagerService;->setPid(I)V

    .line 139
    :cond_0
    invoke-direct {p0}, Lcom/meizu/server/FileProtectManagerService;->setAllPaths()V

    .line 140
    return-void

    .line 113
    .end local v1           #filter:Landroid/content/IntentFilter;
    :catch_0
    move-exception v0

    .line 114
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
