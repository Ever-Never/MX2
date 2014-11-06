.class Lcom/meizu/internal/policy/impl/keyguard/SnapshotHelper$1;
.super Ljava/lang/Thread;
.source "SnapshotHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/internal/policy/impl/keyguard/SnapshotHelper;->startSnapshotThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/internal/policy/impl/keyguard/SnapshotHelper;


# direct methods
.method constructor <init>(Lcom/meizu/internal/policy/impl/keyguard/SnapshotHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/meizu/internal/policy/impl/keyguard/SnapshotHelper$1;->this$0:Lcom/meizu/internal/policy/impl/keyguard/SnapshotHelper;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 71
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/SnapshotHelper$1;->this$0:Lcom/meizu/internal/policy/impl/keyguard/SnapshotHelper;

    monitor-enter v1

    .line 73
    :try_start_0
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/SnapshotHelper$1;->this$0:Lcom/meizu/internal/policy/impl/keyguard/SnapshotHelper;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/SnapshotHelper;->mHoldSnapshot:Z
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/keyguard/SnapshotHelper;->access$000(Lcom/meizu/internal/policy/impl/keyguard/SnapshotHelper;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    const-string v0, "SnapshotHelper"

    const-string v2, "the snapshot is holded, so do nothing"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/SnapshotHelper$1;->this$0:Lcom/meizu/internal/policy/impl/keyguard/SnapshotHelper;

    const/4 v2, 0x1

    #setter for: Lcom/meizu/internal/policy/impl/keyguard/SnapshotHelper;->mUpdateAfterRelease:Z
    invoke-static {v0, v2}, Lcom/meizu/internal/policy/impl/keyguard/SnapshotHelper;->access$102(Lcom/meizu/internal/policy/impl/keyguard/SnapshotHelper;Z)Z

    .line 76
    monitor-exit v1

    .line 81
    :goto_0
    return-void

    .line 78
    :cond_0
    const-string v0, "SnapshotHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startSnapshot Thread, old snapShot is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/SnapshotHelper$1;->this$0:Lcom/meizu/internal/policy/impl/keyguard/SnapshotHelper;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/SnapshotHelper;->mSnapshot:Landroid/graphics/Bitmap;
    invoke-static {v3}, Lcom/meizu/internal/policy/impl/keyguard/SnapshotHelper;->access$200(Lcom/meizu/internal/policy/impl/keyguard/SnapshotHelper;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/SnapshotHelper$1;->this$0:Lcom/meizu/internal/policy/impl/keyguard/SnapshotHelper;

    #calls: Lcom/meizu/internal/policy/impl/keyguard/SnapshotHelper;->snapshotBehindKeyguardLocked()V
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/keyguard/SnapshotHelper;->access$300(Lcom/meizu/internal/policy/impl/keyguard/SnapshotHelper;)V

    .line 80
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
