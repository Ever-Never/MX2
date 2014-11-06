.class public Lcom/meizu/security/FileProtectManager;
.super Ljava/lang/Object;
.source "FileProtectManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/security/FileProtectManager$Notifier;,
        Lcom/meizu/security/FileProtectManager$PathFilter;,
        Lcom/meizu/security/FileProtectManager$OnAddGlobalUnlockFileResultListener;,
        Lcom/meizu/security/FileProtectManager$OnPathChangedResultListener;,
        Lcom/meizu/security/FileProtectManager$OnCheckPasswordResultListener;,
        Lcom/meizu/security/FileProtectManager$OnSetLockPasswordResultListener;,
        Lcom/meizu/security/FileProtectManager$OnChangedListener;,
        Lcom/meizu/security/FileProtectManager$OnGrantChangedListener;
    }
.end annotation


# static fields
.field public static final CHECK_CHILD:I = 0x2

.field public static final CHECK_SELF:I = 0x1

.field public static final CHILD_ALL:I = 0x1

.field public static final CHILD_FIRST_LEVEL:I = 0x0

.field public static final LENGTH_LONG:I = 0x1

.field public static final LENGTH_NONE:I = -0x1

.field public static final LENGTH_SHORT:I = 0x0

.field private static final MSG_ADD_GLOBAL_UNLCOK_FILE:I = 0x3ee

.field private static final MSG_COMPLETE_GRANTED:I = 0x3ea

.field private static final MSG_FAILED_GRANTED:I = 0x3eb

.field private static final MSG_PASSWORD_CHECKED:I = 0x3ed

.field private static final MSG_PASSWORD_OPENED:I = 0x3ec

.field private static final MSG_UNGRANTED:I = 0x3e9

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mAddGlobalUnlockFileResultListener:Lcom/meizu/security/FileProtectManager$OnAddGlobalUnlockFileResultListener;

.field private mCheckPasswordResultListener:Lcom/meizu/security/FileProtectManager$OnCheckPasswordResultListener;

.field private mGrantChangedListener:Lcom/meizu/security/FileProtectManager$OnGrantChangedListener;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mNotifier:Lcom/meizu/security/FileProtectManager$Notifier;

.field private mObserver:Landroid/database/ContentObserver;

.field private mOnChangedListener:Lcom/meizu/security/FileProtectManager$OnChangedListener;

.field private mResolver:Landroid/content/ContentResolver;

.field private mService:Lmeizu/app/IFileProtect;

.field private mSetLockPasswordResultListener:Lcom/meizu/security/FileProtectManager$OnSetLockPasswordResultListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-string v0, "FileProtectManager"

    sput-object v0, Lcom/meizu/security/FileProtectManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/security/FileProtectManager;->mResolver:Landroid/content/ContentResolver;

    .line 108
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/meizu/security/FileProtectManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 109
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/security/FileProtectManager;)Lcom/meizu/security/FileProtectManager$OnGrantChangedListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/meizu/security/FileProtectManager;->mGrantChangedListener:Lcom/meizu/security/FileProtectManager$OnGrantChangedListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/meizu/security/FileProtectManager;)Lcom/meizu/security/FileProtectManager$OnSetLockPasswordResultListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/meizu/security/FileProtectManager;->mSetLockPasswordResultListener:Lcom/meizu/security/FileProtectManager$OnSetLockPasswordResultListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/meizu/security/FileProtectManager;)Lcom/meizu/security/FileProtectManager$OnCheckPasswordResultListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/meizu/security/FileProtectManager;->mCheckPasswordResultListener:Lcom/meizu/security/FileProtectManager$OnCheckPasswordResultListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/meizu/security/FileProtectManager;)Lcom/meizu/security/FileProtectManager$OnAddGlobalUnlockFileResultListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/meizu/security/FileProtectManager;->mAddGlobalUnlockFileResultListener:Lcom/meizu/security/FileProtectManager$OnAddGlobalUnlockFileResultListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/meizu/security/FileProtectManager;)Lcom/meizu/security/FileProtectManager$OnChangedListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/meizu/security/FileProtectManager;->mOnChangedListener:Lcom/meizu/security/FileProtectManager$OnChangedListener;

    return-object v0
.end method

