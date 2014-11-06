.class Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Iphone$1;
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
    .line 516
    iput-object p1, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Iphone$1;->this$1:Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Iphone;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 518
    monitor-enter p0

    .line 519
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Iphone$1;->this$1:Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Iphone;

    iget-object v1, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Iphone$1;->this$1:Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Iphone;

    #getter for: Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Iphone;->mIphoneAverageLux:F
    invoke-static {v1}, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Iphone;->access$300(Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Iphone;)F

    move-result v1

    const/4 v2, 0x0

    #calls: Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Iphone;->updateAmbientLux(FZ)V
    invoke-static {v0, v1, v2}, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Iphone;->access$400(Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Iphone;FZ)V

    .line 520
    monitor-exit p0

    .line 521
    return-void

    .line 520
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
