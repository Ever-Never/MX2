.class Lcom/android/server/ServerThread;
.super Ljava/lang/Thread;
.source "SystemServer.java"


# static fields
.field private static final ENCRYPTED_STATE:Ljava/lang/String; = "1"

.field private static final ENCRYPTING_STATE:Ljava/lang/String; = "trigger_restart_min_framework"

.field private static final TAG:Ljava/lang/String; = "SystemServer"


# instance fields
.field mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/ServerThread;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/server/ServerThread;->isWifiTestMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/ServerThread;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/server/ServerThread;->resetAdb()V

    return-void
.end method

.method private isWifiTestMode()Z
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 92
    const-string v4, "sys.wifiTestMode"

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 94
    .local v1, strIsWifiTestMode:Ljava/lang/String;
    const-string v4, "SystemServer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "get sys.wifiTestMode:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 96
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x31

    if-ne v4, v5, :cond_0

    move v0, v2

    .line 97
    .local v0, bIsWifiTestMode:Z
    :goto_0
    if-eqz v0, :cond_1

    .line 98
    const-string v3, "SystemServer"

    const-string v4, "set enableAdb true for wifitest"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    .end local v0           #bIsWifiTestMode:Z
    :goto_1
    return v2

    :cond_0
    move v0, v3

    .line 96
    goto :goto_0

    :cond_1
    move v2, v3

    .line 102
    goto :goto_1
.end method

.method private final resetAdb()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 108
    iget-object v4, p0, Lcom/android/server/ServerThread;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "adb_enabled"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-lez v4, :cond_1

    move v1, v2

    .line 111
    .local v1, enableAdb:Z
    :goto_0
    invoke-direct {p0}, Lcom/android/server/ServerThread;->isWifiTestMode()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 112
    if-eqz v1, :cond_2

    .line 131
    :cond_0
    :goto_1
    return-void

    .end local v1           #enableAdb:Z
    :cond_1
    move v1, v3

    .line 108
    goto :goto_0

    .line 115
    .restart local v1       #enableAdb:Z
    :cond_2
    const/4 v1, 0x1

    .line 121
    :cond_3
    if-eqz v1, :cond_0

    .line 122
    iget-object v4, p0, Lcom/android/server/ServerThread;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "adb_enabled"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 124
    const-wide/16 v3, 0xc8

    :try_start_0
    invoke-static {v3, v4}, Lcom/android/server/ServerThread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    :goto_2
    iget-object v3, p0, Lcom/android/server/ServerThread;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "adb_enabled"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 125
    :catch_0
    move-exception v0

    .line 127
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2
.end method

