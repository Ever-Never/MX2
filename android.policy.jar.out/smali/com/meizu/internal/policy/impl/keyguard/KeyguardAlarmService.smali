.class public Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService;
.super Landroid/app/Service;
.source "KeyguardAlarmService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService$State;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final STOP_SELF:I = 0x2

.field private static final TAG:Ljava/lang/String; = null

.field public static final USER_ACTION_DELAY:Ljava/lang/String; = "delay_alarm"

.field private static final USER_ACTION_DELAY_ALARM:I = 0x0

.field private static final USER_ACTION_DELAY_TIME:J = 0xbb8L

.field public static final USER_ACTION_STOP:Ljava/lang/String; = "stop_alarm"

.field private static final USER_ACTION_STOP_ALARM:I = 0x1

.field public static final USER_ACTION_VOLUME_DOWN:Ljava/lang/String; = "volume_down"

.field public static final USER_ACTION_VOLUME_UP:Ljava/lang/String; = "volume_up"

.field private static mMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static mRunning:Z

.field private static mUnbindCount:I

.field public static sInstance:Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService;


# instance fields
.field private mActionCallback:Lcom/meizu/internal/policy/impl/keyguard/IKeyguardAlarmActionCallback;

.field private mActionCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/meizu/internal/policy/impl/keyguard/IKeyguardAlarmActionCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field mBinder:Lcom/meizu/internal/policy/impl/keyguard/IKeyguardAlarmService$Stub;

.field mHandler:Landroid/os/Handler;

.field private mKeyguardUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

.field private mServiceState:Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService$State;

.field private mStatus:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService;->TAG:Ljava/lang/String;

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService;->mMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 33
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService;->mActionCallbacks:Ljava/util/ArrayList;

    .line 110
    new-instance v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService$1;

    invoke-direct {v0, p0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService$1;-><init>(Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService;)V

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService;->mBinder:Lcom/meizu/internal/policy/impl/keyguard/IKeyguardAlarmService$Stub;

    .line 151
    new-instance v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService$2;

    invoke-direct {v0, p0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService$2;-><init>(Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService;)V

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService;->updateStatus(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService;->mKeyguardUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    return-object v0
.end method

.method static synthetic access$202(Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService;Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService$State;)Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService$State;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    iput-object p1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService;->mServiceState:Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService$State;

    return-object p1
.end method

.method static synthetic access$302(Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService;Lcom/meizu/internal/policy/impl/keyguard/IKeyguardAlarmActionCallback;)Lcom/meizu/internal/policy/impl/keyguard/IKeyguardAlarmActionCallback;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    iput-object p1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService;->mActionCallback:Lcom/meizu/internal/policy/impl/keyguard/IKeyguardAlarmActionCallback;

    return-object p1
.end method

.method static synthetic access$400(Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService;->mActionCallbacks:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService;Lcom/meizu/internal/policy/impl/keyguard/IKeyguardAlarmActionCallback;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService;->removeCallback(Lcom/meizu/internal/policy/impl/keyguard/IKeyguardAlarmActionCallback;)V

    return-void
.end method

.method static synthetic access$600()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService;->mMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$700()I
    .locals 1

    .prologue
    .line 21
    sget v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService;->mUnbindCount:I

    return v0
.end method

.method public static getInstance()Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService;->sInstance:Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService;

    return-object v0
.end method

.method public static isRunning()Z
    .locals 1

    .prologue
    .line 102
    sget-boolean v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService;->mRunning:Z

    return v0
.end method

.method private removeCallback(Lcom/meizu/internal/policy/impl/keyguard/IKeyguardAlarmActionCallback;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 141
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService;->mActionCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 142
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService;->mActionCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 143
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService;->mActionCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 141
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 146
    :cond_1
    return-void
.end method

.method private updateStatus(Ljava/lang/String;)V
    .locals 0
    .parameter "status"

    .prologue
    .line 106
    iput-object p1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService;->mStatus:Ljava/lang/String;

    .line 107
    return-void
.end method


# virtual methods
.method public getKeyguardAlarmServiceState()Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService$State;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService;->sInstance:Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService;

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService;->mServiceState:Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService$State;

    .line 46
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService$State;->DESTORY:Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService$State;

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService;->mBinder:Lcom/meizu/internal/policy/impl/keyguard/IKeyguardAlarmService$Stub;

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 67
    sput-object p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService;->sInstance:Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService;

    .line 68
    sget-object v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService$State;->READY:Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService$State;

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService;->mServiceState:Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService$State;

    .line 69
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService;->mKeyguardUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    .line 70
    sget-object v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 71
    const/4 v0, 0x0

    sput v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService;->mUnbindCount:I

    .line 72
    const/4 v0, 0x1

    sput-boolean v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService;->mRunning:Z

    .line 74
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 75
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 78
    sget-object v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService$State;->DESTORY:Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService$State;

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService;->mServiceState:Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService$State;

    .line 79
    sput-object v2, Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService;->sInstance:Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService;

    .line 80
    iput-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService;->mKeyguardUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    .line 81
    sget-object v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 82
    sput v1, Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService;->mUnbindCount:I

    .line 83
    sput-boolean v1, Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService;->mRunning:Z

    .line 85
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 86
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 3
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 88
    sget-object v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService;->mMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 91
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 92
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 94
    sget-object v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService;->mMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 97
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 4
    .parameter "intent"

    .prologue
    .line 59
    sget v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService;->mUnbindCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService;->mUnbindCount:I

    .line 61
    sget-object v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService;->mMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    sget v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService;->mUnbindCount:I

    sget-object v1, Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService;->mMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 64
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public sendUserAction(Ljava/lang/String;)Z
    .locals 8
    .parameter "action"

    .prologue
    .line 178
    const/4 v4, 0x0

    .line 179
    .local v4, result:Z
    iget-object v5, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService;->mActionCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 180
    .local v0, callback:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/meizu/internal/policy/impl/keyguard/IKeyguardAlarmActionCallback;>;"
    if-eqz v0, :cond_0

    .line 182
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/meizu/internal/policy/impl/keyguard/IKeyguardAlarmActionCallback;

    .line 183
    .local v3, mCallback:Lcom/meizu/internal/policy/impl/keyguard/IKeyguardAlarmActionCallback;
    if-eqz v3, :cond_1

    .line 184
    invoke-interface {v3, p1}, Lcom/meizu/internal/policy/impl/keyguard/IKeyguardAlarmActionCallback;->userAction(Ljava/lang/String;)V

    .line 185
    const/4 v4, 0x1

    goto :goto_0

    .line 188
    :cond_1
    sget-object v5, Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sendUserAction fail!  mCallback:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 189
    .end local v3           #mCallback:Lcom/meizu/internal/policy/impl/keyguard/IKeyguardAlarmActionCallback;
    :catch_0
    move-exception v1

    .line 190
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 191
    sget-object v5, Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sendUserAction:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " fail!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 195
    .end local v0           #callback:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/meizu/internal/policy/impl/keyguard/IKeyguardAlarmActionCallback;>;"
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_2
    return v4
.end method
