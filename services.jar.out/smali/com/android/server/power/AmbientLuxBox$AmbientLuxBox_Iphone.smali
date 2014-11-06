.class Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Iphone;
.super Lcom/android/server/power/AmbientLuxBox$AmbientLuxBoxExecutor;
.source "AmbientLuxBox.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/AmbientLuxBox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AmbientLuxBox_Iphone"
.end annotation


# instance fields
.field private mAutoBrightnessTask:Ljava/lang/Runnable;

.field mDebounceNum:I

.field private mIphoneAverageLux:F

.field private mLastSensorLevel:I

.field private mLightSensorPendingDecrease:Z

.field private mLightSensorPendingIncrease:Z

.field private mLightSensorPendingValue:F

.field mPreLevel:I

.field private mSensorChangedTask:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/android/server/power/AmbientLuxBox;


# direct methods
.method public constructor <init>(Lcom/android/server/power/AmbientLuxBox;Landroid/os/Looper;)V
    .locals 2
    .parameter
    .parameter "looper"

    .prologue
    const/4 v1, 0x0

    .line 412
    iput-object p1, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Iphone;->this$0:Lcom/android/server/power/AmbientLuxBox;

    .line 413
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBoxExecutor;-><init>(Lcom/android/server/power/AmbientLuxBox;Landroid/os/Looper;)V

    .line 407
    iput v1, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Iphone;->mLastSensorLevel:I

    .line 408
    iput-boolean v1, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Iphone;->mLightSensorPendingDecrease:Z

    .line 409
    iput-boolean v1, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Iphone;->mLightSensorPendingIncrease:Z

    .line 410
    const/high16 v0, -0x4080

    iput v0, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Iphone;->mLightSensorPendingValue:F

    .line 485
    iput v1, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Iphone;->mPreLevel:I

    .line 486
    iput v1, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Iphone;->mDebounceNum:I

    .line 516
    new-instance v0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Iphone$1;

    invoke-direct {v0, p0}, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Iphone$1;-><init>(Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Iphone;)V

    iput-object v0, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Iphone;->mSensorChangedTask:Ljava/lang/Runnable;

    .line 524
    new-instance v0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Iphone$2;

    invoke-direct {v0, p0}, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Iphone$2;-><init>(Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Iphone;)V

    iput-object v0, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Iphone;->mAutoBrightnessTask:Ljava/lang/Runnable;

    .line 414
    return-void
.end method

