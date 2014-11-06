.class Lcom/android/server/AlarmManagerService;
.super Landroid/app/IAlarmManager$Stub;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/AlarmManagerService$LogToFileTag;,
        Lcom/android/server/AlarmManagerService$ResultReceiver;,
        Lcom/android/server/AlarmManagerService$UninstallReceiver;,
        Lcom/android/server/AlarmManagerService$ClockReceiver;,
        Lcom/android/server/AlarmManagerService$ShutDownReceiver;,
        Lcom/android/server/AlarmManagerService$AlarmHandler;,
        Lcom/android/server/AlarmManagerService$AlarmThread;,
        Lcom/android/server/AlarmManagerService$Alarm;,
        Lcom/android/server/AlarmManagerService$IncreasingTimeOrder;,
        Lcom/android/server/AlarmManagerService$BroadcastStats;,
        Lcom/android/server/AlarmManagerService$FilterStats;
    }
.end annotation


# static fields
.field private static final ALARM_EVENT:I = 0x1

.field private static final ALARM_TRIGGER_ALIGN_ENABLED_KEY:Ljava/lang/String; = "debug.alarm.trigger.align"

.field private static final ClockReceiver_TAG:Ljava/lang/String; = "ClockReceiver"

.field private static final ELAPSED_REALTIME_MASK:I = 0x8

.field private static final ELAPSED_REALTIME_WAKEUP_MASK:I = 0x4

.field private static final LATE_ALARM_THRESHOLD:J = 0x2710L

.field private static final LOG_TO_FILE_ENABLED_KEY:Ljava/lang/String; = "debug.alarm.log_to_file"

.field private static final LOG_TO_FILE_FOR_PACKAGES:Ljava/lang/String; = "debug.alarm.log_to_file_pkgs"

.field private static LOG_TO_FILE_NAME:Ljava/lang/String; = null

.field private static final MZ_ALIGNMENT_TIME:I = 0xea60

.field private static final QUANTUM:J = 0xdbba0L

.field private static final RTC_MASK:I = 0x2

.field private static final RTC_WAKEUP_MASK:I = 0x1

.field private static final SYS_PROC_UID_MAX:I = 0x2710

.field private static final TAG:Ljava/lang/String; = "AlarmManager"

.field private static final TIMEZONE_PROPERTY:Ljava/lang/String; = "persist.sys.timezone"

.field private static final TIME_CHANGED_MASK:I = 0x10000

.field private static isProductInternational:Z

.field private static final localLOGV:Z

.field private static final mBackgroundIntent:Landroid/content/Intent;

.field private static myPID:I


# instance fields
.field private elapsedPair:I

.field private elapsedWakeupError:Ljava/lang/String;

.field private elapsedWakeupPair:I

.field private lastNoneWakeupElapsedTime:J

.field private lastRtcBootTime:J

.field private lastRtcSetResult:I

.field private lastTriggeredElapsedTime:J

.field private lastTriggeredRtcTime:J

.field private lastWakeupElapsedTime:J

.field private lastWakeupRtcTime:J

.field private mBroadcastRefCount:I

.field private final mBroadcastStats:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/AlarmManagerService$BroadcastStats;",
            ">;"
        }
    .end annotation
.end field

.field private mClockReceiver:Lcom/android/server/AlarmManagerService$ClockReceiver;

.field private final mContext:Landroid/content/Context;

.field private final mDateChangeSender:Landroid/app/PendingIntent;

.field private mDescriptor:I

.field private final mElapsedRealtimeAlarms:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;"
        }
    .end annotation
.end field

.field private final mElapsedRealtimeWakeupAlarms:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

.field private mInFlight:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;"
        }
    .end annotation
.end field

.field private final mIncreasingTimeOrder:Lcom/android/server/AlarmManagerService$IncreasingTimeOrder;

.field private mInterceptPowerKey:Z

.field private mInterceptPowerKeyLocer:Z

.field private mLock:Ljava/lang/Object;

.field private final mResultReceiver:Lcom/android/server/AlarmManagerService$ResultReceiver;

.field private final mRtcAlarms:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;"
        }
    .end annotation
.end field

.field private final mRtcBootWakeupAlarms:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;"
        }
    .end annotation
.end field

.field private final mRtcWakeupAlarms:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;"
        }
    .end annotation
.end field

.field private mShutDownReceiver:Lcom/android/server/AlarmManagerService$ShutDownReceiver;

.field private final mTimeTickSender:Landroid/app/PendingIntent;

.field private mUninstallReceiver:Lcom/android/server/AlarmManagerService$UninstallReceiver;

.field private final mWaitThread:Lcom/android/server/AlarmManagerService$AlarmThread;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private rtcPair:I

.field private rtcWakeupError:Ljava/lang/String;

.field private rtcWakeupPair:I

.field private setLock_jni_count_rtc_wakeup:I

.field setRepeating_count_elapsed_wakeup:I

.field setRepeating_count_rtc_wakeup:I

.field private set_lock_jni_count_elapsed_wakeup:I

