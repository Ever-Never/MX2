.class Lcom/meizu/security/FileProtectManager$Notifier;
.super Lmeizu/app/INotifier$Stub;
.source "FileProtectManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/security/FileProtectManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Notifier"
.end annotation


# instance fields
.field private mH:Landroid/os/Handler;

.field final synthetic this$0:Lcom/meizu/security/FileProtectManager;


# direct methods
.method public constructor <init>(Lcom/meizu/security/FileProtectManager;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "handler"

    .prologue
    .line 693
    iput-object p1, p0, Lcom/meizu/security/FileProtectManager$Notifier;->this$0:Lcom/meizu/security/FileProtectManager;

    invoke-direct {p0}, Lmeizu/app/INotifier$Stub;-><init>()V

    .line 694
    iput-object p2, p0, Lcom/meizu/security/FileProtectManager$Notifier;->mH:Landroid/os/Handler;

    .line 695
    return-void
.end method


# virtual methods
.method public OnPasswordChecked(Z)V
    .locals 3
    .parameter "success"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 714
    iget-object v0, p0, Lcom/meizu/security/FileProtectManager$Notifier;->mH:Landroid/os/Handler;

    const/16 v1, 0x3ed

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 715
    return-void
.end method

.method public OnPasswordOpened(Z)V
    .locals 3
    .parameter "success"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 719
    iget-object v0, p0, Lcom/meizu/security/FileProtectManager$Notifier;->mH:Landroid/os/Handler;

    const/16 v1, 0x3ec

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 720
    return-void
.end method

.method public notifyCompleteGranted()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 704
    iget-object v0, p0, Lcom/meizu/security/FileProtectManager$Notifier;->mH:Landroid/os/Handler;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 705
    return-void
.end method

.method public notifyFailedGranted()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 709
    iget-object v0, p0, Lcom/meizu/security/FileProtectManager$Notifier;->mH:Landroid/os/Handler;

    const/16 v1, 0x3eb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 710
    return-void
.end method

.method public notifyUngranted()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 699
    iget-object v0, p0, Lcom/meizu/security/FileProtectManager$Notifier;->mH:Landroid/os/Handler;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 700
    return-void
.end method

.method public onAddGlobalUnlcokFileResult(Z)V
    .locals 3
    .parameter "success"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 725
    iget-object v0, p0, Lcom/meizu/security/FileProtectManager$Notifier;->mH:Landroid/os/Handler;

    const/16 v1, 0x3ee

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 726
    return-void
.end method
