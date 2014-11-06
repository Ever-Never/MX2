.class Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView$8;
.super Ljava/lang/Object;
.source "KeyguardFindPhoneView.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;


# direct methods
.method constructor <init>(Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;)V
    .locals 0
    .parameter

    .prologue
    .line 834
    iput-object p1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView$8;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .parameter "name"
    .parameter "service"

    .prologue
    const/16 v3, 0x3ea

    .line 837
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView$8;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;

    iget-object v1, v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mFindPhoneConnection:Landroid/content/ServiceConnection;

    monitor-enter v1

    .line 838
    :try_start_0
    invoke-static {}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->access$1100()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "FindPhone"

    const-string v2, "onServiceConnected for photo"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    :cond_0
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView$8;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;

    invoke-static {p2}, Lcom/meizu/flyme/service/find/IPhoneLocationService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/meizu/flyme/service/find/IPhoneLocationService;

    move-result-object v2

    #setter for: Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mFindPhoneService:Lcom/meizu/flyme/service/find/IPhoneLocationService;
    invoke-static {v0, v2}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->access$1702(Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;Lcom/meizu/flyme/service/find/IPhoneLocationService;)Lcom/meizu/flyme/service/find/IPhoneLocationService;

    .line 840
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 841
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView$8;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 842
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView$8;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 843
    return-void

    .line 840
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .parameter "name"

    .prologue
    .line 847
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView$8;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;

    iget-object v1, v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mFindPhoneConnection:Landroid/content/ServiceConnection;

    monitor-enter v1

    .line 848
    :try_start_0
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView$8;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;

    const/4 v2, 0x0

    #setter for: Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mFindPhoneService:Lcom/meizu/flyme/service/find/IPhoneLocationService;
    invoke-static {v0, v2}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->access$1702(Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;Lcom/meizu/flyme/service/find/IPhoneLocationService;)Lcom/meizu/flyme/service/find/IPhoneLocationService;

    .line 849
    invoke-static {}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->access$1100()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "FindPhone"

    const-string v2, "onServiceDisconnected for photo"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    :cond_0
    monitor-exit v1

    .line 851
    return-void

    .line 850
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
