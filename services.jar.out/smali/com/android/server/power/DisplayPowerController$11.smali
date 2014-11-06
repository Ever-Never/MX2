.class Lcom/android/server/power/DisplayPowerController$11;
.super Ljava/lang/Object;
.source "DisplayPowerController.java"

# interfaces
.implements Lcom/android/server/power/AmbientLuxBox$AmbientLuxListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/DisplayPowerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/DisplayPowerController;


# direct methods
.method constructor <init>(Lcom/android/server/power/DisplayPowerController;)V
    .locals 0
    .parameter

    .prologue
    .line 1423
    iput-object p1, p0, Lcom/android/server/power/DisplayPowerController$11;->this$0:Lcom/android/server/power/DisplayPowerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAmbientLuxChanged(FIZ)V
    .locals 2
    .parameter "lux"
    .parameter "animationRate"
    .parameter "immediate"

    .prologue
    .line 1425
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController$11;->this$0:Lcom/android/server/power/DisplayPowerController;

    #setter for: Lcom/android/server/power/DisplayPowerController;->mAmbientLux:F
    invoke-static {v0, p1}, Lcom/android/server/power/DisplayPowerController;->access$1302(Lcom/android/server/power/DisplayPowerController;F)F

    .line 1426
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController$11;->this$0:Lcom/android/server/power/DisplayPowerController;

    const/4 v1, 0x1

    #calls: Lcom/android/server/power/DisplayPowerController;->updateAutoBrightness(ZIZ)V
    invoke-static {v0, v1, p2, p3}, Lcom/android/server/power/DisplayPowerController;->access$1400(Lcom/android/server/power/DisplayPowerController;ZIZ)V

    .line 1427
    return-void
.end method
