.class public abstract Lcom/android/server/power/AmbientLuxBox$AmbientLuxBoxExecutor;
.super Landroid/os/Handler;
.source "AmbientLuxBox.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/AmbientLuxBox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "AmbientLuxBoxExecutor"
.end annotation


# static fields
.field public static final MSG_AmbientLuxBox_DEBOUNCED:I = 0x1


# instance fields
.field protected mAmbientLuxInBox:F

.field protected mBAmbientLuxValid:Z

.field protected mBLightSensorEnableTime:F

.field protected mBLightSensorEnabled:Z

.field protected mBRecentLightSamples:I

.field final sListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/power/AmbientLuxBox$AmbientLuxListener;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/power/AmbientLuxBox;


# direct methods
.method public constructor <init>(Lcom/android/server/power/AmbientLuxBox;Landroid/os/Looper;)V
    .locals 2
    .parameter
    .parameter "looper"

    .prologue
    .line 91
    iput-object p1, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBoxExecutor;->this$0:Lcom/android/server/power/AmbientLuxBox;

    .line 92
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBoxExecutor;->sListeners:Ljava/util/ArrayList;

    .line 93
    const/high16 v0, -0x4080

    iput v0, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBoxExecutor;->mAmbientLuxInBox:F

    .line 94
    return-void
.end method


# virtual methods
.method public getAmbientLux()F
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBoxExecutor;->mAmbientLuxInBox:F

    return v0
.end method

.method public getLastAmbientLux()F
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBoxExecutor;->mAmbientLuxInBox:F

    return v0
.end method

.method protected notifyAmbientLuxChange()V
    .locals 3

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBoxExecutor;->getAmbientLux()F

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBoxExecutor;->notifyAmbientLuxChange(FIZ)V

    .line 141
    return-void
.end method

.method protected notifyAmbientLuxChange(FIZ)V
    .locals 5
    .parameter "lux"
    .parameter "animationRate"
    .parameter "immediate"

    .prologue
    .line 144
    iget-object v3, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBoxExecutor;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 145
    .local v2, size:I
    invoke-static {}, Lcom/android/server/power/AmbientLuxBox;->access$000()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 146
    const-string v3, "AmbientLuxBox"

    const-string v4, "notifyAmbientLuxChange"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 149
    iget-object v3, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBoxExecutor;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/AmbientLuxBox$AmbientLuxListener;

    .line 150
    .local v1, listener:Lcom/android/server/power/AmbientLuxBox$AmbientLuxListener;
    if-eqz v1, :cond_1

    iget-boolean v3, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBoxExecutor;->mBAmbientLuxValid:Z

    if-eqz v3, :cond_1

    .line 153
    invoke-interface {v1, p1, p2, p3}, Lcom/android/server/power/AmbientLuxBox$AmbientLuxListener;->onAmbientLuxChanged(FIZ)V

    .line 148
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 156
    .end local v1           #listener:Lcom/android/server/power/AmbientLuxBox$AmbientLuxListener;
    :cond_2
    return-void
.end method

.method public registerAmbientLuxListener(Lcom/android/server/power/AmbientLuxBox$AmbientLuxListener;)Z
    .locals 5
    .parameter "listener"

    .prologue
    .line 107
    const/4 v2, 0x0

    .line 108
    .local v2, result:Z
    iget-object v4, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBoxExecutor;->sListeners:Ljava/util/ArrayList;

    monitor-enter v4

    .line 110
    :try_start_0
    iget-object v3, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBoxExecutor;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxListener;

    .line 111
    .local v0, i:Lcom/android/server/power/AmbientLuxBox$AmbientLuxListener;
    if-ne v0, p1, :cond_0

    .line 112
    const/4 v2, 0x1

    .line 116
    .end local v0           #i:Lcom/android/server/power/AmbientLuxBox$AmbientLuxListener;
    :cond_1
    if-nez v2, :cond_2

    .line 117
    const/4 v2, 0x1

    .line 118
    iget-object v3, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBoxExecutor;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    :cond_2
    monitor-exit v4

    .line 121
    return v2

    .line 120
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public setAmbientLuxBoxEnable(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 159
    if-eqz p1, :cond_1

    .line 160
    iget-boolean v0, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBoxExecutor;->mBLightSensorEnabled:Z

    if-nez v0, :cond_0

    .line 161
    iput-boolean v2, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBoxExecutor;->mBLightSensorEnabled:Z

    .line 162
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    long-to-float v0, v0

    iput v0, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBoxExecutor;->mBLightSensorEnableTime:F

    .line 172
    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBoxExecutor;->updateAmbientLuxEnable(Z)V

    .line 173
    return-void

    .line 165
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBoxExecutor;->mBLightSensorEnabled:Z

    if-eqz v0, :cond_0

    .line 166
    iput-boolean v1, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBoxExecutor;->mBLightSensorEnabled:Z

    .line 167
    iput-boolean v1, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBoxExecutor;->mBAmbientLuxValid:Z

    .line 168
    iput v1, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBoxExecutor;->mBRecentLightSamples:I

    .line 169
    invoke-virtual {p0, v2}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0
.end method

.method public unregisterAmbientLuxListener(Lcom/android/server/power/AmbientLuxBox$AmbientLuxListener;)Z
    .locals 5
    .parameter "listener"

    .prologue
    .line 125
    const/4 v2, 0x0

    .line 126
    .local v2, result:Z
    iget-object v4, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBoxExecutor;->sListeners:Ljava/util/ArrayList;

    monitor-enter v4

    .line 128
    :try_start_0
    iget-object v3, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBoxExecutor;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxListener;

    .line 129
    .local v0, i:Lcom/android/server/power/AmbientLuxBox$AmbientLuxListener;
    if-ne v0, p1, :cond_0

    .line 130
    iget-object v3, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBoxExecutor;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 131
    const/4 v2, 0x1

    .line 135
    .end local v0           #i:Lcom/android/server/power/AmbientLuxBox$AmbientLuxListener;
    :cond_1
    monitor-exit v4

    .line 136
    return v2

    .line 135
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method protected abstract updateAmbientLuxEnable(Z)V
.end method

.method public abstract updateLightSensorMeasurement(JF)V
.end method
