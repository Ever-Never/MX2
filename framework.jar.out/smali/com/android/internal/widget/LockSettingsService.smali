.class public Lcom/android/internal/widget/LockSettingsService;
.super Lcom/android/internal/widget/ILockSettings$Stub;
.source "LockSettingsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/LockSettingsService$DatabaseHelper;
    }
.end annotation


# static fields
.field private static final COLUMNS_FOR_QUERY:[Ljava/lang/String; = null

.field private static final COLUMN_KEY:Ljava/lang/String; = "name"

.field private static final COLUMN_USERID:Ljava/lang/String; = "user"

.field private static final COLUMN_VALUE:Ljava/lang/String; = "value"

.field private static final LOCK_FINDPHONE_PASSWORD_FILE:Ljava/lang/String; = "FindPhonePassword.key"

.field private static final LOCK_PASSWORD_FILE:Ljava/lang/String; = "password.key"

.field private static final LOCK_PATTERN_FILE:Ljava/lang/String; = "gesture.key"

.field public static final MAX_TIMES_OF_CHECK_PASSWORD:I = 0xf

.field public static final PASSWORD_TYPE_LEFT_COUNT:Ljava/lang/String; = "lockscreen.password_left_count"

.field private static final SYSTEM_DIRECTORY:Ljava/lang/String; = "/system/"

.field private static final TABLE:Ljava/lang/String; = "locksettings"

.field private static final TAG:Ljava/lang/String;

.field private static final VALID_SETTINGS:[Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field mFindPhoneConnection:Landroid/content/ServiceConnection;

.field private final mOpenHelper:Lcom/android/internal/widget/LockSettingsService$DatabaseHelper;

.field private mPasswordLeftTimes:I

.field mPowerManager:Landroid/os/PowerManager;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 58
    const-class v0, Lcom/android/internal/widget/LockSettingsService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/widget/LockSettingsService;->TAG:Ljava/lang/String;

    .line 65
    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v1, "value"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/internal/widget/LockSettingsService;->COLUMNS_FOR_QUERY:[Ljava/lang/String;

    .line 457
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "lockscreen.lockedoutpermanently"

    aput-object v1, v0, v2

    const-string v1, "lockscreen.lockoutattemptdeadline"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "lockscreen.patterneverchosen"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "lockscreen.password_type"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "lockscreen.password_type_alternate"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "lockscreen.password_salt"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "lockscreen.disabled"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "lockscreen.options"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "lockscreen.biometric_weak_fallback"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "lockscreen.biometricweakeverchosen"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "lockscreen.power_button_instantly_locks"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "lockscreen.passwordhistory"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "lock_pattern_autolock"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "lock_biometric_weak_flags"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "lock_pattern_visible_pattern"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "lock_pattern_tactile_feedback_enabled"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/widget/LockSettingsService;->VALID_SETTINGS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/android/internal/widget/ILockSettings$Stub;-><init>()V

    .line 76
    const/16 v0, 0xf

    iput v0, p0, Lcom/android/internal/widget/LockSettingsService;->mPasswordLeftTimes:I

    .line 478
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/LockSettingsService;->mPowerManager:Landroid/os/PowerManager;

    .line 558
    new-instance v0, Lcom/android/internal/widget/LockSettingsService$1;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/LockSettingsService$1;-><init>(Lcom/android/internal/widget/LockSettingsService;)V

    iput-object v0, p0, Lcom/android/internal/widget/LockSettingsService;->mFindPhoneConnection:Landroid/content/ServiceConnection;

    .line 83
    iput-object p1, p0, Lcom/android/internal/widget/LockSettingsService;->mContext:Landroid/content/Context;

    .line 85
    new-instance v0, Lcom/android/internal/widget/LockSettingsService$DatabaseHelper;

    iget-object v1, p0, Lcom/android/internal/widget/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/widget/LockSettingsService$DatabaseHelper;-><init>(Lcom/android/internal/widget/LockSettingsService;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/widget/LockSettingsService;->mOpenHelper:Lcom/android/internal/widget/LockSettingsService$DatabaseHelper;

    .line 86
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/widget/LockSettingsService;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/widget/LockSettingsService;->writeToDb(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/android/internal/widget/LockSettingsService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/widget/LockSettingsService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/internal/widget/LockSettingsService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private static final checkPasswordReadPermission(I)V
    .locals 4
    .parameter "userId"

    .prologue
    .line 138
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 139
    .local v0, callingUid:I
    const/16 v1, 0x7d3

    if-ne v0, v1, :cond_1

    .line 146
    :cond_0
    return-void

    .line 142
    :cond_1
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_0

    .line 143
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not authorized to read lock password"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static final checkReadPermission(I)V
    .locals 4
    .parameter "userId"

    .prologue
    .line 149
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 150
    .local v0, callingUid:I
    const/16 v1, 0x7d3

    if-ne v0, v1, :cond_1

    .line 158
    :cond_0
    return-void

    .line 153
    :cond_1
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    if-eq v1, p0, :cond_0

    .line 155
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not authorized to read settings of user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static final checkWritePermission(I)V
    .locals 4
    .parameter "userId"

    .prologue
    .line 127
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 128
    .local v0, callingUid:I
    const/16 v1, 0x7d3

    if-ne v0, v1, :cond_1

    .line 135
    :cond_0
    return-void

    .line 131
    :cond_1
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_0

    .line 132
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not authorized to write lock settings"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getLockFindPhoneFilename()Ljava/lang/String;
    .locals 3

    .prologue
    .line 487
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/system/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 490
    .local v0, dataSystemDirectory:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "FindPhonePassword.key"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getLockPasswordFilename(I)Ljava/lang/String;
    .locals 4
    .parameter "userId"

    .prologue
    .line 219
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/system/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 222
    .local v0, dataSystemDirectory:Ljava/lang/String;
    if-nez p1, :cond_0

    .line 224
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "password.key"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 226
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "password.key"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getLockPatternFilename(I)Ljava/lang/String;
    .locals 4
    .parameter "userId"

    .prologue
    .line 206
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/system/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 209
    .local v0, dataSystemDirectory:Ljava/lang/String;
    if-nez p1, :cond_0

    .line 211
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "gesture.key"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 213
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v2

    const-string v3, "gesture.key"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private migrateOldData()V
    .locals 10

    .prologue
    .line 106
    :try_start_0
    const-string/jumbo v7, "migrated"

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {p0, v7, v8, v9}, Lcom/android/internal/widget/LockSettingsService;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 124
    :goto_0
    return-void

    .line 111
    :cond_0
    iget-object v7, p0, Lcom/android/internal/widget/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 112
    .local v1, cr:Landroid/content/ContentResolver;
    sget-object v0, Lcom/android/internal/widget/LockSettingsService;->VALID_SETTINGS:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v5, v0, v2

    .line 113
    .local v5, validSetting:Ljava/lang/String;
    invoke-static {v1, v5}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 114
    .local v6, value:Ljava/lang/String;
    if-eqz v6, :cond_1

    .line 115
    const/4 v7, 0x0

    invoke-virtual {p0, v5, v6, v7}, Lcom/android/internal/widget/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 112
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 119
    .end local v5           #validSetting:Ljava/lang/String;
    .end local v6           #value:Ljava/lang/String;
    :cond_2
    const-string/jumbo v7, "migrated"

    const-string/jumbo v8, "true"

    const/4 v9, 0x0

    invoke-virtual {p0, v7, v8, v9}, Lcom/android/internal/widget/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 120
    sget-object v7, Lcom/android/internal/widget/LockSettingsService;->TAG:Ljava/lang/String;

    const-string v8, "Migrated lock settings to new location"

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 121
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #cr:Landroid/content/ContentResolver;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :catch_0
    move-exception v4

    .line 122
    .local v4, re:Landroid/os/RemoteException;
    sget-object v7, Lcom/android/internal/widget/LockSettingsService;->TAG:Ljava/lang/String;

    const-string v8, "Unable to migrate old data"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private readFromDb(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 11
    .parameter "key"
    .parameter "defaultValue"
    .parameter "userId"

    .prologue
    const/4 v10, 0x0

    const/4 v5, 0x0

    .line 402
    move-object v9, p2

    .line 403
    .local v9, result:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/widget/LockSettingsService;->mOpenHelper:Lcom/android/internal/widget/LockSettingsService$DatabaseHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 404
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "locksettings"

    sget-object v2, Lcom/android/internal/widget/LockSettingsService;->COLUMNS_FOR_QUERY:[Ljava/lang/String;

    const-string/jumbo v3, "user=? AND name=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v10

    const/4 v6, 0x1

    aput-object p1, v4, v6

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .local v8, cursor:Landroid/database/Cursor;
    if-eqz v8, :cond_1

    .line 408
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 409
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 411
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 413
    :cond_1
    return-object v9
.end method

.method private writeFile(Ljava/lang/String;[B)V
    .locals 5
    .parameter "name"
    .parameter "hash"

    .prologue
    .line 366
    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string/jumbo v2, "rw"

    invoke-direct {v1, p1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    .local v1, raf:Ljava/io/RandomAccessFile;
    if-eqz p2, :cond_0

    array-length v2, p2

    if-nez v2, :cond_1

    .line 369
    :cond_0
    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 373
    :goto_0
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    .line 377
    .end local v1           #raf:Ljava/io/RandomAccessFile;
    :goto_1
    return-void

    .line 371
    .restart local v1       #raf:Ljava/io/RandomAccessFile;
    :cond_1
    const/4 v2, 0x0

    array-length v3, p2

    invoke-virtual {v1, p2, v2, v3}, Ljava/io/RandomAccessFile;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 374
    .end local v1           #raf:Ljava/io/RandomAccessFile;
    :catch_0
    move-exception v0

    .line 375
    .local v0, ioe:Ljava/io/IOException;
    sget-object v2, Lcom/android/internal/widget/LockSettingsService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error writing to file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private writeToDb(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6
    .parameter "db"
    .parameter "key"
    .parameter "value"
    .parameter "userId"

    .prologue
    .line 384
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 385
    .local v0, cv:Landroid/content/ContentValues;
    const-string/jumbo v1, "name"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    const-string/jumbo v1, "user"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 387
    const-string/jumbo v1, "value"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 391
    :try_start_0
    const-string v1, "locksettings"

    const-string/jumbo v2, "name=? AND user=?"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    const/4 v4, 0x1

    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p1, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 393
    const-string v1, "locksettings"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 394
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 396
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 398
    return-void

    .line 396
    :catchall_0
    move-exception v1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1
.end method

.method private writeToDb(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .parameter "key"
    .parameter "value"
    .parameter "userId"

    .prologue
    .line 380
    iget-object v0, p0, Lcom/android/internal/widget/LockSettingsService;->mOpenHelper:Lcom/android/internal/widget/LockSettingsService$DatabaseHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/internal/widget/LockSettingsService;->writeToDb(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;I)V

    .line 381
    return-void
.end method


# virtual methods
.method public checkPassword([BI)Z
    .locals 12
    .parameter "hash"
    .parameter "userId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    const/16 v10, 0xf

    .line 289
    invoke-static {p2}, Lcom/android/internal/widget/LockSettingsService;->checkPasswordReadPermission(I)V

    .line 292
    const/4 v4, 0x0

    .line 295
    .local v4, ret:Z
    :try_start_0
    new-instance v3, Ljava/io/RandomAccessFile;

    invoke-direct {p0, p2}, Lcom/android/internal/widget/LockSettingsService;->getLockPasswordFilename(I)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "r"

    invoke-direct {v3, v7, v8}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    .local v3, raf:Ljava/io/RandomAccessFile;
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v7

    long-to-int v7, v7

    new-array v6, v7, [B

    .line 297
    .local v6, stored:[B
    const/4 v7, 0x0

    array-length v8, v6

    invoke-virtual {v3, v6, v7, v8}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v1

    .line 298
    .local v1, got:I
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V

    .line 299
    if-gtz v1, :cond_1

    .line 300
    const/16 v7, 0xf

    iput v7, p0, Lcom/android/internal/widget/LockSettingsService;->mPasswordLeftTimes:I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 301
    const/4 v4, 0x1

    .line 321
    .end local v1           #got:I
    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .end local v6           #stored:[B
    :goto_0
    const-string v7, "lockscreen.password_left_count"

    iget v8, p0, Lcom/android/internal/widget/LockSettingsService;->mPasswordLeftTimes:I

    int-to-long v8, v8

    invoke-virtual {p0, v7, v8, v9, v11}, Lcom/android/internal/widget/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    .line 322
    iget v7, p0, Lcom/android/internal/widget/LockSettingsService;->mPasswordLeftTimes:I

    if-gtz v7, :cond_0

    .line 323
    sget-object v7, Lcom/android/internal/widget/LockSettingsService;->TAG:Ljava/lang/String;

    const-string v8, "begin bindservice-------------"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 325
    .local v5, serviceIntent:Landroid/content/Intent;
    const-class v7, Lcom/meizu/flyme/service/find/IPhoneLocationService;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 326
    iget-object v7, p0, Lcom/android/internal/widget/LockSettingsService;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/internal/widget/LockSettingsService;->mFindPhoneConnection:Landroid/content/ServiceConnection;

    const/4 v9, 0x1

    invoke-virtual {v7, v5, v8, v9}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 328
    .end local v5           #serviceIntent:Landroid/content/Intent;
    :cond_0
    return v4

    .line 304
    .restart local v1       #got:I
    .restart local v3       #raf:Ljava/io/RandomAccessFile;
    .restart local v6       #stored:[B
    :cond_1
    :try_start_1
    invoke-static {v6, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 305
    const/16 v7, 0xf

    iput v7, p0, Lcom/android/internal/widget/LockSettingsService;->mPasswordLeftTimes:I

    .line 306
    const/4 v4, 0x1

    goto :goto_0

    .line 308
    :cond_2
    iget v7, p0, Lcom/android/internal/widget/LockSettingsService;->mPasswordLeftTimes:I

    add-int/lit8 v7, v7, -0x1

    iput v7, p0, Lcom/android/internal/widget/LockSettingsService;->mPasswordLeftTimes:I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 309
    const/4 v4, 0x0

    goto :goto_0

    .line 312
    .end local v1           #got:I
    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .end local v6           #stored:[B
    :catch_0
    move-exception v0

    .line 313
    .local v0, fnfe:Ljava/io/FileNotFoundException;
    sget-object v7, Lcom/android/internal/widget/LockSettingsService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cannot read file "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    iput v10, p0, Lcom/android/internal/widget/LockSettingsService;->mPasswordLeftTimes:I

    .line 315
    const/4 v4, 0x1

    .line 320
    goto :goto_0

    .line 316
    .end local v0           #fnfe:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v2

    .line 317
    .local v2, ioe:Ljava/io/IOException;
    sget-object v7, Lcom/android/internal/widget/LockSettingsService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cannot read file "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    iput v10, p0, Lcom/android/internal/widget/LockSettingsService;->mPasswordLeftTimes:I

    .line 319
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public checkPattern([BI)Z
    .locals 9
    .parameter "hash"
    .parameter "userId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 254
    invoke-static {p2}, Lcom/android/internal/widget/LockSettingsService;->checkPasswordReadPermission(I)V

    .line 257
    :try_start_0
    new-instance v3, Ljava/io/RandomAccessFile;

    invoke-direct {p0, p2}, Lcom/android/internal/widget/LockSettingsService;->getLockPatternFilename(I)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "r"

    invoke-direct {v3, v6, v7}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    .local v3, raf:Ljava/io/RandomAccessFile;
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v6

    long-to-int v6, v6

    new-array v4, v6, [B

    .line 259
    .local v4, stored:[B
    const/4 v6, 0x0

    array-length v7, v4

    invoke-virtual {v3, v4, v6, v7}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v1

    .line 260
    .local v1, got:I
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V

    .line 261
    if-gtz v1, :cond_0

    .line 271
    .end local v1           #got:I
    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .end local v4           #stored:[B
    :goto_0
    return v5

    .line 265
    .restart local v1       #got:I
    .restart local v3       #raf:Ljava/io/RandomAccessFile;
    .restart local v4       #stored:[B
    :cond_0
    invoke-static {v4, p1}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v5

    goto :goto_0

    .line 266
    .end local v1           #got:I
    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .end local v4           #stored:[B
    :catch_0
    move-exception v0

    .line 267
    .local v0, fnfe:Ljava/io/FileNotFoundException;
    sget-object v6, Lcom/android/internal/widget/LockSettingsService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot read file "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 269
    .end local v0           #fnfe:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v2

    .line 270
    .local v2, ioe:Ljava/io/IOException;
    sget-object v6, Lcom/android/internal/widget/LockSettingsService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot read file "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getBoolean(Ljava/lang/String;ZI)Z
    .locals 2
    .parameter "key"
    .parameter "defaultValue"
    .parameter "userId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 185
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, p3}, Lcom/android/internal/widget/LockSettingsService;->readFromDb(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 186
    .local v0, value:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .end local p2
    :goto_0
    return p2

    .restart local p2
    :cond_0
    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 p2, 0x1

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    goto :goto_0
.end method

.method public getLong(Ljava/lang/String;JI)J
    .locals 2
    .parameter "key"
    .parameter "defaultValue"
    .parameter "userId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 194
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, p4}, Lcom/android/internal/widget/LockSettingsService;->readFromDb(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 195
    .local v0, value:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .end local p2
    :goto_0
    return-wide p2

    .restart local p2
    :cond_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p2

    goto :goto_0
.end method

.method public getPasswordLeftTimes()I
    .locals 1

    .prologue
    .line 337
    iget v0, p0, Lcom/android/internal/widget/LockSettingsService;->mPasswordLeftTimes:I

    return v0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .parameter "key"
    .parameter "defaultValue"
    .parameter "userId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 202
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/widget/LockSettingsService;->readFromDb(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public haveFindPhonePassword()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 483
    new-instance v0, Ljava/io/File;

    invoke-direct {p0}, Lcom/android/internal/widget/LockSettingsService;->getLockFindPhoneFilename()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public havePassword(I)Z
    .locals 4
    .parameter "userId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 235
    new-instance v0, Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockSettingsService;->getLockPasswordFilename(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public havePattern(I)Z
    .locals 4
    .parameter "userId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 242
    new-instance v0, Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockSettingsService;->getLockPatternFilename(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFindphoneLocked()Z
    .locals 9

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 498
    :try_start_0
    new-instance v3, Ljava/io/RandomAccessFile;

    invoke-direct {p0}, Lcom/android/internal/widget/LockSettingsService;->getLockFindPhoneFilename()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v8, "r"

    invoke-direct {v3, v5, v8}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    .local v3, raf:Ljava/io/RandomAccessFile;
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v2

    .line 500
    .local v2, isLocked:I
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V

    .line 502
    iget-object v5, p0, Lcom/android/internal/widget/LockSettingsService;->mPowerManager:Landroid/os/PowerManager;

    if-nez v5, :cond_0

    .line 503
    iget-object v5, p0, Lcom/android/internal/widget/LockSettingsService;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "power"

    invoke-virtual {v5, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/PowerManager;

    iput-object v5, p0, Lcom/android/internal/widget/LockSettingsService;->mPowerManager:Landroid/os/PowerManager;

    .line 505
    :cond_0
    const/4 v4, 0x0

    .line 506
    .local v4, recoveryLockState:I
    iget-object v5, p0, Lcom/android/internal/widget/LockSettingsService;->mPowerManager:Landroid/os/PowerManager;

    if-eqz v5, :cond_1

    .line 507
    iget-object v5, p0, Lcom/android/internal/widget/LockSettingsService;->mPowerManager:Landroid/os/PowerManager;

    sget-object v8, Landroid/os/PowerManager$RemoteHandle;->Lock:Landroid/os/PowerManager$RemoteHandle;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/os/PowerManager;->doCheckState(I)I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    .line 510
    :cond_1
    if-eq v2, v7, :cond_2

    if-ne v4, v7, :cond_3

    :cond_2
    move v5, v7

    .line 518
    .end local v2           #isLocked:I
    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .end local v4           #recoveryLockState:I
    :goto_0
    return v5

    .restart local v2       #isLocked:I
    .restart local v3       #raf:Ljava/io/RandomAccessFile;
    .restart local v4       #recoveryLockState:I
    :cond_3
    move v5, v6

    .line 513
    goto :goto_0

    .line 515
    .end local v2           #isLocked:I
    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .end local v4           #recoveryLockState:I
    :catch_0
    move-exception v0

    .local v0, fnfe:Ljava/io/FileNotFoundException;
    move v5, v6

    .line 516
    goto :goto_0

    .line 517
    .end local v0           #fnfe:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .local v1, ioe:Ljava/io/IOException;
    move v5, v6

    .line 518
    goto :goto_0
.end method

.method public removeUser(I)V
    .locals 5
    .parameter "userId"

    .prologue
    .line 342
    invoke-static {p1}, Lcom/android/internal/widget/LockSettingsService;->checkWritePermission(I)V

    .line 344
    iget-object v2, p0, Lcom/android/internal/widget/LockSettingsService;->mOpenHelper:Lcom/android/internal/widget/LockSettingsService$DatabaseHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 346
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockSettingsService;->getLockPasswordFilename(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 347
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 348
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 350
    :cond_0
    new-instance v1, Ljava/io/File;

    .end local v1           #file:Ljava/io/File;
    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockSettingsService;->getLockPatternFilename(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 351
    .restart local v1       #file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 352
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 355
    :cond_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 356
    const-string v2, "locksettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "user=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 357
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 359
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 361
    return-void

    .line 359
    .end local v1           #file:Ljava/io/File;
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2
.end method

.method public resetPasswordLeftTime()V
    .locals 5

    .prologue
    .line 585
    const/16 v1, 0xf

    iput v1, p0, Lcom/android/internal/widget/LockSettingsService;->mPasswordLeftTimes:I

    .line 587
    :try_start_0
    const-string v1, "lockscreen.password_left_count"

    iget v2, p0, Lcom/android/internal/widget/LockSettingsService;->mPasswordLeftTimes:I

    int-to-long v2, v2

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/internal/widget/LockSettingsService;->setLong(Ljava/lang/String;JI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 591
    :goto_0
    return-void

    .line 588
    :catch_0
    move-exception v0

    .line 589
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public setBoolean(Ljava/lang/String;ZI)V
    .locals 1
    .parameter "key"
    .parameter "value"
    .parameter "userId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 162
    invoke-static {p3}, Lcom/android/internal/widget/LockSettingsService;->checkWritePermission(I)V

    .line 164
    if-eqz p2, :cond_0

    const-string v0, "1"

    :goto_0
    invoke-direct {p0, p1, v0, p3}, Lcom/android/internal/widget/LockSettingsService;->writeToDb(Ljava/lang/String;Ljava/lang/String;I)V

    .line 165
    return-void

    .line 164
    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.method public setFindPhoneLockState(Z)V
    .locals 8
    .parameter "isLock"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 524
    iget-object v4, p0, Lcom/android/internal/widget/LockSettingsService;->mPowerManager:Landroid/os/PowerManager;

    if-nez v4, :cond_0

    .line 525
    iget-object v4, p0, Lcom/android/internal/widget/LockSettingsService;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "power"

    invoke-virtual {v4, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    iput-object v4, p0, Lcom/android/internal/widget/LockSettingsService;->mPowerManager:Landroid/os/PowerManager;

    .line 527
    :cond_0
    iget-object v4, p0, Lcom/android/internal/widget/LockSettingsService;->mPowerManager:Landroid/os/PowerManager;

    if-eqz v4, :cond_1

    .line 528
    iget-object v7, p0, Lcom/android/internal/widget/LockSettingsService;->mPowerManager:Landroid/os/PowerManager;

    if-eqz p1, :cond_3

    move v4, v5

    :goto_0
    invoke-virtual {v7, v4}, Landroid/os/PowerManager;->setLockState(I)I

    .line 531
    :cond_1
    const/4 v2, 0x0

    .line 533
    .local v2, raf:Ljava/io/RandomAccessFile;
    :try_start_0
    new-instance v3, Ljava/io/RandomAccessFile;

    invoke-direct {p0}, Lcom/android/internal/widget/LockSettingsService;->getLockFindPhoneFilename()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "rw"

    invoke-direct {v3, v4, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 534
    .end local v2           #raf:Ljava/io/RandomAccessFile;
    .local v3, raf:Ljava/io/RandomAccessFile;
    if-eqz p1, :cond_4

    .line 535
    const/4 v4, 0x1

    :try_start_1
    invoke-virtual {v3, v4}, Ljava/io/RandomAccessFile;->writeByte(I)V

    .line 536
    sget-object v4, Lcom/android/internal/widget/LockSettingsService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "enableLockSecurity(1)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0}, Lcom/android/internal/widget/LockSettingsService;->getLockFindPhoneFilename()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    :goto_1
    move-object v2, v3

    .line 549
    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .restart local v2       #raf:Ljava/io/RandomAccessFile;
    :goto_2
    if-eqz v2, :cond_2

    .line 551
    :try_start_2
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 556
    :cond_2
    :goto_3
    return-void

    .end local v2           #raf:Ljava/io/RandomAccessFile;
    :cond_3
    move v4, v6

    .line 528
    goto :goto_0

    .line 538
    .restart local v3       #raf:Ljava/io/RandomAccessFile;
    :cond_4
    const/4 v4, 0x0

    :try_start_3
    invoke-virtual {v3, v4}, Ljava/io/RandomAccessFile;->writeByte(I)V

    .line 539
    sget-object v4, Lcom/android/internal/widget/LockSettingsService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "enableLockSecurity(0)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0}, Lcom/android/internal/widget/LockSettingsService;->getLockFindPhoneFilename()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_1

    .line 541
    :catch_0
    move-exception v0

    move-object v2, v3

    .line 542
    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .local v0, e:Ljava/io/FileNotFoundException;
    .restart local v2       #raf:Ljava/io/RandomAccessFile;
    :goto_4
    sget-object v4, Lcom/android/internal/widget/LockSettingsService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to save lock pattern to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0}, Lcom/android/internal/widget/LockSettingsService;->getLockFindPhoneFilename()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", e:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 544
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 546
    .local v1, ioe:Ljava/io/IOException;
    :goto_5
    sget-object v4, Lcom/android/internal/widget/LockSettingsService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to save lock pattern to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0}, Lcom/android/internal/widget/LockSettingsService;->getLockFindPhoneFilename()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", e:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 552
    .end local v1           #ioe:Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 553
    .local v0, e:Ljava/io/IOException;
    sget-object v4, Lcom/android/internal/widget/LockSettingsService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "saveLockPassword,close ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0}, Lcom/android/internal/widget/LockSettingsService;->getLockFindPhoneFilename()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") failed, err:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 544
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #raf:Ljava/io/RandomAccessFile;
    .restart local v3       #raf:Ljava/io/RandomAccessFile;
    :catch_3
    move-exception v1

    move-object v2, v3

    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .restart local v2       #raf:Ljava/io/RandomAccessFile;
    goto :goto_5

    .line 541
    :catch_4
    move-exception v0

    goto/16 :goto_4
.end method

.method public setLockPassword([BI)V
    .locals 4
    .parameter "hash"
    .parameter "userId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 277
    invoke-static {p2}, Lcom/android/internal/widget/LockSettingsService;->checkWritePermission(I)V

    .line 279
    invoke-direct {p0, p2}, Lcom/android/internal/widget/LockSettingsService;->getLockPasswordFilename(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/LockSettingsService;->writeFile(Ljava/lang/String;[B)V

    .line 282
    const/16 v0, 0xf

    iput v0, p0, Lcom/android/internal/widget/LockSettingsService;->mPasswordLeftTimes:I

    .line 283
    const-string v0, "lockscreen.password_left_count"

    iget v1, p0, Lcom/android/internal/widget/LockSettingsService;->mPasswordLeftTimes:I

    int-to-long v1, v1

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/widget/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    .line 285
    return-void
.end method

.method public setLockPattern([BI)V
    .locals 1
    .parameter "hash"
    .parameter "userId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 247
    invoke-static {p2}, Lcom/android/internal/widget/LockSettingsService;->checkWritePermission(I)V

    .line 249
    invoke-direct {p0, p2}, Lcom/android/internal/widget/LockSettingsService;->getLockPatternFilename(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/LockSettingsService;->writeFile(Ljava/lang/String;[B)V

    .line 250
    return-void
.end method

.method public setLong(Ljava/lang/String;JI)V
    .locals 1
    .parameter "key"
    .parameter "value"
    .parameter "userId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 169
    invoke-static {p4}, Lcom/android/internal/widget/LockSettingsService;->checkWritePermission(I)V

    .line 171
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p4}, Lcom/android/internal/widget/LockSettingsService;->writeToDb(Ljava/lang/String;Ljava/lang/String;I)V

    .line 172
    return-void
.end method

.method public setString(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .parameter "key"
    .parameter "value"
    .parameter "userId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 176
    invoke-static {p3}, Lcom/android/internal/widget/LockSettingsService;->checkWritePermission(I)V

    .line 178
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/widget/LockSettingsService;->writeToDb(Ljava/lang/String;Ljava/lang/String;I)V

    .line 179
    return-void
.end method

.method public systemReady()V
    .locals 6

    .prologue
    const/16 v5, 0xf

    .line 89
    invoke-direct {p0}, Lcom/android/internal/widget/LockSettingsService;->migrateOldData()V

    .line 92
    :try_start_0
    const-string v1, "lockscreen.password_left_count"

    const-wide/16 v2, 0xf

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/internal/widget/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    move-result-wide v1

    long-to-int v1, v1

    iput v1, p0, Lcom/android/internal/widget/LockSettingsService;->mPasswordLeftTimes:I

    .line 93
    sget-object v1, Lcom/android/internal/widget/LockSettingsService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LockSettingsService systemReady, now mPasswordLeftTimes is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/widget/LockSettingsService;->mPasswordLeftTimes:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget v1, p0, Lcom/android/internal/widget/LockSettingsService;->mPasswordLeftTimes:I

    if-lez v1, :cond_0

    iget v1, p0, Lcom/android/internal/widget/LockSettingsService;->mPasswordLeftTimes:I

    if-ge v1, v5, :cond_0

    .line 95
    const/16 v1, 0xf

    iput v1, p0, Lcom/android/internal/widget/LockSettingsService;->mPasswordLeftTimes:I

    .line 96
    const-string v1, "lockscreen.password_left_count"

    const-wide/16 v2, 0xf

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/internal/widget/LockSettingsService;->setLong(Ljava/lang/String;JI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 98
    :catch_0
    move-exception v0

    .line 99
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
