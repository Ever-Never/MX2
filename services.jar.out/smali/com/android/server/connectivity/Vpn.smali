.class public Lcom/android/server/connectivity/Vpn;
.super Landroid/net/BaseNetworkStateTracker;
.source "Vpn.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;,
        Lcom/android/server/connectivity/Vpn$Connection;
    }
.end annotation


# static fields
.field private static final LOGD:Z = true

.field private static final MSG_RECONNECT:I = 0x65

.field private static final MSG_WAIT_FOR_RECONNECT_TIME_OUT:I = 0x66

.field private static final NOTIFICATION_TAG_3RD:Ljava/lang/String; = "3rd_vpn"

.field private static final RECONNECT_DELAY:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "Vpn"

.field private static final WAIT_FOR_RECONNECT_TIME_OUT:I = 0x7530


# instance fields
.field private disableVpnStateChangeBroadcast:Z

.field private final mCallback:Lcom/android/server/ConnectivityService$VpnCallback;

.field private mConnection:Lcom/android/server/connectivity/Vpn$Connection;

.field private mCurrentConfig:Lcom/android/internal/net/VpnConfig;

.field private mCurrentMtpd:[Ljava/lang/String;

.field private mCurrentRacoon:[Ljava/lang/String;

.field private mEnableNotif:Z

.field private mFailedDetail:I

.field private mInterface:Ljava/lang/String;

.field private mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

.field private mObserver:Landroid/net/INetworkManagementEventObserver;

.field private mPackage:Ljava/lang/String;

.field private mReconnectHandler:Landroid/os/Handler;

.field private mStatusIntent:Landroid/app/PendingIntent;

.field private mWaitingForReconnectInfo:Lcom/android/internal/net/LegacyVpnInfo;

.field private oldVpnState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/ConnectivityService$VpnCallback;Landroid/os/INetworkManagementService;)V
    .locals 3
    .parameter "context"
    .parameter "callback"
    .parameter "netService"

    .prologue
    const/4 v2, 0x0

    .line 143
    const/16 v1, 0x8

    invoke-direct {p0, v1}, Landroid/net/BaseNetworkStateTracker;-><init>(I)V

    .line 94
    const-string v1, "[Legacy VPN]"

    iput-object v1, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    .line 99
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/connectivity/Vpn;->mEnableNotif:Z

    .line 102
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/connectivity/Vpn;->mFailedDetail:I

    .line 126
    new-instance v1, Lcom/android/server/connectivity/Vpn$1;

    invoke-direct {v1, p0}, Lcom/android/server/connectivity/Vpn$1;-><init>(Lcom/android/server/connectivity/Vpn;)V

    iput-object v1, p0, Lcom/android/server/connectivity/Vpn;->mReconnectHandler:Landroid/os/Handler;

    .line 203
    iput v2, p0, Lcom/android/server/connectivity/Vpn;->oldVpnState:I

    .line 204
    iput-boolean v2, p0, Lcom/android/server/connectivity/Vpn;->disableVpnStateChangeBroadcast:Z

    .line 410
    new-instance v1, Lcom/android/server/connectivity/Vpn$2;

    invoke-direct {v1, p0}, Lcom/android/server/connectivity/Vpn$2;-><init>(Lcom/android/server/connectivity/Vpn;)V

    iput-object v1, p0, Lcom/android/server/connectivity/Vpn;->mObserver:Landroid/net/INetworkManagementEventObserver;

    .line 144
    iput-object p1, p0, Landroid/net/BaseNetworkStateTracker;->mContext:Landroid/content/Context;

    .line 145
    iput-object p2, p0, Lcom/android/server/connectivity/Vpn;->mCallback:Lcom/android/server/ConnectivityService$VpnCallback;

    .line 148
    :try_start_0
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mObserver:Landroid/net/INetworkManagementEventObserver;

    invoke-interface {p3, v1}, Landroid/os/INetworkManagementService;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    :goto_0
    return-void

    .line 149
    :catch_0
    move-exception v0

    .line 150
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "Vpn"

    const-string v2, "Problem registering observer"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/server/connectivity/Vpn;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->do_reconnect()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/LegacyVpnInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mWaitingForReconnectInfo:Lcom/android/internal/net/LegacyVpnInfo;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/connectivity/Vpn;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->hideNotification()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/server/connectivity/Vpn;Lcom/android/internal/net/LegacyVpnInfo;)Lcom/android/internal/net/LegacyVpnInfo;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn;->mWaitingForReconnectInfo:Lcom/android/internal/net/LegacyVpnInfo;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/server/connectivity/Vpn;)Lcom/android/server/connectivity/Vpn$Connection;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/server/connectivity/Vpn;Lcom/android/server/connectivity/Vpn$Connection;)Lcom/android/server/connectivity/Vpn$Connection;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/server/connectivity/Vpn;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Landroid/net/BaseNetworkStateTracker;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/connectivity/Vpn;Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 84
    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/connectivity/Vpn;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->getDefaultNetwork()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mCurrentConfig:Lcom/android/internal/net/VpnConfig;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 84
    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/Vpn;->jniSetRoutes(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/android/server/connectivity/Vpn;Lcom/android/internal/net/VpnConfig;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 84
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/connectivity/Vpn;->showNotification(Lcom/android/internal/net/VpnConfig;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/connectivity/Vpn;)Landroid/net/NetworkInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Landroid/net/BaseNetworkStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/connectivity/Vpn;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->sendVpnStateChangeBroadcast(I)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/connectivity/Vpn;Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 84
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/connectivity/Vpn;->updateStateForFailedDetail(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/connectivity/Vpn;)Landroid/net/NetworkInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Landroid/net/BaseNetworkStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/connectivity/Vpn;)Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/server/connectivity/Vpn;Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;)Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/server/connectivity/Vpn;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mReconnectHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/connectivity/Vpn;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->jniCheck(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/connectivity/Vpn;)Lcom/android/server/ConnectivityService$VpnCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mCallback:Lcom/android/server/ConnectivityService$VpnCallback;

    return-object v0
.end method

