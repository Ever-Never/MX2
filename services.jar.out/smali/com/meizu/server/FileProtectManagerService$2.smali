.class Lcom/meizu/server/FileProtectManagerService$2;
.super Landroid/os/Handler;
.source "FileProtectManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/server/FileProtectManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/server/FileProtectManagerService;


# direct methods
.method constructor <init>(Lcom/meizu/server/FileProtectManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 518
    iput-object p1, p0, Lcom/meizu/server/FileProtectManagerService$2;->this$0:Lcom/meizu/server/FileProtectManagerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v0, 0x1

    .line 521
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 557
    :goto_0
    return-void

    .line 526
    :pswitch_0
    iget-object v1, p0, Lcom/meizu/server/FileProtectManagerService$2;->this$0:Lcom/meizu/server/FileProtectManagerService;

    #getter for: Lcom/meizu/server/FileProtectManagerService;->mGrantedPids:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/meizu/server/FileProtectManagerService;->access$300(Lcom/meizu/server/FileProtectManagerService;)Ljava/util/HashMap;

    move-result-object v2

    monitor-enter v2

    .line 527
    :try_start_0
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v0, :cond_0

    .line 528
    .local v0, passwordEnable:Z
    :goto_1
    iget-object v1, p0, Lcom/meizu/server/FileProtectManagerService$2;->this$0:Lcom/meizu/server/FileProtectManagerService;

    #setter for: Lcom/meizu/server/FileProtectManagerService;->mPasswordEnable:Z
    invoke-static {v1, v0}, Lcom/meizu/server/FileProtectManagerService;->access$402(Lcom/meizu/server/FileProtectManagerService;Z)Z

    .line 529
    if-eqz v0, :cond_1

    .line 530
    iget-object v1, p0, Lcom/meizu/server/FileProtectManagerService$2;->this$0:Lcom/meizu/server/FileProtectManagerService;

    #calls: Lcom/meizu/server/FileProtectManagerService;->setAllPids()V
    invoke-static {v1}, Lcom/meizu/server/FileProtectManagerService;->access$500(Lcom/meizu/server/FileProtectManagerService;)V

    .line 534
    :goto_2
    const-string v1, "FileProtect"

    const-string v3, "handle MSG_PASSWORD_CHANGED"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    monitor-exit v2

    goto :goto_0

    .end local v0           #passwordEnable:Z
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 527
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 532
    .restart local v0       #passwordEnable:Z
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/meizu/server/FileProtectManagerService$2;->this$0:Lcom/meizu/server/FileProtectManagerService;

    const/4 v3, -0x1

    #calls: Lcom/meizu/server/FileProtectManagerService;->setPid(I)V
    invoke-static {v1, v3}, Lcom/meizu/server/FileProtectManagerService;->access$600(Lcom/meizu/server/FileProtectManagerService;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 538
    .end local v0           #passwordEnable:Z
    :pswitch_1
    const-string v1, "FileProtect"

    const-string v2, "handle MSG_PATH_CHANGED .then set all pathes "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    iget-object v1, p0, Lcom/meizu/server/FileProtectManagerService$2;->this$0:Lcom/meizu/server/FileProtectManagerService;

    #calls: Lcom/meizu/server/FileProtectManagerService;->setAllPaths()V
    invoke-static {v1}, Lcom/meizu/server/FileProtectManagerService;->access$100(Lcom/meizu/server/FileProtectManagerService;)V

    goto :goto_0

    .line 542
    :pswitch_2
    iget-object v2, p0, Lcom/meizu/server/FileProtectManagerService$2;->this$0:Lcom/meizu/server/FileProtectManagerService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/meizu/server/FileProtectManagerService$FileProtectData;

    #calls: Lcom/meizu/server/FileProtectManagerService;->handleRequestGranted(Lcom/meizu/server/FileProtectManagerService$FileProtectData;)V
    invoke-static {v2, v1}, Lcom/meizu/server/FileProtectManagerService;->access$700(Lcom/meizu/server/FileProtectManagerService;Lcom/meizu/server/FileProtectManagerService$FileProtectData;)V

    goto :goto_0

    .line 545
    :pswitch_3
    iget-object v2, p0, Lcom/meizu/server/FileProtectManagerService$2;->this$0:Lcom/meizu/server/FileProtectManagerService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lmeizu/app/INotifier;

    #calls: Lcom/meizu/server/FileProtectManagerService;->handlerCheckPassword(Lmeizu/app/INotifier;)V
    invoke-static {v2, v1}, Lcom/meizu/server/FileProtectManagerService;->access$800(Lcom/meizu/server/FileProtectManagerService;Lmeizu/app/INotifier;)V

    goto :goto_0

    .line 548
    :pswitch_4
    iget-object v2, p0, Lcom/meizu/server/FileProtectManagerService$2;->this$0:Lcom/meizu/server/FileProtectManagerService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lmeizu/app/INotifier;

    #calls: Lcom/meizu/server/FileProtectManagerService;->handlerOpenPassword(Lmeizu/app/INotifier;)V
    invoke-static {v2, v1}, Lcom/meizu/server/FileProtectManagerService;->access$900(Lcom/meizu/server/FileProtectManagerService;Lmeizu/app/INotifier;)V

    goto :goto_0

    .line 551
    :pswitch_5
    iget-object v1, p0, Lcom/meizu/server/FileProtectManagerService$2;->this$0:Lcom/meizu/server/FileProtectManagerService;

    #calls: Lcom/meizu/server/FileProtectManagerService;->handlerGrantedExpired()V
    invoke-static {v1}, Lcom/meizu/server/FileProtectManagerService;->access$1000(Lcom/meizu/server/FileProtectManagerService;)V

    goto :goto_0

    .line 554
    :pswitch_6
    iget-object v2, p0, Lcom/meizu/server/FileProtectManagerService$2;->this$0:Lcom/meizu/server/FileProtectManagerService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/meizu/server/FileProtectManagerService$FileProtectData;

    #calls: Lcom/meizu/server/FileProtectManagerService;->handleAddGlobalUnlockFile(Lcom/meizu/server/FileProtectManagerService$FileProtectData;)V
    invoke-static {v2, v1}, Lcom/meizu/server/FileProtectManagerService;->access$1100(Lcom/meizu/server/FileProtectManagerService;Lcom/meizu/server/FileProtectManagerService$FileProtectData;)V

    goto :goto_0

    .line 521
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
