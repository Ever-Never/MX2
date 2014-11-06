.class Lcom/android/internal/policy/impl/PhoneWindowManager$28;
.super Landroid/content/BroadcastReceiver;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 0
    .parameter

    .prologue
    .line 5553
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$28;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 5556
    const-string v7, "com.meizu.browser.show_back_menu"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 5557
    const-string v7, "isShow"

    invoke-virtual {p2, v7, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 5558
    .local v1, show:Z
    if-eqz v1, :cond_2

    .line 5559
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$28;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iput-boolean v5, v7, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBrowserNeedShowBackMenu:Z

    .line 5564
    :goto_0
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$28;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isLandScape()Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$28;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-boolean v7, v7, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsNoActionBar:Z

    if-eqz v7, :cond_3

    move v3, v5

    .line 5565
    .local v3, visible1:Z
    :goto_1
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$28;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-boolean v7, v7, Lcom/android/internal/policy/impl/PhoneWindowManager;->mInBrowserActivity:Z

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$28;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isLandScape()Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$28;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-boolean v7, v7, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBrowserNeedShowBackMenu:Z

    if-eqz v7, :cond_4

    move v4, v5

    .line 5566
    .local v4, visible2:Z
    :goto_2
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$28;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    if-nez v3, :cond_0

    if-eqz v4, :cond_5

    :cond_0
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$28;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-boolean v8, v8, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceHideBackMore:Z

    if-nez v8, :cond_5

    :goto_3
    iput-boolean v5, v7, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBackMenuVisible:Z

    .line 5569
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$28;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v2

    .line 5570
    .local v2, statusbar:Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v2, :cond_1

    .line 5571
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$28;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-boolean v5, v5, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBackMenuVisible:Z

    invoke-interface {v2, v5}, Lcom/android/internal/statusbar/IStatusBarService;->setNavButtonVisible(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5578
    .end local v1           #show:Z
    .end local v2           #statusbar:Lcom/android/internal/statusbar/IStatusBarService;
    .end local v3           #visible1:Z
    .end local v4           #visible2:Z
    :cond_1
    :goto_4
    return-void

    .line 5561
    .restart local v1       #show:Z
    :cond_2
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$28;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iput-boolean v6, v7, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBrowserNeedShowBackMenu:Z

    goto :goto_0

    :cond_3
    move v3, v6

    .line 5564
    goto :goto_1

    .restart local v3       #visible1:Z
    :cond_4
    move v4, v6

    .line 5565
    goto :goto_2

    .restart local v4       #visible2:Z
    :cond_5
    move v5, v6

    .line 5566
    goto :goto_3

    .line 5573
    :catch_0
    move-exception v0

    .line 5575
    .local v0, ex:Landroid/os/RemoteException;
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$28;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    const/4 v6, 0x0

    iput-object v6, v5, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    goto :goto_4
.end method
