.class Landroid/webkit/WebCoreThreadWatchdog;
.super Ljava/lang/Object;
.source "WebCoreThreadWatchdog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/WebCoreThreadWatchdog$PageNotRespondingRunnable;
    }
.end annotation


# static fields
.field private static final HEARTBEAT_PERIOD:I = 0x2710

.field private static final IS_ALIVE:I = 0x64

.field private static final SUBSEQUENT_TIMEOUT_PERIOD:I = 0x3a98

.field private static final TIMED_OUT:I = 0x65

.field private static final TIMEOUT_PERIOD:I = 0x7530

.field private static mDumpAnrLogs:Z

.field private static sInstance:Landroid/webkit/WebCoreThreadWatchdog;


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mPaused:Z

.field private mWebCoreThreadHandler:Landroid/os/Handler;

.field private mWebViews:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/webkit/WebViewClassic;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/os/Handler;)V
    .locals 0
    .parameter "webCoreThreadHandler"

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput-object p1, p0, Landroid/webkit/WebCoreThreadWatchdog;->mWebCoreThreadHandler:Landroid/os/Handler;

    .line 114
    return-void
.end method

.method static synthetic access$000(Landroid/webkit/WebCoreThreadWatchdog;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-boolean v0, p0, Landroid/webkit/WebCoreThreadWatchdog;->mPaused:Z

    return v0
.end method

.method static synthetic access$100(Landroid/webkit/WebCoreThreadWatchdog;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Landroid/webkit/WebCoreThreadWatchdog;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Landroid/webkit/WebCoreThreadWatchdog;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Landroid/webkit/WebCoreThreadWatchdog;->mWebCoreThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300()Z
    .locals 1

    .prologue
    .line 37
    sget-boolean v0, Landroid/webkit/WebCoreThreadWatchdog;->mDumpAnrLogs:Z

    return v0
.end method

.method static synthetic access$400()V
    .locals 0

    .prologue
    .line 37
    invoke-static {}, Landroid/webkit/WebCoreThreadWatchdog;->dumpWebCoreAnrLogs()V

    return-void
.end method

.method static synthetic access$500(Landroid/webkit/WebCoreThreadWatchdog;)Ljava/util/Set;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Landroid/webkit/WebCoreThreadWatchdog;->mWebViews:Ljava/util/Set;

    return-object v0
.end method

.method private addWebView(Landroid/webkit/WebViewClassic;)V
    .locals 1
    .parameter "w"

    .prologue
    .line 102
    iget-object v0, p0, Landroid/webkit/WebCoreThreadWatchdog;->mWebViews:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 103
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebCoreThreadWatchdog;->mWebViews:Ljava/util/Set;

    .line 105
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebCoreThreadWatchdog;->mWebViews:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 106
    return-void
.end method

.method private createHandler()V
    .locals 2

    .prologue
    .line 147
    const-class v1, Landroid/webkit/WebCoreThreadWatchdog;

    monitor-enter v1

    .line 148
    :try_start_0
    new-instance v0, Landroid/webkit/WebCoreThreadWatchdog$1;

    invoke-direct {v0, p0}, Landroid/webkit/WebCoreThreadWatchdog$1;-><init>(Landroid/webkit/WebCoreThreadWatchdog;)V

    iput-object v0, p0, Landroid/webkit/WebCoreThreadWatchdog;->mHandler:Landroid/os/Handler;

    .line 211
    monitor-exit v1

    .line 212
    return-void

    .line 211
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static dumpWebCoreAnrLogs()V
    .locals 6

    .prologue
    .line 219
    const/4 v1, 0x0

    .line 221
    .local v1, p:Ljava/lang/Process;
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    .line 222
    .local v2, pid:I
    const-string v3, "WebCoreAnr"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "start dump anr logs pid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    const-string v3, "WebCoreAnr"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "build "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/system/bin/kill -3 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    .line 225
    const-wide/16 v3, 0x3e8

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    .line 226
    const-string v3, "WebCoreAnr"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "end dump anr logs pid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    if-eqz v1, :cond_0

    .line 231
    .end local v2           #pid:I
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    .line 234
    :cond_0
    return-void

    .line 227
    :catch_0
    move-exception v0

    .line 228
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 230
    if-eqz v1, :cond_0

    goto :goto_0

    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    if-eqz v1, :cond_1

    .line 231
    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    .line 230
    :cond_1
    throw v3
.end method

.method public static declared-synchronized pause()V
    .locals 2

    .prologue
    .line 90
    const-class v1, Landroid/webkit/WebCoreThreadWatchdog;

    monitor-enter v1

    :try_start_0
    sget-object v0, Landroid/webkit/WebCoreThreadWatchdog;->sInstance:Landroid/webkit/WebCoreThreadWatchdog;

    if-eqz v0, :cond_0

    .line 91
    sget-object v0, Landroid/webkit/WebCoreThreadWatchdog;->sInstance:Landroid/webkit/WebCoreThreadWatchdog;

    invoke-direct {v0}, Landroid/webkit/WebCoreThreadWatchdog;->pauseWatchdog()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    :cond_0
    monitor-exit v1

    return-void

    .line 90
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private pauseWatchdog()V
    .locals 2

    .prologue
    .line 117
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/WebCoreThreadWatchdog;->mPaused:Z

    .line 119
    iget-object v0, p0, Landroid/webkit/WebCoreThreadWatchdog;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 126
    :goto_0
    return-void

    .line 123
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebCoreThreadWatchdog;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 124
    iget-object v0, p0, Landroid/webkit/WebCoreThreadWatchdog;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 125
    iget-object v0, p0, Landroid/webkit/WebCoreThreadWatchdog;->mWebCoreThreadHandler:Landroid/os/Handler;

    const/16 v1, 0xc5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0
.end method

.method public static declared-synchronized registerWebView(Landroid/webkit/WebViewClassic;)V
    .locals 2
    .parameter "w"

    .prologue
    .line 78
    const-class v1, Landroid/webkit/WebCoreThreadWatchdog;

    monitor-enter v1

    :try_start_0
    sget-object v0, Landroid/webkit/WebCoreThreadWatchdog;->sInstance:Landroid/webkit/WebCoreThreadWatchdog;

    if-eqz v0, :cond_0

    .line 79
    sget-object v0, Landroid/webkit/WebCoreThreadWatchdog;->sInstance:Landroid/webkit/WebCoreThreadWatchdog;

    invoke-direct {v0, p0}, Landroid/webkit/WebCoreThreadWatchdog;->addWebView(Landroid/webkit/WebViewClassic;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    :cond_0
    monitor-exit v1

    return-void

    .line 78
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private removeWebView(Landroid/webkit/WebViewClassic;)V
    .locals 1
    .parameter "w"

    .prologue
    .line 109
    iget-object v0, p0, Landroid/webkit/WebCoreThreadWatchdog;->mWebViews:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 110
    return-void
.end method

.method public static declared-synchronized resume()V
    .locals 2

    .prologue
    .line 96
    const-class v1, Landroid/webkit/WebCoreThreadWatchdog;

    monitor-enter v1

    :try_start_0
    sget-object v0, Landroid/webkit/WebCoreThreadWatchdog;->sInstance:Landroid/webkit/WebCoreThreadWatchdog;

    if-eqz v0, :cond_0

    .line 97
    sget-object v0, Landroid/webkit/WebCoreThreadWatchdog;->sInstance:Landroid/webkit/WebCoreThreadWatchdog;

    invoke-direct {v0}, Landroid/webkit/WebCoreThreadWatchdog;->resumeWatchdog()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    :cond_0
    monitor-exit v1

    return-void

    .line 96
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private resumeWatchdog()V
    .locals 4

    .prologue
    .line 129
    iget-boolean v0, p0, Landroid/webkit/WebCoreThreadWatchdog;->mPaused:Z

    if-nez v0, :cond_1

    .line 144
    :cond_0
    :goto_0
    return-void

    .line 135
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebCoreThreadWatchdog;->mPaused:Z

    .line 137
    iget-object v0, p0, Landroid/webkit/WebCoreThreadWatchdog;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Landroid/webkit/WebCoreThreadWatchdog;->mWebCoreThreadHandler:Landroid/os/Handler;

    const/16 v1, 0xc5

    iget-object v2, p0, Landroid/webkit/WebCoreThreadWatchdog;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 143
    iget-object v0, p0, Landroid/webkit/WebCoreThreadWatchdog;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/webkit/WebCoreThreadWatchdog;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x65

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method static setDumpWebCoreAnrLogs(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 215
    sput-boolean p0, Landroid/webkit/WebCoreThreadWatchdog;->mDumpAnrLogs:Z

    .line 216
    return-void
.end method

.method public static declared-synchronized start(Landroid/os/Handler;)Landroid/webkit/WebCoreThreadWatchdog;
    .locals 4
    .parameter "webCoreThreadHandler"

    .prologue
    .line 70
    const-class v1, Landroid/webkit/WebCoreThreadWatchdog;

    monitor-enter v1

    :try_start_0
    sget-object v0, Landroid/webkit/WebCoreThreadWatchdog;->sInstance:Landroid/webkit/WebCoreThreadWatchdog;

    if-nez v0, :cond_0

    .line 71
    new-instance v0, Landroid/webkit/WebCoreThreadWatchdog;

    invoke-direct {v0, p0}, Landroid/webkit/WebCoreThreadWatchdog;-><init>(Landroid/os/Handler;)V

    sput-object v0, Landroid/webkit/WebCoreThreadWatchdog;->sInstance:Landroid/webkit/WebCoreThreadWatchdog;

    .line 72
    new-instance v0, Ljava/lang/Thread;

    sget-object v2, Landroid/webkit/WebCoreThreadWatchdog;->sInstance:Landroid/webkit/WebCoreThreadWatchdog;

    const-string v3, "WebCoreThreadWatchdog"

    invoke-direct {v0, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 74
    :cond_0
    sget-object v0, Landroid/webkit/WebCoreThreadWatchdog;->sInstance:Landroid/webkit/WebCoreThreadWatchdog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 70
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized unregisterWebView(Landroid/webkit/WebViewClassic;)V
    .locals 2
    .parameter "w"

    .prologue
    .line 84
    const-class v1, Landroid/webkit/WebCoreThreadWatchdog;

    monitor-enter v1

    :try_start_0
    sget-object v0, Landroid/webkit/WebCoreThreadWatchdog;->sInstance:Landroid/webkit/WebCoreThreadWatchdog;

    if-eqz v0, :cond_0

    .line 85
    sget-object v0, Landroid/webkit/WebCoreThreadWatchdog;->sInstance:Landroid/webkit/WebCoreThreadWatchdog;

    invoke-direct {v0, p0}, Landroid/webkit/WebCoreThreadWatchdog;->removeWebView(Landroid/webkit/WebViewClassic;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    :cond_0
    monitor-exit v1

    return-void

    .line 84
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 238
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 240
    invoke-direct {p0}, Landroid/webkit/WebCoreThreadWatchdog;->createHandler()V

    .line 244
    const-class v1, Landroid/webkit/WebCoreThreadWatchdog;

    monitor-enter v1

    .line 245
    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebCoreThreadWatchdog;->mPaused:Z

    if-nez v0, :cond_0

    .line 246
    iget-object v0, p0, Landroid/webkit/WebCoreThreadWatchdog;->mWebCoreThreadHandler:Landroid/os/Handler;

    const/16 v2, 0xc5

    iget-object v3, p0, Landroid/webkit/WebCoreThreadWatchdog;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x64

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 248
    iget-object v0, p0, Landroid/webkit/WebCoreThreadWatchdog;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/webkit/WebCoreThreadWatchdog;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x65

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x7530

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 250
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 252
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 253
    return-void

    .line 250
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