.field private whitelist_packagename:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final whitelist_packagename_inner:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 95
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/server/AlarmManagerService;->mBackgroundIntent:Landroid/content/Intent;

    .line 152
    sput-boolean v6, Lcom/android/server/AlarmManagerService;->isProductInternational:Z

    .line 1761
    const-string v0, "new_algorithm_alarm_with_trigger_aligned_%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd_HH_mm_ss"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/AlarmManagerService;->LOG_TO_FILE_NAME:Ljava/lang/String;

    .line 1764
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    sput v0, Lcom/android/server/AlarmManagerService;->myPID:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 11
    .parameter "context"

    .prologue
    .line 207
    invoke-direct {p0}, Landroid/app/IAlarmManager$Stub;-><init>()V

    .line 100
    new-instance v7, Ljava/lang/Object;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    iput-object v7, p0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    .line 102
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/android/server/AlarmManagerService;->mRtcWakeupAlarms:Ljava/util/ArrayList;

    .line 103
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/android/server/AlarmManagerService;->mRtcAlarms:Ljava/util/ArrayList;

    .line 104
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/android/server/AlarmManagerService;->mElapsedRealtimeWakeupAlarms:Ljava/util/ArrayList;

    .line 105
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/android/server/AlarmManagerService;->mElapsedRealtimeAlarms:Ljava/util/ArrayList;

    .line 106
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/android/server/AlarmManagerService;->mRtcBootWakeupAlarms:Ljava/util/ArrayList;

    .line 107
    new-instance v7, Lcom/android/server/AlarmManagerService$IncreasingTimeOrder;

    invoke-direct {v7}, Lcom/android/server/AlarmManagerService$IncreasingTimeOrder;-><init>()V

    iput-object v7, p0, Lcom/android/server/AlarmManagerService;->mIncreasingTimeOrder:Lcom/android/server/AlarmManagerService$IncreasingTimeOrder;

    .line 110
    const/4 v7, 0x0

    iput v7, p0, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    .line 112
    new-instance v7, Ljava/util/LinkedList;

    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    iput-object v7, p0, Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/LinkedList;

    .line 113
    new-instance v7, Lcom/android/server/AlarmManagerService$AlarmThread;

    invoke-direct {v7, p0}, Lcom/android/server/AlarmManagerService$AlarmThread;-><init>(Lcom/android/server/AlarmManagerService;)V

    iput-object v7, p0, Lcom/android/server/AlarmManagerService;->mWaitThread:Lcom/android/server/AlarmManagerService$AlarmThread;

    .line 114
    new-instance v7, Lcom/android/server/AlarmManagerService$AlarmHandler;

    invoke-direct {v7, p0}, Lcom/android/server/AlarmManagerService$AlarmHandler;-><init>(Lcom/android/server/AlarmManagerService;)V

    iput-object v7, p0, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    .line 119
    new-instance v7, Lcom/android/server/AlarmManagerService$ResultReceiver;

    invoke-direct {v7, p0}, Lcom/android/server/AlarmManagerService$ResultReceiver;-><init>(Lcom/android/server/AlarmManagerService;)V

    iput-object v7, p0, Lcom/android/server/AlarmManagerService;->mResultReceiver:Lcom/android/server/AlarmManagerService$ResultReceiver;

    .line 122
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/server/AlarmManagerService;->mInterceptPowerKey:Z

    .line 123
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/server/AlarmManagerService;->mInterceptPowerKeyLocer:Z

    .line 138
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, p0, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Ljava/util/HashMap;

    .line 198
    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "com.android.alarmclock"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-string v9, "com.android.calendar"

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const-string v9, "com.meizu.flymephone"

    aput-object v9, v7, v8

    const/4 v8, 0x3

    const-string v9, "com.android.providers.calendar"

    aput-object v9, v7, v8

    const/4 v8, 0x4

    const-string v9, "com.meizu.cloud"

    aput-object v9, v7, v8

    iput-object v7, p0, Lcom/android/server/AlarmManagerService;->whitelist_packagename_inner:[Ljava/lang/String;

    .line 205
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/android/server/AlarmManagerService;->whitelist_packagename:Ljava/util/ArrayList;

    .line 267
    const-wide/16 v7, 0x0

    iput-wide v7, p0, Lcom/android/server/AlarmManagerService;->lastRtcBootTime:J

    .line 268
    const/4 v7, 0x0

    iput v7, p0, Lcom/android/server/AlarmManagerService;->lastRtcSetResult:I

    .line 352
    const/4 v7, 0x0

    iput v7, p0, Lcom/android/server/AlarmManagerService;->setRepeating_count_rtc_wakeup:I

    .line 353
    const/4 v7, 0x0

    iput v7, p0, Lcom/android/server/AlarmManagerService;->setRepeating_count_elapsed_wakeup:I

    .line 811
    const/4 v7, 0x0

    iput v7, p0, Lcom/android/server/AlarmManagerService;->setLock_jni_count_rtc_wakeup:I

    .line 812
    const/4 v7, 0x0

    iput v7, p0, Lcom/android/server/AlarmManagerService;->set_lock_jni_count_elapsed_wakeup:I

    .line 814
    const-wide/16 v7, 0x0

    iput-wide v7, p0, Lcom/android/server/AlarmManagerService;->lastWakeupRtcTime:J

    .line 815
    const-wide/16 v7, 0x0

    iput-wide v7, p0, Lcom/android/server/AlarmManagerService;->lastWakeupElapsedTime:J

    .line 816
    const-wide/16 v7, 0x0

    iput-wide v7, p0, Lcom/android/server/AlarmManagerService;->lastNoneWakeupElapsedTime:J

    .line 819
    const/4 v7, -0x1

    iput v7, p0, Lcom/android/server/AlarmManagerService;->rtcWakeupPair:I

    .line 820
    const/4 v7, -0x1

    iput v7, p0, Lcom/android/server/AlarmManagerService;->rtcPair:I

    .line 821
    const/4 v7, -0x1

    iput v7, p0, Lcom/android/server/AlarmManagerService;->elapsedWakeupPair:I

    .line 822
    const/4 v7, -0x1

    iput v7, p0, Lcom/android/server/AlarmManagerService;->elapsedPair:I

    .line 825
    const-string v7, "null"

    iput-object v7, p0, Lcom/android/server/AlarmManagerService;->rtcWakeupError:Ljava/lang/String;

    .line 826
    const-string v7, "null"

    iput-object v7, p0, Lcom/android/server/AlarmManagerService;->elapsedWakeupError:Ljava/lang/String;

    .line 1265
    const-wide/16 v7, 0x0

    iput-wide v7, p0, Lcom/android/server/AlarmManagerService;->lastTriggeredRtcTime:J

    .line 1266
    const-wide/16 v7, 0x0

    iput-wide v7, p0, Lcom/android/server/AlarmManagerService;->lastTriggeredElapsedTime:J

    .line 208
    iput-object p1, p0, Lcom/android/server/AlarmManagerService;->mContext:Landroid/content/Context;

    .line 209
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->init()I

    move-result v7

    iput v7, p0, Lcom/android/server/AlarmManagerService;->mDescriptor:I

    .line 213
    const-string v7, "persist.sys.timezone"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 214
    .local v6, tz:Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 215
    invoke-virtual {p0, v6}, Lcom/android/server/AlarmManagerService;->setTimeZone(Ljava/lang/String;)V

    .line 218
    :cond_0
    const-string v7, "power"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/PowerManager;

    .line 219
    .local v5, pm:Landroid/os/PowerManager;
    const/4 v7, 0x1

    const-string v8, "AlarmManager"

    invoke-virtual {v5, v7, v8}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 221
    const/4 v7, 0x0

    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.intent.action.TIME_TICK"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v9, 0x5000

    invoke-virtual {v8, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v8

    const/4 v9, 0x0

    sget-object v10, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-static {p1, v7, v8, v9, v10}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/AlarmManagerService;->mTimeTickSender:Landroid/app/PendingIntent;

    .line 226
    new-instance v2, Landroid/content/Intent;

    const-string v7, "android.intent.action.DATE_CHANGED"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 227
    .local v2, intent:Landroid/content/Intent;
    const/high16 v7, 0x2000

    invoke-virtual {v2, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 228
    const/4 v7, 0x0

    const/high16 v8, 0x800

    sget-object v9, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-static {p1, v7, v2, v8, v9}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/AlarmManagerService;->mDateChangeSender:Landroid/app/PendingIntent;

    .line 232
    new-instance v7, Lcom/android/server/AlarmManagerService$ClockReceiver;

    invoke-direct {v7, p0}, Lcom/android/server/AlarmManagerService$ClockReceiver;-><init>(Lcom/android/server/AlarmManagerService;)V

    iput-object v7, p0, Lcom/android/server/AlarmManagerService;->mClockReceiver:Lcom/android/server/AlarmManagerService$ClockReceiver;

    .line 233
    iget-object v7, p0, Lcom/android/server/AlarmManagerService;->mClockReceiver:Lcom/android/server/AlarmManagerService$ClockReceiver;

    invoke-virtual {v7}, Lcom/android/server/AlarmManagerService$ClockReceiver;->scheduleTimeTickEvent()V

    .line 234
    iget-object v7, p0, Lcom/android/server/AlarmManagerService;->mClockReceiver:Lcom/android/server/AlarmManagerService$ClockReceiver;

    invoke-virtual {v7}, Lcom/android/server/AlarmManagerService$ClockReceiver;->scheduleDateChangedEvent()V

    .line 235
    new-instance v7, Lcom/android/server/AlarmManagerService$UninstallReceiver;

    invoke-direct {v7, p0}, Lcom/android/server/AlarmManagerService$UninstallReceiver;-><init>(Lcom/android/server/AlarmManagerService;)V

    iput-object v7, p0, Lcom/android/server/AlarmManagerService;->mUninstallReceiver:Lcom/android/server/AlarmManagerService$UninstallReceiver;

    .line 237
    new-instance v7, Lcom/android/server/AlarmManagerService$ShutDownReceiver;

    invoke-direct {v7, p0}, Lcom/android/server/AlarmManagerService$ShutDownReceiver;-><init>(Lcom/android/server/AlarmManagerService;)V

    iput-object v7, p0, Lcom/android/server/AlarmManagerService;->mShutDownReceiver:Lcom/android/server/AlarmManagerService$ShutDownReceiver;

    .line 239
    iget v7, p0, Lcom/android/server/AlarmManagerService;->mDescriptor:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_1

    .line 240
    iget-object v7, p0, Lcom/android/server/AlarmManagerService;->mWaitThread:Lcom/android/server/AlarmManagerService$AlarmThread;

    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    .line 245
    :goto_0
    iget-object v7, p0, Lcom/android/server/AlarmManagerService;->whitelist_packagename_inner:[Ljava/lang/String;

    if-eqz v7, :cond_2

    .line 246
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->whitelist_packagename_inner:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v3, :cond_2

    aget-object v4, v0, v1

    .line 247
    .local v4, pkg:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/AlarmManagerService;->whitelist_packagename:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 246
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 242
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v3           #len$:I
    .end local v4           #pkg:Ljava/lang/String;
    :cond_1
    const-string v7, "AlarmManager"

    const-string v8, "Failed to open alarm driver. Falling back to a handler."

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 251
    :cond_2
    invoke-static {}, Landroid/os/Build;->isProductInternational()Z

    move-result v7

    sput-boolean v7, Lcom/android/server/AlarmManagerService;->isProductInternational:Z

    .line 252
    return-void
.end method

.method static synthetic access$002(Lcom/android/server/AlarmManagerService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/android/server/AlarmManagerService;->mInterceptPowerKeyLocer:Z

    return p1
.end method

.method static synthetic access$100(J)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    invoke-static {p0, p1}, Lcom/android/server/AlarmManagerService;->getRTCTimeString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/AlarmManagerService;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 72
    iget-wide v0, p0, Lcom/android/server/AlarmManagerService;->lastWakeupRtcTime:J

    return-wide v0
.end method

.method static synthetic access$1100(Lcom/android/server/AlarmManagerService;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 72
    iget-wide v0, p0, Lcom/android/server/AlarmManagerService;->lastTriggeredRtcTime:J

    return-wide v0
.end method

.method static synthetic access$1102(Lcom/android/server/AlarmManagerService;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-wide p1, p0, Lcom/android/server/AlarmManagerService;->lastTriggeredRtcTime:J

    return-wide p1
.end method

.method static synthetic access$1200(Lcom/android/server/AlarmManagerService;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 72
    iget-wide v0, p0, Lcom/android/server/AlarmManagerService;->lastNoneWakeupElapsedTime:J

    return-wide v0
.end method

.method static synthetic access$1300(Lcom/android/server/AlarmManagerService;Landroid/app/PendingIntent;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/android/server/AlarmManagerService;->needPrintLog(Landroid/app/PendingIntent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/android/server/AlarmManagerService;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mRtcWakeupAlarms:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1500()Z
    .locals 1

    .prologue
    .line 72
    invoke-static {}, Lcom/android/server/AlarmManagerService;->isAlarmTimeAlignedEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/android/server/AlarmManagerService;Ljava/util/ArrayList;Ljava/util/ArrayList;JZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 72
    invoke-direct/range {p0 .. p5}, Lcom/android/server/AlarmManagerService;->triggerAlarmsLocked(Ljava/util/ArrayList;Ljava/util/ArrayList;JZ)V

    return-void
.end method

.method static synthetic access$1702(Lcom/android/server/AlarmManagerService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput p1, p0, Lcom/android/server/AlarmManagerService;->rtcPair:I

    return p1
.end method

.method static synthetic access$1800(Lcom/android/server/AlarmManagerService;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mRtcAlarms:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/android/server/AlarmManagerService;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-wide p1, p0, Lcom/android/server/AlarmManagerService;->lastTriggeredElapsedTime:J

    return-wide p1
.end method

.method static synthetic access$200(Lcom/android/server/AlarmManagerService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget v0, p0, Lcom/android/server/AlarmManagerService;->mDescriptor:I

    return v0
.end method

.method static synthetic access$2000(Lcom/android/server/AlarmManagerService;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mElapsedRealtimeWakeupAlarms:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/android/server/AlarmManagerService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput p1, p0, Lcom/android/server/AlarmManagerService;->elapsedPair:I

    return p1
.end method

.method static synthetic access$2200(Lcom/android/server/AlarmManagerService;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mElapsedRealtimeAlarms:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2300()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/android/server/AlarmManagerService;->mBackgroundIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/server/AlarmManagerService;)Lcom/android/server/AlarmManagerService$ResultReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mResultReceiver:Lcom/android/server/AlarmManagerService$ResultReceiver;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/server/AlarmManagerService;)Lcom/android/server/AlarmManagerService$AlarmHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    return-object v0
.end method

.method static synthetic access$2600(Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    invoke-static {p0}, Lcom/android/server/AlarmManagerService;->logToFileIfNeed(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2700(Lcom/android/server/AlarmManagerService$LogToFileTag;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    invoke-static {p0, p1}, Lcom/android/server/AlarmManagerService;->logToFile(Lcom/android/server/AlarmManagerService$LogToFileTag;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/server/AlarmManagerService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget v0, p0, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    return v0
.end method

.method static synthetic access$2808(Lcom/android/server/AlarmManagerService;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 72
    iget v0, p0, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    return v0
.end method

.method static synthetic access$2810(Lcom/android/server/AlarmManagerService;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 72
    iget v0, p0, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    return v0
.end method

.method static synthetic access$2900(Lcom/android/server/AlarmManagerService;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/AlarmManagerService;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/android/server/AlarmManagerService;->waitForAlarm(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$3000(Lcom/android/server/AlarmManagerService;)Ljava/util/LinkedList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/server/AlarmManagerService;Landroid/app/PendingIntent;)Lcom/android/server/AlarmManagerService$BroadcastStats;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/android/server/AlarmManagerService;->getStatsLocked(Landroid/app/PendingIntent;)Lcom/android/server/AlarmManagerService$BroadcastStats;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/server/AlarmManagerService;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 72
    iget-wide v0, p0, Lcom/android/server/AlarmManagerService;->lastRtcBootTime:J

    return-wide v0
.end method

.method static synthetic access$3300(Lcom/android/server/AlarmManagerService;Z)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/android/server/AlarmManagerService;->setLockedBootTime(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3400(Lcom/android/server/AlarmManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->dumpToFile()V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/server/AlarmManagerService;II)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Lcom/android/server/AlarmManagerService;->setKernelTimezone(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$3600(Lcom/android/server/AlarmManagerService;)Landroid/app/PendingIntent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mDateChangeSender:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/server/AlarmManagerService;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->whitelist_packagename_inner:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/server/AlarmManagerService;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->whitelist_packagename:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/android/server/AlarmManagerService;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/server/AlarmManagerService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput p1, p0, Lcom/android/server/AlarmManagerService;->rtcWakeupPair:I

    return p1
.end method

.method static synthetic access$502(Lcom/android/server/AlarmManagerService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput p1, p0, Lcom/android/server/AlarmManagerService;->elapsedWakeupPair:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/server/AlarmManagerService;)Landroid/app/PendingIntent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mTimeTickSender:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/AlarmManagerService;)Lcom/android/server/AlarmManagerService$ClockReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mClockReceiver:Lcom/android/server/AlarmManagerService$ClockReceiver;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/AlarmManagerService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/AlarmManagerService;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method private addAlarmLocked(Lcom/android/server/AlarmManagerService$Alarm;)[I
    .locals 12
    .parameter "alarm"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 755
    iget v7, p1, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    invoke-direct {p0, v7}, Lcom/android/server/AlarmManagerService;->getAlarmList(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 756
    .local v1, alarmList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    const/4 v7, 0x2

    new-array v3, v7, [I

    fill-array-data v3, :array_0

    .line 758
    .local v3, indexs:[I
    iget-object v7, p0, Lcom/android/server/AlarmManagerService;->mIncreasingTimeOrder:Lcom/android/server/AlarmManagerService$IncreasingTimeOrder;

    invoke-static {v1, p1, v7}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v7

    aput v7, v3, v10

    .line 759
    aget v7, v3, v10

    if-gez v7, :cond_0

    .line 760
    aget v7, v3, v10

    rsub-int/lit8 v7, v7, 0x0

    add-int/lit8 v7, v7, -0x1

    aput v7, v3, v10

    .line 762
    :cond_0
    iget-object v7, p1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-direct {p0, v7}, Lcom/android/server/AlarmManagerService;->needPrintLog(Landroid/app/PendingIntent;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 763
    const-string v7, "AlarmManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Adding alarm "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " at "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget v9, v3, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    :cond_1
    aget v7, v3, v10

    invoke-virtual {v1, v7, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 768
    iget-boolean v7, p1, Lcom/android/server/AlarmManagerService$Alarm;->bootDevice:Z

    if-eqz v7, :cond_3

    .line 769
    iget-object v7, p0, Lcom/android/server/AlarmManagerService;->mRtcBootWakeupAlarms:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/android/server/AlarmManagerService;->mIncreasingTimeOrder:Lcom/android/server/AlarmManagerService$IncreasingTimeOrder;

    invoke-static {v7, p1, v8}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v7

    aput v7, v3, v11

    .line 770
    aget v7, v3, v11

    if-gez v7, :cond_2

    .line 771
    aget v7, v3, v11

    rsub-int/lit8 v7, v7, 0x0

    add-int/lit8 v7, v7, -0x1

    aput v7, v3, v11

    .line 773
    :cond_2
    iget-object v7, p0, Lcom/android/server/AlarmManagerService;->mRtcBootWakeupAlarms:Ljava/util/ArrayList;

    aget v8, v3, v11

    invoke-virtual {v7, v8, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 776
    :cond_3
    iget-object v7, p1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-direct {p0, v7}, Lcom/android/server/AlarmManagerService;->needPrintLog(Landroid/app/PendingIntent;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 778
    const-string v7, "AlarmManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "alarms: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " type: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    const/4 v4, 0x0

    .line 780
    .local v4, position:I
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    .line 781
    .local v0, a:Lcom/android/server/AlarmManagerService$Alarm;
    new-instance v5, Landroid/text/format/Time;

    invoke-direct {v5}, Landroid/text/format/Time;-><init>()V

    .line 782
    .local v5, time:Landroid/text/format/Time;
    iget-wide v7, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    invoke-virtual {v5, v7, v8}, Landroid/text/format/Time;->set(J)V

    .line 783
    const-string v7, "%b %d %I:%M:%S %p"

    invoke-virtual {v5, v7}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 784
    .local v6, timeStr:Ljava/lang/String;
    const-string v7, "AlarmManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v9}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    add-int/lit8 v4, v4, 0x1

    .line 786
    goto :goto_0

    .line 789
    .end local v0           #a:Lcom/android/server/AlarmManagerService$Alarm;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #position:I
    .end local v5           #time:Landroid/text/format/Time;
    .end local v6           #timeStr:Ljava/lang/String;
    :cond_4
    return-object v3

    .line 756
    nop

    :array_0
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data
.end method

.method private native close(I)V
.end method

.method private static final dumpAlarmList(Ljava/io/PrintWriter;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;JZ)V
    .locals 7
    .parameter "pw"
    .parameter
    .parameter "prefix"
    .parameter "label"
    .parameter "now"
    .parameter "rtcTime"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JZ)V"
        }
    .end annotation

    .prologue
    .line 1077
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v6, v1, -0x1

    .local v6, i:I
    :goto_0
    if-ltz v6, :cond_0

    .line 1078
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    .line 1079
    .local v0, a:Lcom/android/server/AlarmManagerService$Alarm;
    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, " #"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Ljava/io/PrintWriter;->print(I)V

    .line 1080
    const-string v1, ": "

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1081
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v1, p0

    move-wide v3, p4

    move v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/AlarmManagerService$Alarm;->dump(Ljava/io/PrintWriter;Ljava/lang/String;JZ)V

    .line 1077
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    .line 1083
    .end local v0           #a:Lcom/android/server/AlarmManagerService$Alarm;
    :cond_0
    return-void
.end method

.method private final dumpKernelRtcTime(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 8
    .parameter "pw"
    .parameter "fileAndPath"

    .prologue
    .line 1827
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1828
    .local v3, f:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1829
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1834
    const/4 v4, 0x0

    .line 1836
    .local v4, fw:Ljava/io/FileReader;
    :try_start_0
    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    .line 1837
    .end local v4           #fw:Ljava/io/FileReader;
    .local v5, fw:Ljava/io/FileReader;
    const/16 v6, 0xc8

    :try_start_1
    new-array v0, v6, [C

    .line 1838
    .local v0, buffer:[C
    const/4 v1, 0x0

    .line 1839
    .local v1, byteread:I
    :goto_0
    invoke-virtual {v5, v0}, Ljava/io/Reader;->read([C)I

    move-result v1

    const/4 v6, -0x1

    if-eq v1, v6, :cond_2

    .line 1840
    const/4 v6, 0x0

    invoke-virtual {p1, v0, v6, v1}, Ljava/io/PrintWriter;->write([CII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1843
    .end local v0           #buffer:[C
    .end local v1           #byteread:I
    :catch_0
    move-exception v2

    move-object v4, v5

    .line 1844
    .end local v5           #fw:Ljava/io/FileReader;
    .local v2, e:Ljava/io/IOException;
    .restart local v4       #fw:Ljava/io/FileReader;
    :goto_1
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1846
    if-eqz v4, :cond_0

    .line 1848
    :try_start_3
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 1855
    .end local v2           #e:Ljava/io/IOException;
    .end local v4           #fw:Ljava/io/FileReader;
    :cond_0
    :goto_2
    return-void

    .line 1831
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is not exists"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 1842
    .restart local v0       #buffer:[C
    .restart local v1       #byteread:I
    .restart local v5       #fw:Ljava/io/FileReader;
    :cond_2
    :try_start_4
    const-string v6, " "

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 1846
    if-eqz v5, :cond_4

    .line 1848
    :try_start_5
    invoke-virtual {v5}, Ljava/io/InputStreamReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    move-object v4, v5

    .line 1852
    .end local v5           #fw:Ljava/io/FileReader;
    .restart local v4       #fw:Ljava/io/FileReader;
    goto :goto_2

    .line 1849
    .end local v4           #fw:Ljava/io/FileReader;
    .restart local v5       #fw:Ljava/io/FileReader;
    :catch_1
    move-exception v2

    .line 1851
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v4, v5

    .line 1852
    .end local v5           #fw:Ljava/io/FileReader;
    .restart local v4       #fw:Ljava/io/FileReader;
    goto :goto_2

    .line 1849
    .end local v0           #buffer:[C
    .end local v1           #byteread:I
    :catch_2
    move-exception v2

    .line 1851
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_2

    .line 1846
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :goto_3
    if-eqz v4, :cond_3

    .line 1848
    :try_start_6
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 1852
    :cond_3
    :goto_4
    throw v6

    .line 1849
    :catch_3
    move-exception v2

    .line 1851
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_4

    .line 1846
    .end local v2           #e:Ljava/io/IOException;
    .end local v4           #fw:Ljava/io/FileReader;
    .restart local v5       #fw:Ljava/io/FileReader;
    :catchall_1
    move-exception v6

    move-object v4, v5

    .end local v5           #fw:Ljava/io/FileReader;
    .restart local v4       #fw:Ljava/io/FileReader;
    goto :goto_3

    .line 1843
    :catch_4
    move-exception v2

    goto :goto_1

    .end local v4           #fw:Ljava/io/FileReader;
    .restart local v0       #buffer:[C
    .restart local v1       #byteread:I
    .restart local v5       #fw:Ljava/io/FileReader;
    :cond_4
    move-object v4, v5

    .end local v5           #fw:Ljava/io/FileReader;
    .restart local v4       #fw:Ljava/io/FileReader;
    goto :goto_2
.end method

.method private final dumpToFile()V
    .locals 6

    .prologue
    .line 1803
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v4, "/data/alarm_shutdown_recoder.log"

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1804
    .local v1, f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1805
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 1807
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1824
    .end local v1           #f:Ljava/io/File;
    :goto_0
    return-void

    .line 1810
    .restart local v1       #f:Ljava/io/File;
    :cond_1
    new-instance v2, Ljava/io/FileWriter;

    const/4 v4, 0x1

    invoke-direct {v2, v1, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    .line 1811
    .local v2, fw:Ljava/io/FileWriter;
    new-instance v3, Ljava/io/PrintWriter;

    invoke-direct {v3, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 1813
    .local v3, pw:Ljava/io/PrintWriter;
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v3, v5}, Lcom/android/server/AlarmManagerService;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1816
    const-string v4, "/sys/class/rtc/rtc0/alarm_time"

    invoke-direct {p0, v3, v4}, Lcom/android/server/AlarmManagerService;->dumpKernelRtcTime(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 1817
    const-string v4, "/sys/class/rtc/rtc0/rtcwake"

    invoke-direct {p0, v3, v4}, Lcom/android/server/AlarmManagerService;->dumpKernelRtcTime(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 1819
    invoke-virtual {v3}, Ljava/io/PrintWriter;->flush()V

    .line 1820
    invoke-virtual {v3}, Ljava/io/PrintWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1821
    .end local v1           #f:Ljava/io/File;
    .end local v2           #fw:Ljava/io/FileWriter;
    .end local v3           #pw:Ljava/io/PrintWriter;
    :catch_0
    move-exception v0

    .line 1822
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private getAlarmList(I)Ljava/util/ArrayList;
    .locals 1
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;"
        }
    .end annotation

    .prologue
    .line 742
    packed-switch p1, :pswitch_data_0

    .line 751
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 743
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mRtcWakeupAlarms:Ljava/util/ArrayList;

    goto :goto_0

    .line 744
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mRtcAlarms:Ljava/util/ArrayList;

    goto :goto_0

    .line 745
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mElapsedRealtimeWakeupAlarms:Ljava/util/ArrayList;

    goto :goto_0

    .line 746
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mElapsedRealtimeAlarms:Ljava/util/ArrayList;

    goto :goto_0

    .line 747
    :pswitch_4
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mRtcBootWakeupAlarms:Ljava/util/ArrayList;

    goto :goto_0

    .line 748
    :pswitch_5
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mRtcBootWakeupAlarms:Ljava/util/ArrayList;

    goto :goto_0

    .line 742
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

.method private static final getLogToFilePackages()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 175
    const-string v1, "debug.alarm.log_to_file_pkgs"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 176
    .local v0, ret:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 177
    :goto_0
    return-object v1

    :cond_0
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private static getRTCTimeString(J)Ljava/lang/String;
    .locals 2
    .parameter "rtcMillis"

    .prologue
    .line 431
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd_HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final getStatsLocked(Landroid/app/PendingIntent;)Lcom/android/server/AlarmManagerService$BroadcastStats;
    .locals 3
    .parameter "pi"

    .prologue
    .line 1691
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v1

    .line 1692
    .local v1, pkg:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$BroadcastStats;

    .line 1693
    .local v0, bs:Lcom/android/server/AlarmManagerService$BroadcastStats;
    if-nez v0, :cond_0

    .line 1694
    new-instance v0, Lcom/android/server/AlarmManagerService$BroadcastStats;

    .end local v0           #bs:Lcom/android/server/AlarmManagerService$BroadcastStats;
    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/android/server/AlarmManagerService$BroadcastStats;-><init>(Lcom/android/server/AlarmManagerService$1;)V

    .line 1695
    .restart local v0       #bs:Lcom/android/server/AlarmManagerService$BroadcastStats;
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1697
    :cond_0
    return-object v0
.end method

.method private static getTimeSpanInfo(J)Ljava/lang/String;
    .locals 13
    .parameter "millis"

    .prologue
    const-wide/16 v11, 0x3e8

    const-wide/16 v9, 0x3c

    .line 435
    const/4 v4, 0x0

    .line 436
    .local v4, negative:Z
    const-wide/16 v7, 0x0

    cmp-long v7, p0, v7

    if-gez v7, :cond_0

    .line 437
    neg-long p0, p0

    .line 438
    const/4 v4, 0x1

    .line 441
    :cond_0
    div-long v5, p0, v11

    .line 442
    .local v5, second:J
    div-long v2, v5, v9

    .line 443
    .local v2, minute:J
    rem-long/2addr p0, v11

    .line 444
    rem-long/2addr v5, v9

    .line 445
    div-long v0, v2, v9

    .line 446
    .local v0, hour:J
    rem-long/2addr v2, v9

    .line 447
    const-string v8, "%s %d\u65f6%d\u5206%d.%d\u79d2"

    const/4 v7, 0x5

    new-array v9, v7, [Ljava/lang/Object;

    const/4 v10, 0x0

    if-eqz v4, :cond_1

    const-string v7, "\u8d1f\u7684"

    :goto_0
    aput-object v7, v9, v10

    const/4 v7, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v9, v7

    const/4 v7, 0x2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v9, v7

    const/4 v7, 0x3

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v9, v7

    const/4 v7, 0x4

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v9, v7

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    return-object v7

    :cond_1
    const-string v7, ""

    goto :goto_0
.end method

.method private native init()I
.end method

.method private static final isAlarmTimeAlignedEnabled()Z
    .locals 2

    .prologue
    .line 166
    sget-boolean v0, Lcom/android/server/AlarmManagerService;->isProductInternational:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 167
    :goto_0
    return v0

    :cond_0
    const-string v0, "debug.alarm.trigger.align"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method private final isCallingByWhitelistApp(Lcom/android/server/AlarmManagerService$Alarm;)Z
    .locals 7
    .parameter "alarm"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1746
    iget v5, p1, Lcom/android/server/AlarmManagerService$Alarm;->callingUid:I

    const/16 v6, 0x2710

    if-ge v5, v6, :cond_0

    .line 1754
    :goto_0
    return v3

    .line 1747
    :cond_0
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->whitelist_packagename:Ljava/util/ArrayList;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->whitelist_packagename:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_2

    :cond_1
    move v3, v4

    goto :goto_0

    .line 1749
    :cond_2
    iget-object v5, p1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v5}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v0

    .line 1750
    .local v0, alarm_target_pkg:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->whitelist_packagename:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1751
    .local v2, pkg:Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_0

    .end local v2           #pkg:Ljava/lang/String;
    :cond_4
    move v3, v4

    .line 1754
    goto :goto_0
.end method

.method private static final isLogToFileEnabled()Z
    .locals 2

    .prologue
    .line 171
    const-string v0, "debug.alarm.log_to_file"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static final logToFile(Lcom/android/server/AlarmManagerService$LogToFileTag;Ljava/lang/String;)V
    .locals 13
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 1768
    :try_start_0
    new-instance v5, Ljava/io/File;

    const-string v9, "/data/%s.log"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    sget-object v12, Lcom/android/server/AlarmManagerService;->LOG_TO_FILE_NAME:Ljava/lang/String;

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v5, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1769
    .local v5, f:Ljava/io/File;
    new-instance v6, Ljava/io/FileWriter;

    const/4 v9, 0x1

    invoke-direct {v6, v5, v9}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    .line 1770
    .local v6, fw:Ljava/io/FileWriter;
    new-instance v8, Ljava/io/PrintWriter;

    invoke-direct {v8, v6}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 1771
    .local v8, pw:Ljava/io/PrintWriter;
    const/4 v7, 0x0

    .line 1772
    .local v7, log_msg:Ljava/lang/String;
    if-nez p0, :cond_0

    .line 1773
    const-string v9, "\t%s"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object p1, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 1784
    :goto_0
    const-string v9, "%d %s"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    sget v12, Lcom/android/server/AlarmManagerService;->myPID:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    aput-object v7, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1785
    const-string v9, "AlarmManager_LOG_TO_FILE"

    invoke-static {v9, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1787
    invoke-virtual {v8}, Ljava/io/PrintWriter;->flush()V

    .line 1788
    invoke-virtual {v6}, Ljava/io/OutputStreamWriter;->flush()V

    .line 1789
    invoke-virtual {v8}, Ljava/io/PrintWriter;->close()V

    .line 1790
    invoke-virtual {v6}, Ljava/io/OutputStreamWriter;->close()V

    .line 1794
    .end local v5           #f:Ljava/io/File;
    .end local v6           #fw:Ljava/io/FileWriter;
    .end local v7           #log_msg:Ljava/lang/String;
    .end local v8           #pw:Ljava/io/PrintWriter;
    :goto_1
    return-void

    .line 1775
    .restart local v5       #f:Ljava/io/File;
    .restart local v6       #fw:Ljava/io/FileWriter;
    .restart local v7       #log_msg:Ljava/lang/String;
    .restart local v8       #pw:Ljava/io/PrintWriter;
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1776
    .local v0, currentTimeMillis:J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 1777
    .local v3, elapsedRealTime:J
    const-string v9, "%s\trtc:%s elapsed:%s\t%s"

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object p0, v10, v11

    const/4 v11, 0x1

    invoke-static {v0, v1}, Lcom/android/server/AlarmManagerService;->getRTCTimeString(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    invoke-static {v3, v4}, Lcom/android/server/AlarmManagerService;->getTimeSpanInfo(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x3

    aput-object p1, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    goto :goto_0

    .line 1791
    .end local v0           #currentTimeMillis:J
    .end local v3           #elapsedRealTime:J
    .end local v5           #f:Ljava/io/File;
    .end local v6           #fw:Ljava/io/FileWriter;
    .end local v7           #log_msg:Ljava/lang/String;
    .end local v8           #pw:Ljava/io/PrintWriter;
    :catch_0
    move-exception v2

    .line 1792
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method private static final logToFileIfNeed(Ljava/lang/String;)Z
    .locals 6
    .parameter "targetPackageName"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 181
    invoke-static {}, Lcom/android/server/AlarmManagerService;->isLogToFileEnabled()Z

    move-result v5

    if-nez v5, :cond_1

    .line 194
    :cond_0
    :goto_0
    return v3

    .line 182
    :cond_1
    invoke-static {}, Lcom/android/server/AlarmManagerService;->getLogToFilePackages()[Ljava/lang/String;

    move-result-object v2

    .line 183
    .local v2, logToFilePackages:[Ljava/lang/String;
    if-nez v2, :cond_2

    move v3, v4

    .line 185
    goto :goto_0

    .line 188
    :cond_2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 190
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v5, v2

    if-ge v1, v5, :cond_0

    .line 191
    aget-object v0, v2, v1

    .line 192
    .local v0, _package:Ljava/lang/String;
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    move v3, v4

    goto :goto_0

    .line 190
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private lookForPackageLocked(Ljava/util/ArrayList;Ljava/lang/String;)Z
    .locals 2
    .parameter
    .parameter "packageName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 733
    .local p1, alarmList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 734
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AlarmManagerService$Alarm;

    iget-object v1, v1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 735
    const/4 v1, 0x1

    .line 738
    :goto_1
    return v1

    .line 733
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 738
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private final needPrintLog(Landroid/app/PendingIntent;)Z
    .locals 2
    .parameter "operation"

    .prologue
    .line 161
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 162
    :goto_0
    return v0

    :cond_0
    const-string v0, "com.android.alarmclock"

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_0
.end method

.method private removeLocked(Ljava/util/ArrayList;Landroid/app/PendingIntent;)Z
    .locals 11
    .parameter
    .parameter "operation"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;",
            "Landroid/app/PendingIntent;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, alarmList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v4, 0x0

    .line 576
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gtz v3, :cond_1

    move v1, v4

    .line 604
    :cond_0
    return v1

    .line 581
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 582
    .local v2, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/AlarmManagerService$Alarm;>;"
    const/4 v1, 0x0

    .line 583
    .local v1, hasRemoveBootRtc:Z
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 584
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    .line 585
    .local v0, alarm:Lcom/android/server/AlarmManagerService$Alarm;
    iget-object v3, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v3, p2}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v3}, Landroid/app/PendingIntent;->isCanceled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 586
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 588
    iget-boolean v3, v0, Lcom/android/server/AlarmManagerService$Alarm;->bootDevice:Z

    if-eqz v3, :cond_4

    .line 589
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mRtcBootWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 590
    const/4 v1, 0x1

    .line 593
    :cond_4
    iget-object v3, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v3}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/AlarmManagerService;->logToFileIfNeed(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 594
    iget v3, v0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    if-eqz v3, :cond_5

    iget v3, v0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    if-ne v3, v10, :cond_2

    .line 595
    :cond_5
    sget-object v3, Lcom/android/server/AlarmManagerService$LogToFileTag;->REMOVE_LOCKED_BY_OPERATION:Lcom/android/server/AlarmManagerService$LogToFileTag;

    const-string v5, "hash:%s"

    new-array v6, v8, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/server/AlarmManagerService;->logToFile(Lcom/android/server/AlarmManagerService$LogToFileTag;Ljava/lang/String;)V

    .line 596
    const-string v5, "type:%s"

    new-array v6, v8, [Ljava/lang/Object;

    iget v3, v0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    if-nez v3, :cond_6

    const-string v3, "RTC_WAKEUP"

    :goto_1
    aput-object v3, v6, v4

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Lcom/android/server/AlarmManagerService;->logToFile(Lcom/android/server/AlarmManagerService$LogToFileTag;Ljava/lang/String;)V

    .line 597
    const-string v3, "bootDevice:%b"

    new-array v5, v8, [Ljava/lang/Object;

    iget-boolean v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->bootDevice:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Lcom/android/server/AlarmManagerService;->logToFile(Lcom/android/server/AlarmManagerService$LogToFileTag;Ljava/lang/String;)V

    .line 598
    const-string v5, "%s list size:%d"

    new-array v6, v10, [Ljava/lang/Object;

    iget v3, v0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    if-nez v3, :cond_7

    const-string v3, "RTC_WAKEUP"

    :goto_2
    aput-object v3, v6, v4

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Lcom/android/server/AlarmManagerService;->logToFile(Lcom/android/server/AlarmManagerService$LogToFileTag;Ljava/lang/String;)V

    .line 599
    const-string v3, "operation:%s"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/app/PendingIntent;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Lcom/android/server/AlarmManagerService;->logToFile(Lcom/android/server/AlarmManagerService$LogToFileTag;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 596
    :cond_6
    const-string v3, "ELAPSED_REALTIME_WAKEUP"

    goto :goto_1

    .line 598
    :cond_7
    const-string v3, "ELAPSED_REALTIME_WAKEUP"

    goto :goto_2
.end method

.method private removeLocked(Ljava/util/ArrayList;Ljava/lang/String;)Z
    .locals 11
    .parameter
    .parameter "packageName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, alarmList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v4, 0x0

    .line 624
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gtz v3, :cond_1

    move v1, v4

    .line 648
    :cond_0
    return v1

    .line 629
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 630
    .local v2, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/AlarmManagerService$Alarm;>;"
    const/4 v1, 0x0

    .line 631
    .local v1, hasRemoved:Z
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 632
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    .line 633
    .local v0, alarm:Lcom/android/server/AlarmManagerService$Alarm;
    iget-object v3, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v3}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 634
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 635
    const/4 v1, 0x1

    .line 637
    iget-object v3, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v3}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/AlarmManagerService;->logToFileIfNeed(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 638
    iget v3, v0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    if-eqz v3, :cond_3

    iget v3, v0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    if-ne v3, v10, :cond_2

    .line 639
    :cond_3
    sget-object v3, Lcom/android/server/AlarmManagerService$LogToFileTag;->REMOVE_LOCKED_BY_PACKAGENAME:Lcom/android/server/AlarmManagerService$LogToFileTag;

    const-string v5, "hash:%s"

    new-array v6, v8, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/server/AlarmManagerService;->logToFile(Lcom/android/server/AlarmManagerService$LogToFileTag;Ljava/lang/String;)V

    .line 640
    const-string v3, "bootDevice:%b"

    new-array v5, v8, [Ljava/lang/Object;

    iget-boolean v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->bootDevice:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Lcom/android/server/AlarmManagerService;->logToFile(Lcom/android/server/AlarmManagerService$LogToFileTag;Ljava/lang/String;)V

    .line 641
    const-string v5, "type:%s"

    new-array v6, v8, [Ljava/lang/Object;

    iget v3, v0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    if-nez v3, :cond_4

    const-string v3, "RTC_WAKEUP"

    :goto_1
    aput-object v3, v6, v4

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Lcom/android/server/AlarmManagerService;->logToFile(Lcom/android/server/AlarmManagerService$LogToFileTag;Ljava/lang/String;)V

    .line 642
    const-string v5, "%s list size:%d"

    new-array v6, v10, [Ljava/lang/Object;

    iget v3, v0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    if-nez v3, :cond_5

    const-string v3, "RTC_WAKEUP"

    :goto_2
    aput-object v3, v6, v4

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Lcom/android/server/AlarmManagerService;->logToFile(Lcom/android/server/AlarmManagerService$LogToFileTag;Ljava/lang/String;)V

    .line 643
    const-string v3, "packageName:%s"

    new-array v5, v8, [Ljava/lang/Object;

    aput-object p2, v5, v4

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Lcom/android/server/AlarmManagerService;->logToFile(Lcom/android/server/AlarmManagerService$LogToFileTag;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 641
    :cond_4
    const-string v3, "ELAPSED_REALTIME_WAKEUP"

    goto :goto_1

    .line 642
    :cond_5
    const-string v3, "ELAPSED_REALTIME_WAKEUP"

    goto :goto_2
.end method

.method private removeUserLocked(Ljava/util/ArrayList;I)Z
    .locals 4
    .parameter
    .parameter "userHandle"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .line 667
    .local p1, alarmList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gtz v3, :cond_1

    .line 668
    const/4 v1, 0x0

    .line 682
    :cond_0
    return v1

    .line 672
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 673
    .local v2, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/AlarmManagerService$Alarm;>;"
    const/4 v1, 0x0

    .line 674
    .local v1, hasRemoved:Z
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 675
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    .line 676
    .local v0, alarm:Lcom/android/server/AlarmManagerService$Alarm;
    iget-object v3, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v3}, Landroid/app/PendingIntent;->getCreatorUid()I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    if-ne v3, p2, :cond_2

    .line 678
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 679
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private native set(IIJJ)V
.end method

.method private setBootTimeForRTC(J)Z
    .locals 8
    .parameter "triggerTime"

    .prologue
    const-wide/16 v6, 0x3c

    .line 331
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long v0, v2, v4

    .line 332
    .local v0, nowRTC:J
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-gtz v2, :cond_1

    .line 333
    const-wide/16 p1, 0x0

    .line 339
    :goto_0
    iput-wide p1, p0, Lcom/android/server/AlarmManagerService;->lastRtcBootTime:J

    .line 340
    iget v2, p0, Lcom/android/server/AlarmManagerService;->mDescriptor:I

    invoke-direct {p0, v2, p1, p2}, Lcom/android/server/AlarmManagerService;->setRTCInternal(IJ)I

    move-result v2

    iput v2, p0, Lcom/android/server/AlarmManagerService;->lastRtcSetResult:I

    .line 342
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/server/AlarmManagerService;->needPrintLog(Landroid/app/PendingIntent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 343
    const-string v2, "AlarmManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setBootTimeForRTC(), lastRtcBootTime = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/server/AlarmManagerService;->lastRtcBootTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", nowRTC = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", lastRtcSetResult = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/AlarmManagerService;->lastRtcSetResult:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    :cond_0
    const/4 v2, 0x1

    return v2

    .line 334
    :cond_1
    sub-long v2, p1, v6

    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    .line 335
    add-long p1, v0, v6

    goto :goto_0

    .line 337
    :cond_2
    sub-long/2addr p1, v6

    goto :goto_0
.end method

.method private native setKernelTimezone(II)I
.end method

.method private setLocked(Lcom/android/server/AlarmManagerService$Alarm;)V
    .locals 17
    .parameter "alarm"

    .prologue
    .line 832
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/AlarmManagerService;->mDescriptor:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_13

    .line 833
    const-wide/16 v13, 0x0

    .line 837
    .local v13, when:J
    move-object/from16 v0, p1

    iget-wide v1, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    const-wide/16 v15, 0x0

    cmp-long v1, v1, v15

    if-gez v1, :cond_2

    .line 838
    const-wide/16 v4, 0x0

    .line 839
    .local v4, alarmSeconds:J
    const-wide/16 v6, 0x0

    .line 955
    .local v6, alarmNanoseconds:J
    :goto_0
    move-object/from16 v0, p1

    iget v1, v0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    if-nez v1, :cond_10

    .line 956
    const-string v1, "AlarmManager"

    const-string v2, "set_alarm_via_jni type:%d  when:%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v3, v15

    const/4 v15, 0x1

    invoke-static {v13, v14}, Landroid/util/TimeUtils;->logTimeOfDay(J)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v3, v15

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/server/AlarmManagerService;->rtcWakeupPair:I

    .line 965
    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/AlarmManagerService;->mDescriptor:I

    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/AlarmManagerService;->set(IIJJ)V

    .line 973
    .end local v4           #alarmSeconds:J
    .end local v6           #alarmNanoseconds:J
    .end local v13           #when:J
    :cond_1
    :goto_2
    return-void

    .line 841
    .restart local v13       #when:J
    :cond_2
    invoke-static {}, Lcom/android/server/AlarmManagerService;->isAlarmTimeAlignedEnabled()Z

    move-result v1

    if-eqz v1, :cond_9

    move-object/from16 v0, p1

    iget v1, v0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    if-nez v1, :cond_9

    .line 842
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 843
    .local v11, nowRTC:J
    invoke-direct/range {p0 .. p1}, Lcom/android/server/AlarmManagerService;->isCallingByWhitelistApp(Lcom/android/server/AlarmManagerService$Alarm;)Z

    move-result v1

    if-nez v1, :cond_3

    move-object/from16 v0, p1

    iget-boolean v1, v0, Lcom/android/server/AlarmManagerService$Alarm;->bootDevice:Z

    if-eqz v1, :cond_5

    .line 844
    :cond_3
    move-object/from16 v0, p1

    iget-wide v1, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    invoke-static {v11, v12, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v13

    .line 879
    :cond_4
    :goto_3
    move-object/from16 v0, p0

    iput-wide v13, v0, Lcom/android/server/AlarmManagerService;->lastWakeupRtcTime:J

    .line 925
    .end local v11           #nowRTC:J
    :goto_4
    const-wide/16 v1, 0x3e8

    div-long v4, v13, v1

    .line 926
    .restart local v4       #alarmSeconds:J
    const-wide/16 v1, 0x3e8

    rem-long v1, v13, v1

    const-wide/16 v15, 0x3e8

    mul-long/2addr v1, v15

    const-wide/16 v15, 0x3e8

    mul-long v6, v1, v15

    .restart local v6       #alarmNanoseconds:J
    goto :goto_0

    .line 846
    .end local v4           #alarmSeconds:J
    .end local v6           #alarmNanoseconds:J
    .restart local v11       #nowRTC:J
    :cond_5
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/android/server/AlarmManagerService;->lastTriggeredRtcTime:J

    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/android/server/AlarmManagerService;->lastWakeupRtcTime:J

    cmp-long v1, v1, v15

    if-ltz v1, :cond_7

    .line 848
    move-object/from16 v0, p1

    iget-wide v1, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/android/server/AlarmManagerService;->lastTriggeredRtcTime:J

    sub-long/2addr v1, v15

    const-wide/32 v15, 0xea60

    cmp-long v1, v1, v15

    if-ltz v1, :cond_6

    .line 849
    move-object/from16 v0, p1

    iget-wide v13, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    .line 854
    :goto_5
    cmp-long v1, v13, v11

    if-gez v1, :cond_4

    .line 855
    move-wide v13, v11

    goto :goto_3

    .line 851
    :cond_6
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/android/server/AlarmManagerService;->lastTriggeredRtcTime:J

    const-wide/32 v15, 0xea60

    add-long v13, v1, v15

    goto :goto_5

    .line 859
    :cond_7
    move-object/from16 v0, p1

    iget-wide v1, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    invoke-static {v1, v2, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v13

    .line 861
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/AlarmManagerService;->rtcWakeupPair:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_8

    .line 863
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rtc-wakeup has trigger, lastWakeupRtcTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/server/AlarmManagerService;->lastWakeupRtcTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", lastTriggeredRtcTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/server/AlarmManagerService;->lastTriggeredRtcTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", currentTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", alarm = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/server/AlarmManagerService;->rtcWakeupError:Ljava/lang/String;

    .line 869
    :cond_8
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/android/server/AlarmManagerService;->lastWakeupRtcTime:J

    const-wide/16 v15, 0x7530

    add-long/2addr v15, v13

    cmp-long v1, v1, v15

    if-ltz v1, :cond_1

    .line 874
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/android/server/AlarmManagerService;->lastTriggeredRtcTime:J

    sub-long v1, v13, v1

    const-wide/32 v15, 0xea60

    cmp-long v1, v1, v15

    if-gez v1, :cond_4

    .line 875
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/android/server/AlarmManagerService;->lastTriggeredRtcTime:J

    const-wide/32 v15, 0xea60

    add-long v13, v1, v15

    goto/16 :goto_3

    .line 880
    .end local v11           #nowRTC:J
    :cond_9
    invoke-static {}, Lcom/android/server/AlarmManagerService;->isAlarmTimeAlignedEnabled()Z

    move-result v1

    if-eqz v1, :cond_f

    move-object/from16 v0, p1

    iget v1, v0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_f

    .line 881
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    .line 882
    .local v9, nowELAPSED:J
    invoke-direct/range {p0 .. p1}, Lcom/android/server/AlarmManagerService;->isCallingByWhitelistApp(Lcom/android/server/AlarmManagerService$Alarm;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 884
    move-object/from16 v0, p1

    iget-wide v1, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    invoke-static {v9, v10, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v13

    .line 919
    :cond_a
    :goto_6
    move-object/from16 v0, p0

    iput-wide v13, v0, Lcom/android/server/AlarmManagerService;->lastWakeupElapsedTime:J

    goto/16 :goto_4

    .line 887
    :cond_b
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/android/server/AlarmManagerService;->lastTriggeredElapsedTime:J

    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/android/server/AlarmManagerService;->lastWakeupElapsedTime:J

    cmp-long v1, v1, v15

    if-ltz v1, :cond_d

    .line 889
    move-object/from16 v0, p1

    iget-wide v1, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/android/server/AlarmManagerService;->lastTriggeredElapsedTime:J

    sub-long/2addr v1, v15

    const-wide/32 v15, 0xea60

    cmp-long v1, v1, v15

    if-ltz v1, :cond_c

    .line 890
    move-object/from16 v0, p1

    iget-wide v13, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    .line 895
    :goto_7
    cmp-long v1, v13, v9

    if-gez v1, :cond_a

    .line 896
    move-wide v13, v9

    goto :goto_6

    .line 892
    :cond_c
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/android/server/AlarmManagerService;->lastTriggeredElapsedTime:J

    const-wide/32 v15, 0xea60

    add-long v13, v1, v15

    goto :goto_7

    .line 900
    :cond_d
    move-object/from16 v0, p1

    iget-wide v1, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    invoke-static {v1, v2, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v13

    .line 902
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/AlarmManagerService;->elapsedWakeupPair:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_e

    .line 904
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "elapsed-wakeup has trigger, lastWakeupElapsedTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/server/AlarmManagerService;->lastWakeupElapsedTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", lastTriggeredElapsedTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/server/AlarmManagerService;->lastTriggeredElapsedTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", currentTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", alarm = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/server/AlarmManagerService;->elapsedWakeupError:Ljava/lang/String;

    .line 910
    :cond_e
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/android/server/AlarmManagerService;->lastWakeupElapsedTime:J

    const-wide/16 v15, 0x7530

    add-long/2addr v15, v13

    cmp-long v1, v1, v15

    if-ltz v1, :cond_1

    .line 914
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/android/server/AlarmManagerService;->lastTriggeredElapsedTime:J

    sub-long v1, v13, v1

    const-wide/32 v15, 0xea60

    cmp-long v1, v1, v15

    if-gez v1, :cond_a

    .line 915
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/android/server/AlarmManagerService;->lastTriggeredElapsedTime:J

    const-wide/32 v15, 0xea60

    add-long v13, v1, v15

    goto/16 :goto_6

    .line 921
    .end local v9           #nowELAPSED:J
    :cond_f
    move-object/from16 v0, p1

    iget-wide v13, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    .line 922
    move-object/from16 v0, p0

    iput-wide v13, v0, Lcom/android/server/AlarmManagerService;->lastNoneWakeupElapsedTime:J

    goto/16 :goto_4

    .line 958
    .restart local v4       #alarmSeconds:J
    .restart local v6       #alarmNanoseconds:J
    :cond_10
    move-object/from16 v0, p1

    iget v1, v0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_11

    .line 959
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/server/AlarmManagerService;->rtcPair:I

    goto/16 :goto_1

    .line 960
    :cond_11
    move-object/from16 v0, p1

    iget v1, v0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_12

    .line 961
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/server/AlarmManagerService;->elapsedWakeupPair:I

    goto/16 :goto_1

    .line 962
    :cond_12
    move-object/from16 v0, p1

    iget v1, v0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 963
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/server/AlarmManagerService;->elapsedPair:I

    goto/16 :goto_1

    .line 967
    .end local v4           #alarmSeconds:J
    .end local v6           #alarmNanoseconds:J
    .end local v13           #when:J
    :cond_13
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v8

    .line 968
    .local v8, msg:Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v8, Landroid/os/Message;->what:I

    .line 970
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 971
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    move-object/from16 v0, p1

    iget-wide v2, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    invoke-virtual {v1, v8, v2, v3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    goto/16 :goto_2
.end method

.method private setLockedBootTime(Z)Z
    .locals 14
    .parameter "shutDown"

    .prologue
    const-wide/16 v12, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-wide/16 v10, 0x3e8

    .line 276
    iget-object v6, p0, Lcom/android/server/AlarmManagerService;->mRtcBootWakeupAlarms:Ljava/util/ArrayList;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/server/AlarmManagerService;->mRtcBootWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_2

    .line 277
    :cond_0
    invoke-direct {p0, v12, v13}, Lcom/android/server/AlarmManagerService;->setBootTimeForRTC(J)Z

    .line 322
    :cond_1
    :goto_0
    return v4

    .line 280
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 281
    .local v2, nowTime:J
    iget-object v6, p0, Lcom/android/server/AlarmManagerService;->mRtcBootWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 282
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/AlarmManagerService$Alarm;>;"
    if-nez p1, :cond_5

    .line 283
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 284
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    .line 285
    .local v0, alarm:Lcom/android/server/AlarmManagerService$Alarm;
    iget-wide v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    cmp-long v6, v6, v2

    if-gez v6, :cond_3

    .line 286
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 287
    iput-boolean v5, v0, Lcom/android/server/AlarmManagerService$Alarm;->bootDevice:Z

    goto :goto_1

    .line 289
    :cond_3
    iget-wide v5, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    div-long/2addr v5, v10

    invoke-direct {p0, v5, v6}, Lcom/android/server/AlarmManagerService;->setBootTimeForRTC(J)Z

    .line 293
    .end local v0           #alarm:Lcom/android/server/AlarmManagerService$Alarm;
    :cond_4
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mRtcBootWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_1

    .line 294
    invoke-direct {p0, v12, v13}, Lcom/android/server/AlarmManagerService;->setBootTimeForRTC(J)Z

    goto :goto_0

    .line 297
    :cond_5
    if-eqz p1, :cond_9

    iget-wide v6, p0, Lcom/android/server/AlarmManagerService;->lastRtcBootTime:J

    div-long v8, v2, v10

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x78

    cmp-long v6, v6, v8

    if-gez v6, :cond_9

    .line 300
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 301
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    .line 302
    .restart local v0       #alarm:Lcom/android/server/AlarmManagerService$Alarm;
    iget-wide v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    cmp-long v6, v6, v2

    if-gez v6, :cond_6

    .line 304
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 305
    iput-boolean v5, v0, Lcom/android/server/AlarmManagerService$Alarm;->bootDevice:Z

    goto :goto_2

    .line 306
    :cond_6
    iget-wide v5, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    const-wide/32 v7, 0x1d4c0

    add-long/2addr v7, v2

    cmp-long v5, v5, v7

    if-gez v5, :cond_8

    .line 308
    div-long v5, v2, v10

    const-wide/16 v7, 0x3c

    add-long/2addr v5, v7

    iput-wide v5, p0, Lcom/android/server/AlarmManagerService;->lastRtcBootTime:J

    .line 309
    iget v5, p0, Lcom/android/server/AlarmManagerService;->mDescriptor:I

    iget-wide v6, p0, Lcom/android/server/AlarmManagerService;->lastRtcBootTime:J

    invoke-direct {p0, v5, v6, v7}, Lcom/android/server/AlarmManagerService;->setRTCInternal(IJ)I

    move-result v5

    iput v5, p0, Lcom/android/server/AlarmManagerService;->lastRtcSetResult:I

    .line 317
    .end local v0           #alarm:Lcom/android/server/AlarmManagerService$Alarm;
    :cond_7
    :goto_3
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mRtcBootWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_1

    .line 318
    invoke-direct {p0, v12, v13}, Lcom/android/server/AlarmManagerService;->setBootTimeForRTC(J)Z

    goto/16 :goto_0

    .line 313
    .restart local v0       #alarm:Lcom/android/server/AlarmManagerService$Alarm;
    :cond_8
    iget-wide v5, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    div-long/2addr v5, v10

    invoke-direct {p0, v5, v6}, Lcom/android/server/AlarmManagerService;->setBootTimeForRTC(J)Z

    goto :goto_3

    .end local v0           #alarm:Lcom/android/server/AlarmManagerService$Alarm;
    :cond_9
    move v4, v5

    .line 322
    goto/16 :goto_0
.end method

.method private native setRTCInternal(IJ)I
.end method

.method private triggerAlarmsLocked(Ljava/util/ArrayList;Ljava/util/ArrayList;JZ)V
    .locals 20
    .parameter
    .parameter
    .parameter "now"
    .parameter "alignTriggerAlarm"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;JZ)V"
        }
    .end annotation

    .prologue
    .line 1096
    .local p1, alarmList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    .local p2, triggerList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 1097
    .local v10, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/AlarmManagerService$Alarm;>;"
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 1098
    .local v12, repeats:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    const/4 v11, 0x0

    .line 1099
    .local v11, needResetBootAlarm:Z
    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 1101
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AlarmManagerService$Alarm;

    .line 1103
    .local v3, alarm:Lcom/android/server/AlarmManagerService$Alarm;
    iget-object v14, v3, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/AlarmManagerService;->needPrintLog(Landroid/app/PendingIntent;)Z

    move-result v14

    if-eqz v14, :cond_1

    const-string v14, "AlarmManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Checking active alarm when="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-wide v0, v3, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    move-wide/from16 v16, v0

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1105
    :cond_1
    iget-wide v14, v3, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    cmp-long v14, v14, p3

    if-lez v14, :cond_3

    if-eqz p5, :cond_2

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/AlarmManagerService;->isCallingByWhitelistApp(Lcom/android/server/AlarmManagerService$Alarm;)Z

    move-result v14

    if-nez v14, :cond_2

    iget-wide v14, v3, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    sub-long v14, v14, p3

    const-wide/16 v16, 0x7530

    cmp-long v14, v14, v16

    if-lez v14, :cond_3

    .line 1149
    .end local v3           #alarm:Lcom/android/server/AlarmManagerService$Alarm;
    :cond_2
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 1150
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_a

    .line 1151
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AlarmManagerService$Alarm;

    .line 1152
    .restart local v3       #alarm:Lcom/android/server/AlarmManagerService$Alarm;
    iget-wide v14, v3, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    iget v0, v3, Lcom/android/server/AlarmManagerService$Alarm;->count:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    iget-wide v0, v3, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    move-wide/from16 v18, v0

    mul-long v16, v16, v18

    add-long v14, v14, v16

    iput-wide v14, v3, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    .line 1153
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/AlarmManagerService;->addAlarmLocked(Lcom/android/server/AlarmManagerService$Alarm;)[I

    goto :goto_1

    .line 1114
    :cond_3
    iget-object v14, v3, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/AlarmManagerService;->needPrintLog(Landroid/app/PendingIntent;)Z

    move-result v14

    if-eqz v14, :cond_4

    iget-wide v14, v3, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    sub-long v14, p3, v14

    const-wide/16 v16, 0x2710

    cmp-long v14, v14, v16

    if-lez v14, :cond_4

    .line 1115
    const-string v14, "AlarmManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "alarm is late! alarm time: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-wide v0, v3, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    move-wide/from16 v16, v0

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " now: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-wide/from16 v0, p3

    invoke-virtual {v15, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " delay (in seconds): "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-wide v0, v3, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    move-wide/from16 v16, v0

    sub-long v16, p3, v16

    const-wide/16 v18, 0x3e8

    div-long v16, v16, v18

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1122
    :cond_4
    iget-object v14, v3, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/AlarmManagerService;->needPrintLog(Landroid/app/PendingIntent;)Z

    move-result v14

    if-eqz v14, :cond_5

    const-string v14, "AlarmManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Alarm triggering: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1123
    :cond_5
    const/4 v14, 0x1

    iput v14, v3, Lcom/android/server/AlarmManagerService$Alarm;->count:I

    .line 1124
    iget-wide v14, v3, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-lez v14, :cond_6

    .line 1126
    iget-wide v14, v3, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    sub-long v4, p3, v14

    .line 1127
    .local v4, delaySkew:J
    const-wide/16 v14, 0x0

    cmp-long v14, v4, v14

    if-lez v14, :cond_6

    .line 1130
    iget v14, v3, Lcom/android/server/AlarmManagerService$Alarm;->count:I

    int-to-long v14, v14

    iget-wide v0, v3, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    move-wide/from16 v16, v0

    div-long v16, v4, v16

    add-long v14, v14, v16

    long-to-int v14, v14

    iput v14, v3, Lcom/android/server/AlarmManagerService$Alarm;->count:I

    .line 1133
    .end local v4           #delaySkew:J
    :cond_6
    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1136
    invoke-interface {v10}, Ljava/util/Iterator;->remove()V

    .line 1138
    iget-boolean v14, v3, Lcom/android/server/AlarmManagerService$Alarm;->bootDevice:Z

    if-eqz v14, :cond_8

    .line 1139
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/AlarmManagerService;->mRtcBootWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_7

    if-eqz v11, :cond_9

    :cond_7
    const/4 v11, 0x1

    .line 1143
    :cond_8
    :goto_2
    iget-wide v14, v3, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-lez v14, :cond_0

    .line 1144
    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1139
    :cond_9
    const/4 v11, 0x0

    goto :goto_2

    .line 1156
    .end local v3           #alarm:Lcom/android/server/AlarmManagerService$Alarm;
    :cond_a
    if-eqz v11, :cond_b

    .line 1157
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/AlarmManagerService;->setLockedBootTime(Z)Z

    .line 1160
    :cond_b
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 1161
    .local v13, size:I
    if-lez v13, :cond_c

    .line 1162
    if-eqz p5, :cond_13

    const/4 v14, 0x1

    if-le v13, v14, :cond_13

    .line 1163
    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/AlarmManagerService$Alarm;

    .line 1164
    .local v8, firstAlarm:Lcom/android/server/AlarmManagerService$Alarm;
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/server/AlarmManagerService;->isCallingByWhitelistApp(Lcom/android/server/AlarmManagerService$Alarm;)Z

    move-result v14

    if-eqz v14, :cond_d

    .line 1165
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/server/AlarmManagerService;->setLocked(Lcom/android/server/AlarmManagerService$Alarm;)V

    .line 1197
    .end local v8           #firstAlarm:Lcom/android/server/AlarmManagerService$Alarm;
    :cond_c
    :goto_3
    return-void

    .line 1169
    .restart local v8       #firstAlarm:Lcom/android/server/AlarmManagerService$Alarm;
    :cond_d
    const/4 v9, 0x1

    .line 1170
    .local v9, i:I
    :goto_4
    if-ge v9, v13, :cond_e

    .line 1171
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AlarmManagerService$Alarm;

    .line 1172
    .local v2, a:Lcom/android/server/AlarmManagerService$Alarm;
    iget-wide v14, v2, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    iget-wide v0, v8, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    move-wide/from16 v16, v0

    sub-long v14, v14, v16

    const-wide/32 v16, 0xea60

    cmp-long v14, v14, v16

    if-lez v14, :cond_10

    .line 1173
    add-int/lit8 v9, v9, -0x1

    .line 1183
    .end local v2           #a:Lcom/android/server/AlarmManagerService$Alarm;
    :cond_e
    if-lez v9, :cond_12

    .line 1184
    if-ne v9, v13, :cond_f

    add-int/lit8 v9, v9, -0x1

    .line 1185
    :cond_f
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/AlarmManagerService$Alarm;

    iget-wide v14, v14, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    iget-wide v0, v8, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    move-wide/from16 v16, v0

    add-long v14, v14, v16

    const-wide/16 v16, 0x2

    div-long v14, v14, v16

    const-wide/16 v16, 0x1

    add-long v6, v14, v16

    .line 1186
    .local v6, desireTriggerTime:J
    new-instance v3, Lcom/android/server/AlarmManagerService$Alarm;

    invoke-direct {v3}, Lcom/android/server/AlarmManagerService$Alarm;-><init>()V

    .line 1187
    .restart local v3       #alarm:Lcom/android/server/AlarmManagerService$Alarm;
    iget v14, v8, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    iput v14, v3, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    .line 1188
    iput-wide v6, v3, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    .line 1189
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/AlarmManagerService;->setLocked(Lcom/android/server/AlarmManagerService$Alarm;)V

    goto :goto_3

    .line 1176
    .end local v3           #alarm:Lcom/android/server/AlarmManagerService$Alarm;
    .end local v6           #desireTriggerTime:J
    .restart local v2       #a:Lcom/android/server/AlarmManagerService$Alarm;
    :cond_10
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/AlarmManagerService;->isCallingByWhitelistApp(Lcom/android/server/AlarmManagerService$Alarm;)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 1177
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/AlarmManagerService;->setLocked(Lcom/android/server/AlarmManagerService$Alarm;)V

    goto :goto_3

    .line 1170
    :cond_11
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 1191
    .end local v2           #a:Lcom/android/server/AlarmManagerService$Alarm;
    :cond_12
    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/AlarmManagerService$Alarm;

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/AlarmManagerService;->setLocked(Lcom/android/server/AlarmManagerService$Alarm;)V

    goto :goto_3

    .line 1194
    .end local v8           #firstAlarm:Lcom/android/server/AlarmManagerService$Alarm;
    .end local v9           #i:I
    :cond_13
    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/AlarmManagerService$Alarm;

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/AlarmManagerService;->setLocked(Lcom/android/server/AlarmManagerService$Alarm;)V

    goto :goto_3
.end method

.method private native waitForAlarm(I)I
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 17
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 977
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/AlarmManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.DUMP"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 979
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Permission Denial: can\'t dump AlarmManager from from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1073
    :goto_0
    return-void

    .line 985
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v14

    .line 986
    :try_start_0
    const-string v1, "Current Alarm Manager state:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 987
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/AlarmManagerService;->mRtcWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/AlarmManagerService;->mRtcAlarms:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 988
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 989
    .local v5, now:J
    new-instance v13, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v13, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 990
    .local v13, sdf:Ljava/text/SimpleDateFormat;
    const-string v1, " "

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 991
    const-string v1, "  Realtime wakeup (now="

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 992
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v13, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 993
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", boot phone time: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long v3, v5, v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v13, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "):"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 994
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/AlarmManagerService;->mRtcWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 995
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService;->mRtcWakeupAlarms:Ljava/util/ArrayList;

    const-string v3, "  "

    const-string v4, "RTC_WAKEUP"

    const/4 v7, 0x1

    move-object/from16 v1, p2

    invoke-static/range {v1 .. v7}, Lcom/android/server/AlarmManagerService;->dumpAlarmList(Ljava/io/PrintWriter;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 997
    :cond_2
    const-string v1, " "

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 998
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/AlarmManagerService;->mRtcAlarms:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 999
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService;->mRtcAlarms:Ljava/util/ArrayList;

    const-string v3, "  "

    const-string v4, "RTC"

    const/4 v7, 0x1

    move-object/from16 v1, p2

    invoke-static/range {v1 .. v7}, Lcom/android/server/AlarmManagerService;->dumpAlarmList(Ljava/io/PrintWriter;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 1002
    .end local v5           #now:J
    .end local v13           #sdf:Ljava/text/SimpleDateFormat;
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/AlarmManagerService;->mElapsedRealtimeWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/AlarmManagerService;->mElapsedRealtimeAlarms:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_6

    .line 1003
    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 1004
    .restart local v5       #now:J
    const-string v1, " "

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1005
    const-string v1, "  Elapsed realtime wakeup (now="

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1006
    move-object/from16 v0, p2

    invoke-static {v5, v6, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    const-string v1, "):"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1007
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/AlarmManagerService;->mElapsedRealtimeWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_5

    .line 1008
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService;->mElapsedRealtimeWakeupAlarms:Ljava/util/ArrayList;

    const-string v3, "  "

    const-string v4, "ELAPSED_WAKEUP"

    const/4 v7, 0x0

    move-object/from16 v1, p2

    invoke-static/range {v1 .. v7}, Lcom/android/server/AlarmManagerService;->dumpAlarmList(Ljava/io/PrintWriter;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 1010
    :cond_5
    const-string v1, " "

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1011
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/AlarmManagerService;->mElapsedRealtimeAlarms:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_6

    .line 1012
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService;->mElapsedRealtimeAlarms:Ljava/util/ArrayList;

    const-string v3, "  "

    const-string v4, "ELAPSED"

    const/4 v7, 0x0

    move-object/from16 v1, p2

    invoke-static/range {v1 .. v7}, Lcom/android/server/AlarmManagerService;->dumpAlarmList(Ljava/io/PrintWriter;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 1017
    .end local v5           #now:J
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/AlarmManagerService;->mRtcBootWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_7

    .line 1018
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 1019
    .restart local v5       #now:J
    new-instance v13, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v13, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1020
    .restart local v13       #sdf:Ljava/text/SimpleDateFormat;
    const-string v1, " "

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1021
    const-string v1, "  RTC_BOOT_WAKEUP wakeup (now="

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1022
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v13, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "):"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1023
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/AlarmManagerService;->mRtcBootWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_7

    .line 1024
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService;->mRtcBootWakeupAlarms:Ljava/util/ArrayList;

    const-string v3, "  "

    const-string v4, "RTC_BOOT_WAKEUP"

    const/4 v7, 0x1

    move-object/from16 v1, p2

    invoke-static/range {v1 .. v7}, Lcom/android/server/AlarmManagerService;->dumpAlarmList(Ljava/io/PrintWriter;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 1030
    .end local v5           #now:J
    .end local v13           #sdf:Ljava/text/SimpleDateFormat;
    :cond_7
    const-string v1, " "

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1031
    const-string v1, "  set alarm seconds for bsp: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1032
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  RTC_WAKEUP, lastWakeupRtcTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/server/AlarmManagerService;->lastWakeupRtcTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", lastWakeupRtcTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/server/AlarmManagerService;->lastWakeupRtcTime:J

    invoke-static {v2, v3}, Lcom/android/server/AlarmManagerService;->getRTCTimeString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", triggerTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/server/AlarmManagerService;->lastTriggeredRtcTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", triggerTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/server/AlarmManagerService;->lastTriggeredRtcTime:J

    invoke-static {v2, v3}, Lcom/android/server/AlarmManagerService;->getRTCTimeString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1036
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  ELAPSED_WAKEUP, lastWakeupElapsedTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/server/AlarmManagerService;->lastWakeupElapsedTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", wakeupRtcTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v15

    sub-long/2addr v2, v15

    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/android/server/AlarmManagerService;->lastWakeupElapsedTime:J

    add-long/2addr v2, v15

    invoke-static {v2, v3}, Lcom/android/server/AlarmManagerService;->getRTCTimeString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", triggerTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/server/AlarmManagerService;->lastTriggeredElapsedTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", triggerRtcTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v15

    sub-long/2addr v2, v15

    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/android/server/AlarmManagerService;->lastTriggeredElapsedTime:J

    add-long/2addr v2, v15

    invoke-static {v2, v3}, Lcom/android/server/AlarmManagerService;->getRTCTimeString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1040
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/android/server/AlarmManagerService;->lastRtcBootTime:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_9

    .line 1041
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  RTC_BOOT_WAKEUP, setLockedTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/server/AlarmManagerService;->lastRtcBootTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", bootTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/server/AlarmManagerService;->lastRtcBootTime:J

    const-wide/16 v15, 0x3e8

    mul-long/2addr v2, v15

    invoke-static {v2, v3}, Lcom/android/server/AlarmManagerService;->getRTCTimeString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", lastRtcSetResult = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/AlarmManagerService;->lastRtcSetResult:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1047
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  triggerFlags, rtcWakeupPair = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/AlarmManagerService;->rtcWakeupPair:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", rtcPair = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/AlarmManagerService;->rtcPair:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", elapsedWakeupPair = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/AlarmManagerService;->elapsedWakeupPair:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", elapsedPair = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/AlarmManagerService;->elapsedPair:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1049
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  RTC_WAKEUP_error, rtcWakeupError: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService;->rtcWakeupError:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1050
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  ELAPSED_WAKEUP_error, elapsedWakeupError: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService;->elapsedWakeupError:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1053
    const-string v1, " "

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1054
    const-string v1, "  Broadcast ref count: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 1056
    const-string v1, " "

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1057
    const-string v1, "  Alarm Stats:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1058
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_8
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 1059
    .local v8, be:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/AlarmManagerService$BroadcastStats;

    .line 1060
    .local v9, bs:Lcom/android/server/AlarmManagerService$BroadcastStats;
    const-string v1, "  "

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1061
    const-string v1, "    "

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v1, v9, Lcom/android/server/AlarmManagerService$BroadcastStats;->aggregateTime:J

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 1062
    const-string v1, "ms running, "

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, v9, Lcom/android/server/AlarmManagerService$BroadcastStats;->numWakeup:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 1063
    const-string v1, " wakeups"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1065
    iget-object v1, v9, Lcom/android/server/AlarmManagerService$BroadcastStats;->filterStats:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 1066
    .local v10, fe:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Landroid/content/Intent$FilterComparison;Lcom/android/server/AlarmManagerService$FilterStats;>;"
    const-string v1, "    "

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AlarmManagerService$FilterStats;

    iget v1, v1, Lcom/android/server/AlarmManagerService$FilterStats;->count:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 1067
    const-string v1, " alarms: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1068
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent$FilterComparison;

    invoke-virtual {v1}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v7, 0x1

    invoke-virtual {v1, v2, v3, v4, v7}, Landroid/content/Intent;->toShortString(ZZZZ)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 1072
    .end local v8           #be:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    .end local v9           #bs:Lcom/android/server/AlarmManagerService$BroadcastStats;
    .end local v10           #fe:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Landroid/content/Intent$FilterComparison;Lcom/android/server/AlarmManagerService$FilterStats;>;"
    .end local v12           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v1

    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1045
    :cond_9
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  RTC_BOOT_WAKEUP, setLockedTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/server/AlarmManagerService;->lastRtcBootTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1072
    :cond_a
    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 256
    :try_start_0
    iget v0, p0, Lcom/android/server/AlarmManagerService;->mDescriptor:I

    invoke-direct {p0, v0}, Lcom/android/server/AlarmManagerService;->close(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 258
    invoke-super {p0}, Landroid/os/Binder;->finalize()V

    .line 260
    return-void

    .line 258
    :catchall_0
    move-exception v0

    invoke-super {p0}, Landroid/os/Binder;->finalize()V

    throw v0
.end method

.method public lookForPackageLocked(Ljava/lang/String;)Z
    .locals 1
    .parameter "packageName"

    .prologue
    .line 725
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mRtcWakeupAlarms:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/android/server/AlarmManagerService;->lookForPackageLocked(Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mRtcAlarms:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/android/server/AlarmManagerService;->lookForPackageLocked(Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mElapsedRealtimeWakeupAlarms:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/android/server/AlarmManagerService;->lookForPackageLocked(Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mElapsedRealtimeAlarms:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/android/server/AlarmManagerService;->lookForPackageLocked(Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mRtcBootWakeupAlarms:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/android/server/AlarmManagerService;->lookForPackageLocked(Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public performPowerKeyClick()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 713
    iget-boolean v2, p0, Lcom/android/server/AlarmManagerService;->mInterceptPowerKey:Z

    if-eqz v2, :cond_1

    .line 714
    iget-boolean v2, p0, Lcom/android/server/AlarmManagerService;->mInterceptPowerKeyLocer:Z

    if-nez v2, :cond_0

    .line 715
    new-instance v0, Landroid/content/Intent;

    const-string v2, "alarmclock.intent.action.POWERKEY_CLICK"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 716
    .local v0, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 717
    iput-boolean v1, p0, Lcom/android/server/AlarmManagerService;->mInterceptPowerKey:Z

    .line 719
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    const/4 v1, 0x1

    .line 721
    :cond_1
    return v1
.end method

.method public remove(Landroid/app/PendingIntent;)V
    .locals 2
    .parameter "operation"

    .prologue
    .line 555
    if-nez p1, :cond_0

    .line 561
    :goto_0
    return-void

    .line 558
    :cond_0
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 559
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/AlarmManagerService;->removeLocked(Landroid/app/PendingIntent;)V

    .line 560
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeLocked(Landroid/app/PendingIntent;)V
    .locals 4
    .parameter "operation"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 564
    const/4 v0, 0x0

    .line 565
    .local v0, hasRemoveBootRtc:Z
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mRtcWakeupAlarms:Ljava/util/ArrayList;

    invoke-direct {p0, v3, p1}, Lcom/android/server/AlarmManagerService;->removeLocked(Ljava/util/ArrayList;Landroid/app/PendingIntent;)Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz v0, :cond_3

    :cond_0
    move v0, v2

    .line 566
    :goto_0
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mRtcAlarms:Ljava/util/ArrayList;

    invoke-direct {p0, v3, p1}, Lcom/android/server/AlarmManagerService;->removeLocked(Ljava/util/ArrayList;Landroid/app/PendingIntent;)Z

    move-result v3

    if-nez v3, :cond_1

    if-eqz v0, :cond_4

    :cond_1
    move v0, v2

    .line 567
    :goto_1
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mElapsedRealtimeWakeupAlarms:Ljava/util/ArrayList;

    invoke-direct {p0, v2, p1}, Lcom/android/server/AlarmManagerService;->removeLocked(Ljava/util/ArrayList;Landroid/app/PendingIntent;)Z

    .line 568
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mElapsedRealtimeAlarms:Ljava/util/ArrayList;

    invoke-direct {p0, v2, p1}, Lcom/android/server/AlarmManagerService;->removeLocked(Ljava/util/ArrayList;Landroid/app/PendingIntent;)Z

    .line 570
    if-eqz v0, :cond_2

    .line 571
    invoke-direct {p0, v1}, Lcom/android/server/AlarmManagerService;->setLockedBootTime(Z)Z

    .line 573
    :cond_2
    return-void

    :cond_3
    move v0, v1

    .line 565
    goto :goto_0

    :cond_4
    move v0, v1

    .line 566
    goto :goto_1
.end method

.method public removeLocked(Ljava/lang/String;)V
    .locals 1
    .parameter "packageName"

    .prologue
    .line 612
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mRtcWakeupAlarms:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/android/server/AlarmManagerService;->removeLocked(Ljava/util/ArrayList;Ljava/lang/String;)Z

    .line 613
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mRtcAlarms:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/android/server/AlarmManagerService;->removeLocked(Ljava/util/ArrayList;Ljava/lang/String;)Z

    .line 614
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mElapsedRealtimeWakeupAlarms:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/android/server/AlarmManagerService;->removeLocked(Ljava/util/ArrayList;Ljava/lang/String;)Z

    .line 615
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mElapsedRealtimeAlarms:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/android/server/AlarmManagerService;->removeLocked(Ljava/util/ArrayList;Ljava/lang/String;)Z

    .line 617
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mRtcBootWakeupAlarms:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/android/server/AlarmManagerService;->removeLocked(Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 618
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/AlarmManagerService;->setLockedBootTime(Z)Z

    .line 620
    :cond_0
    return-void
.end method

.method public removeUserLocked(I)V
    .locals 1
    .parameter "userHandle"

    .prologue
    .line 656
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mRtcWakeupAlarms:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/android/server/AlarmManagerService;->removeUserLocked(Ljava/util/ArrayList;I)Z

    .line 657
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mRtcAlarms:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/android/server/AlarmManagerService;->removeUserLocked(Ljava/util/ArrayList;I)Z

    .line 658
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mElapsedRealtimeWakeupAlarms:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/android/server/AlarmManagerService;->removeUserLocked(Ljava/util/ArrayList;I)Z

    .line 659
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mElapsedRealtimeAlarms:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/android/server/AlarmManagerService;->removeUserLocked(Ljava/util/ArrayList;I)Z

    .line 661
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mRtcBootWakeupAlarms:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/android/server/AlarmManagerService;->removeUserLocked(Ljava/util/ArrayList;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 662
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/AlarmManagerService;->setLockedBootTime(Z)Z

    .line 664
    :cond_0
    return-void
.end method

.method public set(IJLandroid/app/PendingIntent;)V
    .locals 7
    .parameter "type"
    .parameter "triggerAtTime"
    .parameter "operation"

    .prologue
    .line 263
    const-wide/16 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/AlarmManagerService;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 264
    return-void
.end method

.method public setInexactRepeating(IJJLandroid/app/PendingIntent;)V
    .locals 14
    .parameter "type"
    .parameter "triggerAtTime"
    .parameter "interval"
    .parameter "operation"

    .prologue
    .line 452
    if-nez p6, :cond_0

    .line 453
    const-string v2, "AlarmManager"

    const-string v3, "setInexactRepeating ignored because there is no intent"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    :goto_0
    return-void

    .line 457
    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v2, p4, v2

    if-gtz v2, :cond_1

    .line 458
    const-string v2, "AlarmManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setInexactRepeating ignored because interval "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p4

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " is invalid"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 464
    :cond_1
    const-wide/32 v2, 0xdbba0

    rem-long v2, p4, v2

    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-eqz v2, :cond_3

    .line 465
    move-object/from16 v0, p6

    invoke-direct {p0, v0}, Lcom/android/server/AlarmManagerService;->needPrintLog(Landroid/app/PendingIntent;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "AlarmManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Interval "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p4

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " not a quantum multiple"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    :cond_2
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/AlarmManagerService;->setRepeating(IJJLandroid/app/PendingIntent;)V

    goto :goto_0

    .line 472
    :cond_3
    const/4 v2, 0x1

    if-eq p1, v2, :cond_4

    if-nez p1, :cond_6

    :cond_4
    const/4 v9, 0x1

    .line 473
    .local v9, isRtc:Z
    :goto_1
    if-eqz v9, :cond_7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v12, v2, v6

    .line 480
    .local v12, skew:J
    :goto_2
    sub-long v2, p2, v12

    const-wide/32 v6, 0xdbba0

    rem-long v10, v2, v6

    .line 481
    .local v10, offset:J
    const-wide/16 v2, 0x0

    cmp-long v2, v10, v2

    if-eqz v2, :cond_8

    .line 482
    sub-long v2, p2, v10

    const-wide/32 v6, 0xdbba0

    add-long v4, v2, v6

    .line 488
    .local v4, adjustedTriggerTime:J
    :goto_3
    move-object/from16 v0, p6

    invoke-direct {p0, v0}, Lcom/android/server/AlarmManagerService;->needPrintLog(Landroid/app/PendingIntent;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "AlarmManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setInexactRepeating: type="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " interval="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p4

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " trigger="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " orig="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p2

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    move-object v2, p0

    move v3, p1

    move-wide/from16 v6, p4

    move-object/from16 v8, p6

    .line 490
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/AlarmManagerService;->setRepeating(IJJLandroid/app/PendingIntent;)V

    goto/16 :goto_0

    .line 472
    .end local v4           #adjustedTriggerTime:J
    .end local v9           #isRtc:Z
    .end local v10           #offset:J
    .end local v12           #skew:J
    :cond_6
    const/4 v9, 0x0

    goto :goto_1

    .line 473
    .restart local v9       #isRtc:Z
    :cond_7
    const-wide/16 v12, 0x0

    goto :goto_2

    .line 484
    .restart local v10       #offset:J
    .restart local v12       #skew:J
    :cond_8
    move-wide/from16 v4, p2

    .restart local v4       #adjustedTriggerTime:J
    goto :goto_3
.end method

.method public setInterceptPowerKey(Z)V
    .locals 4
    .parameter "intercept"

    .prologue
    .line 690
    iput-boolean p1, p0, Lcom/android/server/AlarmManagerService;->mInterceptPowerKey:Z

    .line 691
    if-eqz p1, :cond_0

    .line 692
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/AlarmManagerService;->mInterceptPowerKeyLocer:Z

    .line 693
    new-instance v0, Lcom/android/server/AlarmManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/AlarmManagerService$1;-><init>(Lcom/android/server/AlarmManagerService;)V

    .line 700
    .local v0, t:Ljava/util/TimerTask;
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    .line 701
    .local v1, timer:Ljava/util/Timer;
    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v0, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 705
    .end local v0           #t:Ljava/util/TimerTask;
    .end local v1           #timer:Ljava/util/Timer;
    :goto_0
    return-void

    .line 703
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/AlarmManagerService;->mInterceptPowerKeyLocer:Z

    goto :goto_0
.end method

.method public setLocale(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "region"
    .parameter "codepage"

    .prologue
    .line 544
    monitor-enter p0

    .line 545
    :try_start_0
    const-string v1, "persist.sys.meizu.region"

    invoke-static {v1, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    const-string v1, "persist.sys.meizu.codepage"

    invoke-static {v1, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 549
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEIZU_CODEPAGE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 550
    .local v0, i:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 551
    return-void

    .line 547
    .end local v0           #i:Landroid/content/Intent;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setRepeating(IJJLandroid/app/PendingIntent;)V
    .locals 11
    .parameter "type"
    .parameter "triggerAtTime"
    .parameter "interval"
    .parameter "operation"

    .prologue
    .line 357
    if-nez p6, :cond_0

    .line 358
    const-string v3, "AlarmManager"

    const-string v4, "set/setRepeating ignored because there is no intent"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    :goto_0
    return-void

    .line 361
    :cond_0
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 362
    :try_start_0
    new-instance v1, Lcom/android/server/AlarmManagerService$Alarm;

    invoke-direct {v1}, Lcom/android/server/AlarmManagerService$Alarm;-><init>()V

    .line 364
    .local v1, alarm:Lcom/android/server/AlarmManagerService$Alarm;
    const/4 v3, 0x5

    if-ne p1, v3, :cond_7

    .line 365
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.MEIZU_BOOT_ALARM"

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    const/4 v3, 0x1

    iput v3, v1, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    .line 367
    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/android/server/AlarmManagerService$Alarm;->bootDevice:Z

    .line 375
    :goto_1
    iput-wide p2, v1, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    .line 376
    iput-wide p4, v1, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    .line 377
    move-object/from16 v0, p6

    iput-object v0, v1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    .line 378
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    iput v3, v1, Lcom/android/server/AlarmManagerService$Alarm;->callingUid:I

    .line 380
    iget-boolean v3, v1, Lcom/android/server/AlarmManagerService$Alarm;->bootDevice:Z

    if-eqz v3, :cond_1

    iget-wide v5, v1, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    if-eqz v3, :cond_1

    .line 381
    const-wide/16 v5, 0x0

    iput-wide v5, v1, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    .line 382
    const-string v3, "AlarmManager"

    const-string v5, "setRepeating ignored repeatInterval time, because boot alarm is can\'t repeat"

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    :cond_1
    iget-object v3, v1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v3}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/AlarmManagerService;->logToFileIfNeed(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 387
    if-eqz p1, :cond_2

    const/4 v3, 0x2

    if-ne p1, v3, :cond_3

    .line 388
    :cond_2
    if-nez p1, :cond_9

    .line 389
    iget v3, p0, Lcom/android/server/AlarmManagerService;->setRepeating_count_rtc_wakeup:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/AlarmManagerService;->setRepeating_count_rtc_wakeup:I

    .line 393
    :goto_2
    sget-object v3, Lcom/android/server/AlarmManagerService$LogToFileTag;->SET_REPEAT:Lcom/android/server/AlarmManagerService$LogToFileTag;

    const-string v5, "hash:%s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/server/AlarmManagerService;->logToFile(Lcom/android/server/AlarmManagerService$LogToFileTag;Ljava/lang/String;)V

    .line 394
    const/4 v5, 0x0

    const-string v6, "type:%s\tcount%d"

    const/4 v3, 0x2

    new-array v7, v3, [Ljava/lang/Object;

    const/4 v8, 0x0

    if-nez p1, :cond_a

    const-string v3, "RTC_WAKEUP"

    :goto_3
    aput-object v3, v7, v8

    const/4 v8, 0x1

    if-nez p1, :cond_b

    iget v3, p0, Lcom/android/server/AlarmManagerService;->setRepeating_count_rtc_wakeup:I

    :goto_4
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/android/server/AlarmManagerService;->logToFile(Lcom/android/server/AlarmManagerService$LogToFileTag;Ljava/lang/String;)V

    .line 395
    const/4 v5, 0x0

    const-string v6, "when:%s"

    const/4 v3, 0x1

    new-array v7, v3, [Ljava/lang/Object;

    const/4 v8, 0x0

    if-nez p1, :cond_c

    iget-wide v9, v1, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    invoke-static {v9, v10}, Lcom/android/server/AlarmManagerService;->getRTCTimeString(J)Ljava/lang/String;

    move-result-object v3

    :goto_5
    aput-object v3, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/android/server/AlarmManagerService;->logToFile(Lcom/android/server/AlarmManagerService$LogToFileTag;Ljava/lang/String;)V

    .line 396
    const/4 v3, 0x0

    const-string v5, "bootDevice:%b"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-boolean v8, v1, Lcom/android/server/AlarmManagerService$Alarm;->bootDevice:Z

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/server/AlarmManagerService;->logToFile(Lcom/android/server/AlarmManagerService$LogToFileTag;Ljava/lang/String;)V

    .line 397
    const/4 v3, 0x0

    const-string v5, "repeatInterval:%d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-wide v8, v1, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/server/AlarmManagerService;->logToFile(Lcom/android/server/AlarmManagerService$LogToFileTag;Ljava/lang/String;)V

    .line 398
    const/4 v3, 0x0

    const-string v5, "operation:%s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, v1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v8}, Landroid/app/PendingIntent;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/server/AlarmManagerService;->logToFile(Lcom/android/server/AlarmManagerService$LogToFileTag;Ljava/lang/String;)V

    .line 399
    invoke-direct {p0, v1}, Lcom/android/server/AlarmManagerService;->isCallingByWhitelistApp(Lcom/android/server/AlarmManagerService$Alarm;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 400
    const/4 v3, 0x0

    const-string v5, "called_by_white_list_application"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/server/AlarmManagerService;->logToFile(Lcom/android/server/AlarmManagerService$LogToFileTag;Ljava/lang/String;)V

    .line 406
    :cond_3
    move-object/from16 v0, p6

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerService;->removeLocked(Landroid/app/PendingIntent;)V

    .line 408
    move-object/from16 v0, p6

    invoke-direct {p0, v0}, Lcom/android/server/AlarmManagerService;->needPrintLog(Landroid/app/PendingIntent;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 409
    const-string v3, "AlarmManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "set: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " when:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, v1, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    invoke-static {v6, v7}, Landroid/util/TimeUtils;->logTimeOfDay(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    :cond_4
    invoke-direct {p0, v1}, Lcom/android/server/AlarmManagerService;->addAlarmLocked(Lcom/android/server/AlarmManagerService$Alarm;)[I

    move-result-object v2

    .line 414
    .local v2, indexs:[I
    const/4 v3, 0x1

    aget v3, v2, v3

    if-ltz v3, :cond_5

    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mRtcBootWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_5

    .line 415
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/server/AlarmManagerService;->setLockedBootTime(Z)Z

    .line 418
    :cond_5
    const/4 v3, 0x0

    aget v3, v2, v3

    if-nez v3, :cond_d

    .line 419
    invoke-direct {p0, v1}, Lcom/android/server/AlarmManagerService;->setLocked(Lcom/android/server/AlarmManagerService$Alarm;)V

    .line 427
    :cond_6
    :goto_6
    monitor-exit v4

    goto/16 :goto_0

    .end local v1           #alarm:Lcom/android/server/AlarmManagerService$Alarm;
    .end local v2           #indexs:[I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 368
    .restart local v1       #alarm:Lcom/android/server/AlarmManagerService$Alarm;
    :cond_7
    const/4 v3, 0x4

    if-ne p1, v3, :cond_8

    .line 369
    :try_start_1
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.MEIZU_BOOT_ALARM"

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    const/4 v3, 0x0

    iput v3, v1, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    .line 371
    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/android/server/AlarmManagerService$Alarm;->bootDevice:Z

    goto/16 :goto_1

    .line 373
    :cond_8
    iput p1, v1, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    goto/16 :goto_1

    .line 391
    :cond_9
    iget v3, p0, Lcom/android/server/AlarmManagerService;->setRepeating_count_elapsed_wakeup:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/AlarmManagerService;->setRepeating_count_elapsed_wakeup:I

    goto/16 :goto_2

    .line 394
    :cond_a
    const-string v3, "ELAPSED_REALTIME_WAKEUP"

    goto/16 :goto_3

    :cond_b
    iget v3, p0, Lcom/android/server/AlarmManagerService;->setRepeating_count_elapsed_wakeup:I

    goto/16 :goto_4

    .line 395
    :cond_c
    iget-wide v9, v1, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    invoke-static {v9, v10}, Lcom/android/server/AlarmManagerService;->getTimeSpanInfo(J)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_5

    .line 420
    .restart local v2       #indexs:[I
    :cond_d
    invoke-static {}, Lcom/android/server/AlarmManagerService;->isAlarmTimeAlignedEnabled()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-direct {p0, v1}, Lcom/android/server/AlarmManagerService;->isCallingByWhitelistApp(Lcom/android/server/AlarmManagerService$Alarm;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 421
    iget v3, v1, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    if-nez v3, :cond_f

    .line 422
    iget-wide v5, p0, Lcom/android/server/AlarmManagerService;->lastWakeupRtcTime:J

    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    if-eqz v3, :cond_e

    iget-wide v5, p0, Lcom/android/server/AlarmManagerService;->lastWakeupRtcTime:J

    iget-wide v7, v1, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    cmp-long v3, v5, v7

    if-lez v3, :cond_6

    :cond_e
    invoke-direct {p0, v1}, Lcom/android/server/AlarmManagerService;->setLocked(Lcom/android/server/AlarmManagerService$Alarm;)V

    goto :goto_6

    .line 423
    :cond_f
    iget v3, v1, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    const/4 v5, 0x2

    if-ne v3, v5, :cond_6

    .line 424
    iget-wide v5, p0, Lcom/android/server/AlarmManagerService;->lastWakeupElapsedTime:J

    iget-wide v7, v1, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    cmp-long v3, v5, v7

    if-lez v3, :cond_6

    invoke-direct {p0, v1}, Lcom/android/server/AlarmManagerService;->setLocked(Lcom/android/server/AlarmManagerService$Alarm;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_6
.end method

.method public setTime(J)V
    .locals 3
    .parameter "millis"

    .prologue
    .line 494
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.SET_TIME"

    const-string v2, "setTime"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    invoke-static {p1, p2}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    .line 499
    return-void
.end method

.method public setTimeZone(Ljava/lang/String;)V
    .locals 10
    .parameter "tz"

    .prologue
    .line 502
    iget-object v7, p0, Lcom/android/server/AlarmManagerService;->mContext:Landroid/content/Context;

    const-string v8, "android.permission.SET_TIME_ZONE"

    const-string v9, "setTimeZone"

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 508
    .local v3, oldId:J
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v7

    if-eqz v7, :cond_0

    .line 536
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 538
    :goto_0
    return-void

    .line 509
    :cond_0
    :try_start_1
    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v6

    .line 512
    .local v6, zone:Ljava/util/TimeZone;
    const/4 v5, 0x0

    .line 513
    .local v5, timeZoneWasChanged:Z
    monitor-enter p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 514
    :try_start_2
    const-string v7, "persist.sys.timezone"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 515
    .local v0, current:Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v6}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 516
    :cond_1
    const-string v7, "AlarmManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "timezone changed: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", new="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    const/4 v5, 0x1

    .line 518
    const-string v7, "persist.sys.timezone"

    invoke-virtual {v6}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v1

    .line 524
    .local v1, gmtOffset:I
    iget v7, p0, Lcom/android/server/AlarmManagerService;->mDescriptor:I

    const v8, 0xea60

    div-int v8, v1, v8

    neg-int v8, v8

    invoke-direct {p0, v7, v8}, Lcom/android/server/AlarmManagerService;->setKernelTimezone(II)I

    .line 525
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 527
    const/4 v7, 0x0

    :try_start_3
    invoke-static {v7}, Ljava/util/TimeZone;->setDefault(Ljava/util/TimeZone;)V

    .line 529
    if-eqz v5, :cond_3

    .line 530
    new-instance v2, Landroid/content/Intent;

    const-string v7, "android.intent.action.TIMEZONE_CHANGED"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 531
    .local v2, intent:Landroid/content/Intent;
    const/high16 v7, 0x2000

    invoke-virtual {v2, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 532
    const-string v7, "time-zone"

    invoke-virtual {v6}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 533
    iget-object v7, p0, Lcom/android/server/AlarmManagerService;->mContext:Landroid/content/Context;

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v7, v2, v8}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 536
    .end local v2           #intent:Landroid/content/Intent;
    :cond_3
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    .line 525
    .end local v0           #current:Ljava/lang/String;
    .end local v1           #gmtOffset:I
    :catchall_0
    move-exception v7

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 536
    .end local v5           #timeZoneWasChanged:Z
    .end local v6           #zone:Ljava/util/TimeZone;
    :catchall_1
    move-exception v7

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v7
.end method

.method setWakelockWorkSource(Landroid/app/PendingIntent;)V
    .locals 3
    .parameter "pi"

    .prologue
    .line 1467
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getTarget()Landroid/content/IIntentSender;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->getUidForIntentSender(Landroid/content/IIntentSender;)I

    move-result v0

    .line 1469
    .local v0, uid:I
    if-ltz v0, :cond_0

    .line 1470
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    new-instance v2, Landroid/os/WorkSource;

    invoke-direct {v2, v0}, Landroid/os/WorkSource;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1478
    .end local v0           #uid:I
    :goto_0
    return-void

    .line 1473
    :catch_0
    move-exception v1

    .line 1477
    :cond_0
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    goto :goto_0
.end method

.method public timeToNextAlarm()J
    .locals 9

    .prologue
    .line 793
    const-wide v3, 0x7fffffffffffffffL

    .line 794
    .local v3, nextAlarm:J
    iget-object v6, p0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 795
    const/4 v2, 0x0

    .line 796
    .local v2, i:I
    :goto_0
    const/4 v5, 0x3

    if-gt v2, v5, :cond_1

    .line 797
    :try_start_0
    invoke-direct {p0, v2}, Lcom/android/server/AlarmManagerService;->getAlarmList(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 798
    .local v1, alarmList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 799
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    .line 800
    .local v0, a:Lcom/android/server/AlarmManagerService$Alarm;
    iget-wide v7, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    cmp-long v5, v7, v3

    if-gez v5, :cond_0

    .line 801
    iget-wide v3, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    .line 796
    .end local v0           #a:Lcom/android/server/AlarmManagerService$Alarm;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 805
    .end local v1           #alarmList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    :cond_1
    monitor-exit v6

    .line 806
    return-wide v3

    .line 805
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method
