.class Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Iphone$2;
.super Ljava/lang/Object;
.source "AmbientLuxBox.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Iphone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Iphone;


# direct methods
.method constructor <init>(Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Iphone;)V
    .locals 0
    .parameter

    .prologue
    .line 524
    iput-object p1, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Iphone$2;->this$1:Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Iphone;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 526
    monitor-enter p0

    .line 527
    :try_start_0
    invoke-static {}, Lcom/android/server/power/AmbientLuxBox;->access$000()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 528
    const-string v1, "AmbientLuxBox"

    const-string v2, "run mAutoBrightnessTask"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    :cond_0
    iget-object v1, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Iphone$2;->this$1:Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Iphone;

    #getter for: Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Iphone;->mLightSensorPendingDecrease:Z
    invoke-static {v1}, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Iphone;->access$500(Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Iphone;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Iphone$2;->this$1:Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Iphone;

    #getter for: Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Iphone;->mLightSensorPendingIncrease:Z
    invoke-static {v1}, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Iphone;->access$600(Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Iphone;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 531
    :cond_1
    invoke-static {}, Lcom/android/server/power/AmbientLuxBox;->access$000()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 532
    const-string v1, "AmbientLuxBox"

    const-string v2, "run mAutoBrightnessTask inside"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    :cond_2
    iget-object v1, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Iphone$2;->this$1:Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Iphone;

    #getter for: Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Iphone;->mIphoneAverageLux:F
    invoke-static {v1}, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Iphone;->access$300(Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Iphone;)F

    move-result v1

    float-to-int v0, v1

    .line 535
    .local v0, value:I
    iget-object v1, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Iphone$2;->this$1:Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Iphone;

    const/4 v2, 0x0

    #setter for: Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Iphone;->mLightSensorPendingDecrease:Z
    invoke-static {v1, v2}, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Iphone;->access$502(Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Iphone;Z)Z

    .line 536
    iget-object v1, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Iphone$2;->this$1:Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Iphone;

    const/4 v2, 0x0

    #setter for: Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Iphone;->mLightSensorPendingIncrease:Z
    invoke-static {v1, v2}, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Iphone;->access$602(Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Iphone;Z)Z

    .line 537
    iget-object v1, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Iphone$2;->this$1:Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Iphone;

    int-to-float v2, v0

    const/4 v3, 0x0

    #calls: Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Iphone;->updateAmbientLux(FZ)V
    invoke-static {v1, v2, v3}, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Iphone;->access$400(Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Iphone;FZ)V

    .line 539
    .end local v0           #value:I
    :cond_3
    monitor-exit p0

    .line 540
    return-void

    .line 539
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
