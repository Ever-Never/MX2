.class public Lcom/meizu/internal/policy/impl/keyguard/SnapshotHelper;
.super Ljava/lang/Object;
.source "SnapshotHelper.java"


# static fields
.field private static final DEBUG:Z = true

.field public static final TAG:Ljava/lang/String; = "SnapshotHelper"

.field private static sInstance:Lcom/meizu/internal/policy/impl/keyguard/SnapshotHelper;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHoldSnapshot:Z

.field private mSnapshot:Landroid/graphics/Bitmap;

.field private mUpdateAfterRelease:Z

.field private mViewCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    sput-object v0, Lcom/meizu/internal/policy/impl/keyguard/SnapshotHelper;->sInstance:Lcom/meizu/internal/policy/impl/keyguard/SnapshotHelper;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/SnapshotHelper;->mSnapshot:Landroid/graphics/Bitmap;

    .line 32
    iput-boolean v1, p0, Lcom/meizu/internal/policy/impl/keyguard/SnapshotHelper;->mHoldSnapshot:Z

    .line 33
    iput-boolean v1, p0, Lcom/meizu/internal/policy/impl/keyguard/SnapshotHelper;->mUpdateAfterRelease:Z

    .line 37
    iput-object p1, p0, Lcom/meizu/internal/policy/impl/keyguard/SnapshotHelper;->mContext:Landroid/content/Context;

    .line 38
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/internal/policy/impl/keyguard/SnapshotHelper;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-boolean v0, p0, Lcom/meizu/internal/policy/impl/keyguard/SnapshotHelper;->mHoldSnapshot:Z

    return v0
.end method