.method static synthetic access$300(Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Iphone;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 404
    iget v0, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Iphone;->mIphoneAverageLux:F

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Iphone;FZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 404
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Iphone;->updateAmbientLux(FZ)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Iphone;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 404
    iget-boolean v0, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Iphone;->mLightSensorPendingDecrease:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Iphone;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 404
    iput-boolean p1, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Iphone;->mLightSensorPendingDecrease:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Iphone;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 404
    iget-boolean v0, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Iphone;->mLightSensorPendingIncrease:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Iphone;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 404
    iput-boolean p1, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Iphone;->mLightSensorPendingIncrease:Z

    return p1
.end method

.method private applyLightSensorMeasurement(JF)Z
    .locals 11
    .parameter "time"
    .parameter "lux"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 435
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 436
    .local v0, milliseconds:J
    iget v2, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBoxExecutor;->mBRecentLightSamples:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBoxExecutor;->mBRecentLightSamples:I

    .line 437
    iget v2, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBoxExecutor;->mBRecentLightSamples:I

    if-eq v2, v3, :cond_0

    long-to-float v2, v0

    iget v5, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBoxExecutor;->mBLightSensorEnableTime:F

    sub-float/2addr v2, v5

    iget-object v5, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Iphone;->this$0:Lcom/android/server/power/AmbientLuxBox;

    #getter for: Lcom/android/server/power/AmbientLuxBox;->mLightSensorWarmUpTimeConfig:I
    invoke-static {v5}, Lcom/android/server/power/AmbientLuxBox;->access$100(Lcom/android/server/power/AmbientLuxBox;)I

    move-result v5

    int-to-float v5, v5

    cmpg-float v2, v2, v5

    if-gez v2, :cond_3

    .line 440
    :cond_0
    invoke-static {}, Lcom/android/server/power/AmbientLuxBox;->access$000()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 441
    const-string v2, "AmbientLuxBox"

    const-string v5, "applyLightSensorMeasurement with first mBRecentLightSamples"

    invoke-static {v2, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    :cond_1
    iput-boolean v4, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Iphone;->mLightSensorPendingDecrease:Z

    .line 444
    iput-boolean v4, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Iphone;->mLightSensorPendingIncrease:Z

    .line 445
    iput p3, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Iphone;->mIphoneAverageLux:F

    .line 446
    iput-boolean v3, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBoxExecutor;->mBAmbientLuxValid:Z

    .line 447
    iget-object v2, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Iphone;->mAutoBrightnessTask:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    move v4, v3

    .line 468
    :cond_2
    :goto_0
    return v4

    .line 450
    :cond_3
    float-to-double v5, p3

    iget v2, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Iphone;->mIphoneAverageLux:F

    float-to-double v7, v2

    const-wide v9, 0x3ff0cccccccccccdL

    mul-double/2addr v7, v9

    cmpl-double v2, v5, v7

    if-lez v2, :cond_4

    iget-boolean v2, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Iphone;->mLightSensorPendingDecrease:Z

    if-nez v2, :cond_6

    :cond_4
    float-to-double v5, p3

    iget v2, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Iphone;->mIphoneAverageLux:F

    float-to-double v7, v2

    const-wide v9, 0x3fee666666666666L

    mul-double/2addr v7, v9

    cmpg-double v2, v5, v7

    if-gez v2, :cond_5

    iget-boolean v2, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Iphone;->mLightSensorPendingIncrease:Z

    if-nez v2, :cond_6

    :cond_5
    iget v2, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Iphone;->mIphoneAverageLux:F

    cmpl-float v2, p3, v2

    if-eqz v2, :cond_6

    iget-boolean v2, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Iphone;->mLightSensorPendingDecrease:Z

    if-nez v2, :cond_a

    iget-boolean v2, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Iphone;->mLightSensorPendingIncrease:Z

    if-nez v2, :cond_a

    .line 454
    :cond_6
    iget-object v2, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Iphone;->mAutoBrightnessTask:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 455
    iget v2, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Iphone;->mIphoneAverageLux:F

    cmpg-float v2, p3, v2

    if-gez v2, :cond_8

    move v2, v3

    :goto_1
    iput-boolean v2, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Iphone;->mLightSensorPendingDecrease:Z

    .line 456
    iget v2, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Iphone;->mIphoneAverageLux:F

    cmpl-float v2, p3, v2

    if-lez v2, :cond_9

    :goto_2
    iput-boolean v3, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Iphone;->mLightSensorPendingIncrease:Z

    .line 457
    iget-boolean v2, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Iphone;->mLightSensorPendingDecrease:Z

    if-nez v2, :cond_7

    iget-boolean v2, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Iphone;->mLightSensorPendingIncrease:Z

    if-eqz v2, :cond_2

    .line 459
    :cond_7
    iput p3, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Iphone;->mLightSensorPendingValue:F

    .line 460
    iput p3, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Iphone;->mIphoneAverageLux:F

    .line 461
    iget-object v2, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Iphone;->mAutoBrightnessTask:Ljava/lang/Runnable;

    const-wide/16 v5, 0x3e8

    invoke-virtual {p0, v2, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_8
    move v2, v4

    .line 455
    goto :goto_1

    :cond_9
    move v3, v4

    .line 456
    goto :goto_2

    .line 464
    :cond_a
    iput p3, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Iphone;->mLightSensorPendingValue:F

    .line 465
    iput p3, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Iphone;->mIphoneAverageLux:F

    goto :goto_0
.end method

.method private updateAmbientLux(FZ)V
    .locals 1
    .parameter "sensorValue"
    .parameter "immediate"

    .prologue
    .line 472
    iput p1, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBoxExecutor;->mAmbientLuxInBox:F

    .line 473
    if-eqz p2, :cond_0

    .line 474
    invoke-virtual {p0}, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBoxExecutor;->notifyAmbientLuxChange()V

    .line 477
    :cond_0
    if-nez p2, :cond_1

    .line 478
    invoke-virtual {p0, p1}, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Iphone;->debounceSensorLevel(F)Z

    move-result v0

    .line 479
    .local v0, debounce:Z
    if-eqz v0, :cond_1

    .line 480
    invoke-virtual {p0}, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBoxExecutor;->notifyAmbientLuxChange()V

    .line 483
    .end local v0           #debounce:Z
    :cond_1
    return-void
.end method


# virtual methods
.method debounceSensorLevel(F)Z
    .locals 6
    .parameter "sensorValue"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 491
    iget-object v4, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Iphone;->this$0:Lcom/android/server/power/AmbientLuxBox;

    #calls: Lcom/android/server/power/AmbientLuxBox;->getBrightnessLevel(F)I
    invoke-static {v4, p1}, Lcom/android/server/power/AmbientLuxBox;->access$200(Lcom/android/server/power/AmbientLuxBox;F)I

    move-result v1

    .line 492
    .local v1, sensorLevel:I
    iget-object v4, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Iphone;->mSensorChangedTask:Ljava/lang/Runnable;

    invoke-virtual {p0, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 493
    const/16 v0, 0x1388

    .line 495
    .local v0, delayTime:I
    iget v4, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Iphone;->mPreLevel:I

    if-eq v4, v1, :cond_1

    .line 496
    iput v1, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Iphone;->mPreLevel:I

    .line 497
    iput v3, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Iphone;->mDebounceNum:I

    .line 498
    const/high16 v3, 0x4040

    cmpg-float v3, p1, v3

    if-gez v3, :cond_0

    .line 499
    const/16 v0, 0x9c4

    .line 500
    :cond_0
    iget-object v3, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Iphone;->mSensorChangedTask:Ljava/lang/Runnable;

    int-to-long v4, v0

    invoke-virtual {p0, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 513
    :goto_0
    return v2

    .line 504
    :cond_1
    iget v4, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Iphone;->mDebounceNum:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Iphone;->mDebounceNum:I

    .line 506
    iget v4, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Iphone;->mDebounceNum:I

    if-le v4, v3, :cond_2

    .line 507
    iput v2, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Iphone;->mDebounceNum:I

    move v2, v3

    .line 508
    goto :goto_0

    .line 511
    :cond_2
    iget-object v3, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Iphone;->mSensorChangedTask:Ljava/lang/Runnable;

    int-to-long v4, v0

    invoke-virtual {p0, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method protected updateAmbientLuxEnable(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 418
    if-nez p1, :cond_0

    .line 419
    iget-object v0, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Iphone;->mSensorChangedTask:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 421
    :cond_0
    return-void
.end method

.method public updateLightSensorMeasurement(JF)V
    .locals 2
    .parameter "time"
    .parameter "lux"

    .prologue
    .line 425
    invoke-static {}, Lcom/android/server/power/AmbientLuxBox;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 426
    const-string v0, "AmbientLuxBox"

    const-string v1, "updateLightSensorMeasurement"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Iphone;->applyLightSensorMeasurement(JF)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 429
    iget v0, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Iphone;->mIphoneAverageLux:F

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Iphone;->updateAmbientLux(FZ)V

    .line 431
    :cond_1
    return-void
.end method