.method static final startSystemUi(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 1168
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1169
    .local v0, intent:Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.systemui"

    const-string v3, "com.android.systemui.SystemUIService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1171
    const-string v1, "SystemServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1172
    sget-object v1, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 1173
    return-void
.end method


# virtual methods
.method reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .parameter "msg"
    .parameter "e"

    .prologue
    .line 87
    const-string v0, "SystemServer"

    const-string v1, "***********************************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    const-string v0, "SystemServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BOOT FAILURE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 89
    return-void
.end method

.method public run()V
    .locals 154

    .prologue
    .line 136
    const/16 v7, 0xbc2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    invoke-static {v7, v11, v12}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 139
    invoke-static {}, Landroid/os/Looper;->prepareMainLooper()V

    .line 141
    const/4 v7, -0x2

    invoke-static {v7}, Landroid/os/Process;->setThreadPriority(I)V

    .line 144
    const/4 v7, 0x1

    invoke-static {v7}, Lcom/android/internal/os/BinderInternal;->disableBackgroundScheduling(Z)V

    .line 145
    const/4 v7, 0x0

    invoke-static {v7}, Landroid/os/Process;->setCanSelfBackground(Z)V

    .line 149
    const-string v7, "sys.shutdown.requested"

    const-string v9, ""

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v126

    .line 151
    .local v126, shutdownAction:Ljava/lang/String;
    if-eqz v126, :cond_0

    invoke-virtual/range {v126 .. v126}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_0

    .line 152
    const/4 v7, 0x0

    move-object/from16 v0, v126

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v9, 0x31

    if-ne v7, v9, :cond_12

    const/16 v115, 0x1

    .line 155
    .local v115, reboot:Z
    :goto_0
    invoke-virtual/range {v126 .. v126}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v9, 0x1

    if-le v7, v9, :cond_13

    .line 156
    const/4 v7, 0x1

    invoke-virtual/range {v126 .. v126}, Ljava/lang/String;->length()I

    move-result v9

    move-object/from16 v0, v126

    invoke-virtual {v0, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v114

    .line 161
    .local v114, reason:Ljava/lang/String;
    :goto_1
    move/from16 v0, v115

    move-object/from16 v1, v114

    invoke-static {v0, v1}, Lcom/android/server/power/ShutdownThread;->rebootOrShutdown(ZLjava/lang/String;)V

    .line 165
    .end local v114           #reason:Ljava/lang/String;
    .end local v115           #reboot:Z
    :cond_0
    const-string v7, "ro.factorytest"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v86

    .line 166
    .local v86, factoryTestStr:Ljava/lang/String;
    const-string v7, ""

    move-object/from16 v0, v86

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_14

    const/16 v85, 0x0

    .line 168
    .local v85, factoryTest:I
    :goto_2
    const-string v7, "1"

    const-string v9, "ro.config.headless"

    const-string v11, "0"

    invoke-static {v9, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    .line 170
    .local v33, headless:Z
    const/16 v94, 0x0

    .line 171
    .local v94, installer:Lcom/android/server/pm/Installer;
    const/16 v59, 0x0

    .line 172
    .local v59, accountManager:Landroid/accounts/AccountManagerService;
    const/16 v73, 0x0

    .line 173
    .local v73, contentService:Landroid/content/ContentService;
    const/16 v97, 0x0

    .line 174
    .local v97, lights:Lcom/android/server/LightsService;
    const/16 v113, 0x0

    .line 175
    .local v113, power:Lcom/android/server/power/PowerManagerService;
    const/16 v79, 0x0

    .line 176
    .local v79, display:Lcom/android/server/display/DisplayManagerService;
    const/16 v65, 0x0

    .line 177
    .local v65, battery:Lcom/android/server/BatteryService;
    const/16 v143, 0x0

    .line 178
    .local v143, vibrator:Lcom/android/server/VibratorService;
    const/16 v62, 0x0

    .line 179
    .local v62, alarm:Lcom/android/server/AlarmManagerService;
    const/16 v104, 0x0

    .line 180
    .local v104, mountService:Lcom/android/server/MountService;
    const/16 v30, 0x0

    .line 181
    .local v30, networkManagement:Lcom/android/server/NetworkManagementService;
    const/16 v29, 0x0

    .line 182
    .local v29, networkStats:Lcom/android/server/net/NetworkStatsService;
    const/16 v106, 0x0

    .line 183
    .local v106, networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    const/16 v71, 0x0

    .line 184
    .local v71, connectivity:Lcom/android/server/ConnectivityService;
    const/16 v150, 0x0

    .line 185
    .local v150, wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    const/16 v148, 0x0

    .line 186
    .local v148, wifi:Lcom/android/server/WifiService;
    const/16 v121, 0x0

    .line 187
    .local v121, sambaServer:Lcom/android/server/SambaServerService;
    const/16 v119, 0x0

    .line 188
    .local v119, sambaClient:Lcom/android/server/SambaClientService;
    const/16 v125, 0x0

    .line 189
    .local v125, serviceDiscovery:Lcom/android/server/NsdService;
    const/16 v112, 0x0

    .line 190
    .local v112, pm:Landroid/content/pm/IPackageManager;
    const/4 v5, 0x0

    .line 191
    .local v5, context:Landroid/content/Context;
    const/16 v152, 0x0

    .line 192
    .local v152, wm:Lcom/android/server/wm/WindowManagerService;
    const/16 v66, 0x0

    .line 193
    .local v66, bluetooth:Lcom/android/server/BluetoothManagerService;
    const/16 v80, 0x0

    .line 194
    .local v80, dock:Lcom/android/server/DockObserver;
    const/16 v141, 0x0

    .line 195
    .local v141, usb:Lcom/android/server/usb/UsbService;
    const/16 v123, 0x0

    .line 196
    .local v123, serial:Lcom/android/server/SerialService;
    const/16 v136, 0x0

    .line 197
    .local v136, twilight:Lcom/android/server/TwilightService;
    const/16 v139, 0x0

    .line 198
    .local v139, uiMode:Lcom/android/server/UiModeManagerService;
    const/16 v116, 0x0

    .line 199
    .local v116, recognition:Lcom/android/server/RecognitionManagerService;
    const/16 v132, 0x0

    .line 200
    .local v132, throttle:Lcom/android/server/ThrottleService;
    const/16 v108, 0x0

    .line 201
    .local v108, networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    const/16 v68, 0x0

    .line 202
    .local v68, commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    const/16 v93, 0x0

    .line 203
    .local v93, inputManager:Lcom/android/server/input/InputManagerService;
    const/16 v129, 0x0

    .line 210
    .local v129, telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    new-instance v138, Landroid/os/HandlerThread;

    const-string v7, "UI"

    move-object/from16 v0, v138

    invoke-direct {v0, v7}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 211
    .local v138, uiHandlerThread:Landroid/os/HandlerThread;
    invoke-virtual/range {v138 .. v138}, Ljava/lang/Thread;->start()V

    .line 212
    new-instance v20, Landroid/os/Handler;

    invoke-virtual/range {v138 .. v138}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v7

    move-object/from16 v0, v20

    invoke-direct {v0, v7}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 213
    .local v20, uiHandler:Landroid/os/Handler;
    new-instance v7, Lcom/android/server/ServerThread$1;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/android/server/ServerThread$1;-><init>(Lcom/android/server/ServerThread;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 230
    new-instance v153, Landroid/os/HandlerThread;

    const-string v7, "WindowManager"

    move-object/from16 v0, v153

    invoke-direct {v0, v7}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 231
    .local v153, wmHandlerThread:Landroid/os/HandlerThread;
    invoke-virtual/range {v153 .. v153}, Ljava/lang/Thread;->start()V

    .line 232
    new-instance v21, Landroid/os/Handler;

    invoke-virtual/range {v153 .. v153}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v7

    move-object/from16 v0, v21

    invoke-direct {v0, v7}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 233
    .local v21, wmHandler:Landroid/os/Handler;
    new-instance v7, Lcom/android/server/ServerThread$2;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/android/server/ServerThread$2;-><init>(Lcom/android/server/ServerThread;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 250
    const/16 v24, 0x0

    .line 255
    .local v24, onlyCore:Z
    :try_start_0
    const-string v7, "SystemServer"

    const-string v9, "Waiting for installd to be ready."

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    new-instance v95, Lcom/android/server/pm/Installer;

    invoke-direct/range {v95 .. v95}, Lcom/android/server/pm/Installer;-><init>()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_5a

    .line 257
    .end local v94           #installer:Lcom/android/server/pm/Installer;
    .local v95, installer:Lcom/android/server/pm/Installer;
    :try_start_1
    invoke-virtual/range {v95 .. v95}, Lcom/android/server/pm/Installer;->ping()Z

    .line 259
    const-string v7, "SystemServer"

    const-string v9, "Entropy Mixer"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    const-string v7, "entropy"

    new-instance v9, Lcom/android/server/EntropyMixer;

    invoke-direct {v9}, Lcom/android/server/EntropyMixer;-><init>()V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 262
    const-string v7, "SystemServer"

    const-string v9, "Power Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    new-instance v4, Lcom/android/server/power/PowerManagerService;

    invoke-direct {v4}, Lcom/android/server/power/PowerManagerService;-><init>()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_5b

    .line 264
    .end local v113           #power:Lcom/android/server/power/PowerManagerService;
    .local v4, power:Lcom/android/server/power/PowerManagerService;
    :try_start_2
    const-string v7, "power"

    invoke-static {v7, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 266
    const-string v7, "SystemServer"

    const-string v9, "Activity Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    invoke-static/range {v85 .. v85}, Lcom/android/server/am/ActivityManagerService;->main(I)Landroid/content/Context;

    move-result-object v5

    .line 269
    const-string v7, "SystemServer"

    const-string v9, "Display Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    new-instance v10, Lcom/android/server/display/DisplayManagerService;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-direct {v10, v5, v0, v1}, Lcom/android/server/display/DisplayManagerService;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_5c

    .line 271
    .end local v79           #display:Lcom/android/server/display/DisplayManagerService;
    .local v10, display:Lcom/android/server/display/DisplayManagerService;
    :try_start_3
    const-string v7, "display"

    const/4 v9, 0x1

    invoke-static {v7, v10, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;Z)V

    .line 273
    const-string v7, "SystemServer"

    const-string v9, "Telephony Registry"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    new-instance v130, Lcom/android/server/TelephonyRegistry;

    move-object/from16 v0, v130

    invoke-direct {v0, v5}, Lcom/android/server/TelephonyRegistry;-><init>(Landroid/content/Context;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_5d

    .line 275
    .end local v129           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .local v130, telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    :try_start_4
    const-string v7, "telephony.registry"

    move-object/from16 v0, v130

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 277
    const-string v7, "SystemServer"

    const-string v9, "Scheduling Policy"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    const-string v7, "scheduling_policy"

    new-instance v9, Landroid/os/SchedulingPolicyService;

    invoke-direct {v9}, Landroid/os/SchedulingPolicyService;-><init>()V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 281
    invoke-static {v5}, Lcom/android/server/AttributeCache;->init(Landroid/content/Context;)V

    .line 283
    invoke-virtual {v10}, Lcom/android/server/display/DisplayManagerService;->waitForDefaultDisplay()Z

    move-result v7

    if-nez v7, :cond_1

    .line 284
    const-string v7, "Timeout waiting for default display to be initialized."

    new-instance v9, Ljava/lang/Throwable;

    invoke-direct {v9}, Ljava/lang/Throwable;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v9}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 288
    :cond_1
    const-string v7, "SystemServer"

    const-string v9, "Package Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    const-string v7, "vold.decrypt"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v76

    .line 291
    .local v76, cryptState:Ljava/lang/String;
    const-string v7, "trigger_restart_min_framework"

    move-object/from16 v0, v76

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_15

    .line 292
    const-string v7, "SystemServer"

    const-string v9, "Detected encryption in progress - only parsing core apps"

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    const/16 v24, 0x1

    .line 299
    :cond_2
    :goto_3
    if-eqz v85, :cond_16

    const/4 v7, 0x1

    :goto_4
    move-object/from16 v0, v95

    move/from16 v1, v24

    invoke-static {v5, v0, v7, v1}, Lcom/android/server/pm/PackageManagerService;->main(Landroid/content/Context;Lcom/android/server/pm/Installer;ZZ)Landroid/content/pm/IPackageManager;
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object v112

    .line 302
    const/16 v89, 0x0

    .line 304
    .local v89, firstBoot:Z
    :try_start_5
    invoke-interface/range {v112 .. v112}, Landroid/content/pm/IPackageManager;->isFirstBoot()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_40
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1

    move-result v89

    .line 308
    :goto_5
    :try_start_6
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->setSystemProcess()V

    .line 310
    const-string v7, "SystemServer"

    const-string v9, "User Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    const-string v7, "user"

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 315
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/android/server/ServerThread;->mContentResolver:Landroid/content/ContentResolver;
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_1

    .line 319
    :try_start_7
    const-string v7, "SystemServer"

    const-string v9, "Account Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    new-instance v60, Landroid/accounts/AccountManagerService;

    move-object/from16 v0, v60

    invoke-direct {v0, v5}, Landroid/accounts/AccountManagerService;-><init>(Landroid/content/Context;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_1

    .line 321
    .end local v59           #accountManager:Landroid/accounts/AccountManagerService;
    .local v60, accountManager:Landroid/accounts/AccountManagerService;
    :try_start_8
    const-string v7, "account"

    move-object/from16 v0, v60

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_64
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_5e

    move-object/from16 v59, v60

    .line 326
    .end local v60           #accountManager:Landroid/accounts/AccountManagerService;
    .restart local v59       #accountManager:Landroid/accounts/AccountManagerService;
    :goto_6
    :try_start_9
    const-string v7, "SystemServer"

    const-string v9, "Content Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    const/4 v7, 0x1

    move/from16 v0, v85

    if-ne v0, v7, :cond_17

    const/4 v7, 0x1

    :goto_7
    invoke-static {v5, v7}, Landroid/content/ContentService;->main(Landroid/content/Context;Z)Landroid/content/ContentService;

    move-result-object v73

    .line 330
    const-string v7, "SystemServer"

    const-string v9, "System Content Providers"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->installSystemProviders()V
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_1

    .line 335
    :try_start_a
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v9, "need_to_restore"

    const/4 v11, 0x0

    invoke-static {v7, v9, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v131

    .line 336
    .local v131, tempFlag:I
    const/16 v90, 0x0

    .line 337
    .local v90, i:I
    :cond_3
    if-eqz v131, :cond_4

    .line 338
    const-string v7, "SystemServer"

    const-string v9, "Thread.sleep(3000)"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    const-wide/16 v11, 0xbb8

    invoke-static {v11, v12}, Ljava/lang/Thread;->sleep(J)V

    .line 340
    add-int/lit8 v90, v90, 0x1

    .line 341
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v9, "need_to_restore"

    const/4 v11, 0x0

    invoke-static {v7, v9, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v131

    .line 342
    const-string v7, "SystemServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "tempFlag---"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, v131

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_1

    .line 343
    if-eqz v131, :cond_4

    const/16 v7, 0x14

    move/from16 v0, v90

    if-ne v0, v7, :cond_3

    .line 356
    .end local v90           #i:I
    .end local v131           #tempFlag:I
    :cond_4
    :goto_8
    :try_start_b
    const-string v7, "SystemServer"

    const-string v9, "Lights Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    new-instance v6, Lcom/android/server/LightsService;

    invoke-direct {v6, v5}, Lcom/android/server/LightsService;-><init>(Landroid/content/Context;)V
    :try_end_b
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_1

    .line 359
    .end local v97           #lights:Lcom/android/server/LightsService;
    .local v6, lights:Lcom/android/server/LightsService;
    :try_start_c
    const-string v7, "SystemServer"

    const-string v9, "Battery Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    new-instance v8, Lcom/android/server/BatteryService;

    invoke-direct {v8, v5, v6}, Lcom/android/server/BatteryService;-><init>(Landroid/content/Context;Lcom/android/server/LightsService;)V
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_5f

    .line 361
    .end local v65           #battery:Lcom/android/server/BatteryService;
    .local v8, battery:Lcom/android/server/BatteryService;
    :try_start_d
    const-string v7, "battery"

    invoke-static {v7, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 363
    const-string v7, "SystemServer"

    const-string v9, "Vibrator Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    new-instance v144, Lcom/android/server/VibratorService;

    move-object/from16 v0, v144

    invoke-direct {v0, v5}, Lcom/android/server/VibratorService;-><init>(Landroid/content/Context;)V
    :try_end_d
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_60

    .line 365
    .end local v143           #vibrator:Lcom/android/server/VibratorService;
    .local v144, vibrator:Lcom/android/server/VibratorService;
    :try_start_e
    const-string v7, "vibrator"

    move-object/from16 v0, v144

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 369
    const-string v7, "SystemServer"

    const-string v9, "power init"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v9

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/power/PowerManagerService;->init(Landroid/content/Context;Lcom/android/server/LightsService;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/BatteryService;Lcom/android/internal/app/IBatteryStats;Lcom/android/server/display/DisplayManagerService;)V

    .line 373
    const-string v7, "SystemServer"

    const-string v9, "Alarm Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    new-instance v15, Lcom/android/server/AlarmManagerService;

    invoke-direct {v15, v5}, Lcom/android/server/AlarmManagerService;-><init>(Landroid/content/Context;)V
    :try_end_e
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_61

    .line 375
    .end local v62           #alarm:Lcom/android/server/AlarmManagerService;
    .local v15, alarm:Lcom/android/server/AlarmManagerService;
    :try_start_f
    const-string v7, "alarm"

    invoke-static {v7, v15}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 377
    const-string v7, "SystemServer"

    const-string v9, "Init Watchdog"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v11

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v16

    move-object v12, v5

    move-object v13, v8

    move-object v14, v4

    invoke-virtual/range {v11 .. v16}, Lcom/android/server/Watchdog;->init(Landroid/content/Context;Lcom/android/server/BatteryService;Lcom/android/server/power/PowerManagerService;Lcom/android/server/AlarmManagerService;Lcom/android/server/am/ActivityManagerService;)V

    .line 381
    const-string v7, "SystemServer"

    const-string v9, "Input Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    new-instance v19, Lcom/android/server/input/InputManagerService;

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-direct {v0, v5, v1}, Lcom/android/server/input/InputManagerService;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
    :try_end_f
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_62

    .line 384
    .end local v93           #inputManager:Lcom/android/server/input/InputManagerService;
    .local v19, inputManager:Lcom/android/server/input/InputManagerService;
    :try_start_10
    const-string v7, "SystemServer"

    const-string v9, "Window Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    const/4 v7, 0x1

    move/from16 v0, v85

    if-eq v0, v7, :cond_18

    const/16 v22, 0x1

    :goto_9
    if-nez v89, :cond_19

    const/16 v23, 0x1

    :goto_a
    move-object/from16 v16, v5

    move-object/from16 v17, v4

    move-object/from16 v18, v10

    invoke-static/range {v16 .. v24}, Lcom/android/server/wm/WindowManagerService;->main(Landroid/content/Context;Lcom/android/server/power/PowerManagerService;Lcom/android/server/display/DisplayManagerService;Lcom/android/server/input/InputManagerService;Landroid/os/Handler;Landroid/os/Handler;ZZZ)Lcom/android/server/wm/WindowManagerService;

    move-result-object v152

    .line 389
    const-string v7, "window"

    move-object/from16 v0, v152

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 390
    const-string v7, "input"

    move-object/from16 v0, v19

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 392
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    move-object/from16 v0, v152

    invoke-virtual {v7, v0}, Lcom/android/server/am/ActivityManagerService;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    .line 394
    invoke-virtual/range {v152 .. v152}, Lcom/android/server/wm/WindowManagerService;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v7

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Lcom/android/server/input/InputManagerService;->setWindowManagerCallbacks(Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;)V

    .line 395
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/input/InputManagerService;->start()V

    .line 397
    move-object/from16 v0, v152

    invoke-virtual {v10, v0}, Lcom/android/server/display/DisplayManagerService;->setWindowManager(Lcom/android/server/display/DisplayManagerService$WindowManagerFuncs;)V

    .line 398
    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Lcom/android/server/display/DisplayManagerService;->setInputManager(Lcom/android/server/display/DisplayManagerService$InputManagerFuncs;)V

    .line 403
    const-string v7, "ro.kernel.qemu"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "1"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1a

    .line 404
    const-string v7, "SystemServer"

    const-string v9, "No Bluetooh Service (emulator)"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_4

    :goto_b
    move-object/from16 v129, v130

    .end local v130           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v129       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v143, v144

    .end local v144           #vibrator:Lcom/android/server/VibratorService;
    .restart local v143       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v94, v95

    .line 418
    .end local v76           #cryptState:Ljava/lang/String;
    .end local v89           #firstBoot:Z
    .end local v95           #installer:Lcom/android/server/pm/Installer;
    .restart local v94       #installer:Lcom/android/server/pm/Installer;
    :goto_c
    const/16 v77, 0x0

    .line 419
    .local v77, devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    const/16 v127, 0x0

    .line 420
    .local v127, statusBar:Lcom/android/server/StatusBarManagerService;
    const/16 v91, 0x0

    .line 421
    .local v91, imm:Lcom/android/server/InputMethodManagerService;
    const/16 v63, 0x0

    .line 422
    .local v63, appWidget:Lcom/android/server/AppWidgetService;
    const/16 v110, 0x0

    .line 423
    .local v110, notification:Lcom/android/server/NotificationManagerService;
    const/16 v146, 0x0

    .line 424
    .local v146, wallpaper:Lcom/android/server/WallpaperManagerService;
    const/16 v98, 0x0

    .line 425
    .local v98, location:Lcom/android/server/LocationManagerService;
    const/16 v74, 0x0

    .line 426
    .local v74, countryDetector:Lcom/android/server/CountryDetectorService;
    const/16 v134, 0x0

    .line 427
    .local v134, tsms:Lcom/android/server/TextServicesManagerService;
    const/16 v100, 0x0

    .line 428
    .local v100, lockSettings:Lcom/android/internal/widget/LockSettingsService;
    const/16 v82, 0x0

    .line 431
    .local v82, dreamy:Lcom/android/server/dreams/DreamManagerService;
    const/16 v87, 0x0

    .line 435
    .local v87, fileProtect:Lcom/meizu/server/FileProtectManagerService;
    const/4 v7, 0x1

    move/from16 v0, v85

    if-eq v0, v7, :cond_5

    .line 437
    :try_start_11
    const-string v7, "SystemServer"

    const-string v9, "Input Method Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    new-instance v92, Lcom/android/server/InputMethodManagerService;

    move-object/from16 v0, v92

    move-object/from16 v1, v152

    invoke-direct {v0, v5, v1}, Lcom/android/server/InputMethodManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_5

    .line 439
    .end local v91           #imm:Lcom/android/server/InputMethodManagerService;
    .local v92, imm:Lcom/android/server/InputMethodManagerService;
    :try_start_12
    const-string v7, "input_method"

    move-object/from16 v0, v92

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_59

    move-object/from16 v91, v92

    .line 445
    .end local v92           #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v91       #imm:Lcom/android/server/InputMethodManagerService;
    :goto_d
    :try_start_13
    const-string v7, "SystemServer"

    const-string v9, "Accessibility Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    const-string v7, "accessibility"

    new-instance v9, Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {v9, v5}, Lcom/android/server/accessibility/AccessibilityManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_6

    .line 454
    :cond_5
    :goto_e
    :try_start_14
    invoke-virtual/range {v152 .. v152}, Lcom/android/server/wm/WindowManagerService;->displayReady()V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_7

    .line 460
    :goto_f
    :try_start_15
    invoke-interface/range {v112 .. v112}, Landroid/content/pm/IPackageManager;->performBootDexOpt()V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_8

    .line 466
    :goto_10
    :try_start_16
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v7

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v11, 0x10403ec

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    const/4 v11, 0x0

    invoke-interface {v7, v9, v11}, Landroid/app/IActivityManager;->showBootMessage(Ljava/lang/CharSequence;Z)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_16} :catch_58

    .line 473
    :goto_11
    const/4 v7, 0x1

    move/from16 v0, v85

    if-eq v0, v7, :cond_1c

    .line 474
    const-string v7, "0"

    const-string v9, "system_init.startmountservice"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 480
    :try_start_17
    const-string v7, "SystemServer"

    const-string v9, "Mount Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    new-instance v105, Lcom/android/server/MountService;

    move-object/from16 v0, v105

    invoke-direct {v0, v5}, Lcom/android/server/MountService;-><init>(Landroid/content/Context;)V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_9

    .line 482
    .end local v104           #mountService:Lcom/android/server/MountService;
    .local v105, mountService:Lcom/android/server/MountService;
    :try_start_18
    const-string v7, "mount"

    move-object/from16 v0, v105

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_57

    move-object/from16 v104, v105

    .line 489
    .end local v105           #mountService:Lcom/android/server/MountService;
    .restart local v104       #mountService:Lcom/android/server/MountService;
    :cond_6
    :goto_12
    :try_start_19
    const-string v7, "SystemServer"

    const-string v9, "LockSettingsService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    new-instance v101, Lcom/android/internal/widget/LockSettingsService;

    move-object/from16 v0, v101

    invoke-direct {v0, v5}, Lcom/android/internal/widget/LockSettingsService;-><init>(Landroid/content/Context;)V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_19} :catch_a

    .line 491
    .end local v100           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .local v101, lockSettings:Lcom/android/internal/widget/LockSettingsService;
    :try_start_1a
    const-string v7, "lock_settings"

    move-object/from16 v0, v101

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1a} :catch_56

    move-object/from16 v100, v101

    .line 497
    .end local v101           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .restart local v100       #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    :goto_13
    :try_start_1b
    const-string v7, "SystemServer"

    const-string v9, "Device Policy"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    new-instance v78, Lcom/android/server/DevicePolicyManagerService;

    move-object/from16 v0, v78

    invoke-direct {v0, v5}, Lcom/android/server/DevicePolicyManagerService;-><init>(Landroid/content/Context;)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1b} :catch_b

    .line 499
    .end local v77           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .local v78, devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    :try_start_1c
    const-string v7, "device_policy"

    move-object/from16 v0, v78

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1c} :catch_55

    move-object/from16 v77, v78

    .line 505
    .end local v78           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v77       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    :goto_14
    :try_start_1d
    const-string v7, "SystemServer"

    const-string v9, "Status Bar"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    new-instance v128, Lcom/android/server/StatusBarManagerService;

    move-object/from16 v0, v128

    move-object/from16 v1, v152

    invoke-direct {v0, v5, v1}, Lcom/android/server/StatusBarManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_1d} :catch_c

    .line 507
    .end local v127           #statusBar:Lcom/android/server/StatusBarManagerService;
    .local v128, statusBar:Lcom/android/server/StatusBarManagerService;
    :try_start_1e
    const-string v7, "statusbar"

    move-object/from16 v0, v128

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_1e} :catch_54

    move-object/from16 v127, v128

    .line 514
    .end local v128           #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v127       #statusBar:Lcom/android/server/StatusBarManagerService;
    :goto_15
    :try_start_1f
    new-instance v88, Lcom/meizu/server/FileProtectManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    move-object/from16 v0, v88

    invoke-direct {v0, v5, v7}, Lcom/meizu/server/FileProtectManagerService;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;)V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_1f} :catch_d

    .line 515
    .end local v87           #fileProtect:Lcom/meizu/server/FileProtectManagerService;
    .local v88, fileProtect:Lcom/meizu/server/FileProtectManagerService;
    :try_start_20
    const-string v7, "fileProtect"

    move-object/from16 v0, v88

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_20} :catch_53

    move-object/from16 v87, v88

    .line 522
    .end local v88           #fileProtect:Lcom/meizu/server/FileProtectManagerService;
    .restart local v87       #fileProtect:Lcom/meizu/server/FileProtectManagerService;
    :goto_16
    :try_start_21
    const-string v7, "SystemServer"

    const-string v9, "Clipboard Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    const-string v7, "clipboard"

    new-instance v9, Lcom/android/server/ClipboardService;

    invoke-direct {v9, v5}, Lcom/android/server/ClipboardService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_21} :catch_e

    .line 530
    :goto_17
    :try_start_22
    const-string v7, "SystemServer"

    const-string v9, "NetworkManagement Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    invoke-static {v5}, Lcom/android/server/NetworkManagementService;->create(Landroid/content/Context;)Lcom/android/server/NetworkManagementService;

    move-result-object v30

    .line 532
    const-string v7, "network_management"

    move-object/from16 v0, v30

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_22} :catch_f

    .line 538
    :goto_18
    :try_start_23
    const-string v7, "SystemServer"

    const-string v9, "Text Service Manager Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    new-instance v135, Lcom/android/server/TextServicesManagerService;

    move-object/from16 v0, v135

    invoke-direct {v0, v5}, Lcom/android/server/TextServicesManagerService;-><init>(Landroid/content/Context;)V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_23} :catch_10

    .line 540
    .end local v134           #tsms:Lcom/android/server/TextServicesManagerService;
    .local v135, tsms:Lcom/android/server/TextServicesManagerService;
    :try_start_24
    const-string v7, "textservices"

    move-object/from16 v0, v135

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_24} :catch_52

    move-object/from16 v134, v135

    .line 546
    .end local v135           #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v134       #tsms:Lcom/android/server/TextServicesManagerService;
    :goto_19
    :try_start_25
    const-string v7, "SystemServer"

    const-string v9, "NetworkStats Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    new-instance v107, Lcom/android/server/net/NetworkStatsService;

    move-object/from16 v0, v107

    move-object/from16 v1, v30

    invoke-direct {v0, v5, v1, v15}, Lcom/android/server/net/NetworkStatsService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/app/IAlarmManager;)V
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_25} :catch_11

    .line 548
    .end local v29           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .local v107, networkStats:Lcom/android/server/net/NetworkStatsService;
    :try_start_26
    const-string v7, "netstats"

    move-object/from16 v0, v107

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_26} :catch_51

    move-object/from16 v29, v107

    .line 554
    .end local v107           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v29       #networkStats:Lcom/android/server/net/NetworkStatsService;
    :goto_1a
    :try_start_27
    const-string v7, "SystemServer"

    const-string v9, "NetworkPolicy Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    new-instance v25, Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v27

    move-object/from16 v26, v5

    move-object/from16 v28, v4

    invoke-direct/range {v25 .. v30}, Lcom/android/server/net/NetworkPolicyManagerService;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/IPowerManager;Landroid/net/INetworkStatsService;Landroid/os/INetworkManagementService;)V
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_27} :catch_12

    .line 558
    .end local v106           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .local v25, networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    :try_start_28
    const-string v7, "netpolicy"

    move-object/from16 v0, v25

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_28} :catch_50

    .line 564
    :goto_1b
    :try_start_29
    const-string v7, "SystemServer"

    const-string v9, "Wi-Fi P2pService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    new-instance v151, Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v0, v151

    invoke-direct {v0, v5}, Landroid/net/wifi/p2p/WifiP2pService;-><init>(Landroid/content/Context;)V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_29} :catch_13

    .line 566
    .end local v150           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .local v151, wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    :try_start_2a
    const-string v7, "wifip2p"

    move-object/from16 v0, v151

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_2a} :catch_4f

    move-object/from16 v150, v151

    .line 572
    .end local v151           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v150       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    :goto_1c
    :try_start_2b
    const-string v7, "SystemServer"

    const-string v9, "Wi-Fi Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    new-instance v149, Lcom/android/server/WifiService;

    move-object/from16 v0, v149

    invoke-direct {v0, v5}, Lcom/android/server/WifiService;-><init>(Landroid/content/Context;)V
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_2b} :catch_14

    .line 574
    .end local v148           #wifi:Lcom/android/server/WifiService;
    .local v149, wifi:Lcom/android/server/WifiService;
    :try_start_2c
    const-string v7, "wifi"

    move-object/from16 v0, v149

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_2c} :catch_4e

    move-object/from16 v148, v149

    .line 580
    .end local v149           #wifi:Lcom/android/server/WifiService;
    .restart local v148       #wifi:Lcom/android/server/WifiService;
    :goto_1d
    :try_start_2d
    const-string v7, "SystemServer"

    const-string v9, "SambaServer Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    new-instance v122, Lcom/android/server/SambaServerService;

    move-object/from16 v0, v122

    invoke-direct {v0, v5}, Lcom/android/server/SambaServerService;-><init>(Landroid/content/Context;)V
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_2d} :catch_15

    .line 582
    .end local v121           #sambaServer:Lcom/android/server/SambaServerService;
    .local v122, sambaServer:Lcom/android/server/SambaServerService;
    :try_start_2e
    const-string v7, "samba_server"

    move-object/from16 v0, v122

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_2e} :catch_4d

    move-object/from16 v121, v122

    .line 588
    .end local v122           #sambaServer:Lcom/android/server/SambaServerService;
    .restart local v121       #sambaServer:Lcom/android/server/SambaServerService;
    :goto_1e
    :try_start_2f
    const-string v7, "SystemServer"

    const-string v9, "SambaClient Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    new-instance v120, Lcom/android/server/SambaClientService;

    move-object/from16 v0, v120

    invoke-direct {v0, v5}, Lcom/android/server/SambaClientService;-><init>(Landroid/content/Context;)V
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_2f} :catch_16

    .line 590
    .end local v119           #sambaClient:Lcom/android/server/SambaClientService;
    .local v120, sambaClient:Lcom/android/server/SambaClientService;
    :try_start_30
    const-string v7, "samba_client"

    move-object/from16 v0, v120

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_30} :catch_4c

    move-object/from16 v119, v120

    .line 596
    .end local v120           #sambaClient:Lcom/android/server/SambaClientService;
    .restart local v119       #sambaClient:Lcom/android/server/SambaClientService;
    :goto_1f
    :try_start_31
    const-string v7, "SystemServer"

    const-string v9, "Connectivity Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    new-instance v72, Lcom/android/server/ConnectivityService;

    move-object/from16 v0, v72

    move-object/from16 v1, v30

    move-object/from16 v2, v29

    move-object/from16 v3, v25

    invoke-direct {v0, v5, v1, v2, v3}, Lcom/android/server/ConnectivityService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;)V
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_31} :catch_17

    .line 599
    .end local v71           #connectivity:Lcom/android/server/ConnectivityService;
    .local v72, connectivity:Lcom/android/server/ConnectivityService;
    :try_start_32
    const-string v7, "connectivity"

    move-object/from16 v0, v72

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 600
    move-object/from16 v0, v29

    move-object/from16 v1, v72

    invoke-virtual {v0, v1}, Lcom/android/server/net/NetworkStatsService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    .line 601
    move-object/from16 v0, v25

    move-object/from16 v1, v72

    invoke-virtual {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    .line 602
    invoke-virtual/range {v148 .. v148}, Lcom/android/server/WifiService;->checkAndStartWifi()V

    .line 603
    invoke-virtual/range {v150 .. v150}, Landroid/net/wifi/p2p/WifiP2pService;->connectivityServiceReady()V
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_32} :catch_4b

    move-object/from16 v71, v72

    .line 609
    .end local v72           #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v71       #connectivity:Lcom/android/server/ConnectivityService;
    :goto_20
    :try_start_33
    const-string v7, "SystemServer"

    const-string v9, "Network Service Discovery Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    invoke-static {v5}, Lcom/android/server/NsdService;->create(Landroid/content/Context;)Lcom/android/server/NsdService;

    move-result-object v125

    .line 611
    const-string v7, "servicediscovery"

    move-object/from16 v0, v125

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_33} :catch_18

    .line 618
    :goto_21
    :try_start_34
    const-string v7, "SystemServer"

    const-string v9, "Throttle Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    new-instance v133, Lcom/android/server/ThrottleService;

    move-object/from16 v0, v133

    invoke-direct {v0, v5}, Lcom/android/server/ThrottleService;-><init>(Landroid/content/Context;)V
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_34} :catch_19

    .line 620
    .end local v132           #throttle:Lcom/android/server/ThrottleService;
    .local v133, throttle:Lcom/android/server/ThrottleService;
    :try_start_35
    const-string v7, "throttle"

    move-object/from16 v0, v133

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_35} :catch_4a

    move-object/from16 v132, v133

    .line 627
    .end local v133           #throttle:Lcom/android/server/ThrottleService;
    .restart local v132       #throttle:Lcom/android/server/ThrottleService;
    :goto_22
    :try_start_36
    const-string v7, "SystemServer"

    const-string v9, "UpdateLock Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    const-string v7, "updatelock"

    new-instance v9, Lcom/android/server/UpdateLockService;

    invoke-direct {v9, v5}, Lcom/android/server/UpdateLockService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_36} :catch_1a

    .line 639
    :goto_23
    if-eqz v104, :cond_7

    .line 640
    invoke-virtual/range {v104 .. v104}, Lcom/android/server/MountService;->waitForAsecScan()V

    .line 644
    :cond_7
    if-eqz v59, :cond_8

    .line 645
    :try_start_37
    invoke-virtual/range {v59 .. v59}, Landroid/accounts/AccountManagerService;->systemReady()V
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_37} :catch_1b

    .line 651
    :cond_8
    :goto_24
    if-eqz v73, :cond_9

    .line 652
    :try_start_38
    invoke-virtual/range {v73 .. v73}, Landroid/content/ContentService;->systemReady()V
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_38} :catch_1c

    .line 658
    :cond_9
    :goto_25
    :try_start_39
    const-string v7, "SystemServer"

    const-string v9, "Notification Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    new-instance v111, Lcom/android/server/NotificationManagerService;

    move-object/from16 v0, v111

    move-object/from16 v1, v127

    invoke-direct {v0, v5, v1, v6}, Lcom/android/server/NotificationManagerService;-><init>(Landroid/content/Context;Lcom/android/server/StatusBarManagerService;Lcom/android/server/LightsService;)V
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_39 .. :try_end_39} :catch_1d

    .line 660
    .end local v110           #notification:Lcom/android/server/NotificationManagerService;
    .local v111, notification:Lcom/android/server/NotificationManagerService;
    :try_start_3a
    const-string v7, "notification"

    move-object/from16 v0, v111

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 661
    move-object/from16 v0, v25

    move-object/from16 v1, v111

    invoke-virtual {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->bindNotificationManager(Landroid/app/INotificationManager;)V
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_3a .. :try_end_3a} :catch_49

    move-object/from16 v110, v111

    .line 667
    .end local v111           #notification:Lcom/android/server/NotificationManagerService;
    .restart local v110       #notification:Lcom/android/server/NotificationManagerService;
    :goto_26
    :try_start_3b
    const-string v7, "SystemServer"

    const-string v9, "Device Storage Monitor"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    const-string v7, "devicestoragemonitor"

    new-instance v9, Lcom/android/server/DeviceStorageMonitorService;

    invoke-direct {v9, v5}, Lcom/android/server/DeviceStorageMonitorService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_3b .. :try_end_3b} :catch_1e

    .line 675
    :goto_27
    :try_start_3c
    const-string v7, "SystemServer"

    const-string v9, "Location Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    new-instance v99, Lcom/android/server/LocationManagerService;

    move-object/from16 v0, v99

    invoke-direct {v0, v5}, Lcom/android/server/LocationManagerService;-><init>(Landroid/content/Context;)V
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_3c .. :try_end_3c} :catch_1f

    .line 677
    .end local v98           #location:Lcom/android/server/LocationManagerService;
    .local v99, location:Lcom/android/server/LocationManagerService;
    :try_start_3d
    const-string v7, "location"

    move-object/from16 v0, v99

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_3d .. :try_end_3d} :catch_48

    move-object/from16 v98, v99

    .line 683
    .end local v99           #location:Lcom/android/server/LocationManagerService;
    .restart local v98       #location:Lcom/android/server/LocationManagerService;
    :goto_28
    :try_start_3e
    const-string v7, "SystemServer"

    const-string v9, "Country Detector"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    new-instance v75, Lcom/android/server/CountryDetectorService;

    move-object/from16 v0, v75

    invoke-direct {v0, v5}, Lcom/android/server/CountryDetectorService;-><init>(Landroid/content/Context;)V
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_3e .. :try_end_3e} :catch_20

    .line 685
    .end local v74           #countryDetector:Lcom/android/server/CountryDetectorService;
    .local v75, countryDetector:Lcom/android/server/CountryDetectorService;
    :try_start_3f
    const-string v7, "country_detector"

    move-object/from16 v0, v75

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3f
    .catch Ljava/lang/Throwable; {:try_start_3f .. :try_end_3f} :catch_47

    move-object/from16 v74, v75

    .line 691
    .end local v75           #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v74       #countryDetector:Lcom/android/server/CountryDetectorService;
    :goto_29
    :try_start_40
    const-string v7, "SystemServer"

    const-string v9, "Search Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    const-string v7, "search"

    new-instance v9, Landroid/server/search/SearchManagerService;

    invoke-direct {v9, v5}, Landroid/server/search/SearchManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_40 .. :try_end_40} :catch_21

    .line 699
    :goto_2a
    :try_start_41
    const-string v7, "SystemServer"

    const-string v9, "DropBox Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    const-string v7, "dropbox"

    new-instance v9, Lcom/android/server/DropBoxManagerService;

    new-instance v11, Ljava/io/File;

    const-string v12, "/data/system/dropbox"

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v5, v11}, Lcom/android/server/DropBoxManagerService;-><init>(Landroid/content/Context;Ljava/io/File;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_41 .. :try_end_41} :catch_22

    .line 706
    :goto_2b
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x111002b

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 709
    :try_start_42
    const-string v7, "SystemServer"

    const-string v9, "Wallpaper Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    if-nez v33, :cond_a

    .line 711
    new-instance v147, Lcom/android/server/WallpaperManagerService;

    move-object/from16 v0, v147

    invoke-direct {v0, v5}, Lcom/android/server/WallpaperManagerService;-><init>(Landroid/content/Context;)V
    :try_end_42
    .catch Ljava/lang/Throwable; {:try_start_42 .. :try_end_42} :catch_23

    .line 712
    .end local v146           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .local v147, wallpaper:Lcom/android/server/WallpaperManagerService;
    :try_start_43
    const-string v7, "wallpaper"

    move-object/from16 v0, v147

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_43
    .catch Ljava/lang/Throwable; {:try_start_43 .. :try_end_43} :catch_46

    move-object/from16 v146, v147

    .line 719
    .end local v147           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v146       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :cond_a
    :goto_2c
    const-string v7, "0"

    const-string v9, "system_init.startaudioservice"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b

    .line 721
    :try_start_44
    const-string v7, "SystemServer"

    const-string v9, "Audio Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    const-string v7, "audio"

    new-instance v9, Landroid/media/AudioService;

    invoke-direct {v9, v5}, Landroid/media/AudioService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_44 .. :try_end_44} :catch_24

    .line 729
    :cond_b
    :goto_2d
    :try_start_45
    const-string v7, "SystemServer"

    const-string v9, "Dock Observer"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    new-instance v81, Lcom/android/server/DockObserver;

    move-object/from16 v0, v81

    invoke-direct {v0, v5}, Lcom/android/server/DockObserver;-><init>(Landroid/content/Context;)V
    :try_end_45
    .catch Ljava/lang/Throwable; {:try_start_45 .. :try_end_45} :catch_25

    .end local v80           #dock:Lcom/android/server/DockObserver;
    .local v81, dock:Lcom/android/server/DockObserver;
    move-object/from16 v80, v81

    .line 737
    .end local v81           #dock:Lcom/android/server/DockObserver;
    .restart local v80       #dock:Lcom/android/server/DockObserver;
    :goto_2e
    :try_start_46
    const-string v7, "SystemServer"

    const-string v9, "Wired Accessory Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    new-instance v7, Lcom/android/server/WiredAccessoryManager;

    move-object/from16 v0, v19

    invoke-direct {v7, v5, v0}, Lcom/android/server/WiredAccessoryManager;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Lcom/android/server/input/InputManagerService;->setWiredAccessoryCallbacks(Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;)V
    :try_end_46
    .catch Ljava/lang/Throwable; {:try_start_46 .. :try_end_46} :catch_26

    .line 746
    :goto_2f
    :try_start_47
    const-string v7, "SystemServer"

    const-string v9, "USB Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    new-instance v142, Lcom/android/server/usb/UsbService;

    move-object/from16 v0, v142

    invoke-direct {v0, v5}, Lcom/android/server/usb/UsbService;-><init>(Landroid/content/Context;)V
    :try_end_47
    .catch Ljava/lang/Throwable; {:try_start_47 .. :try_end_47} :catch_27

    .line 749
    .end local v141           #usb:Lcom/android/server/usb/UsbService;
    .local v142, usb:Lcom/android/server/usb/UsbService;
    :try_start_48
    const-string v7, "usb"

    move-object/from16 v0, v142

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_48
    .catch Ljava/lang/Throwable; {:try_start_48 .. :try_end_48} :catch_45

    move-object/from16 v141, v142

    .line 755
    .end local v142           #usb:Lcom/android/server/usb/UsbService;
    .restart local v141       #usb:Lcom/android/server/usb/UsbService;
    :goto_30
    :try_start_49
    const-string v7, "SystemServer"

    const-string v9, "Serial Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    new-instance v124, Lcom/android/server/SerialService;

    move-object/from16 v0, v124

    invoke-direct {v0, v5}, Lcom/android/server/SerialService;-><init>(Landroid/content/Context;)V
    :try_end_49
    .catch Ljava/lang/Throwable; {:try_start_49 .. :try_end_49} :catch_28

    .line 758
    .end local v123           #serial:Lcom/android/server/SerialService;
    .local v124, serial:Lcom/android/server/SerialService;
    :try_start_4a
    const-string v7, "serial"

    move-object/from16 v0, v124

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4a
    .catch Ljava/lang/Throwable; {:try_start_4a .. :try_end_4a} :catch_44

    move-object/from16 v123, v124

    .line 764
    .end local v124           #serial:Lcom/android/server/SerialService;
    .restart local v123       #serial:Lcom/android/server/SerialService;
    :goto_31
    :try_start_4b
    const-string v7, "SystemServer"

    const-string v9, "Twilight Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    new-instance v137, Lcom/android/server/TwilightService;

    move-object/from16 v0, v137

    invoke-direct {v0, v5}, Lcom/android/server/TwilightService;-><init>(Landroid/content/Context;)V
    :try_end_4b
    .catch Ljava/lang/Throwable; {:try_start_4b .. :try_end_4b} :catch_29

    .end local v136           #twilight:Lcom/android/server/TwilightService;
    .local v137, twilight:Lcom/android/server/TwilightService;
    move-object/from16 v136, v137

    .line 771
    .end local v137           #twilight:Lcom/android/server/TwilightService;
    .restart local v136       #twilight:Lcom/android/server/TwilightService;
    :goto_32
    :try_start_4c
    const-string v7, "SystemServer"

    const-string v9, "UI Mode Manager Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    new-instance v140, Lcom/android/server/UiModeManagerService;

    move-object/from16 v0, v140

    move-object/from16 v1, v136

    invoke-direct {v0, v5, v1}, Lcom/android/server/UiModeManagerService;-><init>(Landroid/content/Context;Lcom/android/server/TwilightService;)V
    :try_end_4c
    .catch Ljava/lang/Throwable; {:try_start_4c .. :try_end_4c} :catch_2a

    .end local v139           #uiMode:Lcom/android/server/UiModeManagerService;
    .local v140, uiMode:Lcom/android/server/UiModeManagerService;
    move-object/from16 v139, v140

    .line 779
    .end local v140           #uiMode:Lcom/android/server/UiModeManagerService;
    .restart local v139       #uiMode:Lcom/android/server/UiModeManagerService;
    :goto_33
    :try_start_4d
    const-string v7, "SystemServer"

    const-string v9, "Backup Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    const-string v7, "backup"

    new-instance v9, Lcom/android/server/BackupManagerService;

    invoke-direct {v9, v5}, Lcom/android/server/BackupManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4d
    .catch Ljava/lang/Throwable; {:try_start_4d .. :try_end_4d} :catch_2b

    .line 787
    :goto_34
    :try_start_4e
    const-string v7, "SystemServer"

    const-string v9, "AppWidget Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    new-instance v64, Lcom/android/server/AppWidgetService;

    move-object/from16 v0, v64

    invoke-direct {v0, v5}, Lcom/android/server/AppWidgetService;-><init>(Landroid/content/Context;)V
    :try_end_4e
    .catch Ljava/lang/Throwable; {:try_start_4e .. :try_end_4e} :catch_2c

    .line 789
    .end local v63           #appWidget:Lcom/android/server/AppWidgetService;
    .local v64, appWidget:Lcom/android/server/AppWidgetService;
    :try_start_4f
    const-string v7, "appwidget"

    move-object/from16 v0, v64

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4f
    .catch Ljava/lang/Throwable; {:try_start_4f .. :try_end_4f} :catch_43

    move-object/from16 v63, v64

    .line 795
    .end local v64           #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v63       #appWidget:Lcom/android/server/AppWidgetService;
    :goto_35
    :try_start_50
    const-string v7, "SystemServer"

    const-string v9, "Recognition Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    new-instance v117, Lcom/android/server/RecognitionManagerService;

    move-object/from16 v0, v117

    invoke-direct {v0, v5}, Lcom/android/server/RecognitionManagerService;-><init>(Landroid/content/Context;)V
    :try_end_50
    .catch Ljava/lang/Throwable; {:try_start_50 .. :try_end_50} :catch_2d

    .end local v116           #recognition:Lcom/android/server/RecognitionManagerService;
    .local v117, recognition:Lcom/android/server/RecognitionManagerService;
    move-object/from16 v116, v117

    .line 802
    .end local v117           #recognition:Lcom/android/server/RecognitionManagerService;
    .restart local v116       #recognition:Lcom/android/server/RecognitionManagerService;
    :goto_36
    :try_start_51
    const-string v7, "SystemServer"

    const-string v9, "DiskStats Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    const-string v7, "diskstats"

    new-instance v9, Lcom/android/server/DiskStatsService;

    invoke-direct {v9, v5}, Lcom/android/server/DiskStatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_51
    .catch Ljava/lang/Throwable; {:try_start_51 .. :try_end_51} :catch_2e

    .line 813
    :goto_37
    :try_start_52
    const-string v7, "SystemServer"

    const-string v9, "SamplingProfiler Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    const-string v7, "samplingprofiler"

    new-instance v9, Lcom/android/server/SamplingProfilerService;

    invoke-direct {v9, v5}, Lcom/android/server/SamplingProfilerService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_52
    .catch Ljava/lang/Throwable; {:try_start_52 .. :try_end_52} :catch_2f

    .line 821
    :goto_38
    :try_start_53
    const-string v7, "SystemServer"

    const-string v9, "NetworkTimeUpdateService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    new-instance v109, Lcom/android/server/NetworkTimeUpdateService;

    move-object/from16 v0, v109

    invoke-direct {v0, v5}, Lcom/android/server/NetworkTimeUpdateService;-><init>(Landroid/content/Context;)V
    :try_end_53
    .catch Ljava/lang/Throwable; {:try_start_53 .. :try_end_53} :catch_30

    .end local v108           #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .local v109, networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v108, v109

    .line 828
    .end local v109           #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .restart local v108       #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    :goto_39
    :try_start_54
    const-string v7, "SystemServer"

    const-string v9, "CommonTimeManagementService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    new-instance v69, Lcom/android/server/CommonTimeManagementService;

    move-object/from16 v0, v69

    invoke-direct {v0, v5}, Lcom/android/server/CommonTimeManagementService;-><init>(Landroid/content/Context;)V
    :try_end_54
    .catch Ljava/lang/Throwable; {:try_start_54 .. :try_end_54} :catch_31

    .line 830
    .end local v68           #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .local v69, commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    :try_start_55
    const-string v7, "commontime_management"

    move-object/from16 v0, v69

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_55
    .catch Ljava/lang/Throwable; {:try_start_55 .. :try_end_55} :catch_42

    move-object/from16 v68, v69

    .line 836
    .end local v69           #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .restart local v68       #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    :goto_3a
    :try_start_56
    const-string v7, "SystemServer"

    const-string v9, "CertBlacklister"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    new-instance v7, Lcom/android/server/CertBlacklister;

    invoke-direct {v7, v5}, Lcom/android/server/CertBlacklister;-><init>(Landroid/content/Context;)V
    :try_end_56
    .catch Ljava/lang/Throwable; {:try_start_56 .. :try_end_56} :catch_32

    .line 842
    :goto_3b
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x111003f

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 845
    :try_start_57
    const-string v7, "SystemServer"

    const-string v9, "Dreams Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    new-instance v83, Lcom/android/server/dreams/DreamManagerService;

    move-object/from16 v0, v83

    move-object/from16 v1, v21

    invoke-direct {v0, v5, v1}, Lcom/android/server/dreams/DreamManagerService;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
    :try_end_57
    .catch Ljava/lang/Throwable; {:try_start_57 .. :try_end_57} :catch_33

    .line 848
    .end local v82           #dreamy:Lcom/android/server/dreams/DreamManagerService;
    .local v83, dreamy:Lcom/android/server/dreams/DreamManagerService;
    :try_start_58
    const-string v7, "dreams"

    move-object/from16 v0, v83

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_58
    .catch Ljava/lang/Throwable; {:try_start_58 .. :try_end_58} :catch_41

    move-object/from16 v82, v83

    .line 857
    .end local v83           #dreamy:Lcom/android/server/dreams/DreamManagerService;
    .restart local v82       #dreamy:Lcom/android/server/dreams/DreamManagerService;
    :cond_c
    :goto_3c
    const/16 v118, 0x0

    .line 866
    .local v118, safeMode:Z
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v7

    invoke-virtual {v7}, Ldalvik/system/VMRuntime;->startJitCompilation()V

    .line 872
    :try_start_59
    invoke-virtual/range {v143 .. v143}, Lcom/android/server/VibratorService;->systemReady()V
    :try_end_59
    .catch Ljava/lang/Throwable; {:try_start_59 .. :try_end_59} :catch_34

    .line 878
    :goto_3d
    :try_start_5a
    invoke-virtual/range {v100 .. v100}, Lcom/android/internal/widget/LockSettingsService;->systemReady()V
    :try_end_5a
    .catch Ljava/lang/Throwable; {:try_start_5a .. :try_end_5a} :catch_35

    .line 883
    :goto_3e
    if-eqz v77, :cond_d

    .line 885
    :try_start_5b
    invoke-virtual/range {v77 .. v77}, Lcom/android/server/DevicePolicyManagerService;->systemReady()V
    :try_end_5b
    .catch Ljava/lang/Throwable; {:try_start_5b .. :try_end_5b} :catch_37

    .line 888
    :try_start_5c
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v9, "meizu_password_length"

    const/4 v11, 0x0

    invoke-static {v7, v9, v11}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v96

    .line 889
    .local v96, len:I
    if-nez v96, :cond_d

    .line 890
    new-instance v102, Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, v102

    invoke-direct {v0, v5}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 891
    .local v102, mLockPasswordUtils:Lcom/android/internal/widget/LockPatternUtils;
    const/4 v7, 0x0

    move-object/from16 v0, v102

    invoke-virtual {v0, v7}, Lcom/android/internal/widget/LockPatternUtils;->clearLock(Z)V
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_5c} :catch_36
    .catch Ljava/lang/Throwable; {:try_start_5c .. :try_end_5c} :catch_37

    .line 903
    .end local v96           #len:I
    .end local v102           #mLockPasswordUtils:Lcom/android/internal/widget/LockPatternUtils;
    :cond_d
    :goto_3f
    const-string v7, "SystemServer"

    const-string v9, "new AccessControlService(context)"

    invoke-static {v7, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    new-instance v61, Lcom/android/server/pm/AccessControlService;

    move-object/from16 v0, v61

    invoke-direct {v0, v5}, Lcom/android/server/pm/AccessControlService;-><init>(Landroid/content/Context;)V

    .line 905
    .local v61, acs:Lcom/android/server/pm/AccessControlService;
    const-string v7, "access_control"

    move-object/from16 v0, v61

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 906
    if-eqz v61, :cond_e

    .line 908
    :try_start_5d
    invoke-virtual/range {v61 .. v61}, Lcom/android/server/pm/AccessControlService;->systemReady()V
    :try_end_5d
    .catch Ljava/lang/Throwable; {:try_start_5d .. :try_end_5d} :catch_38

    .line 914
    :cond_e
    :goto_40
    if-eqz v110, :cond_f

    .line 916
    :try_start_5e
    invoke-virtual/range {v110 .. v110}, Lcom/android/server/NotificationManagerService;->systemReady()V
    :try_end_5e
    .catch Ljava/lang/Throwable; {:try_start_5e .. :try_end_5e} :catch_39

    .line 923
    :cond_f
    :goto_41
    if-eqz v87, :cond_10

    .line 925
    :try_start_5f
    invoke-virtual/range {v87 .. v87}, Lcom/meizu/server/FileProtectManagerService;->systemReady()V
    :try_end_5f
    .catch Ljava/lang/Throwable; {:try_start_5f .. :try_end_5f} :catch_3a

    .line 933
    :cond_10
    :goto_42
    :try_start_60
    invoke-virtual/range {v152 .. v152}, Lcom/android/server/wm/WindowManagerService;->systemReady()V
    :try_end_60
    .catch Ljava/lang/Throwable; {:try_start_60 .. :try_end_60} :catch_3b

    .line 945
    :goto_43
    invoke-virtual/range {v152 .. v152}, Lcom/android/server/wm/WindowManagerService;->computeNewConfiguration()Landroid/content/res/Configuration;

    move-result-object v70

    .line 946
    .local v70, config:Landroid/content/res/Configuration;
    new-instance v103, Landroid/util/DisplayMetrics;

    invoke-direct/range {v103 .. v103}, Landroid/util/DisplayMetrics;-><init>()V

    .line 947
    .local v103, metrics:Landroid/util/DisplayMetrics;
    const-string v7, "window"

    invoke-virtual {v5, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v145

    check-cast v145, Landroid/view/WindowManager;

    .line 948
    .local v145, w:Landroid/view/WindowManager;
    invoke-interface/range {v145 .. v145}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    move-object/from16 v0, v103

    invoke-virtual {v7, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 949
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    move-object/from16 v0, v70

    move-object/from16 v1, v103

    invoke-virtual {v7, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 952
    :try_start_61
    move-object/from16 v0, v136

    move-object/from16 v1, v82

    invoke-virtual {v4, v0, v1}, Lcom/android/server/power/PowerManagerService;->systemReady(Lcom/android/server/TwilightService;Lcom/android/server/dreams/DreamManagerService;)V
    :try_end_61
    .catch Ljava/lang/Throwable; {:try_start_61 .. :try_end_61} :catch_3c

    .line 958
    :goto_44
    :try_start_62
    invoke-interface/range {v112 .. v112}, Landroid/content/pm/IPackageManager;->systemReady()V
    :try_end_62
    .catch Ljava/lang/Throwable; {:try_start_62 .. :try_end_62} :catch_3d

    .line 964
    :goto_45
    const/4 v7, 0x0

    :try_start_63
    move/from16 v0, v24

    invoke-virtual {v10, v7, v0}, Lcom/android/server/display/DisplayManagerService;->systemReady(ZZ)V
    :try_end_63
    .catch Ljava/lang/Throwable; {:try_start_63 .. :try_end_63} :catch_3e

    .line 970
    :goto_46
    move-object/from16 v34, v5

    .line 971
    .local v34, contextF:Landroid/content/Context;
    move-object/from16 v35, v104

    .line 972
    .local v35, mountServiceF:Lcom/android/server/MountService;
    move-object/from16 v36, v8

    .line 973
    .local v36, batteryF:Lcom/android/server/BatteryService;
    move-object/from16 v37, v30

    .line 974
    .local v37, networkManagementF:Lcom/android/server/NetworkManagementService;
    move-object/from16 v38, v29

    .line 975
    .local v38, networkStatsF:Lcom/android/server/net/NetworkStatsService;
    move-object/from16 v39, v25

    .line 976
    .local v39, networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;
    move-object/from16 v40, v71

    .line 977
    .local v40, connectivityF:Lcom/android/server/ConnectivityService;
    move-object/from16 v41, v80

    .line 978
    .local v41, dockF:Lcom/android/server/DockObserver;
    move-object/from16 v42, v141

    .line 979
    .local v42, usbF:Lcom/android/server/usb/UsbService;
    move-object/from16 v52, v132

    .line 980
    .local v52, throttleF:Lcom/android/server/ThrottleService;
    move-object/from16 v43, v136

    .line 981
    .local v43, twilightF:Lcom/android/server/TwilightService;
    move-object/from16 v44, v139

    .line 982
    .local v44, uiModeF:Lcom/android/server/UiModeManagerService;
    move-object/from16 v46, v63

    .line 983
    .local v46, appWidgetF:Lcom/android/server/AppWidgetService;
    move-object/from16 v47, v146

    .line 984
    .local v47, wallpaperF:Lcom/android/server/WallpaperManagerService;
    move-object/from16 v48, v91

    .line 985
    .local v48, immF:Lcom/android/server/InputMethodManagerService;
    move-object/from16 v45, v116

    .line 986
    .local v45, recognitionF:Lcom/android/server/RecognitionManagerService;
    move-object/from16 v50, v98

    .line 987
    .local v50, locationF:Lcom/android/server/LocationManagerService;
    move-object/from16 v51, v74

    .line 988
    .local v51, countryDetectorF:Lcom/android/server/CountryDetectorService;
    move-object/from16 v53, v108

    .line 989
    .local v53, networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v54, v68

    .line 990
    .local v54, commonTimeMgmtServiceF:Lcom/android/server/CommonTimeManagementService;
    move-object/from16 v55, v134

    .line 991
    .local v55, textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;
    move-object/from16 v49, v127

    .line 992
    .local v49, statusBarF:Lcom/android/server/StatusBarManagerService;
    move-object/from16 v56, v82

    .line 993
    .local v56, dreamyF:Lcom/android/server/dreams/DreamManagerService;
    move-object/from16 v57, v19

    .line 994
    .local v57, inputManagerF:Lcom/android/server/input/InputManagerService;
    move-object/from16 v58, v129

    .line 1001
    .local v58, telephonyRegistryF:Lcom/android/server/TelephonyRegistry;
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    new-instance v31, Lcom/android/server/ServerThread$3;

    move-object/from16 v32, p0

    invoke-direct/range {v31 .. v58}, Lcom/android/server/ServerThread$3;-><init>(Lcom/android/server/ServerThread;ZLandroid/content/Context;Lcom/android/server/MountService;Lcom/android/server/BatteryService;Lcom/android/server/NetworkManagementService;Lcom/android/server/net/NetworkStatsService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/ConnectivityService;Lcom/android/server/DockObserver;Lcom/android/server/usb/UsbService;Lcom/android/server/TwilightService;Lcom/android/server/UiModeManagerService;Lcom/android/server/RecognitionManagerService;Lcom/android/server/AppWidgetService;Lcom/android/server/WallpaperManagerService;Lcom/android/server/InputMethodManagerService;Lcom/android/server/StatusBarManagerService;Lcom/android/server/LocationManagerService;Lcom/android/server/CountryDetectorService;Lcom/android/server/ThrottleService;Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/CommonTimeManagementService;Lcom/android/server/TextServicesManagerService;Lcom/android/server/dreams/DreamManagerService;Lcom/android/server/input/InputManagerService;Lcom/android/server/TelephonyRegistry;)V

    move-object/from16 v0, v31

    invoke-virtual {v7, v0}, Lcom/android/server/am/ActivityManagerService;->systemReady(Ljava/lang/Runnable;)V

    .line 1131
    :try_start_64
    invoke-virtual/range {v152 .. v152}, Lcom/android/server/wm/WindowManagerService;->afterAMSReady()V
    :try_end_64
    .catch Ljava/lang/Throwable; {:try_start_64 .. :try_end_64} :catch_3f

    .line 1136
    :goto_47
    invoke-static {}, Landroid/os/StrictMode;->conditionallyEnableDebugLogging()Z

    move-result v7

    if-eqz v7, :cond_11

    .line 1137
    const-string v7, "SystemServer"

    const-string v9, "Enabled StrictMode for system server main thread."

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1140
    :cond_11
    new-instance v7, Lcom/android/server/ServerThread$4;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/android/server/ServerThread$4;-><init>(Lcom/android/server/ServerThread;)V

    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    .line 1163
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 1164
    const-string v7, "SystemServer"

    const-string v9, "System ServerThread is exiting!"

    invoke-static {v7, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1165
    return-void

    .line 152
    .end local v4           #power:Lcom/android/server/power/PowerManagerService;
    .end local v5           #context:Landroid/content/Context;
    .end local v6           #lights:Lcom/android/server/LightsService;
    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v10           #display:Lcom/android/server/display/DisplayManagerService;
    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v20           #uiHandler:Landroid/os/Handler;
    .end local v21           #wmHandler:Landroid/os/Handler;
    .end local v24           #onlyCore:Z
    .end local v25           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v29           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .end local v30           #networkManagement:Lcom/android/server/NetworkManagementService;
    .end local v33           #headless:Z
    .end local v34           #contextF:Landroid/content/Context;
    .end local v35           #mountServiceF:Lcom/android/server/MountService;
    .end local v36           #batteryF:Lcom/android/server/BatteryService;
    .end local v37           #networkManagementF:Lcom/android/server/NetworkManagementService;
    .end local v38           #networkStatsF:Lcom/android/server/net/NetworkStatsService;
    .end local v39           #networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v40           #connectivityF:Lcom/android/server/ConnectivityService;
    .end local v41           #dockF:Lcom/android/server/DockObserver;
    .end local v42           #usbF:Lcom/android/server/usb/UsbService;
    .end local v43           #twilightF:Lcom/android/server/TwilightService;
    .end local v44           #uiModeF:Lcom/android/server/UiModeManagerService;
    .end local v45           #recognitionF:Lcom/android/server/RecognitionManagerService;
    .end local v46           #appWidgetF:Lcom/android/server/AppWidgetService;
    .end local v47           #wallpaperF:Lcom/android/server/WallpaperManagerService;
    .end local v48           #immF:Lcom/android/server/InputMethodManagerService;
    .end local v49           #statusBarF:Lcom/android/server/StatusBarManagerService;
    .end local v50           #locationF:Lcom/android/server/LocationManagerService;
    .end local v51           #countryDetectorF:Lcom/android/server/CountryDetectorService;
    .end local v52           #throttleF:Lcom/android/server/ThrottleService;
    .end local v53           #networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;
    .end local v54           #commonTimeMgmtServiceF:Lcom/android/server/CommonTimeManagementService;
    .end local v55           #textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;
    .end local v56           #dreamyF:Lcom/android/server/dreams/DreamManagerService;
    .end local v57           #inputManagerF:Lcom/android/server/input/InputManagerService;
    .end local v58           #telephonyRegistryF:Lcom/android/server/TelephonyRegistry;
    .end local v59           #accountManager:Landroid/accounts/AccountManagerService;
    .end local v61           #acs:Lcom/android/server/pm/AccessControlService;
    .end local v63           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v66           #bluetooth:Lcom/android/server/BluetoothManagerService;
    .end local v68           #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .end local v70           #config:Landroid/content/res/Configuration;
    .end local v71           #connectivity:Lcom/android/server/ConnectivityService;
    .end local v73           #contentService:Landroid/content/ContentService;
    .end local v74           #countryDetector:Lcom/android/server/CountryDetectorService;
    .end local v77           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .end local v80           #dock:Lcom/android/server/DockObserver;
    .end local v82           #dreamy:Lcom/android/server/dreams/DreamManagerService;
    .end local v85           #factoryTest:I
    .end local v86           #factoryTestStr:Ljava/lang/String;
    .end local v87           #fileProtect:Lcom/meizu/server/FileProtectManagerService;
    .end local v91           #imm:Lcom/android/server/InputMethodManagerService;
    .end local v94           #installer:Lcom/android/server/pm/Installer;
    .end local v98           #location:Lcom/android/server/LocationManagerService;
    .end local v100           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .end local v103           #metrics:Landroid/util/DisplayMetrics;
    .end local v104           #mountService:Lcom/android/server/MountService;
    .end local v108           #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .end local v110           #notification:Lcom/android/server/NotificationManagerService;
    .end local v112           #pm:Landroid/content/pm/IPackageManager;
    .end local v116           #recognition:Lcom/android/server/RecognitionManagerService;
    .end local v118           #safeMode:Z
    .end local v119           #sambaClient:Lcom/android/server/SambaClientService;
    .end local v121           #sambaServer:Lcom/android/server/SambaServerService;
    .end local v123           #serial:Lcom/android/server/SerialService;
    .end local v125           #serviceDiscovery:Lcom/android/server/NsdService;
    .end local v127           #statusBar:Lcom/android/server/StatusBarManagerService;
    .end local v129           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .end local v132           #throttle:Lcom/android/server/ThrottleService;
    .end local v134           #tsms:Lcom/android/server/TextServicesManagerService;
    .end local v136           #twilight:Lcom/android/server/TwilightService;
    .end local v138           #uiHandlerThread:Landroid/os/HandlerThread;
    .end local v139           #uiMode:Lcom/android/server/UiModeManagerService;
    .end local v141           #usb:Lcom/android/server/usb/UsbService;
    .end local v143           #vibrator:Lcom/android/server/VibratorService;
    .end local v145           #w:Landroid/view/WindowManager;
    .end local v146           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .end local v148           #wifi:Lcom/android/server/WifiService;
    .end local v150           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .end local v152           #wm:Lcom/android/server/wm/WindowManagerService;
    .end local v153           #wmHandlerThread:Landroid/os/HandlerThread;
    :cond_12
    const/16 v115, 0x0

    goto/16 :goto_0

    .line 158
    .restart local v115       #reboot:Z
    :cond_13
    const/16 v114, 0x0

    .restart local v114       #reason:Ljava/lang/String;
    goto/16 :goto_1

    .line 166
    .end local v114           #reason:Ljava/lang/String;
    .end local v115           #reboot:Z
    .restart local v86       #factoryTestStr:Ljava/lang/String;
    :cond_14
    invoke-static/range {v86 .. v86}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v85

    goto/16 :goto_2

    .line 294
    .restart local v4       #power:Lcom/android/server/power/PowerManagerService;
    .restart local v5       #context:Landroid/content/Context;
    .restart local v10       #display:Lcom/android/server/display/DisplayManagerService;
    .restart local v20       #uiHandler:Landroid/os/Handler;
    .restart local v21       #wmHandler:Landroid/os/Handler;
    .restart local v24       #onlyCore:Z
    .restart local v29       #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v30       #networkManagement:Lcom/android/server/NetworkManagementService;
    .restart local v33       #headless:Z
    .restart local v59       #accountManager:Landroid/accounts/AccountManagerService;
    .restart local v62       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v65       #battery:Lcom/android/server/BatteryService;
    .restart local v66       #bluetooth:Lcom/android/server/BluetoothManagerService;
    .restart local v68       #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .restart local v71       #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v73       #contentService:Landroid/content/ContentService;
    .restart local v76       #cryptState:Ljava/lang/String;
    .restart local v80       #dock:Lcom/android/server/DockObserver;
    .restart local v85       #factoryTest:I
    .restart local v93       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v95       #installer:Lcom/android/server/pm/Installer;
    .restart local v97       #lights:Lcom/android/server/LightsService;
    .restart local v104       #mountService:Lcom/android/server/MountService;
    .restart local v106       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v108       #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .restart local v112       #pm:Landroid/content/pm/IPackageManager;
    .restart local v116       #recognition:Lcom/android/server/RecognitionManagerService;
    .restart local v119       #sambaClient:Lcom/android/server/SambaClientService;
    .restart local v121       #sambaServer:Lcom/android/server/SambaServerService;
    .restart local v123       #serial:Lcom/android/server/SerialService;
    .restart local v125       #serviceDiscovery:Lcom/android/server/NsdService;
    .restart local v130       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v132       #throttle:Lcom/android/server/ThrottleService;
    .restart local v136       #twilight:Lcom/android/server/TwilightService;
    .restart local v138       #uiHandlerThread:Landroid/os/HandlerThread;
    .restart local v139       #uiMode:Lcom/android/server/UiModeManagerService;
    .restart local v141       #usb:Lcom/android/server/usb/UsbService;
    .restart local v143       #vibrator:Lcom/android/server/VibratorService;
    .restart local v148       #wifi:Lcom/android/server/WifiService;
    .restart local v150       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v152       #wm:Lcom/android/server/wm/WindowManagerService;
    .restart local v153       #wmHandlerThread:Landroid/os/HandlerThread;
    :cond_15
    :try_start_65
    const-string v7, "1"

    move-object/from16 v0, v76

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 295
    const-string v7, "SystemServer"

    const-string v9, "Device encrypted - only parsing core apps"

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    const/16 v24, 0x1

    goto/16 :goto_3

    .line 299
    :cond_16
    const/4 v7, 0x0

    goto/16 :goto_4

    .line 322
    .restart local v89       #firstBoot:Z
    :catch_0
    move-exception v84

    .line 323
    .local v84, e:Ljava/lang/Throwable;
    :goto_48
    const-string v7, "SystemServer"

    const-string v9, "Failure starting Account Manager"

    move-object/from16 v0, v84

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_65
    .catch Ljava/lang/RuntimeException; {:try_start_65 .. :try_end_65} :catch_1

    goto/16 :goto_6

    .line 413
    .end local v76           #cryptState:Ljava/lang/String;
    .end local v84           #e:Ljava/lang/Throwable;
    .end local v89           #firstBoot:Z
    :catch_1
    move-exception v84

    move-object/from16 v129, v130

    .end local v130           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v129       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v19, v93

    .end local v93           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v15, v62

    .end local v62           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v65

    .end local v65           #battery:Lcom/android/server/BatteryService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v6, v97

    .end local v97           #lights:Lcom/android/server/LightsService;
    .restart local v6       #lights:Lcom/android/server/LightsService;
    move-object/from16 v94, v95

    .line 414
    .end local v95           #installer:Lcom/android/server/pm/Installer;
    .local v84, e:Ljava/lang/RuntimeException;
    .restart local v94       #installer:Lcom/android/server/pm/Installer;
    :goto_49
    const-string v7, "System"

    const-string v9, "******************************************"

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    const-string v7, "System"

    const-string v9, "************ Failure starting core service"

    move-object/from16 v0, v84

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_c

    .line 327
    .end local v6           #lights:Lcom/android/server/LightsService;
    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v84           #e:Ljava/lang/RuntimeException;
    .end local v94           #installer:Lcom/android/server/pm/Installer;
    .end local v129           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v62       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v65       #battery:Lcom/android/server/BatteryService;
    .restart local v76       #cryptState:Ljava/lang/String;
    .restart local v89       #firstBoot:Z
    .restart local v93       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v95       #installer:Lcom/android/server/pm/Installer;
    .restart local v97       #lights:Lcom/android/server/LightsService;
    .restart local v130       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    :cond_17
    const/4 v7, 0x0

    goto/16 :goto_7

    .line 348
    :catch_2
    move-exception v84

    .line 349
    .local v84, e:Ljava/lang/InterruptedException;
    :try_start_66
    const-string v7, "System"

    const-string v9, "Failure to Thread.sleep(3000)"

    move-object/from16 v0, v84

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 350
    invoke-virtual/range {v84 .. v84}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_8

    .line 351
    .end local v84           #e:Ljava/lang/InterruptedException;
    :catch_3
    move-exception v84

    .line 352
    .local v84, e:Ljava/lang/Exception;
    const-string v7, "System"

    const-string v9, "Failure to Thread.sleep(3000)"

    move-object/from16 v0, v84

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 353
    invoke-virtual/range {v84 .. v84}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_66
    .catch Ljava/lang/RuntimeException; {:try_start_66 .. :try_end_66} :catch_1

    goto/16 :goto_8

    .line 385
    .end local v62           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v65           #battery:Lcom/android/server/BatteryService;
    .end local v84           #e:Ljava/lang/Exception;
    .end local v93           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v97           #lights:Lcom/android/server/LightsService;
    .end local v143           #vibrator:Lcom/android/server/VibratorService;
    .restart local v6       #lights:Lcom/android/server/LightsService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v144       #vibrator:Lcom/android/server/VibratorService;
    :cond_18
    const/16 v22, 0x0

    goto/16 :goto_9

    :cond_19
    const/16 v23, 0x0

    goto/16 :goto_a

    .line 405
    :cond_1a
    const/4 v7, 0x1

    move/from16 v0, v85

    if-ne v0, v7, :cond_1b

    .line 406
    :try_start_67
    const-string v7, "SystemServer"

    const-string v9, "No Bluetooth Service (factory test)"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    .line 413
    :catch_4
    move-exception v84

    move-object/from16 v129, v130

    .end local v130           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v129       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v143, v144

    .end local v144           #vibrator:Lcom/android/server/VibratorService;
    .restart local v143       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v94, v95

    .end local v95           #installer:Lcom/android/server/pm/Installer;
    .restart local v94       #installer:Lcom/android/server/pm/Installer;
    goto :goto_49

    .line 408
    .end local v94           #installer:Lcom/android/server/pm/Installer;
    .end local v129           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .end local v143           #vibrator:Lcom/android/server/VibratorService;
    .restart local v95       #installer:Lcom/android/server/pm/Installer;
    .restart local v130       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v144       #vibrator:Lcom/android/server/VibratorService;
    :cond_1b
    const-string v7, "SystemServer"

    const-string v9, "Bluetooth Manager Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    new-instance v67, Lcom/android/server/BluetoothManagerService;

    move-object/from16 v0, v67

    invoke-direct {v0, v5}, Lcom/android/server/BluetoothManagerService;-><init>(Landroid/content/Context;)V
    :try_end_67
    .catch Ljava/lang/RuntimeException; {:try_start_67 .. :try_end_67} :catch_4

    .line 410
    .end local v66           #bluetooth:Lcom/android/server/BluetoothManagerService;
    .local v67, bluetooth:Lcom/android/server/BluetoothManagerService;
    :try_start_68
    const-string v7, "bluetooth_manager"

    move-object/from16 v0, v67

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_68
    .catch Ljava/lang/RuntimeException; {:try_start_68 .. :try_end_68} :catch_63

    move-object/from16 v66, v67

    .end local v67           #bluetooth:Lcom/android/server/BluetoothManagerService;
    .restart local v66       #bluetooth:Lcom/android/server/BluetoothManagerService;
    goto/16 :goto_b

    .line 440
    .end local v76           #cryptState:Ljava/lang/String;
    .end local v89           #firstBoot:Z
    .end local v95           #installer:Lcom/android/server/pm/Installer;
    .end local v130           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .end local v144           #vibrator:Lcom/android/server/VibratorService;
    .restart local v63       #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v74       #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v77       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v82       #dreamy:Lcom/android/server/dreams/DreamManagerService;
    .restart local v87       #fileProtect:Lcom/meizu/server/FileProtectManagerService;
    .restart local v91       #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v94       #installer:Lcom/android/server/pm/Installer;
    .restart local v98       #location:Lcom/android/server/LocationManagerService;
    .restart local v100       #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .restart local v110       #notification:Lcom/android/server/NotificationManagerService;
    .restart local v127       #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v129       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v134       #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v143       #vibrator:Lcom/android/server/VibratorService;
    .restart local v146       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :catch_5
    move-exception v84

    .line 441
    .local v84, e:Ljava/lang/Throwable;
    :goto_4a
    const-string v7, "starting Input Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v84

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_d

    .line 448
    .end local v84           #e:Ljava/lang/Throwable;
    :catch_6
    move-exception v84

    .line 449
    .restart local v84       #e:Ljava/lang/Throwable;
    const-string v7, "starting Accessibility Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v84

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_e

    .line 455
    .end local v84           #e:Ljava/lang/Throwable;
    :catch_7
    move-exception v84

    .line 456
    .restart local v84       #e:Ljava/lang/Throwable;
    const-string v7, "making display ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v84

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_f

    .line 461
    .end local v84           #e:Ljava/lang/Throwable;
    :catch_8
    move-exception v84

    .line 462
    .restart local v84       #e:Ljava/lang/Throwable;
    const-string v7, "performing boot dexopt"

    move-object/from16 v0, p0

    move-object/from16 v1, v84

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_10

    .line 483
    .end local v84           #e:Ljava/lang/Throwable;
    :catch_9
    move-exception v84

    .line 484
    .restart local v84       #e:Ljava/lang/Throwable;
    :goto_4b
    const-string v7, "starting Mount Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v84

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_12

    .line 492
    .end local v84           #e:Ljava/lang/Throwable;
    :catch_a
    move-exception v84

    .line 493
    .restart local v84       #e:Ljava/lang/Throwable;
    :goto_4c
    const-string v7, "starting LockSettingsService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v84

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_13

    .line 500
    .end local v84           #e:Ljava/lang/Throwable;
    :catch_b
    move-exception v84

    .line 501
    .restart local v84       #e:Ljava/lang/Throwable;
    :goto_4d
    const-string v7, "starting DevicePolicyService"

    move-object/from16 v0, p0

    move-object/from16 v1, v84

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_14

    .line 508
    .end local v84           #e:Ljava/lang/Throwable;
    :catch_c
    move-exception v84

    .line 509
    .restart local v84       #e:Ljava/lang/Throwable;
    :goto_4e
    const-string v7, "starting StatusBarManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v84

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_15

    .line 516
    .end local v84           #e:Ljava/lang/Throwable;
    :catch_d
    move-exception v84

    .line 517
    .restart local v84       #e:Ljava/lang/Throwable;
    :goto_4f
    const-string v7, "starting FileProtectManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v84

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_16

    .line 525
    .end local v84           #e:Ljava/lang/Throwable;
    :catch_e
    move-exception v84

    .line 526
    .restart local v84       #e:Ljava/lang/Throwable;
    const-string v7, "starting Clipboard Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v84

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_17

    .line 533
    .end local v84           #e:Ljava/lang/Throwable;
    :catch_f
    move-exception v84

    .line 534
    .restart local v84       #e:Ljava/lang/Throwable;
    const-string v7, "starting NetworkManagement Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v84

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_18

    .line 541
    .end local v84           #e:Ljava/lang/Throwable;
    :catch_10
    move-exception v84

    .line 542
    .restart local v84       #e:Ljava/lang/Throwable;
    :goto_50
    const-string v7, "starting Text Service Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v84

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_19

    .line 549
    .end local v84           #e:Ljava/lang/Throwable;
    :catch_11
    move-exception v84

    .line 550
    .restart local v84       #e:Ljava/lang/Throwable;
    :goto_51
    const-string v7, "starting NetworkStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v84

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1a

    .line 559
    .end local v84           #e:Ljava/lang/Throwable;
    :catch_12
    move-exception v84

    move-object/from16 v25, v106

    .line 560
    .end local v106           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v25       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v84       #e:Ljava/lang/Throwable;
    :goto_52
    const-string v7, "starting NetworkPolicy Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v84

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1b

    .line 567
    .end local v84           #e:Ljava/lang/Throwable;
    :catch_13
    move-exception v84

    .line 568
    .restart local v84       #e:Ljava/lang/Throwable;
    :goto_53
    const-string v7, "starting Wi-Fi P2pService"

    move-object/from16 v0, p0

    move-object/from16 v1, v84

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1c

    .line 575
    .end local v84           #e:Ljava/lang/Throwable;
    :catch_14
    move-exception v84

    .line 576
    .restart local v84       #e:Ljava/lang/Throwable;
    :goto_54
    const-string v7, "starting Wi-Fi Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v84

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1d

    .line 583
    .end local v84           #e:Ljava/lang/Throwable;
    :catch_15
    move-exception v84

    .line 584
    .restart local v84       #e:Ljava/lang/Throwable;
    :goto_55
    const-string v7, "SambaServer Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v84

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1e

    .line 591
    .end local v84           #e:Ljava/lang/Throwable;
    :catch_16
    move-exception v84

    .line 592
    .restart local v84       #e:Ljava/lang/Throwable;
    :goto_56
    const-string v7, "SambaClient Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v84

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1f

    .line 604
    .end local v84           #e:Ljava/lang/Throwable;
    :catch_17
    move-exception v84

    .line 605
    .restart local v84       #e:Ljava/lang/Throwable;
    :goto_57
    const-string v7, "starting Connectivity Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v84

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_20

    .line 613
    .end local v84           #e:Ljava/lang/Throwable;
    :catch_18
    move-exception v84

    .line 614
    .restart local v84       #e:Ljava/lang/Throwable;
    const-string v7, "starting Service Discovery Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v84

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_21

    .line 622
    .end local v84           #e:Ljava/lang/Throwable;
    :catch_19
    move-exception v84

    .line 623
    .restart local v84       #e:Ljava/lang/Throwable;
    :goto_58
    const-string v7, "starting ThrottleService"

    move-object/from16 v0, p0

    move-object/from16 v1, v84

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_22

    .line 630
    .end local v84           #e:Ljava/lang/Throwable;
    :catch_1a
    move-exception v84

    .line 631
    .restart local v84       #e:Ljava/lang/Throwable;
    const-string v7, "starting UpdateLockService"

    move-object/from16 v0, p0

    move-object/from16 v1, v84

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_23

    .line 646
    .end local v84           #e:Ljava/lang/Throwable;
    :catch_1b
    move-exception v84

    .line 647
    .restart local v84       #e:Ljava/lang/Throwable;
    const-string v7, "making Account Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v84

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_24

    .line 653
    .end local v84           #e:Ljava/lang/Throwable;
    :catch_1c
    move-exception v84

    .line 654
    .restart local v84       #e:Ljava/lang/Throwable;
    const-string v7, "making Content Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v84

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_25

    .line 662
    .end local v84           #e:Ljava/lang/Throwable;
    :catch_1d
    move-exception v84

    .line 663
    .restart local v84       #e:Ljava/lang/Throwable;
    :goto_59
    const-string v7, "starting Notification Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v84

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_26

    .line 670
    .end local v84           #e:Ljava/lang/Throwable;
    :catch_1e
    move-exception v84

    .line 671
    .restart local v84       #e:Ljava/lang/Throwable;
    const-string v7, "starting DeviceStorageMonitor service"

    move-object/from16 v0, p0

    move-object/from16 v1, v84

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_27

    .line 678
    .end local v84           #e:Ljava/lang/Throwable;
    :catch_1f
    move-exception v84

    .line 679
    .restart local v84       #e:Ljava/lang/Throwable;
    :goto_5a
    const-string v7, "starting Location Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v84

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_28

    .line 686
    .end local v84           #e:Ljava/lang/Throwable;
    :catch_20
    move-exception v84

    .line 687
    .restart local v84       #e:Ljava/lang/Throwable;
    :goto_5b
    const-string v7, "starting Country Detector"

    move-object/from16 v0, p0

    move-object/from16 v1, v84

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_29

    .line 694
    .end local v84           #e:Ljava/lang/Throwable;
    :catch_21
    move-exception v84

    .line 695
    .restart local v84       #e:Ljava/lang/Throwable;
    const-string v7, "starting Search Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v84

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2a

    .line 702
    .end local v84           #e:Ljava/lang/Throwable;
    :catch_22
    move-exception v84

    .line 703
    .restart local v84       #e:Ljava/lang/Throwable;
    const-string v7, "starting DropBoxManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v84

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2b

    .line 714
    .end local v84           #e:Ljava/lang/Throwable;
    :catch_23
    move-exception v84

    .line 715
    .restart local v84       #e:Ljava/lang/Throwable;
    :goto_5c
    const-string v7, "starting Wallpaper Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v84

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2c

    .line 723
    .end local v84           #e:Ljava/lang/Throwable;
    :catch_24
    move-exception v84

    .line 724
    .restart local v84       #e:Ljava/lang/Throwable;
    const-string v7, "starting Audio Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v84

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2d

    .line 732
    .end local v84           #e:Ljava/lang/Throwable;
    :catch_25
    move-exception v84

    .line 733
    .restart local v84       #e:Ljava/lang/Throwable;
    const-string v7, "starting DockObserver"

    move-object/from16 v0, p0

    move-object/from16 v1, v84

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2e

    .line 741
    .end local v84           #e:Ljava/lang/Throwable;
    :catch_26
    move-exception v84

    .line 742
    .restart local v84       #e:Ljava/lang/Throwable;
    const-string v7, "starting WiredAccessoryManager"

    move-object/from16 v0, p0

    move-object/from16 v1, v84

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2f

    .line 750
    .end local v84           #e:Ljava/lang/Throwable;
    :catch_27
    move-exception v84

    .line 751
    .restart local v84       #e:Ljava/lang/Throwable;
    :goto_5d
    const-string v7, "starting UsbService"

    move-object/from16 v0, p0

    move-object/from16 v1, v84

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_30

    .line 759
    .end local v84           #e:Ljava/lang/Throwable;
    :catch_28
    move-exception v84

    .line 760
    .restart local v84       #e:Ljava/lang/Throwable;
    :goto_5e
    const-string v7, "SystemServer"

    const-string v9, "Failure starting SerialService"

    move-object/from16 v0, v84

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_31

    .line 766
    .end local v84           #e:Ljava/lang/Throwable;
    :catch_29
    move-exception v84

    .line 767
    .restart local v84       #e:Ljava/lang/Throwable;
    const-string v7, "starting TwilightService"

    move-object/from16 v0, p0

    move-object/from16 v1, v84

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_32

    .line 774
    .end local v84           #e:Ljava/lang/Throwable;
    :catch_2a
    move-exception v84

    .line 775
    .restart local v84       #e:Ljava/lang/Throwable;
    const-string v7, "starting UiModeManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v84

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_33

    .line 782
    .end local v84           #e:Ljava/lang/Throwable;
    :catch_2b
    move-exception v84

    .line 783
    .restart local v84       #e:Ljava/lang/Throwable;
    const-string v7, "SystemServer"

    const-string v9, "Failure starting Backup Service"

    move-object/from16 v0, v84

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_34

    .line 790
    .end local v84           #e:Ljava/lang/Throwable;
    :catch_2c
    move-exception v84

    .line 791
    .restart local v84       #e:Ljava/lang/Throwable;
    :goto_5f
    const-string v7, "starting AppWidget Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v84

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_35

    .line 797
    .end local v84           #e:Ljava/lang/Throwable;
    :catch_2d
    move-exception v84

    .line 798
    .restart local v84       #e:Ljava/lang/Throwable;
    const-string v7, "starting Recognition Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v84

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_36

    .line 804
    .end local v84           #e:Ljava/lang/Throwable;
    :catch_2e
    move-exception v84

    .line 805
    .restart local v84       #e:Ljava/lang/Throwable;
    const-string v7, "starting DiskStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v84

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_37

    .line 816
    .end local v84           #e:Ljava/lang/Throwable;
    :catch_2f
    move-exception v84

    .line 817
    .restart local v84       #e:Ljava/lang/Throwable;
    const-string v7, "starting SamplingProfiler Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v84

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_38

    .line 823
    .end local v84           #e:Ljava/lang/Throwable;
    :catch_30
    move-exception v84

    .line 824
    .restart local v84       #e:Ljava/lang/Throwable;
    const-string v7, "starting NetworkTimeUpdate service"

    move-object/from16 v0, p0

    move-object/from16 v1, v84

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_39

    .line 831
    .end local v84           #e:Ljava/lang/Throwable;
    :catch_31
    move-exception v84

    .line 832
    .restart local v84       #e:Ljava/lang/Throwable;
    :goto_60
    const-string v7, "starting CommonTimeManagementService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v84

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3a

    .line 838
    .end local v84           #e:Ljava/lang/Throwable;
    :catch_32
    move-exception v84

    .line 839
    .restart local v84       #e:Ljava/lang/Throwable;
    const-string v7, "starting CertBlacklister"

    move-object/from16 v0, p0

    move-object/from16 v1, v84

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3b

    .line 849
    .end local v84           #e:Ljava/lang/Throwable;
    :catch_33
    move-exception v84

    .line 850
    .restart local v84       #e:Ljava/lang/Throwable;
    :goto_61
    const-string v7, "starting DreamManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v84

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3c

    .line 873
    .end local v84           #e:Ljava/lang/Throwable;
    .restart local v118       #safeMode:Z
    :catch_34
    move-exception v84

    .line 874
    .restart local v84       #e:Ljava/lang/Throwable;
    const-string v7, "making Vibrator Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v84

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3d

    .line 879
    .end local v84           #e:Ljava/lang/Throwable;
    :catch_35
    move-exception v84

    .line 880
    .restart local v84       #e:Ljava/lang/Throwable;
    const-string v7, "making Lock Settings Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v84

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3e

    .line 893
    .end local v84           #e:Ljava/lang/Throwable;
    :catch_36
    move-exception v84

    .line 894
    .local v84, e:Ljava/lang/Exception;
    :try_start_69
    const-string v7, "System"

    const-string v9, "Failure to get meizu_password_length"

    move-object/from16 v0, v84

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 895
    invoke-virtual/range {v84 .. v84}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_69
    .catch Ljava/lang/Throwable; {:try_start_69 .. :try_end_69} :catch_37

    goto/16 :goto_3f

    .line 898
    .end local v84           #e:Ljava/lang/Exception;
    :catch_37
    move-exception v84

    .line 899
    .local v84, e:Ljava/lang/Throwable;
    const-string v7, "making Device Policy Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v84

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3f

    .line 909
    .end local v84           #e:Ljava/lang/Throwable;
    .restart local v61       #acs:Lcom/android/server/pm/AccessControlService;
    :catch_38
    move-exception v84

    .line 910
    .restart local v84       #e:Ljava/lang/Throwable;
    const-string v7, "making AccessControlService Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v84

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_40

    .line 917
    .end local v84           #e:Ljava/lang/Throwable;
    :catch_39
    move-exception v84

    .line 918
    .restart local v84       #e:Ljava/lang/Throwable;
    const-string v7, "making Notification Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v84

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_41

    .line 926
    .end local v84           #e:Ljava/lang/Throwable;
    :catch_3a
    move-exception v84

    .line 927
    .restart local v84       #e:Ljava/lang/Throwable;
    const-string v7, "making FileProtect Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v84

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_42

    .line 934
    .end local v84           #e:Ljava/lang/Throwable;
    :catch_3b
    move-exception v84

    .line 935
    .restart local v84       #e:Ljava/lang/Throwable;
    const-string v7, "making Window Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v84

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_43

    .line 953
    .end local v84           #e:Ljava/lang/Throwable;
    .restart local v70       #config:Landroid/content/res/Configuration;
    .restart local v103       #metrics:Landroid/util/DisplayMetrics;
    .restart local v145       #w:Landroid/view/WindowManager;
    :catch_3c
    move-exception v84

    .line 954
    .restart local v84       #e:Ljava/lang/Throwable;
    const-string v7, "making Power Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v84

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_44

    .line 959
    .end local v84           #e:Ljava/lang/Throwable;
    :catch_3d
    move-exception v84

    .line 960
    .restart local v84       #e:Ljava/lang/Throwable;
    const-string v7, "making Package Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v84

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_45

    .line 965
    .end local v84           #e:Ljava/lang/Throwable;
    :catch_3e
    move-exception v84

    .line 966
    .restart local v84       #e:Ljava/lang/Throwable;
    const-string v7, "making Display Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v84

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_46

    .line 1132
    .end local v84           #e:Ljava/lang/Throwable;
    .restart local v34       #contextF:Landroid/content/Context;
    .restart local v35       #mountServiceF:Lcom/android/server/MountService;
    .restart local v36       #batteryF:Lcom/android/server/BatteryService;
    .restart local v37       #networkManagementF:Lcom/android/server/NetworkManagementService;
    .restart local v38       #networkStatsF:Lcom/android/server/net/NetworkStatsService;
    .restart local v39       #networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v40       #connectivityF:Lcom/android/server/ConnectivityService;
    .restart local v41       #dockF:Lcom/android/server/DockObserver;
    .restart local v42       #usbF:Lcom/android/server/usb/UsbService;
    .restart local v43       #twilightF:Lcom/android/server/TwilightService;
    .restart local v44       #uiModeF:Lcom/android/server/UiModeManagerService;
    .restart local v45       #recognitionF:Lcom/android/server/RecognitionManagerService;
    .restart local v46       #appWidgetF:Lcom/android/server/AppWidgetService;
    .restart local v47       #wallpaperF:Lcom/android/server/WallpaperManagerService;
    .restart local v48       #immF:Lcom/android/server/InputMethodManagerService;
    .restart local v49       #statusBarF:Lcom/android/server/StatusBarManagerService;
    .restart local v50       #locationF:Lcom/android/server/LocationManagerService;
    .restart local v51       #countryDetectorF:Lcom/android/server/CountryDetectorService;
    .restart local v52       #throttleF:Lcom/android/server/ThrottleService;
    .restart local v53       #networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;
    .restart local v54       #commonTimeMgmtServiceF:Lcom/android/server/CommonTimeManagementService;
    .restart local v55       #textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;
    .restart local v56       #dreamyF:Lcom/android/server/dreams/DreamManagerService;
    .restart local v57       #inputManagerF:Lcom/android/server/input/InputManagerService;
    .restart local v58       #telephonyRegistryF:Lcom/android/server/TelephonyRegistry;
    :catch_3f
    move-exception v84

    .line 1133
    .restart local v84       #e:Ljava/lang/Throwable;
    const-string v7, "notify policy ams is ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v84

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_47

    .line 305
    .end local v6           #lights:Lcom/android/server/LightsService;
    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v25           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v34           #contextF:Landroid/content/Context;
    .end local v35           #mountServiceF:Lcom/android/server/MountService;
    .end local v36           #batteryF:Lcom/android/server/BatteryService;
    .end local v37           #networkManagementF:Lcom/android/server/NetworkManagementService;
    .end local v38           #networkStatsF:Lcom/android/server/net/NetworkStatsService;
    .end local v39           #networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v40           #connectivityF:Lcom/android/server/ConnectivityService;
    .end local v41           #dockF:Lcom/android/server/DockObserver;
    .end local v42           #usbF:Lcom/android/server/usb/UsbService;
    .end local v43           #twilightF:Lcom/android/server/TwilightService;
    .end local v44           #uiModeF:Lcom/android/server/UiModeManagerService;
    .end local v45           #recognitionF:Lcom/android/server/RecognitionManagerService;
    .end local v46           #appWidgetF:Lcom/android/server/AppWidgetService;
    .end local v47           #wallpaperF:Lcom/android/server/WallpaperManagerService;
    .end local v48           #immF:Lcom/android/server/InputMethodManagerService;
    .end local v49           #statusBarF:Lcom/android/server/StatusBarManagerService;
    .end local v50           #locationF:Lcom/android/server/LocationManagerService;
    .end local v51           #countryDetectorF:Lcom/android/server/CountryDetectorService;
    .end local v52           #throttleF:Lcom/android/server/ThrottleService;
    .end local v53           #networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;
    .end local v54           #commonTimeMgmtServiceF:Lcom/android/server/CommonTimeManagementService;
    .end local v55           #textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;
    .end local v56           #dreamyF:Lcom/android/server/dreams/DreamManagerService;
    .end local v57           #inputManagerF:Lcom/android/server/input/InputManagerService;
    .end local v58           #telephonyRegistryF:Lcom/android/server/TelephonyRegistry;
    .end local v61           #acs:Lcom/android/server/pm/AccessControlService;
    .end local v63           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v70           #config:Landroid/content/res/Configuration;
    .end local v74           #countryDetector:Lcom/android/server/CountryDetectorService;
    .end local v77           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .end local v82           #dreamy:Lcom/android/server/dreams/DreamManagerService;
    .end local v84           #e:Ljava/lang/Throwable;
    .end local v87           #fileProtect:Lcom/meizu/server/FileProtectManagerService;
    .end local v91           #imm:Lcom/android/server/InputMethodManagerService;
    .end local v94           #installer:Lcom/android/server/pm/Installer;
    .end local v98           #location:Lcom/android/server/LocationManagerService;
    .end local v100           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .end local v103           #metrics:Landroid/util/DisplayMetrics;
    .end local v110           #notification:Lcom/android/server/NotificationManagerService;
    .end local v118           #safeMode:Z
    .end local v127           #statusBar:Lcom/android/server/StatusBarManagerService;
    .end local v129           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .end local v134           #tsms:Lcom/android/server/TextServicesManagerService;
    .end local v145           #w:Landroid/view/WindowManager;
    .end local v146           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v62       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v65       #battery:Lcom/android/server/BatteryService;
    .restart local v76       #cryptState:Ljava/lang/String;
    .restart local v89       #firstBoot:Z
    .restart local v93       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v95       #installer:Lcom/android/server/pm/Installer;
    .restart local v97       #lights:Lcom/android/server/LightsService;
    .restart local v106       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v130       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    :catch_40
    move-exception v7

    goto/16 :goto_5

    .line 849
    .end local v62           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v65           #battery:Lcom/android/server/BatteryService;
    .end local v76           #cryptState:Ljava/lang/String;
    .end local v89           #firstBoot:Z
    .end local v93           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v95           #installer:Lcom/android/server/pm/Installer;
    .end local v97           #lights:Lcom/android/server/LightsService;
    .end local v106           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v130           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v6       #lights:Lcom/android/server/LightsService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v25       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v63       #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v74       #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v77       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v83       #dreamy:Lcom/android/server/dreams/DreamManagerService;
    .restart local v87       #fileProtect:Lcom/meizu/server/FileProtectManagerService;
    .restart local v91       #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v94       #installer:Lcom/android/server/pm/Installer;
    .restart local v98       #location:Lcom/android/server/LocationManagerService;
    .restart local v100       #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .restart local v110       #notification:Lcom/android/server/NotificationManagerService;
    .restart local v127       #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v129       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v134       #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v146       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :catch_41
    move-exception v84

    move-object/from16 v82, v83

    .end local v83           #dreamy:Lcom/android/server/dreams/DreamManagerService;
    .restart local v82       #dreamy:Lcom/android/server/dreams/DreamManagerService;
    goto/16 :goto_61

    .line 831
    .end local v68           #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .restart local v69       #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    :catch_42
    move-exception v84

    move-object/from16 v68, v69

    .end local v69           #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .restart local v68       #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    goto/16 :goto_60

    .line 790
    .end local v63           #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v64       #appWidget:Lcom/android/server/AppWidgetService;
    :catch_43
    move-exception v84

    move-object/from16 v63, v64

    .end local v64           #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v63       #appWidget:Lcom/android/server/AppWidgetService;
    goto/16 :goto_5f

    .line 759
    .end local v123           #serial:Lcom/android/server/SerialService;
    .restart local v124       #serial:Lcom/android/server/SerialService;
    :catch_44
    move-exception v84

    move-object/from16 v123, v124

    .end local v124           #serial:Lcom/android/server/SerialService;
    .restart local v123       #serial:Lcom/android/server/SerialService;
    goto/16 :goto_5e

    .line 750
    .end local v141           #usb:Lcom/android/server/usb/UsbService;
    .restart local v142       #usb:Lcom/android/server/usb/UsbService;
    :catch_45
    move-exception v84

    move-object/from16 v141, v142

    .end local v142           #usb:Lcom/android/server/usb/UsbService;
    .restart local v141       #usb:Lcom/android/server/usb/UsbService;
    goto/16 :goto_5d

    .line 714
    .end local v146           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v147       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :catch_46
    move-exception v84

    move-object/from16 v146, v147

    .end local v147           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v146       #wallpaper:Lcom/android/server/WallpaperManagerService;
    goto/16 :goto_5c

    .line 686
    .end local v74           #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v75       #countryDetector:Lcom/android/server/CountryDetectorService;
    :catch_47
    move-exception v84

    move-object/from16 v74, v75

    .end local v75           #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v74       #countryDetector:Lcom/android/server/CountryDetectorService;
    goto/16 :goto_5b

    .line 678
    .end local v98           #location:Lcom/android/server/LocationManagerService;
    .restart local v99       #location:Lcom/android/server/LocationManagerService;
    :catch_48
    move-exception v84

    move-object/from16 v98, v99

    .end local v99           #location:Lcom/android/server/LocationManagerService;
    .restart local v98       #location:Lcom/android/server/LocationManagerService;
    goto/16 :goto_5a

    .line 662
    .end local v110           #notification:Lcom/android/server/NotificationManagerService;
    .restart local v111       #notification:Lcom/android/server/NotificationManagerService;
    :catch_49
    move-exception v84

    move-object/from16 v110, v111

    .end local v111           #notification:Lcom/android/server/NotificationManagerService;
    .restart local v110       #notification:Lcom/android/server/NotificationManagerService;
    goto/16 :goto_59

    .line 622
    .end local v132           #throttle:Lcom/android/server/ThrottleService;
    .restart local v133       #throttle:Lcom/android/server/ThrottleService;
    :catch_4a
    move-exception v84

    move-object/from16 v132, v133

    .end local v133           #throttle:Lcom/android/server/ThrottleService;
    .restart local v132       #throttle:Lcom/android/server/ThrottleService;
    goto/16 :goto_58

    .line 604
    .end local v71           #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v72       #connectivity:Lcom/android/server/ConnectivityService;
    :catch_4b
    move-exception v84

    move-object/from16 v71, v72

    .end local v72           #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v71       #connectivity:Lcom/android/server/ConnectivityService;
    goto/16 :goto_57

    .line 591
    .end local v119           #sambaClient:Lcom/android/server/SambaClientService;
    .restart local v120       #sambaClient:Lcom/android/server/SambaClientService;
    :catch_4c
    move-exception v84

    move-object/from16 v119, v120

    .end local v120           #sambaClient:Lcom/android/server/SambaClientService;
    .restart local v119       #sambaClient:Lcom/android/server/SambaClientService;
    goto/16 :goto_56

    .line 583
    .end local v121           #sambaServer:Lcom/android/server/SambaServerService;
    .restart local v122       #sambaServer:Lcom/android/server/SambaServerService;
    :catch_4d
    move-exception v84

    move-object/from16 v121, v122

    .end local v122           #sambaServer:Lcom/android/server/SambaServerService;
    .restart local v121       #sambaServer:Lcom/android/server/SambaServerService;
    goto/16 :goto_55

    .line 575
    .end local v148           #wifi:Lcom/android/server/WifiService;
    .restart local v149       #wifi:Lcom/android/server/WifiService;
    :catch_4e
    move-exception v84

    move-object/from16 v148, v149

    .end local v149           #wifi:Lcom/android/server/WifiService;
    .restart local v148       #wifi:Lcom/android/server/WifiService;
    goto/16 :goto_54

    .line 567
    .end local v150           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v151       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    :catch_4f
    move-exception v84

    move-object/from16 v150, v151

    .end local v151           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v150       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    goto/16 :goto_53

    .line 559
    :catch_50
    move-exception v84

    goto/16 :goto_52

    .line 549
    .end local v25           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v29           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v106       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v107       #networkStats:Lcom/android/server/net/NetworkStatsService;
    :catch_51
    move-exception v84

    move-object/from16 v29, v107

    .end local v107           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v29       #networkStats:Lcom/android/server/net/NetworkStatsService;
    goto/16 :goto_51

    .line 541
    .end local v134           #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v135       #tsms:Lcom/android/server/TextServicesManagerService;
    :catch_52
    move-exception v84

    move-object/from16 v134, v135

    .end local v135           #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v134       #tsms:Lcom/android/server/TextServicesManagerService;
    goto/16 :goto_50

    .line 516
    .end local v87           #fileProtect:Lcom/meizu/server/FileProtectManagerService;
    .restart local v88       #fileProtect:Lcom/meizu/server/FileProtectManagerService;
    :catch_53
    move-exception v84

    move-object/from16 v87, v88

    .end local v88           #fileProtect:Lcom/meizu/server/FileProtectManagerService;
    .restart local v87       #fileProtect:Lcom/meizu/server/FileProtectManagerService;
    goto/16 :goto_4f

    .line 508
    .end local v127           #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v128       #statusBar:Lcom/android/server/StatusBarManagerService;
    :catch_54
    move-exception v84

    move-object/from16 v127, v128

    .end local v128           #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v127       #statusBar:Lcom/android/server/StatusBarManagerService;
    goto/16 :goto_4e

    .line 500
    .end local v77           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v78       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    :catch_55
    move-exception v84

    move-object/from16 v77, v78

    .end local v78           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v77       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    goto/16 :goto_4d

    .line 492
    .end local v100           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .restart local v101       #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    :catch_56
    move-exception v84

    move-object/from16 v100, v101

    .end local v101           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .restart local v100       #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    goto/16 :goto_4c

    .line 483
    .end local v104           #mountService:Lcom/android/server/MountService;
    .restart local v105       #mountService:Lcom/android/server/MountService;
    :catch_57
    move-exception v84

    move-object/from16 v104, v105

    .end local v105           #mountService:Lcom/android/server/MountService;
    .restart local v104       #mountService:Lcom/android/server/MountService;
    goto/16 :goto_4b

    .line 470
    :catch_58
    move-exception v7

    goto/16 :goto_11

    .line 440
    .end local v91           #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v92       #imm:Lcom/android/server/InputMethodManagerService;
    :catch_59
    move-exception v84

    move-object/from16 v91, v92

    .end local v92           #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v91       #imm:Lcom/android/server/InputMethodManagerService;
    goto/16 :goto_4a

    .line 413
    .end local v4           #power:Lcom/android/server/power/PowerManagerService;
    .end local v6           #lights:Lcom/android/server/LightsService;
    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v10           #display:Lcom/android/server/display/DisplayManagerService;
    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v63           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v74           #countryDetector:Lcom/android/server/CountryDetectorService;
    .end local v77           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .end local v82           #dreamy:Lcom/android/server/dreams/DreamManagerService;
    .end local v87           #fileProtect:Lcom/meizu/server/FileProtectManagerService;
    .end local v91           #imm:Lcom/android/server/InputMethodManagerService;
    .end local v98           #location:Lcom/android/server/LocationManagerService;
    .end local v100           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .end local v110           #notification:Lcom/android/server/NotificationManagerService;
    .end local v127           #statusBar:Lcom/android/server/StatusBarManagerService;
    .end local v134           #tsms:Lcom/android/server/TextServicesManagerService;
    .end local v146           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v62       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v65       #battery:Lcom/android/server/BatteryService;
    .restart local v79       #display:Lcom/android/server/display/DisplayManagerService;
    .restart local v93       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v97       #lights:Lcom/android/server/LightsService;
    .restart local v113       #power:Lcom/android/server/power/PowerManagerService;
    :catch_5a
    move-exception v84

    move-object/from16 v19, v93

    .end local v93           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v15, v62

    .end local v62           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v65

    .end local v65           #battery:Lcom/android/server/BatteryService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v10, v79

    .end local v79           #display:Lcom/android/server/display/DisplayManagerService;
    .restart local v10       #display:Lcom/android/server/display/DisplayManagerService;
    move-object/from16 v4, v113

    .end local v113           #power:Lcom/android/server/power/PowerManagerService;
    .restart local v4       #power:Lcom/android/server/power/PowerManagerService;
    move-object/from16 v6, v97

    .end local v97           #lights:Lcom/android/server/LightsService;
    .restart local v6       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_49

    .end local v4           #power:Lcom/android/server/power/PowerManagerService;
    .end local v6           #lights:Lcom/android/server/LightsService;
    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v10           #display:Lcom/android/server/display/DisplayManagerService;
    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v94           #installer:Lcom/android/server/pm/Installer;
    .restart local v62       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v65       #battery:Lcom/android/server/BatteryService;
    .restart local v79       #display:Lcom/android/server/display/DisplayManagerService;
    .restart local v93       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v95       #installer:Lcom/android/server/pm/Installer;
    .restart local v97       #lights:Lcom/android/server/LightsService;
    .restart local v113       #power:Lcom/android/server/power/PowerManagerService;
    :catch_5b
    move-exception v84

    move-object/from16 v19, v93

    .end local v93           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v15, v62

    .end local v62           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v65

    .end local v65           #battery:Lcom/android/server/BatteryService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v10, v79

    .end local v79           #display:Lcom/android/server/display/DisplayManagerService;
    .restart local v10       #display:Lcom/android/server/display/DisplayManagerService;
    move-object/from16 v4, v113

    .end local v113           #power:Lcom/android/server/power/PowerManagerService;
    .restart local v4       #power:Lcom/android/server/power/PowerManagerService;
    move-object/from16 v6, v97

    .end local v97           #lights:Lcom/android/server/LightsService;
    .restart local v6       #lights:Lcom/android/server/LightsService;
    move-object/from16 v94, v95

    .end local v95           #installer:Lcom/android/server/pm/Installer;
    .restart local v94       #installer:Lcom/android/server/pm/Installer;
    goto/16 :goto_49

    .end local v6           #lights:Lcom/android/server/LightsService;
    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v10           #display:Lcom/android/server/display/DisplayManagerService;
    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v94           #installer:Lcom/android/server/pm/Installer;
    .restart local v62       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v65       #battery:Lcom/android/server/BatteryService;
    .restart local v79       #display:Lcom/android/server/display/DisplayManagerService;
    .restart local v93       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v95       #installer:Lcom/android/server/pm/Installer;
    .restart local v97       #lights:Lcom/android/server/LightsService;
    :catch_5c
    move-exception v84

    move-object/from16 v19, v93

    .end local v93           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v15, v62

    .end local v62           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v65

    .end local v65           #battery:Lcom/android/server/BatteryService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v10, v79

    .end local v79           #display:Lcom/android/server/display/DisplayManagerService;
    .restart local v10       #display:Lcom/android/server/display/DisplayManagerService;
    move-object/from16 v6, v97

    .end local v97           #lights:Lcom/android/server/LightsService;
    .restart local v6       #lights:Lcom/android/server/LightsService;
    move-object/from16 v94, v95

    .end local v95           #installer:Lcom/android/server/pm/Installer;
    .restart local v94       #installer:Lcom/android/server/pm/Installer;
    goto/16 :goto_49

    .end local v6           #lights:Lcom/android/server/LightsService;
    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v94           #installer:Lcom/android/server/pm/Installer;
    .restart local v62       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v65       #battery:Lcom/android/server/BatteryService;
    .restart local v93       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v95       #installer:Lcom/android/server/pm/Installer;
    .restart local v97       #lights:Lcom/android/server/LightsService;
    :catch_5d
    move-exception v84

    move-object/from16 v19, v93

    .end local v93           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v15, v62

    .end local v62           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v65

    .end local v65           #battery:Lcom/android/server/BatteryService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v6, v97

    .end local v97           #lights:Lcom/android/server/LightsService;
    .restart local v6       #lights:Lcom/android/server/LightsService;
    move-object/from16 v94, v95

    .end local v95           #installer:Lcom/android/server/pm/Installer;
    .restart local v94       #installer:Lcom/android/server/pm/Installer;
    goto/16 :goto_49

    .end local v6           #lights:Lcom/android/server/LightsService;
    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v59           #accountManager:Landroid/accounts/AccountManagerService;
    .end local v94           #installer:Lcom/android/server/pm/Installer;
    .end local v129           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v60       #accountManager:Landroid/accounts/AccountManagerService;
    .restart local v62       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v65       #battery:Lcom/android/server/BatteryService;
    .restart local v76       #cryptState:Ljava/lang/String;
    .restart local v89       #firstBoot:Z
    .restart local v93       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v95       #installer:Lcom/android/server/pm/Installer;
    .restart local v97       #lights:Lcom/android/server/LightsService;
    .restart local v130       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    :catch_5e
    move-exception v84

    move-object/from16 v129, v130

    .end local v130           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v129       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v19, v93

    .end local v93           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v15, v62

    .end local v62           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v65

    .end local v65           #battery:Lcom/android/server/BatteryService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v6, v97

    .end local v97           #lights:Lcom/android/server/LightsService;
    .restart local v6       #lights:Lcom/android/server/LightsService;
    move-object/from16 v59, v60

    .end local v60           #accountManager:Landroid/accounts/AccountManagerService;
    .restart local v59       #accountManager:Landroid/accounts/AccountManagerService;
    move-object/from16 v94, v95

    .end local v95           #installer:Lcom/android/server/pm/Installer;
    .restart local v94       #installer:Lcom/android/server/pm/Installer;
    goto/16 :goto_49

    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v94           #installer:Lcom/android/server/pm/Installer;
    .end local v129           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v62       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v65       #battery:Lcom/android/server/BatteryService;
    .restart local v93       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v95       #installer:Lcom/android/server/pm/Installer;
    .restart local v130       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    :catch_5f
    move-exception v84

    move-object/from16 v129, v130

    .end local v130           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v129       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v19, v93

    .end local v93           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v15, v62

    .end local v62           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v65

    .end local v65           #battery:Lcom/android/server/BatteryService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v94, v95

    .end local v95           #installer:Lcom/android/server/pm/Installer;
    .restart local v94       #installer:Lcom/android/server/pm/Installer;
    goto/16 :goto_49

    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v94           #installer:Lcom/android/server/pm/Installer;
    .end local v129           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v62       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v93       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v95       #installer:Lcom/android/server/pm/Installer;
    .restart local v130       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    :catch_60
    move-exception v84

    move-object/from16 v129, v130

    .end local v130           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v129       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v19, v93

    .end local v93           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v15, v62

    .end local v62           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v94, v95

    .end local v95           #installer:Lcom/android/server/pm/Installer;
    .restart local v94       #installer:Lcom/android/server/pm/Installer;
    goto/16 :goto_49

    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v94           #installer:Lcom/android/server/pm/Installer;
    .end local v129           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .end local v143           #vibrator:Lcom/android/server/VibratorService;
    .restart local v62       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v93       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v95       #installer:Lcom/android/server/pm/Installer;
    .restart local v130       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v144       #vibrator:Lcom/android/server/VibratorService;
    :catch_61
    move-exception v84

    move-object/from16 v129, v130

    .end local v130           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v129       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v19, v93

    .end local v93           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v15, v62

    .end local v62           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v143, v144

    .end local v144           #vibrator:Lcom/android/server/VibratorService;
    .restart local v143       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v94, v95

    .end local v95           #installer:Lcom/android/server/pm/Installer;
    .restart local v94       #installer:Lcom/android/server/pm/Installer;
    goto/16 :goto_49

    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v94           #installer:Lcom/android/server/pm/Installer;
    .end local v129           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .end local v143           #vibrator:Lcom/android/server/VibratorService;
    .restart local v93       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v95       #installer:Lcom/android/server/pm/Installer;
    .restart local v130       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v144       #vibrator:Lcom/android/server/VibratorService;
    :catch_62
    move-exception v84

    move-object/from16 v129, v130

    .end local v130           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v129       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v19, v93

    .end local v93           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v143, v144

    .end local v144           #vibrator:Lcom/android/server/VibratorService;
    .restart local v143       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v94, v95

    .end local v95           #installer:Lcom/android/server/pm/Installer;
    .restart local v94       #installer:Lcom/android/server/pm/Installer;
    goto/16 :goto_49

    .end local v66           #bluetooth:Lcom/android/server/BluetoothManagerService;
    .end local v94           #installer:Lcom/android/server/pm/Installer;
    .end local v129           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .end local v143           #vibrator:Lcom/android/server/VibratorService;
    .restart local v67       #bluetooth:Lcom/android/server/BluetoothManagerService;
    .restart local v95       #installer:Lcom/android/server/pm/Installer;
    .restart local v130       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v144       #vibrator:Lcom/android/server/VibratorService;
    :catch_63
    move-exception v84

    move-object/from16 v129, v130

    .end local v130           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v129       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v66, v67

    .end local v67           #bluetooth:Lcom/android/server/BluetoothManagerService;
    .restart local v66       #bluetooth:Lcom/android/server/BluetoothManagerService;
    move-object/from16 v143, v144

    .end local v144           #vibrator:Lcom/android/server/VibratorService;
    .restart local v143       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v94, v95

    .end local v95           #installer:Lcom/android/server/pm/Installer;
    .restart local v94       #installer:Lcom/android/server/pm/Installer;
    goto/16 :goto_49

    .line 322
    .end local v6           #lights:Lcom/android/server/LightsService;
    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v59           #accountManager:Landroid/accounts/AccountManagerService;
    .end local v94           #installer:Lcom/android/server/pm/Installer;
    .end local v129           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v60       #accountManager:Landroid/accounts/AccountManagerService;
    .restart local v62       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v65       #battery:Lcom/android/server/BatteryService;
    .restart local v93       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v95       #installer:Lcom/android/server/pm/Installer;
    .restart local v97       #lights:Lcom/android/server/LightsService;
    .restart local v130       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    :catch_64
    move-exception v84

    move-object/from16 v59, v60

    .end local v60           #accountManager:Landroid/accounts/AccountManagerService;
    .restart local v59       #accountManager:Landroid/accounts/AccountManagerService;
    goto/16 :goto_48

    .end local v62           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v65           #battery:Lcom/android/server/BatteryService;
    .end local v76           #cryptState:Ljava/lang/String;
    .end local v89           #firstBoot:Z
    .end local v93           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v95           #installer:Lcom/android/server/pm/Installer;
    .end local v97           #lights:Lcom/android/server/LightsService;
    .end local v130           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v6       #lights:Lcom/android/server/LightsService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v63       #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v74       #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v77       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v82       #dreamy:Lcom/android/server/dreams/DreamManagerService;
    .restart local v87       #fileProtect:Lcom/meizu/server/FileProtectManagerService;
    .restart local v91       #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v94       #installer:Lcom/android/server/pm/Installer;
    .restart local v98       #location:Lcom/android/server/LocationManagerService;
    .restart local v100       #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .restart local v110       #notification:Lcom/android/server/NotificationManagerService;
    .restart local v127       #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v129       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v134       #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v146       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :cond_1c
    move-object/from16 v25, v106

    .end local v106           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v25       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    goto/16 :goto_3c
.end method