.method static synthetic access$102(Lcom/meizu/internal/policy/impl/keyguard/SnapshotHelper;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iput-boolean p1, p0, Lcom/meizu/internal/policy/impl/keyguard/SnapshotHelper;->mUpdateAfterRelease:Z

    return p1
.end method

.method static synthetic access$200(Lcom/meizu/internal/policy/impl/keyguard/SnapshotHelper;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/SnapshotHelper;->mSnapshot:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$300(Lcom/meizu/internal/policy/impl/keyguard/SnapshotHelper;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/keyguard/SnapshotHelper;->snapshotBehindKeyguardLocked()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/meizu/internal/policy/impl/keyguard/SnapshotHelper;
    .locals 1
    .parameter "context"

    .prologue
    .line 24
    sget-object v0, Lcom/meizu/internal/policy/impl/keyguard/SnapshotHelper;->sInstance:Lcom/meizu/internal/policy/impl/keyguard/SnapshotHelper;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Lcom/meizu/internal/policy/impl/keyguard/SnapshotHelper;

    invoke-direct {v0, p0}, Lcom/meizu/internal/policy/impl/keyguard/SnapshotHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/meizu/internal/policy/impl/keyguard/SnapshotHelper;->sInstance:Lcom/meizu/internal/policy/impl/keyguard/SnapshotHelper;

    .line 27
    :cond_0
    sget-object v0, Lcom/meizu/internal/policy/impl/keyguard/SnapshotHelper;->sInstance:Lcom/meizu/internal/policy/impl/keyguard/SnapshotHelper;

    return-object v0
.end method

.method private snapshotBehindKeyguardLocked()V
    .locals 9

    .prologue
    .line 112
    iget-object v5, p0, Lcom/meizu/internal/policy/impl/keyguard/SnapshotHelper;->mViewCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    if-nez v5, :cond_0

    .line 125
    :goto_0
    return-void

    .line 114
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 116
    .local v3, startTime:J
    iget-object v5, p0, Lcom/meizu/internal/policy/impl/keyguard/SnapshotHelper;->mSnapshot:Landroid/graphics/Bitmap;

    if-nez v5, :cond_1

    .line 117
    iget-object v5, p0, Lcom/meizu/internal/policy/impl/keyguard/SnapshotHelper;->mContext:Landroid/content/Context;

    const-string v6, "window"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager;

    check-cast v5, Landroid/view/WindowManager;

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 118
    .local v0, dis:Landroid/view/Display;
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 119
    .local v1, dm:Landroid/util/DisplayMetrics;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 120
    iget v5, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v6, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/meizu/internal/policy/impl/keyguard/SnapshotHelper;->mSnapshot:Landroid/graphics/Bitmap;

    .line 123
    .end local v0           #dis:Landroid/view/Display;
    .end local v1           #dm:Landroid/util/DisplayMetrics;
    :cond_1
    iget-object v5, p0, Lcom/meizu/internal/policy/impl/keyguard/SnapshotHelper;->mViewCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    iget-object v6, p0, Lcom/meizu/internal/policy/impl/keyguard/SnapshotHelper;->mSnapshot:Landroid/graphics/Bitmap;

    invoke-interface {v5, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;->screenshotBehindKeyguard(Landroid/graphics/Bitmap;)Z

    move-result v2

    .line 124
    .local v2, ret:Z
    const-string v5, "SnapshotHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "snapshotBehindKeyguardLocked22 spent time : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v3

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", ret is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public getSnapshot()Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    .line 52
    monitor-enter p0

    .line 53
    :try_start_0
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/SnapshotHelper;->mSnapshot:Landroid/graphics/Bitmap;

    if-nez v2, :cond_0

    .line 54
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/keyguard/SnapshotHelper;->snapshotBehindKeyguardLocked()V

    .line 56
    :cond_0
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/SnapshotHelper;->mSnapshot:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v0

    .line 57
    .local v0, byteCount:I
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/SnapshotHelper;->mSnapshot:Landroid/graphics/Bitmap;

    const/16 v3, 0xa

    const/16 v4, 0xa

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v1

    .line 58
    .local v1, px:I
    const-string v2, "SnapshotHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSnapshot, snapShot is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/meizu/internal/policy/impl/keyguard/SnapshotHelper;->mSnapshot:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", byte count is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", px is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/SnapshotHelper;->mSnapshot:Landroid/graphics/Bitmap;

    monitor-exit p0

    return-object v2

    .line 60
    .end local v0           #byteCount:I
    .end local v1           #px:I
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public holdSnapshot()V
    .locals 3

    .prologue
    .line 90
    monitor-enter p0

    .line 91
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/meizu/internal/policy/impl/keyguard/SnapshotHelper;->mHoldSnapshot:Z

    .line 92
    const-string v0, "SnapshotHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "holdSnapshot, mSnapshot is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/SnapshotHelper;->mSnapshot:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    monitor-exit p0

    .line 94
    return-void

    .line 93
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public releaseSnapshot()V
    .locals 3

    .prologue
    .line 100
    monitor-enter p0

    .line 101
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/meizu/internal/policy/impl/keyguard/SnapshotHelper;->mHoldSnapshot:Z

    .line 102
    const-string v0, "SnapshotHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "releaseSnapshot, mSnapshot is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/SnapshotHelper;->mSnapshot:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mUpdateAfterRelease is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/meizu/internal/policy/impl/keyguard/SnapshotHelper;->mUpdateAfterRelease:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-boolean v0, p0, Lcom/meizu/internal/policy/impl/keyguard/SnapshotHelper;->mUpdateAfterRelease:Z

    if-eqz v0, :cond_0

    .line 104
    const-string v0, "SnapshotHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mUpdateAfterRelease:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/meizu/internal/policy/impl/keyguard/SnapshotHelper;->mUpdateAfterRelease:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/internal/policy/impl/keyguard/SnapshotHelper;->mUpdateAfterRelease:Z

    .line 106
    invoke-virtual {p0}, Lcom/meizu/internal/policy/impl/keyguard/SnapshotHelper;->startSnapshotThread()V

    .line 108
    :cond_0
    monitor-exit p0

    .line 109
    return-void

    .line 108
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setKeyguardViewCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;)V
    .locals 0
    .parameter "viewCallback"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/meizu/internal/policy/impl/keyguard/SnapshotHelper;->mViewCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    .line 45
    return-void
.end method

.method public snapshotBehindKeyguardLocked_obsolete()Landroid/graphics/Bitmap;
    .locals 9

    .prologue
    const/4 v7, -0x1

    .line 128
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 129
    .local v3, startTime:J
    iget-object v5, p0, Lcom/meizu/internal/policy/impl/keyguard/SnapshotHelper;->mContext:Landroid/content/Context;

    const-string v6, "window"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager;

    check-cast v5, Landroid/view/WindowManager;

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 130
    .local v0, dis:Landroid/view/Display;
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 131
    .local v1, dm:Landroid/util/DisplayMetrics;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 133
    iget v5, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v6, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v5, v6, v7, v7}, Landroid/view/Surface;->screenshot(IIII)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 134
    .local v2, snapShot:Landroid/graphics/Bitmap;
    if-eqz v2, :cond_1

    .line 136
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 137
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->prepareToDraw()V

    .line 138
    iget-object v5, p0, Lcom/meizu/internal/policy/impl/keyguard/SnapshotHelper;->mSnapshot:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_0

    .line 139
    iget-object v5, p0, Lcom/meizu/internal/policy/impl/keyguard/SnapshotHelper;->mSnapshot:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 142
    :cond_0
    iput-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/SnapshotHelper;->mSnapshot:Landroid/graphics/Bitmap;

    .line 144
    :cond_1
    const-string v5, "SnapshotHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "snapshotBehindKeyguardLocked spent time : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v3

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", snapShot is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-object v5, p0, Lcom/meizu/internal/policy/impl/keyguard/SnapshotHelper;->mSnapshot:Landroid/graphics/Bitmap;

    return-object v5
.end method

.method public startSnapshotThread()V
    .locals 2

    .prologue
    .line 67
    const-string v0, "SnapshotHelper"

    const-string v1, "startSnapshotThread-----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    new-instance v0, Lcom/meizu/internal/policy/impl/keyguard/SnapshotHelper$1;

    invoke-direct {v0, p0}, Lcom/meizu/internal/policy/impl/keyguard/SnapshotHelper$1;-><init>(Lcom/meizu/internal/policy/impl/keyguard/SnapshotHelper;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 84
    return-void
.end method
