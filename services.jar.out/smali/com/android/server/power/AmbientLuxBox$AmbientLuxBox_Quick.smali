.class Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Quick;
.super Lcom/android/server/power/AmbientLuxBox$AmbientLuxBoxExecutor;
.source "AmbientLuxBox.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/AmbientLuxBox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AmbientLuxBox_Quick"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Quick$luxWithTime;
    }
.end annotation


# static fields
.field private static final BRIGHTENING_LIGHT_HYSTERESIS:F = 0.1f

.field private static final DARKENING_LIGHT_HYSTERESIS:F = 0.2f

.field private static final MSG_LongNotify:I = 0x2

.field private static final MSG_ShortNotify:I = 0x3

.field private static final MSG_StableNotify:I = 0x4


# instance fields
.field private DEFAULT_LONG_NOTIFY_TIME:I

.field private DEFAULT_SHORT_NOTIFY_TIME:I

.field private final MAX_LONG_NOTIFY_TIME:I

.field private final STABLE_OVER_TIME:I

.field private VALID_TIME:I

.field private isStableState:Z

.field private lastLuxValue:J

.field private lastShortLuxValue:J

.field private longNotifyTime:J

.field final mLuxset:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Quick$luxWithTime;",
            ">;"
        }
    .end annotation
.end field

.field private maxLongNotifyTime:J

.field private notifiedForShortTimeNotify:Z

.field private shortNotifyCount:I

.field private shortNotifyTime:J

.field final synthetic this$0:Lcom/android/server/power/AmbientLuxBox;


# direct methods
.method public constructor <init>(Lcom/android/server/power/AmbientLuxBox;Landroid/os/Looper;)V
    .locals 4
    .parameter
    .parameter "looper"

    .prologue
    const-wide/16 v2, -0x1

    const/4 v1, 0x0

    .line 575
    iput-object p1, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Quick;->this$0:Lcom/android/server/power/AmbientLuxBox;

    .line 576
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBoxExecutor;-><init>(Lcom/android/server/power/AmbientLuxBox;Landroid/os/Looper;)V

    .line 550
    const/16 v0, 0xbb8

    iput v0, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Quick;->DEFAULT_LONG_NOTIFY_TIME:I

    .line 551
    const/16 v0, 0x76c

    iput v0, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Quick;->DEFAULT_SHORT_NOTIFY_TIME:I

    .line 552
    const/16 v0, 0x834

    iput v0, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Quick;->STABLE_OVER_TIME:I

    .line 553
    iget v0, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Quick;->DEFAULT_LONG_NOTIFY_TIME:I

    add-int/lit16 v0, v0, 0x1388

    iput v0, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Quick;->MAX_LONG_NOTIFY_TIME:I

    .line 554
    iput-wide v2, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Quick;->longNotifyTime:J

    .line 555
    iput-wide v2, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Quick;->shortNotifyTime:J

    .line 556
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Quick;->mLuxset:Ljava/util/ArrayList;

    .line 559
    iput-wide v2, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Quick;->maxLongNotifyTime:J

    .line 560
    iput-boolean v1, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Quick;->notifiedForShortTimeNotify:Z

    .line 563
    iput v1, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Quick;->shortNotifyCount:I

    .line 564
    const/16 v0, 0x640

    iput v0, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Quick;->VALID_TIME:I

    .line 565
    iput-boolean v1, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Quick;->isStableState:Z

    .line 577
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBoxExecutor;->mBAmbientLuxValid:Z

    .line 578
    return-void
.end method

