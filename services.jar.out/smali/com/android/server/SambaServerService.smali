.class Lcom/android/server/SambaServerService;
.super Lmeizu/samba/server/ISambaServerManager$Stub;
.source "SambaServerService.java"

# interfaces
.implements Lcom/android/server/INativeDaemonConnectorCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/SambaServerService$SambaHandler;,
        Lcom/android/server/SambaServerService$SharedItem;
    }
.end annotation


# static fields
.field private static final DEBUG_EVENTS:Z = false

.field private static final MAX_CONTAINERS:I = 0xfa

.field private static final MAX_NOTIFY_FOLDER_LEN:I = 0x1e

.field private static final MESSAGE_ADD_SHARED_FOLDERS:I = 0x2

.field private static final MESSAGE_REMOVE_ALL_SHARED_FOLDER:I = 0x4

.field private static final MESSAGE_REMOVE_SHARED_FOLDERS:I = 0x3

.field private static final SAMBA_TAG:Ljava/lang/String; = "SambaConnector"

.field private static final TAG:Ljava/lang/String; = "SambaServerService"


# instance fields
.field private mConnectivityReceiver:Landroid/content/BroadcastReceiver;

.field private mConnector:Lcom/android/server/NativeDaemonConnector;

.field private mContext:Landroid/content/Context;

.field private mIp:Ljava/lang/String;

.field private mLastEnableUid:I

.field private mNotification:Landroid/app/Notification;

.field private mNotificationShown:Z

.field private final mSambaHandler:Lcom/android/server/SambaServerService$SambaHandler;

.field private mServerRunning:Z