.method private addPathsInternal(Ljava/util/ArrayList;Z)Z
    .locals 8
    .parameter
    .parameter "ignoreException"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;Z)Z"
        }
    .end annotation

    .prologue
    .line 366
    .local p1, paths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_1

    .line 367
    :cond_0
    const/4 v5, 0x0

    .line 382
    :goto_0
    return v5

    .line 370
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 371
    .local v1, size:I
    new-array v4, v1, [Landroid/content/ContentValues;

    .line 372
    .local v4, values:[Landroid/content/ContentValues;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 373
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 374
    .local v3, value:Landroid/content/ContentValues;
    const-string v6, "file_path"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    aput-object v3, v4, v0

    .line 372
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 378
    .end local v3           #value:Landroid/content/ContentValues;
    :cond_2
    sget-object v5, Lcom/meizu/provider/ProtectedFiles$ProtectFile;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v5

    const-string v6, "ignore_exception"

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 381
    .local v2, uri:Landroid/net/Uri;
    iget-object v5, p0, Lcom/meizu/security/FileProtectManager;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v5, v2, v4}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    .line 382
    const/4 v5, 0x1

    goto :goto_0
.end method

.method private deletePathsInternal(Ljava/util/ArrayList;Z)Z
    .locals 8
    .parameter
    .parameter "ignoreException"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;Z)Z"
        }
    .end annotation

    .prologue
    .local p1, paths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 418
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    move v4, v5

    .line 440
    :goto_0
    return v4

    .line 422
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 424
    .local v2, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 425
    sget-object v4, Lcom/meizu/provider/ProtectedFiles$ProtectFile;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v4}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v6, "ignore_exception"

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 429
    .local v3, uri:Landroid/net/Uri;
    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 424
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 433
    .end local v3           #uri:Landroid/net/Uri;
    :cond_2
    :try_start_0
    iget-object v4, p0, Lcom/meizu/security/FileProtectManager;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "com.meizu.protectfile"

    invoke-virtual {v4, v6, v2}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 434
    const/4 v4, 0x1

    goto :goto_0

    .line 435
    :catch_0
    move-exception v0

    .line 436
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .end local v0           #e:Landroid/os/RemoteException;
    :goto_2
    move v4, v5

    .line 440
    goto :goto_0

    .line 437
    :catch_1
    move-exception v0

    .line 438
    .local v0, e:Landroid/content/OperationApplicationException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2
.end method

