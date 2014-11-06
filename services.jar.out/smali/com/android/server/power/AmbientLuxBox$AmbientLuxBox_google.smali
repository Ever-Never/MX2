.class Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_google;
.super Lcom/android/server/power/AmbientLuxBox$AmbientLuxBoxExecutor;
.source "AmbientLuxBox.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/AmbientLuxBox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AmbientLuxBox_google"
.end annotation


# static fields
.field private static final BRIGHTENING_LIGHT_DEBOUNCE:J = 0x7d0L

.field private static final BRIGHTENING_LIGHT_HYSTERESIS:F = 0.07f

.field private static final DARKENING_LIGHT_DEBOUNCE:J = 0xbb8L

.field private static final DARKENING_LIGHT_HYSTERESIS:F = 0.1f

.field private static final LIGHT_SENSOR_RATE_MILLIS:I = 0x3e8

.field private static final LONG_TERM_AVERAGE_LIGHT_TIME_CONSTANT:J = 0xbb8L

.field private static final SHORT_TERM_AVERAGE_LIGHT_TIME_CONSTANT:J = 0x3e8L

.field private static final SYNTHETIC_LIGHT_SENSOR_RATE_MILLIS:I = 0x7d0


# instance fields
.field private mBDebounceLuxDirection:I

.field private mBDebounceLuxTime:J

.field private mBLastObservedLux:F

.field private mBLastObservedLuxTime:J

.field private mBRecentLongTermAverageLux:F

.field private mBRecentShortTermAverageLux:F

.field final synthetic this$0:Lcom/android/server/power/AmbientLuxBox;


