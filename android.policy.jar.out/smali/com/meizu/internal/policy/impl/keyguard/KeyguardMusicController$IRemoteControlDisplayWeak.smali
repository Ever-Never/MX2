.class Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController$IRemoteControlDisplayWeak;
.super Landroid/media/IRemoteControlDisplay$Stub;
.source "KeyguardMusicController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IRemoteControlDisplayWeak"
.end annotation


# instance fields
.field private mLocalHandler:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/os/Handler;)V
    .locals 1
    .parameter "handler"

    .prologue
    .line 334
    invoke-direct {p0}, Landroid/media/IRemoteControlDisplay$Stub;-><init>()V

    .line 335
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController$IRemoteControlDisplayWeak;->mLocalHandler:Ljava/lang/ref/WeakReference;

    .line 336
    return-void
.end method


# virtual methods
.method public setAllMetadata(ILandroid/os/Bundle;Landroid/graphics/Bitmap;)V
    .locals 4
    .parameter "generationId"
    .parameter "metadata"
    .parameter "bitmap"

    .prologue
    const/16 v3, 0x13c

    .line 364
    invoke-static {}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;->access$100()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "LockMusic"

    const-string v2, "setAllMetadata"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    :cond_0
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController$IRemoteControlDisplayWeak;->mLocalHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 366
    .local v0, handler:Landroid/os/Handler;
    if-eqz v0, :cond_1

    .line 367
    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 368
    const/4 v1, 0x0

    invoke-virtual {v0, v3, p1, v1, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 370
    :cond_1
    return-void
.end method

.method public setArtwork(ILandroid/graphics/Bitmap;)V
    .locals 2
    .parameter "generationId"
    .parameter "bitmap"

    .prologue
    .line 360
    invoke-static {}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "LockMusic"

    const-string v1, "setArtwork"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    :cond_0
    return-void
.end method

.method public setCurrentClientId(ILandroid/app/PendingIntent;Z)V
    .locals 4
    .parameter "clientGeneration"
    .parameter "mediaIntent"
    .parameter "clearing"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 374
    invoke-static {}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;->access$100()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "LockMusic"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCurrentClientId,clearing:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    :cond_0
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController$IRemoteControlDisplayWeak;->mLocalHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 376
    .local v0, handler:Landroid/os/Handler;
    if-eqz v0, :cond_1

    .line 377
    const/16 v2, 0x13d

    if-eqz p3, :cond_2

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v2, p1, v1, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 380
    :cond_1
    return-void

    .line 377
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setMetadata(ILandroid/os/Bundle;)V
    .locals 4
    .parameter "generationId"
    .parameter "metadata"

    .prologue
    const/16 v3, 0x13c

    .line 347
    invoke-static {}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;->access$100()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "LockMusic"

    const-string v2, "setMetadata"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    :cond_0
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController$IRemoteControlDisplayWeak;->mLocalHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 349
    .local v0, handler:Landroid/os/Handler;
    if-eqz v0, :cond_1

    .line 350
    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 351
    const/4 v1, 0x0

    invoke-virtual {v0, v3, p1, v1, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 353
    :cond_1
    return-void
.end method

.method public setPlaybackState(IIJ)V
    .locals 4
    .parameter "generationId"
    .parameter "state"
    .parameter "stateChangeTimeMs"

    .prologue
    .line 339
    invoke-static {}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;->access$100()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "LockMusic"

    const-string v2, "setPlaybackState"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    :cond_0
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController$IRemoteControlDisplayWeak;->mLocalHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 341
    .local v0, handler:Landroid/os/Handler;
    if-eqz v0, :cond_1

    .line 342
    const/16 v1, 0x13b

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 344
    :cond_1
    return-void
.end method

.method public setTransportControlFlags(II)V
    .locals 2
    .parameter "generationId"
    .parameter "flags"

    .prologue
    .line 356
    invoke-static {}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "LockMusic"

    const-string v1, "setTransportControlFlags"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    :cond_0
    return-void
.end method