.method private getNotifier()Lcom/meizu/security/FileProtectManager$Notifier;
    .locals 2

    .prologue
    .line 122
    iget-object v1, p0, Lcom/meizu/security/FileProtectManager;->mNotifier:Lcom/meizu/security/FileProtectManager$Notifier;

    if-nez v1, :cond_0

    .line 123
    new-instance v0, Lcom/meizu/security/FileProtectManager$1;

    invoke-direct {v0, p0}, Lcom/meizu/security/FileProtectManager$1;-><init>(Lcom/meizu/security/FileProtectManager;)V

    .line 166
    .local v0, handler:Landroid/os/Handler;
    new-instance v1, Lcom/meizu/security/FileProtectManager$Notifier;

    invoke-direct {v1, p0, v0}, Lcom/meizu/security/FileProtectManager$Notifier;-><init>(Lcom/meizu/security/FileProtectManager;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/meizu/security/FileProtectManager;->mNotifier:Lcom/meizu/security/FileProtectManager$Notifier;

    .line 168
    .end local v0           #handler:Landroid/os/Handler;
    :cond_0
    iget-object v1, p0, Lcom/meizu/security/FileProtectManager;->mNotifier:Lcom/meizu/security/FileProtectManager$Notifier;

    return-object v1
.end method

.method private getService()Lmeizu/app/IFileProtect;
    .locals 2

    .prologue
    .line 112
    iget-object v1, p0, Lcom/meizu/security/FileProtectManager;->mService:Lmeizu/app/IFileProtect;

    if-eqz v1, :cond_0

    .line 113
    iget-object v1, p0, Lcom/meizu/security/FileProtectManager;->mService:Lmeizu/app/IFileProtect;

    .line 118
    :goto_0
    return-object v1

    .line 116
    :cond_0
    const-string v1, "fileProtect"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 117
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Lmeizu/app/IFileProtect$Stub;->asInterface(Landroid/os/IBinder;)Lmeizu/app/IFileProtect;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/security/FileProtectManager;->mService:Lmeizu/app/IFileProtect;

    .line 118
    iget-object v1, p0, Lcom/meizu/security/FileProtectManager;->mService:Lmeizu/app/IFileProtect;

    goto :goto_0
.end method


# virtual methods
.method public addGlobalUnlockFile(Ljava/lang/String;Lcom/meizu/security/FileProtectManager$OnAddGlobalUnlockFileResultListener;)V
    .locals 3
    .parameter "path"
    .parameter "l"

    .prologue
    .line 211
    :try_start_0
    iput-object p2, p0, Lcom/meizu/security/FileProtectManager;->mAddGlobalUnlockFileResultListener:Lcom/meizu/security/FileProtectManager$OnAddGlobalUnlockFileResultListener;

    .line 212
    invoke-direct {p0}, Lcom/meizu/security/FileProtectManager;->getService()Lmeizu/app/IFileProtect;

    move-result-object v1

    invoke-direct {p0}, Lcom/meizu/security/FileProtectManager;->getNotifier()Lcom/meizu/security/FileProtectManager$Notifier;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lmeizu/app/IFileProtect;->addGlobalUnlockFile(Ljava/lang/String;Lmeizu/app/INotifier;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    :goto_0
    return-void

    .line 213
    :catch_0
    move-exception v0

    .line 214
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Lcom/meizu/security/FileProtectManager;->TAG:Ljava/lang/String;

    const-string v2, "addGlobalUnlockFile"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public addPath(Ljava/lang/String;)Z
    .locals 1
    .parameter "path"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/meizu/security/FpmAlreadyExistException;,
            Lcom/meizu/security/FpmAlreadyExistParentException;,
            Landroid/database/sqlite/SQLiteFullException;
        }
    .end annotation

    .prologue
    .line 335
    iget-object v0, p0, Lcom/meizu/security/FileProtectManager;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v0, p1}, Lcom/meizu/provider/ProtectedFiles$ProtectFile;->add(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public addPaths(Ljava/util/ArrayList;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/meizu/security/FpmAlreadyExistException;,
            Lcom/meizu/security/FpmAlreadyExistParentException;,
            Landroid/database/sqlite/SQLiteFullException;
        }
    .end annotation

    .prologue
    .line 350
    .local p1, paths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/meizu/security/FileProtectManager;->addPathsInternal(Ljava/util/ArrayList;Z)Z

    move-result v0

    return v0
.end method

.method public addPathsIgnoreException(Ljava/util/ArrayList;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/sqlite/SQLiteFullException;
        }
    .end annotation

    .prologue
    .line 362
    .local p1, paths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/meizu/security/FileProtectManager;->addPathsInternal(Ljava/util/ArrayList;Z)Z

    move-result v0

    return v0
.end method

.method public checkGranted()Z
    .locals 3

    .prologue
    .line 581
    :try_start_0
    invoke-direct {p0}, Lcom/meizu/security/FileProtectManager;->getService()Lmeizu/app/IFileProtect;

    move-result-object v1

    invoke-interface {v1}, Lmeizu/app/IFileProtect;->checkGranted()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 585
    :goto_0
    return v1

    .line 582
    :catch_0
    move-exception v0

    .line 583
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Lcom/meizu/security/FileProtectManager;->TAG:Ljava/lang/String;

    const-string v2, "checkGranted"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 585
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public checkPassword(Lcom/meizu/security/FileProtectManager$OnCheckPasswordResultListener;)V
    .locals 3
    .parameter "l"

    .prologue
    .line 197
    :try_start_0
    iput-object p1, p0, Lcom/meizu/security/FileProtectManager;->mCheckPasswordResultListener:Lcom/meizu/security/FileProtectManager$OnCheckPasswordResultListener;

    .line 198
    invoke-direct {p0}, Lcom/meizu/security/FileProtectManager;->getService()Lmeizu/app/IFileProtect;

    move-result-object v1

    invoke-direct {p0}, Lcom/meizu/security/FileProtectManager;->getNotifier()Lcom/meizu/security/FileProtectManager$Notifier;

    move-result-object v2

    invoke-interface {v1, v2}, Lmeizu/app/IFileProtect;->checkPassword(Lmeizu/app/INotifier;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    :goto_0
    return-void

    .line 199
    :catch_0
    move-exception v0

    .line 200
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Lcom/meizu/security/FileProtectManager;->TAG:Ljava/lang/String;

    const-string v2, "checkPassword"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public checkPath(Ljava/lang/String;I)Z
    .locals 10
    .parameter "path"
    .parameter "checkType"

    .prologue
    const/4 v8, 0x1

    const/4 v3, 0x0

    const/4 v9, 0x0

    .line 239
    packed-switch p2, :pswitch_data_0

    .line 253
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "checkType must be either CHECK_SELF or CHECK_CHILD."

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 241
    :pswitch_0
    const/4 v7, 0x3

    .line 256
    .local v7, filterType:I
    :goto_0
    sget-object v0, Lcom/meizu/provider/ProtectedFiles$ProtectFile;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "filter_type"

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 260
    .local v1, uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/meizu/security/FileProtectManager;->mResolver:Landroid/content/ContentResolver;

    new-array v2, v8, [Ljava/lang/String;

    const-string v4, "file_path"

    aput-object v4, v2, v9

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 261
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 263
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lez v0, :cond_0

    move v0, v8

    .line 265
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 268
    :goto_2
    return v0

    .line 245
    .end local v1           #uri:Landroid/net/Uri;
    .end local v6           #c:Landroid/database/Cursor;
    .end local v7           #filterType:I
    :pswitch_1
    const/16 v7, 0x8

    .line 246
    .restart local v7       #filterType:I
    goto :goto_0

    .line 249
    .end local v7           #filterType:I
    :pswitch_2
    const/16 v7, 0xa

    .line 250
    .restart local v7       #filterType:I
    goto :goto_0

    .restart local v1       #uri:Landroid/net/Uri;
    .restart local v6       #c:Landroid/database/Cursor;
    :cond_0
    move v0, v9

    .line 263
    goto :goto_1

    .line 265
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_1
    move v0, v9

    .line 268
    goto :goto_2

    .line 239
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public copyPath(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter "oldPath"
    .parameter "newPath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/sqlite/SQLiteFullException;
        }
    .end annotation

    .prologue
    .line 498
    sget-object v2, Lcom/meizu/provider/ProtectedFiles$ProtectFile;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 500
    .local v0, uri:Landroid/net/Uri;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 501
    .local v1, value:Landroid/content/ContentValues;
    const-string v2, "file_path"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    iget-object v2, p0, Lcom/meizu/security/FileProtectManager;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 503
    const/4 v2, 0x1

    return v2
.end method

.method public copyPaths(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 8
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/sqlite/SQLiteFullException;
        }
    .end annotation

    .prologue
    .local p1, oldPaths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, newPaths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 515
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-eq v4, v6, :cond_1

    :cond_0
    move v4, v5

    .line 538
    :goto_0
    return v4

    .line 521
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 522
    .local v2, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 523
    sget-object v6, Lcom/meizu/provider/ProtectedFiles$ProtectFile;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 525
    .local v3, uri:Landroid/net/Uri;
    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v6, "file_path"

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 522
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 531
    .end local v3           #uri:Landroid/net/Uri;
    :cond_2
    :try_start_0
    iget-object v4, p0, Lcom/meizu/security/FileProtectManager;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "com.meizu.protectfile"

    invoke-virtual {v4, v6, v2}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 532
    const/4 v4, 0x1

    goto :goto_0

    .line 533
    :catch_0
    move-exception v0

    .line 534
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .end local v0           #e:Landroid/os/RemoteException;
    :goto_2
    move v4, v5

    .line 538
    goto :goto_0

    .line 535
    :catch_1
    move-exception v0

    .line 536
    .local v0, e:Landroid/content/OperationApplicationException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2
.end method

.method public deletePath(Ljava/lang/String;)Z
    .locals 1
    .parameter "path"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/meizu/security/FpmNotExistException;
        }
    .end annotation

    .prologue
    .line 393
    iget-object v0, p0, Lcom/meizu/security/FileProtectManager;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v0, p1}, Lcom/meizu/provider/ProtectedFiles$ProtectFile;->delete(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public deletePaths(Ljava/util/ArrayList;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/meizu/security/FpmNotExistException;
        }
    .end annotation

    .prologue
    .line 404
    .local p1, paths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/meizu/security/FileProtectManager;->deletePathsInternal(Ljava/util/ArrayList;Z)Z

    move-result v0

    return v0
.end method

.method public deletePathsIgnoreException(Ljava/util/ArrayList;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 414
    .local p1, paths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/meizu/security/FileProtectManager;->deletePathsInternal(Ljava/util/ArrayList;Z)Z

    move-result v0

    return v0
.end method

.method public getAllChildren(Ljava/lang/String;ILcom/meizu/security/FileProtectManager$PathFilter;)Ljava/util/ArrayList;
    .locals 10
    .parameter "path"
    .parameter "childType"
    .parameter "filter"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcom/meizu/security/FileProtectManager$PathFilter;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 281
    packed-switch p2, :pswitch_data_0

    .line 291
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "childType must be either CHILD_FIRST_LEVEL or CHILD_ALL."

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 283
    :pswitch_0
    const/16 v7, 0x8

    .line 294
    .local v7, filterType:I
    :goto_0
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 295
    .local v8, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v0, Lcom/meizu/provider/ProtectedFiles$ProtectFile;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "filter_type"

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 299
    .local v1, uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/meizu/security/FileProtectManager;->mResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "file_path"

    aput-object v4, v2, v5

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 301
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_3

    .line 303
    const/4 v0, -0x1

    :try_start_0
    invoke-interface {v6, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 304
    :cond_0
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 305
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/meizu/provider/ProtectedFiles;->EXTERNAL_DIR_END_WITH_DIV:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 306
    .local v9, pathname:Ljava/lang/String;
    if-eqz p3, :cond_1

    .line 307
    invoke-interface {p3, v9}, Lcom/meizu/security/FileProtectManager$PathFilter;->accept(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 308
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 315
    .end local v9           #pathname:Ljava/lang/String;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 287
    .end local v1           #uri:Landroid/net/Uri;
    .end local v6           #c:Landroid/database/Cursor;
    .end local v7           #filterType:I
    .end local v8           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_1
    const/4 v7, 0x4

    .line 288
    .restart local v7       #filterType:I
    goto :goto_0

    .line 311
    .restart local v1       #uri:Landroid/net/Uri;
    .restart local v6       #c:Landroid/database/Cursor;
    .restart local v8       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v9       #pathname:Ljava/lang/String;
    :cond_1
    :try_start_1
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 315
    .end local v9           #pathname:Ljava/lang/String;
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 321
    :goto_2
    return-object v8

    .line 318
    :cond_3
    const/4 v8, 0x0

    goto :goto_2

    .line 281
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isGlobalUnlockFile(Ljava/lang/String;)Z
    .locals 3
    .parameter "path"

    .prologue
    .line 223
    :try_start_0
    invoke-direct {p0}, Lcom/meizu/security/FileProtectManager;->getService()Lmeizu/app/IFileProtect;

    move-result-object v1

    invoke-interface {v1, p1}, Lmeizu/app/IFileProtect;->isGlobalUnlockFile(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 227
    :goto_0
    return v1

    .line 224
    :catch_0
    move-exception v0

    .line 225
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Lcom/meizu/security/FileProtectManager;->TAG:Ljava/lang/String;

    const-string v2, "isGlobalUnlockFile"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 227
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isLockPasswordEnabled()Z
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/meizu/security/FileProtectManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled()Z

    move-result v0

    return v0
.end method

.method public registerProtectedFilesChangedListener(Lcom/meizu/security/FileProtectManager$OnChangedListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    .line 548
    iput-object p1, p0, Lcom/meizu/security/FileProtectManager;->mOnChangedListener:Lcom/meizu/security/FileProtectManager$OnChangedListener;

    .line 550
    iget-object v0, p0, Lcom/meizu/security/FileProtectManager;->mObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_0

    .line 551
    new-instance v0, Lcom/meizu/security/FileProtectManager$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/meizu/security/FileProtectManager$2;-><init>(Lcom/meizu/security/FileProtectManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/meizu/security/FileProtectManager;->mObserver:Landroid/database/ContentObserver;

    .line 561
    iget-object v0, p0, Lcom/meizu/security/FileProtectManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/meizu/provider/ProtectedFiles$ProtectFile;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/meizu/security/FileProtectManager;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 563
    :cond_0
    return-void
.end method

.method public requestGranted(ZI)V
    .locals 3
    .parameter "silent"
    .parameter "duration"

    .prologue
    .line 598
    :try_start_0
    invoke-direct {p0}, Lcom/meizu/security/FileProtectManager;->getService()Lmeizu/app/IFileProtect;

    move-result-object v1

    invoke-direct {p0}, Lcom/meizu/security/FileProtectManager;->getNotifier()Lcom/meizu/security/FileProtectManager$Notifier;

    move-result-object v2

    invoke-interface {v1, p1, v2, p2}, Lmeizu/app/IFileProtect;->requestGranted(ZLmeizu/app/INotifier;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 602
    :goto_0
    return-void

    .line 599
    :catch_0
    move-exception v0

    .line 600
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Lcom/meizu/security/FileProtectManager;->TAG:Ljava/lang/String;

    const-string v2, "requestGranted"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setGrantChangedListener(Lcom/meizu/security/FileProtectManager$OnGrantChangedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 609
    iput-object p1, p0, Lcom/meizu/security/FileProtectManager;->mGrantChangedListener:Lcom/meizu/security/FileProtectManager$OnGrantChangedListener;

    .line 610
    return-void
.end method

.method public setNewLockPassword(Lcom/meizu/security/FileProtectManager$OnSetLockPasswordResultListener;)V
    .locals 3
    .parameter "l"

    .prologue
    .line 184
    :try_start_0
    iput-object p1, p0, Lcom/meizu/security/FileProtectManager;->mSetLockPasswordResultListener:Lcom/meizu/security/FileProtectManager$OnSetLockPasswordResultListener;

    .line 185
    invoke-direct {p0}, Lcom/meizu/security/FileProtectManager;->getService()Lmeizu/app/IFileProtect;

    move-result-object v1

    invoke-direct {p0}, Lcom/meizu/security/FileProtectManager;->getNotifier()Lcom/meizu/security/FileProtectManager$Notifier;

    move-result-object v2

    invoke-interface {v1, v2}, Lmeizu/app/IFileProtect;->openPassword(Lmeizu/app/INotifier;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    :goto_0
    return-void

    .line 186
    :catch_0
    move-exception v0

    .line 187
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Lcom/meizu/security/FileProtectManager;->TAG:Ljava/lang/String;

    const-string v2, "setNewLockPassword"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public unregisterProtectedFilesChangedListener()V
    .locals 2

    .prologue
    .line 570
    iget-object v0, p0, Lcom/meizu/security/FileProtectManager;->mObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 571
    iget-object v0, p0, Lcom/meizu/security/FileProtectManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/meizu/security/FileProtectManager;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 572
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/security/FileProtectManager;->mObserver:Landroid/database/ContentObserver;

    .line 574
    :cond_0
    return-void
.end method

.method public updatePath(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .parameter "oldPath"
    .parameter "newPath"

    .prologue
    const/4 v4, 0x0

    .line 450
    sget-object v2, Lcom/meizu/provider/ProtectedFiles$ProtectFile;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 451
    .local v0, uri:Landroid/net/Uri;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 452
    .local v1, value:Landroid/content/ContentValues;
    const-string v2, "file_path"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    iget-object v2, p0, Lcom/meizu/security/FileProtectManager;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v2, v0, v1, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 454
    const/4 v2, 0x1

    return v2
.end method

.method public updatePaths(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 8
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, oldPaths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, newPaths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 464
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-eq v4, v6, :cond_1

    :cond_0
    move v4, v5

    .line 487
    :goto_0
    return v4

    .line 470
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 471
    .local v2, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 472
    sget-object v6, Lcom/meizu/provider/ProtectedFiles$ProtectFile;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 474
    .local v3, uri:Landroid/net/Uri;
    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v6, "file_path"

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 471
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 480
    .end local v3           #uri:Landroid/net/Uri;
    :cond_2
    :try_start_0
    iget-object v4, p0, Lcom/meizu/security/FileProtectManager;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "com.meizu.protectfile"

    invoke-virtual {v4, v6, v2}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 481
    const/4 v4, 0x1

    goto :goto_0

    .line 482
    :catch_0
    move-exception v0

    .line 483
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .end local v0           #e:Landroid/os/RemoteException;
    :goto_2
    move v4, v5

    .line 487
    goto :goto_0

    .line 484
    :catch_1
    move-exception v0

    .line 485
    .local v0, e:Landroid/content/OperationApplicationException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2
.end method