.field private mSharedItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/SambaServerService$SharedItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    .line 74
    invoke-direct {p0}, Lmeizu/samba/server/ISambaServerManager$Stub;-><init>()V

    .line 61
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/SambaServerService;->mIp:Ljava/lang/String;

    .line 246
    new-instance v0, Lcom/android/server/SambaServerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/SambaServerService$1;-><init>(Lcom/android/server/SambaServerService;)V

    iput-object v0, p0, Lcom/android/server/SambaServerService;->mConnectivityReceiver:Landroid/content/BroadcastReceiver;

    .line 75
    iput-object p1, p0, Lcom/android/server/SambaServerService;->mContext:Landroid/content/Context;

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/SambaServerService;->mSharedItemList:Ljava/util/ArrayList;

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/SambaServerService;->mServerRunning:Z

    .line 78
    new-instance v0, Lcom/android/server/NativeDaemonConnector;

    const-string v2, "vold"

    const/16 v3, 0x1f4

    const-string v4, "SambaConnector"

    const/16 v5, 0x19

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/NativeDaemonConnector;-><init>(Lcom/android/server/INativeDaemonConnectorCallbacks;Ljava/lang/String;ILjava/lang/String;I)V

    iput-object v0, p0, Lcom/android/server/SambaServerService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    .line 79
    new-instance v7, Ljava/lang/Thread;

    iget-object v0, p0, Lcom/android/server/SambaServerService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v1, "SambaConnector"

    invoke-direct {v7, v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 80
    .local v7, thread:Ljava/lang/Thread;
    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    .line 82
    new-instance v6, Landroid/os/HandlerThread;

    const-string v0, "SambaServerService"

    invoke-direct {v6, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 83
    .local v6, sambaThread:Landroid/os/HandlerThread;
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 84
    new-instance v0, Lcom/android/server/SambaServerService$SambaHandler;

    invoke-virtual {v6}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/SambaServerService$SambaHandler;-><init>(Lcom/android/server/SambaServerService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/SambaServerService;->mSambaHandler:Lcom/android/server/SambaServerService$SambaHandler;

    .line 85
    const-string v0, "SambaServerService"

    const-string v1, "SambaServerService started!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget-object v0, p0, Lcom/android/server/SambaServerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/SambaServerService;->mConnectivityReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 89
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/SambaServerService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/android/server/SambaServerService;->mServerRunning:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/server/SambaServerService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/android/server/SambaServerService;->mServerRunning:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/SambaServerService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/android/server/SambaServerService;->mNotificationShown:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/SambaServerService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/server/SambaServerService;->mIp:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/SambaServerService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/server/SambaServerService;->getConnectedWifiIp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/SambaServerService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/android/server/SambaServerService;->updateNotification(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/SambaServerService;)Lcom/android/server/NativeDaemonConnector;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/server/SambaServerService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/SambaServerService;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/server/SambaServerService;->mSharedItemList:Ljava/util/ArrayList;

    return-object v0
.end method

.method private getConnectedWifiIp()Ljava/lang/String;
    .locals 4

    .prologue
    .line 230
    iget-object v2, p0, Lcom/android/server/SambaServerService;->mContext:Landroid/content/Context;

    const-string v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 231
    .local v1, wifimanage:Landroid/net/wifi/WifiManager;
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 233
    const-string v2, ""

    .line 236
    :goto_0
    return-object v2

    .line 235
    :cond_0
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 236
    .local v0, wifiinfo:Landroid/net/wifi/WifiInfo;
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/SambaServerService;->intToIp(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private static getPathName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "path"

    .prologue
    .line 241
    const-string v2, "/"

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 242
    .local v1, pos:I
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 243
    .local v0, name:Ljava/lang/String;
    return-object v0
.end method

.method private intToIp(I)Ljava/lang/String;
    .locals 2
    .parameter "i"

    .prologue
    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    and-int/lit16 v1, p1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    shr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    shr-int/lit8 v1, p1, 0x10

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    shr-int/lit8 v1, p1, 0x18

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized updateNotification(Z)V
    .locals 18
    .parameter "visible"

    .prologue
    .line 261
    monitor-enter p0

    const/4 v7, 0x0

    .line 262
    .local v7, ignoreFolders:Z
    :try_start_0
    const-string v4, ""

    .line 264
    .local v4, folders:Ljava/lang/String;
    if-nez p1, :cond_0

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/SambaServerService;->mNotificationShown:Z

    if-nez v14, :cond_0

    .line 265
    const-string v14, "SambaServerService"

    const-string v15, "mNotificationShown not show now, donot need set inVisible, return"

    invoke-static {v14, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 341
    :goto_0
    monitor-exit p0

    return-void

    .line 268
    :cond_0
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/android/server/SambaServerService;->getConnectedWifiIp()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/SambaServerService;->mIp:Ljava/lang/String;

    .line 270
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/SambaServerService;->mSharedItemList:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v5, v14, :cond_3

    .line 271
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/SambaServerService;->mSharedItemList:Ljava/util/ArrayList;

    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/SambaServerService$SharedItem;

    .line 272
    .local v9, item:Lcom/android/server/SambaServerService$SharedItem;
    iget-object v14, v9, Lcom/android/server/SambaServerService$SharedItem;->path:Ljava/lang/String;

    invoke-static {v14}, Lcom/android/server/SambaServerService;->getPathName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 273
    .local v10, name:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_2

    .line 274
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v15

    add-int/2addr v14, v15

    const/16 v15, 0x1e

    if-le v14, v15, :cond_1

    .line 275
    const/4 v7, 0x1

    .line 270
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 278
    :cond_1
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 282
    :cond_2
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 284
    .end local v9           #item:Lcom/android/server/SambaServerService$SharedItem;
    .end local v10           #name:Ljava/lang/String;
    :cond_3
    if-eqz v7, :cond_4

    .line 285
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ".."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 286
    :cond_4
    const-string v14, "SambaServerService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "updateNotification visible "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " mIp "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/SambaServerService;->mIp:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " folders "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/SambaServerService;->mContext:Landroid/content/Context;

    const-string v15, "notification"

    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/NotificationManager;

    .line 292
    .local v11, notificationManager:Landroid/app/NotificationManager;
    const v12, 0x10806c7

    .line 293
    .local v12, picon:I
    const v6, 0x1080756

    .line 294
    .local v6, icon:I
    if-eqz p1, :cond_6

    .line 296
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/SambaServerService;->mNotification:Landroid/app/Notification;

    if-nez v14, :cond_5

    .line 298
    new-instance v14, Landroid/app/Notification;

    invoke-direct {v14}, Landroid/app/Notification;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/SambaServerService;->mNotification:Landroid/app/Notification;

    .line 299
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/SambaServerService;->mNotification:Landroid/app/Notification;

    const-wide/16 v15, 0x0

    iput-wide v15, v14, Landroid/app/Notification;->when:J

    .line 300
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/SambaServerService;->mNotification:Landroid/app/Notification;

    iput v12, v14, Landroid/app/Notification;->icon:I

    .line 301
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/SambaServerService;->mNotification:Landroid/app/Notification;

    iput v6, v14, Landroid/app/Notification;->notificationIcon:I

    .line 302
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/SambaServerService;->mNotification:Landroid/app/Notification;

    const/16 v15, 0x20

    iput v15, v14, Landroid/app/Notification;->flags:I

    .line 304
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 305
    .local v8, intent:Landroid/content/Intent;
    const-string v14, "com.meizu.filemanager"

    const-string v15, "com.meizu.filemanager.managefile.CloseWifiShareActivity"

    invoke-virtual {v8, v14, v15}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 306
    const/high16 v14, 0x4000

    invoke-virtual {v8, v14}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 308
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/SambaServerService;->mNotification:Landroid/app/Notification;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/SambaServerService;->mContext:Landroid/content/Context;

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v15, v0, v8, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v15

    iput-object v15, v14, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 313
    new-instance v2, Landroid/widget/RemoteViews;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/SambaServerService;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v14

    const v15, 0x10900ac

    invoke-direct {v2, v14, v15}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 316
    .local v2, contentView:Landroid/widget/RemoteViews;
    const v14, 0x1020006

    invoke-virtual {v2, v14, v6}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 317
    const v14, 0x102037c

    const/16 v15, 0x8

    invoke-virtual {v2, v14, v15}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 319
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/SambaServerService;->mNotification:Landroid/app/Notification;

    iput-object v2, v14, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 326
    .end local v2           #contentView:Landroid/widget/RemoteViews;
    .end local v8           #intent:Landroid/content/Intent;
    :cond_5
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "\""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\" "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/SambaServerService;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x104060a

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 327
    .local v13, title:Ljava/lang/CharSequence;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "IP: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/SambaServerService;->mIp:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 329
    .local v3, details:Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/SambaServerService;->mNotification:Landroid/app/Notification;

    iput-object v13, v14, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 330
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/SambaServerService;->mNotification:Landroid/app/Notification;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/SambaServerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/SambaServerService;->mNotification:Landroid/app/Notification;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v14, v15, v13, v3, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 331
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/SambaServerService;->mNotification:Landroid/app/Notification;

    iget-object v14, v14, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v15, 0x1020016

    invoke-virtual {v14, v15, v13}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 335
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/SambaServerService;->mNotification:Landroid/app/Notification;

    invoke-virtual {v11, v6, v14}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 340
    .end local v3           #details:Ljava/lang/CharSequence;
    .end local v13           #title:Ljava/lang/CharSequence;
    :goto_3
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/SambaServerService;->mNotificationShown:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 261
    .end local v4           #folders:Ljava/lang/String;
    .end local v5           #i:I
    .end local v6           #icon:I
    .end local v11           #notificationManager:Landroid/app/NotificationManager;
    .end local v12           #picon:I
    :catchall_0
    move-exception v14

    monitor-exit p0

    throw v14

    .line 337
    .restart local v4       #folders:Ljava/lang/String;
    .restart local v5       #i:I
    .restart local v6       #icon:I
    .restart local v11       #notificationManager:Landroid/app/NotificationManager;
    .restart local v12       #picon:I
    :cond_6
    :try_start_2
    invoke-virtual {v11, v6}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3
.end method


# virtual methods
.method public declared-synchronized addSharedFolders(Lmeizu/samba/server/LocalSharedFolder;)Z
    .locals 4
    .parameter "folders"

    .prologue
    .line 156
    monitor-enter p0

    :try_start_0
    const-string v1, "SambaServerService"

    const-string v2, "add share!"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iget-object v1, p0, Lcom/android/server/SambaServerService;->mSambaHandler:Lcom/android/server/SambaServerService$SambaHandler;

    const/4 v2, 0x2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 160
    .local v0, msg:Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 161
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 162
    const-string v1, "SambaServerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "send message: addSharedFolders:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    const/4 v1, 0x1

    monitor-exit p0

    return v1

    .line 156
    .end local v0           #msg:Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized isServerRunning()Z
    .locals 9

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 134
    monitor-enter p0

    :try_start_0
    const-string v4, "SambaServerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isServerRunning "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/server/SambaServerService;->mServerRunning:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    :try_start_1
    iget-object v4, p0, Lcom/android/server/SambaServerService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v5, "samba"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "isrunning"

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    .line 143
    .local v1, event:Lcom/android/server/NativeDaemonEvent;
    :try_start_2
    const-string v4, "SambaServerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isServerRunning: event:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonEvent;->getCode()I

    move-result v4

    const/16 v5, 0x2bc

    if-ne v4, v5, :cond_1

    invoke-virtual {v1}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v4

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 146
    iget-boolean v3, p0, Lcom/android/server/SambaServerService;->mServerRunning:Z

    if-eqz v3, :cond_0

    .line 147
    const-string v3, "SambaServerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mServerRunning true, but VoldResponseCode is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 151
    .end local v1           #event:Lcom/android/server/NativeDaemonEvent;
    :cond_0
    :goto_0
    monitor-exit p0

    return v2

    .line 139
    :catch_0
    move-exception v0

    .line 140
    .local v0, e:Ljava/lang/Exception;
    :try_start_3
    const-string v3, "SambaServerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ex isServerRunning "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 134
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .restart local v1       #event:Lcom/android/server/NativeDaemonEvent;
    :cond_1
    move v2, v3

    .line 151
    goto :goto_0
.end method

.method public onDaemonConnected()V
    .locals 2

    .prologue
    .line 201
    const-string v0, "SambaServerService"

    const-string v1, "Samba vold connected!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    return-void
.end method

.method public onEvent(ILjava/lang/String;[Ljava/lang/String;)Z
    .locals 1
    .parameter "code"
    .parameter "raw"
    .parameter "cooked"

    .prologue
    .line 222
    const/4 v0, 0x1

    return v0
.end method

.method public declared-synchronized removeAllSharedFolder()Z
    .locals 4

    .prologue
    .line 178
    monitor-enter p0

    :try_start_0
    const-string v1, "SambaServerService"

    const-string v2, "remove share"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iget-object v1, p0, Lcom/android/server/SambaServerService;->mSambaHandler:Lcom/android/server/SambaServerService$SambaHandler;

    const/4 v2, 0x4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 182
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 183
    const-string v1, "SambaServerService"

    const-string v2, "send message: removeAllSharedFolder:"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    const/4 v1, 0x1

    monitor-exit p0

    return v1

    .line 178
    .end local v0           #msg:Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized removeSharedFolders(Lmeizu/samba/server/LocalSharedFolder;)Z
    .locals 4
    .parameter "folders"

    .prologue
    .line 167
    monitor-enter p0

    :try_start_0
    const-string v1, "SambaServerService"

    const-string v2, "remove share"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget-object v1, p0, Lcom/android/server/SambaServerService;->mSambaHandler:Lcom/android/server/SambaServerService$SambaHandler;

    const/4 v2, 0x3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 171
    .local v0, msg:Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 172
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 173
    const-string v1, "SambaServerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "send message: removeSharedFolders:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    const/4 v1, 0x1

    monitor-exit p0

    return v1

    .line 167
    .end local v0           #msg:Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized startServerInternal()Z
    .locals 9

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 95
    monitor-enter p0

    :try_start_0
    const-string v4, "SambaServerService"

    const-string v5, "enter startServer!"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    :try_start_1
    iget-object v4, p0, Lcom/android/server/SambaServerService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v5, "samba"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "start"

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v1

    .line 98
    .local v1, event:Lcom/android/server/NativeDaemonEvent;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonEvent;->getCode()I

    move-result v4

    const/16 v5, 0x2bc

    if-ne v4, v5, :cond_0

    invoke-virtual {v1}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v4

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 100
    const-string v4, "SambaServerService"

    const-string v5, "samba start ok!"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 110
    .end local v1           #event:Lcom/android/server/NativeDaemonEvent;
    :goto_0
    monitor-exit p0

    return v2

    .line 103
    .restart local v1       #event:Lcom/android/server/NativeDaemonEvent;
    :cond_0
    :try_start_2
    const-string v2, "SambaServerService"

    const-string v4, "samba start error!"

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .end local v1           #event:Lcom/android/server/NativeDaemonEvent;
    :goto_1
    move v2, v3

    .line 110
    goto :goto_0

    .line 105
    :catch_0
    move-exception v0

    .line 107
    .local v0, e:Ljava/lang/Exception;
    :try_start_3
    const-string v2, "SambaServerService"

    const-string v4, "ex start"

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 95
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized stopServerInternal()Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 116
    monitor-enter p0

    :try_start_0
    const-string v2, "SambaServerService"

    const-string v3, "stop server!"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    :try_start_1
    iget-object v2, p0, Lcom/android/server/SambaServerService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "samba"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "stop"

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v1

    .line 119
    .local v1, event:Lcom/android/server/NativeDaemonEvent;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonEvent;->getCode()I

    move-result v2

    const/16 v3, 0x2bc

    if-ne v2, v3, :cond_0

    invoke-virtual {v1}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 121
    const-string v2, "SambaServerService"

    const-string v3, "samba stop ok!"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 130
    .end local v1           #event:Lcom/android/server/NativeDaemonEvent;
    :goto_0
    monitor-exit p0

    return v7

    .line 124
    .restart local v1       #event:Lcom/android/server/NativeDaemonEvent;
    :cond_0
    :try_start_2
    const-string v2, "SambaServerService"

    const-string v3, "samba stop error!"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 126
    .end local v1           #event:Lcom/android/server/NativeDaemonEvent;
    :catch_0
    move-exception v0

    .line 127
    .local v0, e:Ljava/lang/Exception;
    :try_start_3
    const-string v2, "SambaServerService"

    const-string v3, "ex stop"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 116
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method