# direct methods
.method public constructor <init>(Lcom/android/server/power/AmbientLuxBox;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 228
    iput-object p1, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_google;->this$0:Lcom/android/server/power/AmbientLuxBox;

    .line 229
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBoxExecutor;-><init>(Lcom/android/server/power/AmbientLuxBox;Landroid/os/Looper;)V

    .line 230
    return-void
.end method

.method private applyLightSensorMeasurement(JF)V
    .locals 6
    .parameter "time"
    .parameter "lux"

    .prologue
    .line 264
    iget v2, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBoxExecutor;->mBRecentLightSamples:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBoxExecutor;->mBRecentLightSamples:I

    .line 265
    iget v2, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBoxExecutor;->mBRecentLightSamples:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 266
    iput p3, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_google;->mBRecentShortTermAverageLux:F

    .line 267
    iput p3, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_google;->mBRecentLongTermAverageLux:F

    .line 282
    :goto_0
    invoke-static {}, Lcom/android/server/power/AmbientLuxBox;->access$000()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 283
    const-string v2, "AmbientLuxBox"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ALSM , lux is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mRecentShortTermAverageLux="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_google;->mBRecentShortTermAverageLux:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mRecentLongTermAverageLux="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_google;->mBRecentLongTermAverageLux:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    :cond_0
    iput p3, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_google;->mBLastObservedLux:F

    .line 291
    iput-wide p1, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_google;->mBLastObservedLuxTime:J

    .line 292
    return-void

    .line 269
    :cond_1
    iget-wide v2, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_google;->mBLastObservedLuxTime:J

    sub-long v0, p1, v2

    .line 270
    .local v0, timeDelta:J
    invoke-static {}, Lcom/android/server/power/AmbientLuxBox;->access$000()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 271
    const-string v2, "AmbientLuxBox"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "applyLightSensorMeasurement: , mRecentShortTermAverageLux="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_google;->mBRecentShortTermAverageLux:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mRecentLongTermAverageLux="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_google;->mBRecentLongTermAverageLux:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", lux="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", timeDelta="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    :cond_2
    iget v2, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_google;->mBRecentShortTermAverageLux:F

    iget v3, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_google;->mBRecentShortTermAverageLux:F

    sub-float v3, p3, v3

    long-to-float v4, v0

    mul-float/2addr v3, v4

    const-wide/16 v4, 0x3e8

    add-long/2addr v4, v0

    long-to-float v4, v4

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_google;->mBRecentShortTermAverageLux:F

    .line 279
    iget v2, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_google;->mBRecentLongTermAverageLux:F

    iget v3, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_google;->mBRecentLongTermAverageLux:F

    sub-float v3, p3, v3

    long-to-float v4, v0

    mul-float/2addr v3, v4

    const-wide/16 v4, 0xbb8

    add-long/2addr v4, v0

    long-to-float v4, v4

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_google;->mBRecentLongTermAverageLux:F

    goto/16 :goto_0
.end method

.method private updateAmbientLux(J)V
    .locals 11
    .parameter "time"

    .prologue
    const-wide/16 v9, 0x7d0

    const/4 v6, 0x0

    const/4 v8, 0x1

    .line 297
    iget-boolean v4, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBoxExecutor;->mBAmbientLuxValid:Z

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBoxExecutor;->mBRecentLightSamples:I

    if-eq v4, v8, :cond_0

    long-to-float v4, p1

    iget v5, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBoxExecutor;->mBLightSensorEnableTime:F

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_google;->this$0:Lcom/android/server/power/AmbientLuxBox;

    #getter for: Lcom/android/server/power/AmbientLuxBox;->mLightSensorWarmUpTimeConfig:I
    invoke-static {v5}, Lcom/android/server/power/AmbientLuxBox;->access$100(Lcom/android/server/power/AmbientLuxBox;)I

    move-result v5

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_2

    .line 299
    :cond_0
    iget v4, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_google;->mBRecentShortTermAverageLux:F

    iput v4, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBoxExecutor;->mAmbientLuxInBox:F

    .line 300
    iput v6, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_google;->mBDebounceLuxDirection:I

    .line 301
    iput-wide p1, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_google;->mBDebounceLuxTime:J

    .line 302
    iput-boolean v8, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBoxExecutor;->mBAmbientLuxValid:Z

    .line 304
    invoke-virtual {p0}, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBoxExecutor;->notifyAmbientLuxChange()V

    .line 400
    :cond_1
    :goto_0
    return-void

    .line 309
    :cond_2
    iget v4, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBoxExecutor;->mAmbientLuxInBox:F

    const v5, 0x3f88f5c3

    mul-float v0, v4, v5

    .line 310
    .local v0, brighteningLuxThreshold:F
    iget v4, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_google;->mBRecentShortTermAverageLux:F

    cmpl-float v4, v4, v0

    if-lez v4, :cond_6

    iget v4, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_google;->mBRecentLongTermAverageLux:F

    cmpl-float v4, v4, v0

    if-lez v4, :cond_6

    .line 312
    iget v4, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_google;->mBDebounceLuxDirection:I

    if-gtz v4, :cond_3

    .line 313
    iput v8, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_google;->mBDebounceLuxDirection:I

    .line 314
    iput-wide p1, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_google;->mBDebounceLuxTime:J

    .line 315
    invoke-static {}, Lcom/android/server/power/AmbientLuxBox;->access$000()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 316
    const-string v4, "AmbientLuxBox"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateAL wf 2000 ms: brighteningLuxThreshold="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mRecentShortTermAverageLux="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_google;->mBRecentShortTermAverageLux:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mRecentLongTermAverageLux="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_google;->mBRecentLongTermAverageLux:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mAmbientLux="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBoxExecutor;->mAmbientLuxInBox:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    :cond_3
    iget-wide v4, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_google;->mBDebounceLuxTime:J

    add-long v2, v4, v9

    .line 325
    .local v2, debounceTime:J
    cmp-long v4, p1, v2

    if-ltz v4, :cond_5

    .line 326
    iget v4, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_google;->mBRecentShortTermAverageLux:F

    iput v4, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBoxExecutor;->mAmbientLuxInBox:F

    .line 327
    invoke-static {}, Lcom/android/server/power/AmbientLuxBox;->access$000()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 328
    const-string v4, "AmbientLuxBox"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateAL wf : brighteningLuxThreshold="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mRecentShortTermAverageLux="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_google;->mBRecentShortTermAverageLux:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mRecentLongTermAverageLux="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_google;->mBRecentLongTermAverageLux:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mAmbientLux="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBoxExecutor;->mAmbientLuxInBox:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBoxExecutor;->notifyAmbientLuxChange()V

    goto/16 :goto_0

    .line 336
    :cond_5
    invoke-virtual {p0, v8, v2, v3}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    goto/16 :goto_0

    .line 342
    .end local v2           #debounceTime:J
    :cond_6
    iget v4, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBoxExecutor;->mAmbientLuxInBox:F

    const v5, 0x3f666666

    mul-float v1, v4, v5

    .line 343
    .local v1, darkeningLuxThreshold:F
    iget v4, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_google;->mBRecentShortTermAverageLux:F

    cmpg-float v4, v4, v1

    if-gez v4, :cond_a

    iget v4, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_google;->mBRecentLongTermAverageLux:F

    cmpg-float v4, v4, v1

    if-gez v4, :cond_a

    .line 345
    iget v4, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_google;->mBDebounceLuxDirection:I

    if-ltz v4, :cond_7

    .line 346
    const/4 v4, -0x1

    iput v4, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_google;->mBDebounceLuxDirection:I

    .line 347
    iput-wide p1, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_google;->mBDebounceLuxTime:J

    .line 348
    invoke-static {}, Lcom/android/server/power/AmbientLuxBox;->access$000()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 349
    const-string v4, "AmbientLuxBox"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateAmbientLux: Possibly darkened, waiting for 3000 ms: darkeningLuxThreshold="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mRecentShortTermAverageLux="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_google;->mBRecentShortTermAverageLux:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mRecentLongTermAverageLux="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_google;->mBRecentLongTermAverageLux:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mAmbientLux="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBoxExecutor;->mAmbientLuxInBox:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    :cond_7
    iget-wide v4, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_google;->mBDebounceLuxTime:J

    const-wide/16 v6, 0xbb8

    add-long v2, v4, v6

    .line 358
    .restart local v2       #debounceTime:J
    cmp-long v4, p1, v2

    if-ltz v4, :cond_9

    .line 361
    iget v4, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_google;->mBRecentShortTermAverageLux:F

    iget v5, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_google;->mBRecentLongTermAverageLux:F

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iput v4, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBoxExecutor;->mAmbientLuxInBox:F

    .line 362
    invoke-static {}, Lcom/android/server/power/AmbientLuxBox;->access$000()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 363
    const-string v4, "AmbientLuxBox"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateAmbientLux: Darkened: darkeningLuxThreshold="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mRecentShortTermAverageLux="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_google;->mBRecentShortTermAverageLux:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mRecentLongTermAverageLux="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_google;->mBRecentLongTermAverageLux:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mAmbientLux="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBoxExecutor;->mAmbientLuxInBox:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBoxExecutor;->notifyAmbientLuxChange()V

    goto/16 :goto_0

    .line 371
    :cond_9
    invoke-virtual {p0, v8, v2, v3}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    goto/16 :goto_0

    .line 377
    .end local v2           #debounceTime:J
    :cond_a
    iget v4, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_google;->mBDebounceLuxDirection:I

    if-eqz v4, :cond_b

    .line 378
    iput v6, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_google;->mBDebounceLuxDirection:I

    .line 379
    iput-wide p1, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_google;->mBDebounceLuxTime:J

    .line 380
    invoke-static {}, Lcom/android/server/power/AmbientLuxBox;->access$000()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 381
    const-string v4, "AmbientLuxBox"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateAmbientLux: Canceled debounce: brighteningLuxThreshold="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", darkeningLuxThreshold="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mRecentShortTermAverageLux="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_google;->mBRecentShortTermAverageLux:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mRecentLongTermAverageLux="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_google;->mBRecentLongTermAverageLux:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mAmbientLux="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBoxExecutor;->mAmbientLuxInBox:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    :cond_b
    iget v4, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_google;->mBLastObservedLux:F

    cmpl-float v4, v4, v0

    if-gtz v4, :cond_c

    iget v4, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_google;->mBLastObservedLux:F

    cmpg-float v4, v4, v1

    if-gez v4, :cond_1

    .line 397
    :cond_c
    add-long v4, p1, v9

    invoke-virtual {p0, v8, v4, v5}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    goto/16 :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    .line 238
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 253
    :goto_0
    return-void

    .line 242
    :pswitch_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 243
    .local v0, time:J
    iget-wide v2, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_google;->mBLastObservedLuxTime:J

    const-wide/16 v4, 0x7d0

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-ltz v2, :cond_1

    .line 244
    invoke-static {}, Lcom/android/server/power/AmbientLuxBox;->access$000()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 245
    const-string v2, "AmbientLuxBox"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "debounceLightSensor: Synthesizing light sensor measurement after "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_google;->mBLastObservedLuxTime:J

    sub-long v4, v0, v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ms."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    :cond_0
    iget v2, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_google;->mBLastObservedLux:F

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_google;->applyLightSensorMeasurement(JF)V

    .line 250
    :cond_1
    invoke-direct {p0, v0, v1}, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_google;->updateAmbientLux(J)V

    goto :goto_0

    .line 238
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected updateAmbientLuxEnable(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 233
    return-void
.end method

.method public updateLightSensorMeasurement(JF)V
    .locals 1
    .parameter "time"
    .parameter "lux"

    .prologue
    .line 257
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 258
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_google;->applyLightSensorMeasurement(JF)V

    .line 259
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_google;->updateAmbientLux(J)V

    .line 260
    return-void
.end method