.method private applyLightSensorMeasurement(JF)V
    .locals 7
    .parameter "time"
    .parameter "lux"

    .prologue
    const/4 v3, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 765
    invoke-virtual {p0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 766
    const-wide/16 v0, 0x834

    add-long/2addr v0, p1

    invoke-virtual {p0, v3, v0, v1}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 767
    iput-boolean v4, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Quick;->isStableState:Z

    .line 768
    iget v0, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBoxExecutor;->mBRecentLightSamples:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBoxExecutor;->mBRecentLightSamples:I

    .line 769
    iget-boolean v0, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBoxExecutor;->mBAmbientLuxValid:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBoxExecutor;->mBRecentLightSamples:I

    if-ne v0, v2, :cond_2

    .line 770
    :cond_0
    iput-boolean v2, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBoxExecutor;->mBAmbientLuxValid:Z

    .line 771
    const/16 v0, 0x2710

    invoke-virtual {p0, p3, v0, v2}, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Quick;->notifyAmbientLuxChange(FIZ)V

    .line 772
    invoke-static {}, Lcom/android/server/power/AmbientLuxBox;->access$000()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 773
    const-string v0, "AmbientLuxBox"

    const-string v1, "applyLightSensorMeasurement first time "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    :cond_1
    :goto_0
    return-void

    .line 775
    :cond_2
    iget-wide v0, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Quick;->longNotifyTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_5

    .line 776
    invoke-static {}, Lcom/android/server/power/AmbientLuxBox;->access$000()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 777
    const-string v0, "AmbientLuxBox"

    const-string v1, "applyLightSensorMeasurement longNotifyTime < 0"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    :cond_3
    invoke-virtual {p0, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 780
    invoke-virtual {p0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 781
    iget-object v0, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Quick;->mLuxset:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 782
    iget-object v0, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Quick;->mLuxset:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 784
    :cond_4
    iget-object v0, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Quick;->mLuxset:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Quick$luxWithTime;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Quick$luxWithTime;-><init>(Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Quick;FJ)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 785
    iget v0, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Quick;->DEFAULT_LONG_NOTIFY_TIME:I

    int-to-long v0, v0

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Quick;->longNotifyTime:J

    .line 786
    iget v0, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Quick;->DEFAULT_SHORT_NOTIFY_TIME:I

    int-to-long v0, v0

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Quick;->shortNotifyTime:J

    .line 787
    iget-wide v0, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Quick;->shortNotifyTime:J

    invoke-virtual {p0, v6, v0, v1}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 788
    iget-wide v0, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Quick;->longNotifyTime:J

    invoke-virtual {p0, v5, v0, v1}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 789
    iget v0, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Quick;->MAX_LONG_NOTIFY_TIME:I

    int-to-long v0, v0

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Quick;->maxLongNotifyTime:J

    .line 790
    iput-boolean v4, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Quick;->notifiedForShortTimeNotify:Z

    goto :goto_0

    .line 792
    :cond_5
    invoke-static {}, Lcom/android/server/power/AmbientLuxBox;->access$000()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 793
    const-string v0, "AmbientLuxBox"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "applyLightSensorMeasurement longNotifyTime is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Quick;->longNotifyTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    :cond_6
    iget-object v0, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Quick;->mLuxset:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Quick$luxWithTime;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Quick$luxWithTime;-><init>(Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Quick;FJ)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 796
    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Quick;->zoomUpLNT(J)V

    goto :goto_0
.end method


# virtual methods
.method public getLastAmbientLux()F
    .locals 4

    .prologue
    .line 819
    iget-object v1, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Quick;->mLuxset:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 820
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Quick;->mLuxset:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 822
    .local v0, luxSet:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Quick$luxWithTime;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Quick$luxWithTime;

    iget v1, v1, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Quick$luxWithTime;->mLuxValue:F

    .line 827
    .end local v0           #luxSet:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Quick$luxWithTime;>;"
    :goto_0
    return v1

    .line 824
    :cond_0
    invoke-static {}, Lcom/android/server/power/AmbientLuxBox;->access$000()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 825
    const-string v1, "AmbientLuxBox"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLastAmbientLux  mLuxset size is 0  mAmbientLuxInBox is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBoxExecutor;->mAmbientLuxInBox:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    :cond_1
    iget v1, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBoxExecutor;->mAmbientLuxInBox:F

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 20
    .parameter "msg"

    .prologue
    .line 582
    invoke-static {}, Lcom/android/server/power/AmbientLuxBox;->access$000()Z

    move-result v15

    if-eqz v15, :cond_0

    .line 583
    const-string v15, "AmbientLuxBox"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "handleMessage current time is "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v17

    invoke-virtual/range {v16 .. v18}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 586
    .local v4, currentTime:J
    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->what:I

    packed-switch v15, :pswitch_data_0

    .line 712
    :cond_1
    :goto_0
    return-void

    .line 590
    :pswitch_0
    invoke-static {}, Lcom/android/server/power/AmbientLuxBox;->access$000()Z

    move-result v15

    if-eqz v15, :cond_2

    .line 591
    const-string v15, "AmbientLuxBox"

    const-string v16, "handle MSG_LongNotify"

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    :cond_2
    new-instance v9, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Quick;->mLuxset:Ljava/util/ArrayList;

    invoke-direct {v9, v15}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 596
    .local v9, luxSet:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Quick$luxWithTime;>;"
    const/4 v15, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/os/Handler;->removeMessages(I)V

    .line 597
    const/4 v15, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/os/Handler;->removeMessages(I)V

    .line 598
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Quick;->shortNotifyCount:I

    .line 599
    const-wide/16 v15, -0x1

    move-object/from16 v0, p0

    iput-wide v15, v0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Quick;->longNotifyTime:J

    .line 600
    const/high16 v13, -0x4080

    .line 601
    .local v13, tempLux:F
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v15

    const/16 v16, 0x3

    move/from16 v0, v16

    if-le v15, v0, :cond_8

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Quick;->isStableState:Z

    if-nez v15, :cond_8

    .line 602
    invoke-static {}, Lcom/android/server/power/AmbientLuxBox;->access$000()Z

    move-result v15

    if-eqz v15, :cond_3

    .line 603
    const-string v15, "AmbientLuxBox"

    const-string v16, "handle MSG_LongNotify size > 3"

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    :cond_3
    const-wide v10, 0x3fe6666666666666L

    .line 607
    .local v10, n:D
    const/4 v6, 0x1

    .local v6, i:I
    :goto_1
    const/4 v15, 0x4

    if-ge v6, v15, :cond_a

    .line 608
    const/4 v15, 0x2

    if-ne v6, v15, :cond_6

    .line 609
    const-wide v10, 0x3fc999999999999aL

    .line 613
    :cond_4
    :goto_2
    invoke-static {}, Lcom/android/server/power/AmbientLuxBox;->access$000()Z

    move-result v15

    if-eqz v15, :cond_5

    .line 614
    const-string v16, "AmbientLuxBox"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "long notify lux set i is "

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v17

    sub-int v17, v17, v6

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v17, "lux val is  "

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v15

    sub-int/2addr v15, v6

    invoke-virtual {v9, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Quick$luxWithTime;

    iget v15, v15, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Quick$luxWithTime;->mLuxValue:F

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v17, "time is "

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v15

    sub-int/2addr v15, v6

    invoke-virtual {v9, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Quick$luxWithTime;

    iget-wide v0, v15, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Quick$luxWithTime;->mtime:J

    move-wide/from16 v18, v0

    invoke-virtual/range {v17 .. v19}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, v16

    invoke-static {v0, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    :cond_5
    const/4 v15, 0x1

    if-le v6, v15, :cond_7

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v15

    sub-int/2addr v15, v6

    invoke-virtual {v9, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Quick$luxWithTime;

    iget-wide v15, v15, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Quick$luxWithTime;->mtime:J

    sub-long v15, v4, v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Quick;->VALID_TIME:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    cmp-long v15, v15, v17

    if-lez v15, :cond_7

    .line 607
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 610
    :cond_6
    const/4 v15, 0x3

    if-ne v6, v15, :cond_4

    .line 611
    const-wide v10, 0x3fb999999999999aL

    goto/16 :goto_2

    .line 619
    :cond_7
    float-to-double v0, v13

    move-wide/from16 v16, v0

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v15

    sub-int/2addr v15, v6

    invoke-virtual {v9, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Quick$luxWithTime;

    iget v15, v15, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Quick$luxWithTime;->mLuxValue:F

    float-to-double v0, v15

    move-wide/from16 v18, v0

    mul-double v18, v18, v10

    add-double v15, v16, v18

    double-to-float v13, v15

    goto :goto_3

    .line 621
    .end local v6           #i:I
    .end local v10           #n:D
    :cond_8
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-lez v15, :cond_b

    .line 622
    invoke-static {}, Lcom/android/server/power/AmbientLuxBox;->access$000()Z

    move-result v15

    if-eqz v15, :cond_9

    .line 623
    const-string v15, "AmbientLuxBox"

    const-string v16, "handle MSG_LongNotify size < 3"

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    :cond_9
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    invoke-virtual {v9, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Quick$luxWithTime;

    iget v13, v15, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Quick$luxWithTime;->mLuxValue:F

    .line 631
    :cond_a
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Quick;->notifiedForShortTimeNotify:Z

    if-eqz v15, :cond_1

    const/high16 v15, -0x4080

    cmpl-float v15, v13, v15

    if-lez v15, :cond_1

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Quick;->shortNotifyCount:I

    if-lez v15, :cond_1

    .line 632
    const/4 v15, -0x1

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v13, v15, v1}, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Quick;->notifyAmbientLuxChange(FIZ)V

    goto/16 :goto_0

    .line 627
    :cond_b
    invoke-static {}, Lcom/android/server/power/AmbientLuxBox;->access$000()Z

    move-result v15

    if-eqz v15, :cond_a

    .line 628
    const-string v15, "AmbientLuxBox"

    const-string v16, "handle MSG_LongNotify size ==0"

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 640
    .end local v9           #luxSet:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Quick$luxWithTime;>;"
    .end local v13           #tempLux:F
    :pswitch_1
    invoke-static {}, Lcom/android/server/power/AmbientLuxBox;->access$000()Z

    move-result v15

    if-eqz v15, :cond_c

    .line 641
    const-string v15, "AmbientLuxBox"

    const-string v16, "handle MSG_ShortNotify"

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    :cond_c
    new-instance v9, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Quick;->mLuxset:Ljava/util/ArrayList;

    invoke-direct {v9, v15}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 644
    .restart local v9       #luxSet:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Quick$luxWithTime;>;"
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBoxExecutor;->mAmbientLuxInBox:F

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v15}, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Quick;->isFlashing(Ljava/util/ArrayList;F)Z

    move-result v8

    .line 646
    .local v8, isflash:Z
    if-eqz v8, :cond_e

    .line 649
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Quick;->mLuxset:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    .line 679
    :cond_d
    :goto_5
    const/4 v15, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 680
    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Quick;->shortNotifyTime:J

    const-wide/16 v17, 0x320

    add-long v15, v15, v17

    move-object/from16 v0, p0

    iput-wide v15, v0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Quick;->shortNotifyTime:J

    .line 681
    const/4 v15, 0x3

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Quick;->shortNotifyTime:J

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-virtual {v0, v15, v1, v2}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    goto/16 :goto_0

    .line 652
    :cond_e
    const/4 v13, 0x0

    .line 653
    .restart local v13       #tempLux:F
    const/4 v3, 0x0

    .line 654
    .local v3, avgLux:F
    const/4 v14, 0x0

    .line 655
    .local v14, validCount:I
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_f
    :goto_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_11

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Quick$luxWithTime;

    .line 656
    .local v12, sb:Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Quick$luxWithTime;
    invoke-static {}, Lcom/android/server/power/AmbientLuxBox;->access$000()Z

    move-result v15

    if-eqz v15, :cond_10

    .line 657
    const-string v15, "AmbientLuxBox"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "short notify lux val is  "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget v0, v12, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Quick$luxWithTime;->mLuxValue:F

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "time is "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget-wide v0, v12, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Quick$luxWithTime;->mtime:J

    move-wide/from16 v17, v0

    invoke-virtual/range {v16 .. v18}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    :cond_10
    iget-wide v15, v12, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Quick$luxWithTime;->mtime:J

    sub-long v15, v4, v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Quick;->VALID_TIME:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    cmp-long v15, v15, v17

    if-gtz v15, :cond_f

    .line 662
    add-int/lit8 v14, v14, 0x1

    .line 663
    iget v15, v12, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Quick$luxWithTime;->mLuxValue:F

    add-float/2addr v13, v15

    goto :goto_6

    .line 665
    .end local v12           #sb:Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Quick$luxWithTime;
    :cond_11
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-lt v15, v0, :cond_1

    .line 667
    if-eqz v14, :cond_12

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Quick;->isStableState:Z

    if-eqz v15, :cond_13

    .line 668
    :cond_12
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    invoke-virtual {v9, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Quick$luxWithTime;

    iget v13, v15, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Quick$luxWithTime;->mLuxValue:F

    .line 669
    const/4 v14, 0x1

    .line 671
    :cond_13
    int-to-float v15, v14

    div-float/2addr v13, v15

    move v3, v13

    .line 672
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBoxExecutor;->mAmbientLuxInBox:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBoxExecutor;->mAmbientLuxInBox:F

    move/from16 v16, v0

    sub-float v16, v13, v16

    const/high16 v17, 0x4040

    div-float v16, v16, v17

    add-float v13, v15, v16

    .line 673
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Quick;->notifiedForShortTimeNotify:Z

    if-nez v15, :cond_14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBoxExecutor;->mAmbientLuxInBox:F

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v15}, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Quick;->isReachesThresholdValue(FF)Z

    move-result v15

    if-eqz v15, :cond_d

    .line 674
    :cond_14
    const/4 v15, -0x1

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v13, v15, v1}, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Quick;->notifyAmbientLuxChange(FIZ)V

    .line 675
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Quick;->notifiedForShortTimeNotify:Z

    .line 676
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Quick;->shortNotifyCount:I

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Quick;->shortNotifyCount:I

    goto/16 :goto_5

    .line 688
    .end local v3           #avgLux:F
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v8           #isflash:Z
    .end local v9           #luxSet:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Quick$luxWithTime;>;"
    .end local v13           #tempLux:F
    .end local v14           #validCount:I
    :pswitch_2
    invoke-static {}, Lcom/android/server/power/AmbientLuxBox;->access$000()Z

    move-result v15

    if-eqz v15, :cond_15

    .line 689
    const-string v15, "AmbientLuxBox"

    const-string v16, "handle MSG_StableNotify"

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    :cond_15
    new-instance v9, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Quick;->mLuxset:Ljava/util/ArrayList;

    invoke-direct {v9, v15}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 694
    .restart local v9       #luxSet:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Quick$luxWithTime;>;"
    const/4 v15, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/os/Handler;->removeMessages(I)V

    .line 695
    const/4 v15, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/os/Handler;->removeMessages(I)V

    .line 696
    const-wide/16 v15, -0x1

    move-object/from16 v0, p0

    iput-wide v15, v0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Quick;->longNotifyTime:J

    .line 697
    const/high16 v13, -0x4080

    .line 698
    .restart local v13       #tempLux:F
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-lez v15, :cond_1a

    .line 699
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    invoke-virtual {v9, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Quick$luxWithTime;

    iget v13, v15, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Quick$luxWithTime;->mLuxValue:F

    .line 705
    :cond_16
    :goto_7
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Quick;->notifiedForShortTimeNotify:Z

    if-eqz v15, :cond_17

    const/high16 v15, -0x4080

    cmpl-float v15, v13, v15

    if-gtz v15, :cond_18

    :cond_17
    const/4 v15, 0x0

    cmpl-float v15, v13, v15

    if-nez v15, :cond_19

    .line 706
    :cond_18
    const/4 v15, -0x1

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v13, v15, v1}, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Quick;->notifyAmbientLuxChange(FIZ)V

    .line 708
    :cond_19
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Quick;->isStableState:Z

    goto/16 :goto_0

    .line 701
    :cond_1a
    invoke-static {}, Lcom/android/server/power/AmbientLuxBox;->access$000()Z

    move-result v15

    if-eqz v15, :cond_16

    .line 702
    const-string v15, "AmbientLuxBox"

    const-string v16, "handle MSG_StableNotify size ==0"

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 586
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method isFlashing(Ljava/util/ArrayList;F)Z
    .locals 13
    .parameter
    .parameter "initVal"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Quick$luxWithTime;",
            ">;F)Z"
        }
    .end annotation

    .prologue
    .local p1, luxSet:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Quick$luxWithTime;>;"
    const/4 v8, 0x0

    .line 722
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v9, 0x2

    if-ge v7, v9, :cond_1

    :cond_0
    move v7, v8

    .line 747
    :goto_0
    return v7

    .line 726
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Quick$luxWithTime;

    iget v1, v7, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Quick$luxWithTime;->mLuxValue:F

    .line 727
    .local v1, lastLux:F
    add-float v7, p2, v1

    const/high16 v9, 0x4000

    div-float v6, v7, v9

    .line 729
    .local v6, tempLux:F
    float-to-double v9, v6

    const-wide v11, 0x3ff0cccccccccccdL

    mul-double/2addr v9, v11

    double-to-float v2, v9

    .line 730
    .local v2, maxLux:F
    float-to-double v9, v6

    const-wide v11, 0x3fee666666666666L

    mul-double/2addr v9, v11

    double-to-float v4, v9

    .line 732
    .local v4, minLux:F
    cmpg-float v7, v1, v2

    if-gez v7, :cond_4

    cmpl-float v7, v1, v4

    if-lez v7, :cond_4

    cmpg-float v7, p2, v2

    if-gez v7, :cond_4

    cmpl-float v7, p2, v4

    if-lez v7, :cond_4

    .line 733
    const/4 v3, 0x0

    .line 734
    .local v3, maxVal:F
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Quick$luxWithTime;

    .line 735
    .local v5, sb:Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Quick$luxWithTime;
    iget v7, v5, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Quick$luxWithTime;->mLuxValue:F

    cmpg-float v7, v3, v7

    if-gez v7, :cond_2

    .line 736
    iget v3, v5, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Quick$luxWithTime;->mLuxValue:F

    goto :goto_1

    .line 739
    .end local v5           #sb:Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Quick$luxWithTime;
    :cond_3
    sub-float v7, v3, v6

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    div-float/2addr v7, v6

    const/high16 v9, 0x3f80

    cmpl-float v7, v7, v9

    if-lez v7, :cond_5

    .line 740
    const/4 v7, 0x1

    goto :goto_0

    .end local v0           #i$:Ljava/util/Iterator;
    .end local v3           #maxVal:F
    :cond_4
    move v7, v8

    .line 744
    goto :goto_0

    .restart local v0       #i$:Ljava/util/Iterator;
    .restart local v3       #maxVal:F
    :cond_5
    move v7, v8

    .line 747
    goto :goto_0
.end method

.method isReachesThresholdValue(FF)Z
    .locals 3
    .parameter "newVal"
    .parameter "lastVal"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 714
    cmpl-float v2, p1, p2

    if-lez v2, :cond_2

    .line 715
    const v2, 0x3f8ccccd

    mul-float/2addr v2, p2

    cmpl-float v2, p1, v2

    if-lez v2, :cond_1

    .line 717
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 715
    goto :goto_0

    .line 717
    :cond_2
    const v2, 0x3f4ccccd

    mul-float/2addr v2, p2

    cmpg-float v2, p1, v2

    if-ltz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method protected notifyAmbientLuxChange(FIZ)V
    .locals 3
    .parameter "lux"
    .parameter "animationRate"
    .parameter "immediate"

    .prologue
    .line 811
    invoke-static {}, Lcom/android/server/power/AmbientLuxBox;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 812
    const-string v0, "AmbientLuxBox"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyAmbientLuxChange lux  is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    :cond_0
    iput p1, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBoxExecutor;->mAmbientLuxInBox:F

    .line 815
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBoxExecutor;->notifyAmbientLuxChange(FIZ)V

    .line 816
    return-void
.end method

.method protected updateAmbientLuxEnable(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 750
    if-nez p1, :cond_0

    .line 751
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 752
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 753
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 754
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Quick;->longNotifyTime:J

    .line 756
    :cond_0
    return-void
.end method

.method public updateLightSensorMeasurement(JF)V
    .locals 0
    .parameter "time"
    .parameter "lux"

    .prologue
    .line 761
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Quick;->applyLightSensorMeasurement(JF)V

    .line 762
    return-void
.end method

.method zoomUpLNT(J)V
    .locals 5
    .parameter "time"

    .prologue
    const/4 v4, 0x2

    .line 802
    invoke-virtual {p0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 804
    invoke-virtual {p0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 805
    iget-wide v0, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Quick;->longNotifyTime:J

    const-wide/16 v2, 0x3e8

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Quick;->longNotifyTime:J

    .line 806
    iget-wide v0, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Quick;->maxLongNotifyTime:J

    iget-wide v2, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Quick;->longNotifyTime:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    invoke-virtual {p0, v4, v0, v1}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 808
    :cond_0
    return-void
.end method
