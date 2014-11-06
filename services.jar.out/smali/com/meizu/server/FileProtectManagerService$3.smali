.class Lcom/meizu/server/FileProtectManagerService$3;
.super Landroid/content/BroadcastReceiver;
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
    .line 560
    iput-object p1, p0, Lcom/meizu/server/FileProtectManagerService$3;->this$0:Lcom/meizu/server/FileProtectManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/16 v5, 0x65

    const/4 v2, 0x0

    .line 563
    const-string v1, "android.intent.action.ACCESS_CONTROL_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 565
    iget-object v1, p0, Lcom/meizu/server/FileProtectManagerService$3;->this$0:Lcom/meizu/server/FileProtectManagerService;

    #getter for: Lcom/meizu/server/FileProtectManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v1}, Lcom/meizu/server/FileProtectManagerService;->access$1200(Lcom/meizu/server/FileProtectManagerService;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled()Z

    move-result v0

    .line 566
    .local v0, passwordEnable:Z
    iget-object v1, p0, Lcom/meizu/server/FileProtectManagerService$3;->this$0:Lcom/meizu/server/FileProtectManagerService;

    #getter for: Lcom/meizu/server/FileProtectManagerService;->mPasswordEnable:Z
    invoke-static {v1}, Lcom/meizu/server/FileProtectManagerService;->access$400(Lcom/meizu/server/FileProtectManagerService;)Z

    move-result v1

    if-eq v1, v0, :cond_0

    .line 567
    iget-object v1, p0, Lcom/meizu/server/FileProtectManagerService$3;->this$0:Lcom/meizu/server/FileProtectManagerService;

    #getter for: Lcom/meizu/server/FileProtectManagerService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/meizu/server/FileProtectManagerService;->access$200(Lcom/meizu/server/FileProtectManagerService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 568
    iget-object v1, p0, Lcom/meizu/server/FileProtectManagerService$3;->this$0:Lcom/meizu/server/FileProtectManagerService;

    #getter for: Lcom/meizu/server/FileProtectManagerService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/meizu/server/FileProtectManagerService;->access$200(Lcom/meizu/server/FileProtectManagerService;)Landroid/os/Handler;

    move-result-object v3

    iget-object v1, p0, Lcom/meizu/server/FileProtectManagerService$3;->this$0:Lcom/meizu/server/FileProtectManagerService;

    #getter for: Lcom/meizu/server/FileProtectManagerService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/meizu/server/FileProtectManagerService;->access$200(Lcom/meizu/server/FileProtectManagerService;)Landroid/os/Handler;

    move-result-object v4

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v4, v5, v1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 570
    :cond_0
    const-string v1, "FileProtect"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mPasswordReceiver . receive ACCESS_CONTROL_CHANGE_INTENT. old is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/meizu/server/FileProtectManagerService$3;->this$0:Lcom/meizu/server/FileProtectManagerService;

    #getter for: Lcom/meizu/server/FileProtectManagerService;->mPasswordEnable:Z
    invoke-static {v3}, Lcom/meizu/server/FileProtectManagerService;->access$400(Lcom/meizu/server/FileProtectManagerService;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", new is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    .end local v0           #passwordEnable:Z
    :cond_1
    return-void

    .restart local v0       #passwordEnable:Z
    :cond_2
    move v1, v2

    .line 568
    goto :goto_0
.end method
