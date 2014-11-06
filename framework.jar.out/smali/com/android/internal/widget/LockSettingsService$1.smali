.class Lcom/android/internal/widget/LockSettingsService$1;
.super Ljava/lang/Object;
.source "LockSettingsService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/LockSettingsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/LockSettingsService;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/LockSettingsService;)V
    .locals 0
    .parameter

    .prologue
    .line 558
    iput-object p1, p0, Lcom/android/internal/widget/LockSettingsService$1;->this$0:Lcom/android/internal/widget/LockSettingsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5
    .parameter "name"
    .parameter "service"

    .prologue
    .line 562
    iget-object v2, p0, Lcom/android/internal/widget/LockSettingsService$1;->this$0:Lcom/android/internal/widget/LockSettingsService;

    iget-object v3, v2, Lcom/android/internal/widget/LockSettingsService;->mFindPhoneConnection:Landroid/content/ServiceConnection;

    monitor-enter v3

    .line 563
    :try_start_0
    invoke-static {}, Lcom/android/internal/widget/LockSettingsService;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "onServiceConnected-------------"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    invoke-static {p2}, Lcom/meizu/flyme/service/find/IPhoneLocationService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/meizu/flyme/service/find/IPhoneLocationService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 566
    .local v1, findPhoneService:Lcom/meizu/flyme/service/find/IPhoneLocationService;
    :try_start_1
    invoke-static {}, Lcom/android/internal/widget/LockSettingsService;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "try findPhoneService.lockPhone();"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    invoke-interface {v1}, Lcom/meizu/flyme/service/find/IPhoneLocationService;->lockPhone()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 571
    :goto_0
    :try_start_2
    iget-object v2, p0, Lcom/android/internal/widget/LockSettingsService$1;->this$0:Lcom/android/internal/widget/LockSettingsService;

    #getter for: Lcom/android/internal/widget/LockSettingsService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/internal/widget/LockSettingsService;->access$200(Lcom/android/internal/widget/LockSettingsService;)Landroid/content/Context;

    move-result-object v2

    iget-object v4, p0, Lcom/android/internal/widget/LockSettingsService$1;->this$0:Lcom/android/internal/widget/LockSettingsService;

    iget-object v4, v4, Lcom/android/internal/widget/LockSettingsService;->mFindPhoneConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v4}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 572
    monitor-exit v3

    .line 574
    return-void

    .line 568
    :catch_0
    move-exception v0

    .line 569
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 572
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v1           #findPhoneService:Lcom/meizu/flyme/service/find/IPhoneLocationService;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 578
    invoke-static {}, Lcom/android/internal/widget/LockSettingsService;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onServiceDisconnected-------------"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    return-void
.end method
