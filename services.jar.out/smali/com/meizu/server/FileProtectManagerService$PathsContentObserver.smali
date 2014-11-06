.class Lcom/meizu/server/FileProtectManagerService$PathsContentObserver;
.super Landroid/database/ContentObserver;
.source "FileProtectManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/server/FileProtectManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PathsContentObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/server/FileProtectManagerService;


# direct methods
.method public constructor <init>(Lcom/meizu/server/FileProtectManagerService;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "handler"

    .prologue
    .line 508
    iput-object p1, p0, Lcom/meizu/server/FileProtectManagerService$PathsContentObserver;->this$0:Lcom/meizu/server/FileProtectManagerService;

    .line 509
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 510
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .parameter "selfChange"

    .prologue
    .line 513
    iget-object v0, p0, Lcom/meizu/server/FileProtectManagerService$PathsContentObserver;->this$0:Lcom/meizu/server/FileProtectManagerService;

    #getter for: Lcom/meizu/server/FileProtectManagerService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/meizu/server/FileProtectManagerService;->access$200(Lcom/meizu/server/FileProtectManagerService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/server/FileProtectManagerService$PathsContentObserver;->this$0:Lcom/meizu/server/FileProtectManagerService;

    #getter for: Lcom/meizu/server/FileProtectManagerService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/meizu/server/FileProtectManagerService;->access$200(Lcom/meizu/server/FileProtectManagerService;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 514
    const-string v0, "FileProtect"

    const-string v1, "FilePathObserver, onchange---------------"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    return-void
.end method
