.class Lcom/meizu/server/FileProtectManagerService$4;
.super Landroid/app/IProcessObserver$Stub;
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
    .line 578
    iput-object p1, p0, Lcom/meizu/server/FileProtectManagerService$4;->this$0:Lcom/meizu/server/FileProtectManagerService;

    invoke-direct {p0}, Landroid/app/IProcessObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onForegroundActivitiesChanged(IIZ)V
    .locals 0
    .parameter "pid"
    .parameter "uid"
    .parameter "foregroundActivities"

    .prologue
    .line 582
    return-void
.end method

.method public onImportanceChanged(III)V
    .locals 0
    .parameter "pid"
    .parameter "uid"
    .parameter "importance"

    .prologue
    .line 586
    return-void
.end method

.method public onProcessDied(II)V
    .locals 1
    .parameter "pid"
    .parameter "uid"

    .prologue
    .line 590
    iget-object v0, p0, Lcom/meizu/server/FileProtectManagerService$4;->this$0:Lcom/meizu/server/FileProtectManagerService;

    invoke-virtual {v0, p1}, Lcom/meizu/server/FileProtectManagerService;->removePidLocked(I)Z

    .line 591
    return-void
.end method