.method private backupParasForReconnect(Lcom/android/internal/net/VpnConfig;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .parameter "config"
    .parameter "racoon"
    .parameter "mtpd"

    .prologue
    .line 111
    iput-object p2, p0, Lcom/android/server/connectivity/Vpn;->mCurrentRacoon:[Ljava/lang/String;

    .line 112
    iput-object p3, p0, Lcom/android/server/connectivity/Vpn;->mCurrentMtpd:[Ljava/lang/String;

    .line 113
    new-instance v0, Lcom/android/internal/net/VpnConfig;

    invoke-direct {v0}, Lcom/android/internal/net/VpnConfig;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/Vpn;->mCurrentConfig:Lcom/android/internal/net/VpnConfig;

    .line 114
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mCurrentConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v1, p1, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    .line 115
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mCurrentConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v1, p1, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    .line 116
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mCurrentConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v1, p1, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    .line 117
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mCurrentConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v1, p1, Lcom/android/internal/net/VpnConfig;->routes:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/internal/net/VpnConfig;->routes:Ljava/lang/String;

    .line 118
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mCurrentConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v1, p1, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    iput-object v1, v0, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    .line 119
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mCurrentConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v1, p1, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    iput-object v1, v0, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    .line 120
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mCurrentConfig:Lcom/android/internal/net/VpnConfig;

    iget-boolean v1, p1, Lcom/android/internal/net/VpnConfig;->legacy:Z

    iput-boolean v1, v0, Lcom/android/internal/net/VpnConfig;->legacy:Z

    .line 121
    return-void
.end method

.method private do_reconnect()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 477
    const-string v4, "Vpn"

    const-string v5, "do_reconnect() ..."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->getDefaultNetwork()[Ljava/lang/String;

    move-result-object v2

    .line 479
    .local v2, network:[Ljava/lang/String;
    if-nez v2, :cond_0

    .line 480
    const-string v4, "Vpn"

    const-string v5, "no availible network interface"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    :goto_0
    return-void

    .line 484
    :cond_0
    aget-object v1, v2, v6

    .line 485
    .local v1, interfaze:Ljava/lang/String;
    const/4 v4, 0x1

    aget-object v0, v2, v4

    .line 486
    .local v0, gateway:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mCurrentConfig:Lcom/android/internal/net/VpnConfig;

    iput-object v1, v4, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    .line 488
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mCurrentMtpd:[Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 489
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mCurrentMtpd:[Ljava/lang/String;

    aput-object v1, v4, v6

    .line 492
    :cond_1
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mCurrentRacoon:[Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 493
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mCurrentRacoon:[Ljava/lang/String;

    aput-object v1, v4, v6

    .line 494
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mCurrentRacoon:[Ljava/lang/String;

    const/4 v5, 0x2

    aget-object v3, v4, v5

    .line 495
    .local v3, vpnType:Ljava/lang/String;
    const-string v4, "xauthpsk"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "hybridrsa"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "xauthrsa"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 496
    :cond_2
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mCurrentRacoon:[Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/connectivity/Vpn;->mCurrentRacoon:[Ljava/lang/String;

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    aput-object v0, v4, v5

    .line 506
    .end local v3           #vpnType:Ljava/lang/String;
    :cond_3
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mCurrentConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v5, p0, Lcom/android/server/connectivity/Vpn;->mCurrentRacoon:[Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/connectivity/Vpn;->mCurrentMtpd:[Ljava/lang/String;

    invoke-direct {p0, v4, v5, v6}, Lcom/android/server/connectivity/Vpn;->startLegacyVpn(Lcom/android/internal/net/VpnConfig;[Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method private enforceControlPermission()V
    .locals 4

    .prologue
    .line 529
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/16 v3, 0x3e8

    if-ne v2, v3, :cond_1

    .line 538
    :cond_0
    return-void

    .line 535
    :cond_1
    :try_start_0
    iget-object v2, p0, Landroid/net/BaseNetworkStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 536
    .local v1, pm:Landroid/content/pm/PackageManager;
    const-string v2, "com.android.vpndialogs"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 537
    .local v0, app:Landroid/content/pm/ApplicationInfo;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v2, v3, :cond_0

    .line 544
    .end local v0           #app:Landroid/content/pm/ApplicationInfo;
    .end local v1           #pm:Landroid/content/pm/PackageManager;
    :goto_0
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Unauthorized Caller"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 540
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private static findLegacyVpnGateway(Landroid/net/LinkProperties;)Ljava/lang/String;
    .locals 4
    .parameter "prop"

    .prologue
    .line 611
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/RouteInfo;

    .line 613
    .local v1, route:Landroid/net/RouteInfo;
    invoke-virtual {v1}, Landroid/net/RouteInfo;->isDefaultRoute()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v2

    instance-of v2, v2, Ljava/net/Inet4Address;

    if-eqz v2, :cond_0

    .line 614
    invoke-virtual {v1}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 618
    .end local v1           #route:Landroid/net/RouteInfo;
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Unable to find suitable gateway"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private getDefaultNetwork()[Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 510
    iget-object v6, p0, Lcom/android/server/connectivity/Vpn;->mCallback:Lcom/android/server/ConnectivityService$VpnCallback;

    invoke-virtual {v6}, Lcom/android/server/ConnectivityService$VpnCallback;->getActiveLinkProperties()Landroid/net/LinkProperties;

    move-result-object v0

    .line 511
    .local v0, alp:Landroid/net/LinkProperties;
    if-nez v0, :cond_1

    .line 523
    :cond_0
    :goto_0
    return-object v5

    .line 512
    :cond_1
    invoke-virtual {v0}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v3

    .line 513
    .local v3, interfaze:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 514
    const/4 v1, 0x0

    .line 515
    .local v1, gateway:Ljava/lang/String;
    invoke-virtual {v0}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/RouteInfo;

    .line 516
    .local v4, route:Landroid/net/RouteInfo;
    invoke-virtual {v4}, Landroid/net/RouteInfo;->isDefaultRoute()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v4}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v6

    instance-of v6, v6, Ljava/net/Inet4Address;

    if-eqz v6, :cond_2

    .line 517
    invoke-virtual {v4}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    .line 521
    .end local v4           #route:Landroid/net/RouteInfo;
    :cond_3
    if-eqz v1, :cond_0

    .line 523
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const/4 v6, 0x1

    aput-object v1, v5, v6

    goto :goto_0
.end method

.method private hideNotification()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const v3, 0x1080748

    .line 590
    iget-boolean v1, p0, Lcom/android/server/connectivity/Vpn;->mEnableNotif:Z

    if-nez v1, :cond_1

    .line 600
    :cond_0
    :goto_0
    return-void

    .line 591
    :cond_1
    iput-object v4, p0, Lcom/android/server/connectivity/Vpn;->mStatusIntent:Landroid/app/PendingIntent;

    .line 593
    iget-object v1, p0, Landroid/net/BaseNetworkStateTracker;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 596
    .local v0, nm:Landroid/app/NotificationManager;
    if-eqz v0, :cond_0

    .line 597
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v4, v3, v1}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 598
    const-string v1, "3rd_vpn"

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v3, v2}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    goto :goto_0
.end method

.method private native jniCheck(Ljava/lang/String;)I
.end method

.method private native jniCreate(I)I
.end method

.method private native jniGetName(I)Ljava/lang/String;
.end method

.method private native jniProtect(ILjava/lang/String;)V
.end method

.method private native jniReset(Ljava/lang/String;)V
.end method

.method private native jniSetAddresses(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private native jniSetRoutes(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private sendVpnStateChangeBroadcast(I)V
    .locals 2
    .parameter "vpnState"

    .prologue
    .line 206
    iget-boolean v1, p0, Lcom/android/server/connectivity/Vpn;->disableVpnStateChangeBroadcast:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/server/connectivity/Vpn;->oldVpnState:I

    if-eq p1, v1, :cond_0

    .line 207
    iput p1, p0, Lcom/android/server/connectivity/Vpn;->oldVpnState:I

    .line 210
    new-instance v0, Landroid/content/Intent;

    const-string v1, "meizu.intent.action.VPN_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 211
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "vpn_state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 212
    iget-object v1, p0, Landroid/net/BaseNetworkStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 214
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private showNotification(Lcom/android/internal/net/VpnConfig;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 13
    .parameter "config"
    .parameter "label"
    .parameter "icon"
    .parameter "tag"

    .prologue
    .line 562
    iget-boolean v5, p0, Lcom/android/server/connectivity/Vpn;->mEnableNotif:Z

    if-nez v5, :cond_1

    .line 587
    :cond_0
    :goto_0
    return-void

    .line 563
    :cond_1
    iget-object v5, p0, Landroid/net/BaseNetworkStateTracker;->mContext:Landroid/content/Context;

    invoke-static {v5, p1}, Lcom/android/internal/net/VpnConfig;->getIntentForStatusPanel(Landroid/content/Context;Lcom/android/internal/net/VpnConfig;)Landroid/app/PendingIntent;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/connectivity/Vpn;->mStatusIntent:Landroid/app/PendingIntent;

    .line 565
    iget-object v5, p0, Landroid/net/BaseNetworkStateTracker;->mContext:Landroid/content/Context;

    const-string v6, "notification"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 568
    .local v1, nm:Landroid/app/NotificationManager;
    if-eqz v1, :cond_0

    .line 569
    if-nez p2, :cond_2

    iget-object v5, p0, Landroid/net/BaseNetworkStateTracker;->mContext:Landroid/content/Context;

    const v6, 0x104048a

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 571
    .local v4, title:Ljava/lang/String;
    :goto_1
    iget-object v5, p1, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    if-nez v5, :cond_3

    iget-object v5, p0, Landroid/net/BaseNetworkStateTracker;->mContext:Landroid/content/Context;

    const v6, 0x104048c

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 573
    .local v3, text:Ljava/lang/String;
    :goto_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iput-wide v5, p1, Lcom/android/internal/net/VpnConfig;->startTime:J

    .line 575
    new-instance v5, Landroid/app/Notification$Builder;

    iget-object v6, p0, Landroid/net/BaseNetworkStateTracker;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x1080748

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v5

    const v6, 0x108078f

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setNotificationIcon(I)Landroid/app/Notification$Builder;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/connectivity/Vpn;->mStatusIntent:Landroid/app/PendingIntent;

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    .line 585
    .local v2, notification:Landroid/app/Notification;
    const v5, 0x1080748

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, p4

    invoke-virtual {v1, v0, v5, v2, v6}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    goto :goto_0

    .line 569
    .end local v2           #notification:Landroid/app/Notification;
    .end local v3           #text:Ljava/lang/String;
    .end local v4           #title:Ljava/lang/String;
    :cond_2
    iget-object v5, p0, Landroid/net/BaseNetworkStateTracker;->mContext:Landroid/content/Context;

    const v6, 0x104048b

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p2, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 571
    .restart local v4       #title:Ljava/lang/String;
    :cond_3
    iget-object v6, p0, Landroid/net/BaseNetworkStateTracker;->mContext:Landroid/content/Context;

    const v7, 0x104048d

    const/4 v5, 0x1

    new-array v8, v5, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v5, p1, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v10, 0xa

    if-le v5, v10, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p1, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    const/4 v11, 0x0

    const/16 v12, 0xa

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, ".."

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_3
    aput-object v5, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_2

    :cond_4
    iget-object v5, p1, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    goto :goto_3
.end method

.method private declared-synchronized startLegacyVpn(Lcom/android/internal/net/VpnConfig;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .parameter "config"
    .parameter "racoon"
    .parameter "mtpd"

    .prologue
    .line 730
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/connectivity/Vpn;->disableVpnStateChangeBroadcast:Z

    .line 731
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->stopLegacyVpn()V

    .line 734
    const/4 v0, 0x0

    const-string v1, "[Legacy VPN]"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/connectivity/Vpn;->prepare(Ljava/lang/String;Ljava/lang/String;)Z

    .line 735
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/connectivity/Vpn;->disableVpnStateChangeBroadcast:Z

    .line 737
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    const-string v1, "startLegacyVpn"

    invoke-direct {p0, v0, v1}, Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 739
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/connectivity/Vpn;->backupParasForReconnect(Lcom/android/internal/net/VpnConfig;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 742
    new-instance v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;-><init>(Lcom/android/server/connectivity/Vpn;Lcom/android/internal/net/VpnConfig;[Ljava/lang/String;[Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    .line 743
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 744
    monitor-exit p0

    return-void

    .line 730
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V
    .locals 1
    .parameter "detailedState"
    .parameter "reason"

    .prologue
    .line 184
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Z)V

    .line 185
    return-void
.end method

.method private updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Z)V
    .locals 3
    .parameter "detailedState"
    .parameter "reason"
    .parameter "sendBroadcast"

    .prologue
    .line 189
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/connectivity/Vpn;->mFailedDetail:I

    .line 190
    const-string v0, "Vpn"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setting state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iget-object v0, p0, Landroid/net/BaseNetworkStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mCallback:Lcom/android/server/ConnectivityService$VpnCallback;

    new-instance v1, Landroid/net/NetworkInfo;

    iget-object v2, p0, Landroid/net/BaseNetworkStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-direct {v1, v2}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    invoke-virtual {v0, v1}, Lcom/android/server/ConnectivityService$VpnCallback;->onStateChanged(Landroid/net/NetworkInfo;)V

    .line 194
    if-eqz p3, :cond_0

    iget-object v0, p0, Landroid/net/BaseNetworkStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-static {v0}, Lcom/android/internal/net/LegacyVpnInfo;->stateFromNetworkInfo(Landroid/net/NetworkInfo;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/Vpn;->sendVpnStateChangeBroadcast(I)V

    .line 195
    :cond_0
    return-void
.end method

.method private updateStateForFailedDetail(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;I)V
    .locals 1
    .parameter "detailedState"
    .parameter "reason"
    .parameter "failedDatail"

    .prologue
    .line 198
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Z)V

    .line 199
    iput p3, p0, Lcom/android/server/connectivity/Vpn;->mFailedDetail:I

    .line 200
    iget v0, p0, Lcom/android/server/connectivity/Vpn;->mFailedDetail:I

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/Vpn;->sendVpnStateChangeBroadcast(I)V

    .line 201
    return-void
.end method


# virtual methods
.method public declared-synchronized establish(Lcom/android/internal/net/VpnConfig;)Landroid/os/ParcelFileDescriptor;
    .locals 22
    .parameter "config"

    .prologue
    .line 314
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/BaseNetworkStateTracker;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v14

    .line 315
    .local v14, pm:Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    .line 317
    .local v3, app:Landroid/content/pm/ApplicationInfo;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v14, v0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    .line 321
    :try_start_2
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v19

    iget v0, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v20, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_0

    .line 322
    const/16 v17, 0x0

    .line 398
    :goto_0
    monitor-exit p0

    return-object v17

    .line 318
    :catch_0
    move-exception v7

    .line 319
    .local v7, e:Ljava/lang/Exception;
    const/16 v17, 0x0

    goto :goto_0

    .line 326
    .end local v7           #e:Ljava/lang/Exception;
    :cond_0
    :try_start_3
    new-instance v11, Landroid/content/Intent;

    const-string v19, "android.net.VpnService"

    move-object/from16 v0, v19

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 327
    .local v11, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 328
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v14, v11, v0}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v10

    .line 329
    .local v10, info:Landroid/content/pm/ResolveInfo;
    if-nez v10, :cond_1

    .line 330
    new-instance v19, Ljava/lang/SecurityException;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Cannot find "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v19
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 314
    .end local v3           #app:Landroid/content/pm/ApplicationInfo;
    .end local v10           #info:Landroid/content/pm/ResolveInfo;
    .end local v11           #intent:Landroid/content/Intent;
    .end local v14           #pm:Landroid/content/pm/PackageManager;
    :catchall_0
    move-exception v19

    monitor-exit p0

    throw v19

    .line 332
    .restart local v3       #app:Landroid/content/pm/ApplicationInfo;
    .restart local v10       #info:Landroid/content/pm/ResolveInfo;
    .restart local v11       #intent:Landroid/content/Intent;
    .restart local v14       #pm:Landroid/content/pm/PackageManager;
    :cond_1
    :try_start_4
    const-string v19, "android.permission.BIND_VPN_SERVICE"

    iget-object v0, v10, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_2

    .line 333
    new-instance v19, Ljava/lang/SecurityException;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " does not require "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "android.permission.BIND_VPN_SERVICE"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 337
    :cond_2
    invoke-virtual {v3, v14}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    .line 340
    .local v13, label:Ljava/lang/String;
    invoke-virtual {v3, v14}, Landroid/content/pm/PackageItemInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 341
    .local v9, icon:Landroid/graphics/drawable/Drawable;
    const/4 v4, 0x0

    .line 342
    .local v4, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v19

    if-lez v19, :cond_3

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v19

    if-lez v19, :cond_3

    .line 343
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/BaseNetworkStateTracker;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x1050005

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v18

    .line 345
    .local v18, width:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/BaseNetworkStateTracker;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x1050006

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 347
    .local v8, height:I
    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v18

    invoke-virtual {v9, v0, v1, v2, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 348
    sget-object v19, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v8, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 349
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 350
    .local v5, c:Landroid/graphics/Canvas;
    invoke-virtual {v9, v5}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 351
    const/16 v19, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 355
    .end local v5           #c:Landroid/graphics/Canvas;
    .end local v8           #height:I
    .end local v18           #width:I
    :cond_3
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/internal/net/VpnConfig;->mtu:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/Vpn;->jniCreate(I)I

    move-result v19

    invoke-static/range {v19 .. v19}, Landroid/os/ParcelFileDescriptor;->adoptFd(I)Landroid/os/ParcelFileDescriptor;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v17

    .line 357
    .local v17, tun:Landroid/os/ParcelFileDescriptor;
    :try_start_5
    sget-object v19, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    const-string v20, "establish"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 358
    invoke-virtual/range {v17 .. v17}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/Vpn;->jniGetName(I)Ljava/lang/String;

    move-result-object v12

    .line 359
    .local v12, interfaze:Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->addresses:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v12, v1}, Lcom/android/server/connectivity/Vpn;->jniSetAddresses(Ljava/lang/String;Ljava/lang/String;)I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_4

    .line 360
    new-instance v19, Ljava/lang/IllegalArgumentException;

    const-string v20, "At least one address must be specified"

    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v19
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1

    .line 377
    .end local v12           #interfaze:Ljava/lang/String;
    :catch_1
    move-exception v7

    .line 378
    .local v7, e:Ljava/lang/RuntimeException;
    :try_start_6
    sget-object v19, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    const-string v20, "establish"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 379
    invoke-static/range {v17 .. v17}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 380
    throw v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 362
    .end local v7           #e:Ljava/lang/RuntimeException;
    .restart local v12       #interfaze:Ljava/lang/String;
    :cond_4
    :try_start_7
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->routes:Ljava/lang/String;

    move-object/from16 v19, v0

    if-eqz v19, :cond_5

    .line 363
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->routes:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v12, v1}, Lcom/android/server/connectivity/Vpn;->jniSetRoutes(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    :cond_5
    new-instance v6, Lcom/android/server/connectivity/Vpn$Connection;

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v6, v0, v1}, Lcom/android/server/connectivity/Vpn$Connection;-><init>(Lcom/android/server/connectivity/Vpn;Lcom/android/server/connectivity/Vpn$1;)V

    .line 366
    .local v6, connection:Lcom/android/server/connectivity/Vpn$Connection;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/BaseNetworkStateTracker;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v11, v6, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v19

    if-nez v19, :cond_6

    .line 367
    new-instance v19, Ljava/lang/IllegalStateException;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Cannot bind "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 369
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    move-object/from16 v19, v0

    if-eqz v19, :cond_7

    .line 370
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/BaseNetworkStateTracker;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 372
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    move-object/from16 v19, v0

    if-eqz v19, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_8

    .line 373
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/Vpn;->jniReset(Ljava/lang/String;)V

    .line 375
    :cond_8
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    .line 376
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_1

    .line 382
    :try_start_8
    const-string v19, "Vpn"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Established by "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " on "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    .line 386
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    .line 389
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result-wide v15

    .line 391
    .local v15, token:J
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mCallback:Lcom/android/server/ConnectivityService$VpnCallback;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    move-object/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Lcom/android/server/ConnectivityService$VpnCallback;->override(Ljava/util/List;Ljava/util/List;)V

    .line 392
    const-string v19, "3rd_vpn"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v13, v4, v2}, Lcom/android/server/connectivity/Vpn;->showNotification(Lcom/android/internal/net/VpnConfig;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 394
    :try_start_a
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 397
    sget-object v19, Landroid/net/NetworkInfo$DetailedState;->AUTHENTICATING:Landroid/net/NetworkInfo$DetailedState;

    const-string v20, "establish"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 394
    :catchall_1
    move-exception v19

    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v19
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
.end method

.method public getLegacyVpnConfig()Lcom/android/internal/net/VpnConfig;
    .locals 1

    .prologue
    .line 784
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    if-eqz v0, :cond_0

    .line 785
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    #getter for: Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static {v0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->access$1600(Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;)Lcom/android/internal/net/VpnConfig;

    move-result-object v0

    .line 787
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized getLegacyVpnInfo()Lcom/android/internal/net/LegacyVpnInfo;
    .locals 3

    .prologue
    .line 763
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->enforceControlPermission()V

    .line 765
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mWaitingForReconnectInfo:Lcom/android/internal/net/LegacyVpnInfo;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mWaitingForReconnectInfo:Lcom/android/internal/net/LegacyVpnInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 780
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    .line 767
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    if-nez v1, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    .line 769
    :cond_2
    new-instance v0, Lcom/android/internal/net/LegacyVpnInfo;

    invoke-direct {v0}, Lcom/android/internal/net/LegacyVpnInfo;-><init>()V

    .line 770
    .local v0, info:Lcom/android/internal/net/LegacyVpnInfo;
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    #getter for: Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static {v1}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->access$1600(Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;)Lcom/android/internal/net/VpnConfig;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/internal/net/LegacyVpnInfo;->key:Ljava/lang/String;

    .line 772
    iget v1, p0, Lcom/android/server/connectivity/Vpn;->mFailedDetail:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Landroid/net/BaseNetworkStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-static {v1}, Lcom/android/internal/net/LegacyVpnInfo;->stateFromNetworkInfo(Landroid/net/NetworkInfo;)I

    move-result v1

    :goto_1
    iput v1, v0, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    .line 777
    iget-object v1, p0, Landroid/net/BaseNetworkStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 778
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mStatusIntent:Landroid/app/PendingIntent;

    iput-object v1, v0, Lcom/android/internal/net/LegacyVpnInfo;->intent:Landroid/app/PendingIntent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 763
    .end local v0           #info:Lcom/android/internal/net/LegacyVpnInfo;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 772
    .restart local v0       #info:Lcom/android/internal/net/LegacyVpnInfo;
    :cond_3
    :try_start_2
    iget v1, p0, Lcom/android/server/connectivity/Vpn;->mFailedDetail:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public getTcpBufferSizesPropName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 177
    const-string v0, "net.tcp.buffersize.unknown"

    return-object v0
.end method

.method public declared-synchronized interfaceStatusChanged(Ljava/lang/String;Z)V
    .locals 1
    .parameter "iface"
    .parameter "up"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 404
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mObserver:Landroid/net/INetworkManagementEventObserver;

    invoke-interface {v0, p1, p2}, Landroid/net/INetworkManagementEventObserver;->interfaceStatusChanged(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 408
    :goto_0
    monitor-exit p0

    return-void

    .line 404
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 405
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public declared-synchronized prepare(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .parameter "oldPackage"
    .parameter "newPackage"

    .prologue
    const/4 v2, 0x1

    .line 235
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mWaitingForReconnectInfo:Lcom/android/internal/net/LegacyVpnInfo;

    if-eqz v3, :cond_0

    .line 236
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mReconnectHandler:Landroid/os/Handler;

    const/16 v4, 0x66

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 237
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/connectivity/Vpn;->mWaitingForReconnectInfo:Lcom/android/internal/net/LegacyVpnInfo;

    .line 241
    :cond_0
    if-eqz p1, :cond_2

    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_2

    .line 242
    const/4 v2, 0x0

    .line 285
    :cond_1
    :goto_0
    monitor-exit p0

    return v2

    .line 246
    :cond_2
    if-eqz p2, :cond_1

    :try_start_1
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "[Legacy VPN]"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 252
    :cond_3
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->enforceControlPermission()V

    .line 255
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 256
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/server/connectivity/Vpn;->jniReset(Ljava/lang/String;)V

    .line 257
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v0

    .line 259
    .local v0, token:J
    :try_start_2
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mCallback:Lcom/android/server/ConnectivityService$VpnCallback;

    invoke-virtual {v3}, Lcom/android/server/ConnectivityService$VpnCallback;->restore()V

    .line 260
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->hideNotification()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 262
    :try_start_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 264
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    .line 268
    .end local v0           #token:J
    :cond_4
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v3, :cond_6

    .line 270
    :try_start_4
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    #getter for: Lcom/android/server/connectivity/Vpn$Connection;->mService:Landroid/os/IBinder;
    invoke-static {v3}, Lcom/android/server/connectivity/Vpn$Connection;->access$300(Lcom/android/server/connectivity/Vpn$Connection;)Landroid/os/IBinder;

    move-result-object v3

    const v4, 0xffffff

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-interface {v3, v4, v5, v6, v7}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 275
    :goto_1
    :try_start_5
    iget-object v3, p0, Landroid/net/BaseNetworkStateTracker;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    invoke-virtual {v3, v4}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 276
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    .line 282
    :cond_5
    :goto_2
    const-string v3, "Vpn"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Switched from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    iput-object p2, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    .line 284
    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->IDLE:Landroid/net/NetworkInfo$DetailedState;

    const-string v4, "prepare"

    invoke-direct {p0, v3, v4}, Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 235
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 262
    .restart local v0       #token:J
    :catchall_1
    move-exception v2

    :try_start_6
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 277
    .end local v0           #token:J
    :cond_6
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    if-eqz v3, :cond_5

    .line 278
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    invoke-virtual {v3}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->exit()V

    .line 279
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    .line 272
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method public protect(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)V
    .locals 4
    .parameter "socket"
    .parameter "interfaze"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 296
    iget-object v2, p0, Landroid/net/BaseNetworkStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 297
    .local v1, pm:Landroid/content/pm/PackageManager;
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 298
    .local v0, app:Landroid/content/pm/ApplicationInfo;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v2, v3, :cond_0

    .line 299
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Unauthorized Caller"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 301
    :cond_0
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v2

    invoke-direct {p0, v2, p2}, Lcom/android/server/connectivity/Vpn;->jniProtect(ILjava/lang/String;)V

    .line 302
    return-void
.end method

.method public reconnect()Z
    .locals 1

    .prologue
    .line 172
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setEnableNotifications(Z)V
    .locals 0
    .parameter "enableNotif"

    .prologue
    .line 155
    iput-boolean p1, p0, Lcom/android/server/connectivity/Vpn;->mEnableNotif:Z

    .line 156
    return-void
.end method

.method public startLegacyVpn(Lcom/android/internal/net/VpnProfile;Landroid/security/KeyStore;Landroid/net/LinkProperties;)V
    .locals 13
    .parameter "profile"
    .parameter "keyStore"
    .parameter "egress"

    .prologue
    .line 626
    invoke-virtual {p1}, Lcom/android/internal/net/VpnProfile;->needKeyStore()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-virtual {p2}, Landroid/security/KeyStore;->state()Landroid/security/KeyStore$State;

    move-result-object v10

    sget-object v11, Landroid/security/KeyStore$State;->UNLOCKED:Landroid/security/KeyStore$State;

    if-eq v10, v11, :cond_0

    .line 627
    new-instance v10, Ljava/lang/IllegalStateException;

    const-string v11, "KeyStore isn\'t unlocked"

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 630
    :cond_0
    invoke-virtual/range {p3 .. p3}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v3

    .line 631
    .local v3, iface:Ljava/lang/String;
    invoke-static/range {p3 .. p3}, Lcom/android/server/connectivity/Vpn;->findLegacyVpnGateway(Landroid/net/LinkProperties;)Ljava/lang/String;

    move-result-object v2

    .line 634
    .local v2, gateway:Ljava/lang/String;
    const-string v5, ""

    .line 635
    .local v5, privateKey:Ljava/lang/String;
    const-string v8, ""

    .line 636
    .local v8, userCert:Ljava/lang/String;
    const-string v0, ""

    .line 637
    .local v0, caCert:Ljava/lang/String;
    const-string v7, ""

    .line 638
    .local v7, serverCert:Ljava/lang/String;
    iget-object v10, p1, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_1

    .line 639
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "USRPKEY_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p1, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 640
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "USRCERT_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p1, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v9

    .line 641
    .local v9, value:[B
    if-nez v9, :cond_5

    const/4 v8, 0x0

    .line 643
    .end local v9           #value:[B
    :cond_1
    :goto_0
    iget-object v10, p1, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_2

    .line 644
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "CACERT_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p1, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v9

    .line 645
    .restart local v9       #value:[B
    if-nez v9, :cond_6

    const/4 v0, 0x0

    .line 647
    .end local v9           #value:[B
    :cond_2
    :goto_1
    iget-object v10, p1, Lcom/android/internal/net/VpnProfile;->ipsecServerCert:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_3

    .line 648
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "USRCERT_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p1, Lcom/android/internal/net/VpnProfile;->ipsecServerCert:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v9

    .line 649
    .restart local v9       #value:[B
    if-nez v9, :cond_7

    const/4 v7, 0x0

    .line 651
    .end local v9           #value:[B
    :cond_3
    :goto_2
    if-eqz v5, :cond_4

    if-eqz v8, :cond_4

    if-eqz v0, :cond_4

    if-nez v7, :cond_8

    .line 652
    :cond_4
    new-instance v10, Ljava/lang/IllegalStateException;

    iget-object v11, p0, Landroid/net/BaseNetworkStateTracker;->mContext:Landroid/content/Context;

    const v12, 0x1040655

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 641
    .restart local v9       #value:[B
    :cond_5
    new-instance v8, Ljava/lang/String;

    .end local v8           #userCert:Ljava/lang/String;
    sget-object v10, Ljava/nio/charset/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v8, v9, v10}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_0

    .line 645
    .restart local v8       #userCert:Ljava/lang/String;
    :cond_6
    new-instance v0, Ljava/lang/String;

    .end local v0           #caCert:Ljava/lang/String;
    sget-object v10, Ljava/nio/charset/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v9, v10}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_1

    .line 649
    .restart local v0       #caCert:Ljava/lang/String;
    :cond_7
    new-instance v7, Ljava/lang/String;

    .end local v7           #serverCert:Ljava/lang/String;
    sget-object v10, Ljava/nio/charset/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v7, v9, v10}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_2

    .line 656
    .end local v9           #value:[B
    .restart local v7       #serverCert:Ljava/lang/String;
    :cond_8
    const/4 v6, 0x0

    .line 657
    .local v6, racoon:[Ljava/lang/String;
    iget v10, p1, Lcom/android/internal/net/VpnProfile;->type:I

    packed-switch v10, :pswitch_data_0

    .line 691
    :goto_3
    const/4 v4, 0x0

    .line 692
    .local v4, mtpd:[Ljava/lang/String;
    iget v10, p1, Lcom/android/internal/net/VpnProfile;->type:I

    packed-switch v10, :pswitch_data_1

    .line 713
    :goto_4
    new-instance v1, Lcom/android/internal/net/VpnConfig;

    invoke-direct {v1}, Lcom/android/internal/net/VpnConfig;-><init>()V

    .line 714
    .local v1, config:Lcom/android/internal/net/VpnConfig;
    const/4 v10, 0x1

    iput-boolean v10, v1, Lcom/android/internal/net/VpnConfig;->legacy:Z

    .line 715
    iget-object v10, p1, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    iput-object v10, v1, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    .line 716
    iput-object v3, v1, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    .line 717
    iget-object v10, p1, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    iput-object v10, v1, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    .line 718
    iget-object v10, p1, Lcom/android/internal/net/VpnProfile;->routes:Ljava/lang/String;

    iput-object v10, v1, Lcom/android/internal/net/VpnConfig;->routes:Ljava/lang/String;

    .line 719
    iget-object v10, p1, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_9

    .line 720
    iget-object v10, p1, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    const-string v11, " +"

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    iput-object v10, v1, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    .line 722
    :cond_9
    iget-object v10, p1, Lcom/android/internal/net/VpnProfile;->searchDomains:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_a

    .line 723
    iget-object v10, p1, Lcom/android/internal/net/VpnProfile;->searchDomains:Ljava/lang/String;

    const-string v11, " +"

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    iput-object v10, v1, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    .line 726
    :cond_a
    invoke-direct {p0, v1, v6, v4}, Lcom/android/server/connectivity/Vpn;->startLegacyVpn(Lcom/android/internal/net/VpnConfig;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 727
    return-void

    .line 659
    .end local v1           #config:Lcom/android/internal/net/VpnConfig;
    .end local v4           #mtpd:[Ljava/lang/String;
    :pswitch_0
    const/4 v10, 0x6

    new-array v6, v10, [Ljava/lang/String;

    .end local v6           #racoon:[Ljava/lang/String;
    const/4 v10, 0x0

    aput-object v3, v6, v10

    const/4 v10, 0x1

    iget-object v11, p1, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    aput-object v11, v6, v10

    const/4 v10, 0x2

    const-string v11, "udppsk"

    aput-object v11, v6, v10

    const/4 v10, 0x3

    iget-object v11, p1, Lcom/android/internal/net/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    aput-object v11, v6, v10

    const/4 v10, 0x4

    iget-object v11, p1, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    aput-object v11, v6, v10

    const/4 v10, 0x5

    const-string v11, "1701"

    aput-object v11, v6, v10

    .line 663
    .restart local v6       #racoon:[Ljava/lang/String;
    goto :goto_3

    .line 665
    :pswitch_1
    const/16 v10, 0x8

    new-array v6, v10, [Ljava/lang/String;

    .end local v6           #racoon:[Ljava/lang/String;
    const/4 v10, 0x0

    aput-object v3, v6, v10

    const/4 v10, 0x1

    iget-object v11, p1, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    aput-object v11, v6, v10

    const/4 v10, 0x2

    const-string v11, "udprsa"

    aput-object v11, v6, v10

    const/4 v10, 0x3

    aput-object v5, v6, v10

    const/4 v10, 0x4

    aput-object v8, v6, v10

    const/4 v10, 0x5

    aput-object v0, v6, v10

    const/4 v10, 0x6

    aput-object v7, v6, v10

    const/4 v10, 0x7

    const-string v11, "1701"

    aput-object v11, v6, v10

    .line 669
    .restart local v6       #racoon:[Ljava/lang/String;
    goto/16 :goto_3

    .line 671
    :pswitch_2
    const/16 v10, 0x9

    new-array v6, v10, [Ljava/lang/String;

    .end local v6           #racoon:[Ljava/lang/String;
    const/4 v10, 0x0

    aput-object v3, v6, v10

    const/4 v10, 0x1

    iget-object v11, p1, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    aput-object v11, v6, v10

    const/4 v10, 0x2

    const-string v11, "xauthpsk"

    aput-object v11, v6, v10

    const/4 v10, 0x3

    iget-object v11, p1, Lcom/android/internal/net/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    aput-object v11, v6, v10

    const/4 v10, 0x4

    iget-object v11, p1, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    aput-object v11, v6, v10

    const/4 v10, 0x5

    iget-object v11, p1, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    aput-object v11, v6, v10

    const/4 v10, 0x6

    iget-object v11, p1, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    aput-object v11, v6, v10

    const/4 v10, 0x7

    const-string v11, ""

    aput-object v11, v6, v10

    const/16 v10, 0x8

    aput-object v2, v6, v10

    .line 675
    .restart local v6       #racoon:[Ljava/lang/String;
    goto/16 :goto_3

    .line 677
    :pswitch_3
    const/16 v10, 0xb

    new-array v6, v10, [Ljava/lang/String;

    .end local v6           #racoon:[Ljava/lang/String;
    const/4 v10, 0x0

    aput-object v3, v6, v10

    const/4 v10, 0x1

    iget-object v11, p1, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    aput-object v11, v6, v10

    const/4 v10, 0x2

    const-string v11, "xauthrsa"

    aput-object v11, v6, v10

    const/4 v10, 0x3

    aput-object v5, v6, v10

    const/4 v10, 0x4

    aput-object v8, v6, v10

    const/4 v10, 0x5

    aput-object v0, v6, v10

    const/4 v10, 0x6

    aput-object v7, v6, v10

    const/4 v10, 0x7

    iget-object v11, p1, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    aput-object v11, v6, v10

    const/16 v10, 0x8

    iget-object v11, p1, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    aput-object v11, v6, v10

    const/16 v10, 0x9

    const-string v11, ""

    aput-object v11, v6, v10

    const/16 v10, 0xa

    aput-object v2, v6, v10

    .line 681
    .restart local v6       #racoon:[Ljava/lang/String;
    goto/16 :goto_3

    .line 683
    :pswitch_4
    const/16 v10, 0x9

    new-array v6, v10, [Ljava/lang/String;

    .end local v6           #racoon:[Ljava/lang/String;
    const/4 v10, 0x0

    aput-object v3, v6, v10

    const/4 v10, 0x1

    iget-object v11, p1, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    aput-object v11, v6, v10

    const/4 v10, 0x2

    const-string v11, "hybridrsa"

    aput-object v11, v6, v10

    const/4 v10, 0x3

    aput-object v0, v6, v10

    const/4 v10, 0x4

    aput-object v7, v6, v10

    const/4 v10, 0x5

    iget-object v11, p1, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    aput-object v11, v6, v10

    const/4 v10, 0x6

    iget-object v11, p1, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    aput-object v11, v6, v10

    const/4 v10, 0x7

    const-string v11, ""

    aput-object v11, v6, v10

    const/16 v10, 0x8

    aput-object v2, v6, v10

    .restart local v6       #racoon:[Ljava/lang/String;
    goto/16 :goto_3

    .line 694
    .restart local v4       #mtpd:[Ljava/lang/String;
    :pswitch_5
    const/16 v10, 0x14

    new-array v4, v10, [Ljava/lang/String;

    .end local v4           #mtpd:[Ljava/lang/String;
    const/4 v10, 0x0

    aput-object v3, v4, v10

    const/4 v10, 0x1

    const-string v11, "pptp"

    aput-object v11, v4, v10

    const/4 v10, 0x2

    iget-object v11, p1, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    aput-object v11, v4, v10

    const/4 v10, 0x3

    const-string v11, "1723"

    aput-object v11, v4, v10

    const/4 v10, 0x4

    const-string v11, "name"

    aput-object v11, v4, v10

    const/4 v10, 0x5

    iget-object v11, p1, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    aput-object v11, v4, v10

    const/4 v10, 0x6

    const-string v11, "password"

    aput-object v11, v4, v10

    const/4 v10, 0x7

    iget-object v11, p1, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    aput-object v11, v4, v10

    const/16 v10, 0x8

    const-string v11, "linkname"

    aput-object v11, v4, v10

    const/16 v10, 0x9

    const-string v11, "vpn"

    aput-object v11, v4, v10

    const/16 v10, 0xa

    const-string v11, "refuse-eap"

    aput-object v11, v4, v10

    const/16 v10, 0xb

    const-string v11, "nodefaultroute"

    aput-object v11, v4, v10

    const/16 v10, 0xc

    const-string v11, "usepeerdns"

    aput-object v11, v4, v10

    const/16 v10, 0xd

    const-string v11, "idle"

    aput-object v11, v4, v10

    const/16 v10, 0xe

    const-string v11, "1800"

    aput-object v11, v4, v10

    const/16 v10, 0xf

    const-string v11, "mtu"

    aput-object v11, v4, v10

    const/16 v10, 0x10

    const-string v11, "1400"

    aput-object v11, v4, v10

    const/16 v10, 0x11

    const-string v11, "mru"

    aput-object v11, v4, v10

    const/16 v10, 0x12

    const-string v11, "1400"

    aput-object v11, v4, v10

    const/16 v11, 0x13

    iget-boolean v10, p1, Lcom/android/internal/net/VpnProfile;->mppe:Z

    if-eqz v10, :cond_b

    const-string v10, "+mppe"

    :goto_5
    aput-object v10, v4, v11

    .line 701
    .restart local v4       #mtpd:[Ljava/lang/String;
    goto/16 :goto_4

    .line 694
    .end local v4           #mtpd:[Ljava/lang/String;
    :cond_b
    const-string v10, "nomppe"

    goto :goto_5

    .line 704
    .restart local v4       #mtpd:[Ljava/lang/String;
    :pswitch_6
    const/16 v10, 0x14

    new-array v4, v10, [Ljava/lang/String;

    .end local v4           #mtpd:[Ljava/lang/String;
    const/4 v10, 0x0

    aput-object v3, v4, v10

    const/4 v10, 0x1

    const-string v11, "l2tp"

    aput-object v11, v4, v10

    const/4 v10, 0x2

    iget-object v11, p1, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    aput-object v11, v4, v10

    const/4 v10, 0x3

    const-string v11, "1701"

    aput-object v11, v4, v10

    const/4 v10, 0x4

    iget-object v11, p1, Lcom/android/internal/net/VpnProfile;->l2tpSecret:Ljava/lang/String;

    aput-object v11, v4, v10

    const/4 v10, 0x5

    const-string v11, "name"

    aput-object v11, v4, v10

    const/4 v10, 0x6

    iget-object v11, p1, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    aput-object v11, v4, v10

    const/4 v10, 0x7

    const-string v11, "password"

    aput-object v11, v4, v10

    const/16 v10, 0x8

    iget-object v11, p1, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    aput-object v11, v4, v10

    const/16 v10, 0x9

    const-string v11, "linkname"

    aput-object v11, v4, v10

    const/16 v10, 0xa

    const-string v11, "vpn"

    aput-object v11, v4, v10

    const/16 v10, 0xb

    const-string v11, "refuse-eap"

    aput-object v11, v4, v10

    const/16 v10, 0xc

    const-string v11, "nodefaultroute"

    aput-object v11, v4, v10

    const/16 v10, 0xd

    const-string v11, "usepeerdns"

    aput-object v11, v4, v10

    const/16 v10, 0xe

    const-string v11, "idle"

    aput-object v11, v4, v10

    const/16 v10, 0xf

    const-string v11, "1800"

    aput-object v11, v4, v10

    const/16 v10, 0x10

    const-string v11, "mtu"

    aput-object v11, v4, v10

    const/16 v10, 0x11

    const-string v11, "1400"

    aput-object v11, v4, v10

    const/16 v10, 0x12

    const-string v11, "mru"

    aput-object v11, v4, v10

    const/16 v10, 0x13

    const-string v11, "1400"

    aput-object v11, v4, v10

    .restart local v4       #mtpd:[Ljava/lang/String;
    goto/16 :goto_4

    .line 657
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 692
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method

.method protected startMonitoringInternal()V
    .locals 0

    .prologue
    .line 161
    return-void
.end method

.method public declared-synchronized stopLegacyVpn()V
    .locals 2

    .prologue
    .line 747
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    if-eqz v0, :cond_0

    .line 748
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    invoke-virtual {v0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->exit()V

    .line 749
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    .line 751
    const-string v1, "LegacyVpnRunner"

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 754
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 756
    :cond_0
    monitor-exit p0

    return-void

    .line 754
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 747
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public teardown()Z
    .locals 1

    .prologue
    .line 166
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
