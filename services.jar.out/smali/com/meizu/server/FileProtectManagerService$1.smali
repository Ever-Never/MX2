.class Lcom/meizu/server/FileProtectManagerService$1;
.super Ljava/lang/Object;
.source "FileProtectManagerService.java"

# interfaces
.implements Lcom/meizu/server/FileProtectPasswordView$OnAddGlobalUlockFileListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/server/FileProtectManagerService;->handleAddGlobalUnlockFile(Lcom/meizu/server/FileProtectManagerService$FileProtectData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/server/FileProtectManagerService;

.field final synthetic val$data:Lcom/meizu/server/FileProtectManagerService$FileProtectData;


# direct methods
.method constructor <init>(Lcom/meizu/server/FileProtectManagerService;Lcom/meizu/server/FileProtectManagerService$FileProtectData;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 464
    iput-object p1, p0, Lcom/meizu/server/FileProtectManagerService$1;->this$0:Lcom/meizu/server/FileProtectManagerService;

    iput-object p2, p0, Lcom/meizu/server/FileProtectManagerService$1;->val$data:Lcom/meizu/server/FileProtectManagerService$FileProtectData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(ZLjava/lang/Object;)V
    .locals 4
    .parameter "result"
    .parameter "extraData"

    .prologue
    .line 467
    if-eqz p1, :cond_1

    .line 468
    iget-object v1, p0, Lcom/meizu/server/FileProtectManagerService$1;->this$0:Lcom/meizu/server/FileProtectManagerService;

    #getter for: Lcom/meizu/server/FileProtectManagerService;->mGlobalUnlockFileSet:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/meizu/server/FileProtectManagerService;->access$000(Lcom/meizu/server/FileProtectManagerService;)Ljava/util/ArrayList;

    move-result-object v2

    monitor-enter v2

    .line 469
    if-eqz p2, :cond_0

    .line 470
    :try_start_0
    iget-object v1, p0, Lcom/meizu/server/FileProtectManagerService$1;->this$0:Lcom/meizu/server/FileProtectManagerService;

    #getter for: Lcom/meizu/server/FileProtectManagerService;->mGlobalUnlockFileSet:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/meizu/server/FileProtectManagerService;->access$000(Lcom/meizu/server/FileProtectManagerService;)Ljava/util/ArrayList;

    move-result-object v1

    check-cast p2, Lcom/meizu/server/FileProtectManagerService$FileProtectData;

    .end local p2
    iget-object v3, p2, Lcom/meizu/server/FileProtectManagerService$FileProtectData;->globalFilePath:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 471
    iget-object v1, p0, Lcom/meizu/server/FileProtectManagerService$1;->this$0:Lcom/meizu/server/FileProtectManagerService;

    #calls: Lcom/meizu/server/FileProtectManagerService;->setAllPaths()V
    invoke-static {v1}, Lcom/meizu/server/FileProtectManagerService;->access$100(Lcom/meizu/server/FileProtectManagerService;)V

    .line 473
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 475
    :try_start_1
    iget-object v1, p0, Lcom/meizu/server/FileProtectManagerService$1;->val$data:Lcom/meizu/server/FileProtectManagerService$FileProtectData;

    iget-object v1, v1, Lcom/meizu/server/FileProtectManagerService$FileProtectData;->notifier:Lmeizu/app/INotifier;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lmeizu/app/INotifier;->onAddGlobalUnlcokFileResult(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 488
    :goto_0
    return-void

    .line 473
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 476
    :catch_0
    move-exception v0

    .line 478
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 482
    .end local v0           #e:Landroid/os/RemoteException;
    .restart local p2
    :cond_1
    :try_start_3
    iget-object v1, p0, Lcom/meizu/server/FileProtectManagerService$1;->val$data:Lcom/meizu/server/FileProtectManagerService$FileProtectData;

    iget-object v1, v1, Lcom/meizu/server/FileProtectManagerService$FileProtectData;->notifier:Lmeizu/app/INotifier;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lmeizu/app/INotifier;->onAddGlobalUnlcokFileResult(Z)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 483
    :catch_1
    move-exception v0

    .line 485
    .restart local v0       #e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
