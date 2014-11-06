.class Lcom/android/internal/policy/impl/PhoneWindowManager$39;
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
    .line 6775
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$39;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 6777
    const-string v1, "com.mz.action.DISABLE_RECENT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6778
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/app/factoryTest/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6779
    .local v0, verifyDir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6780
    const-string v1, "WindowManager"

    const-string v2, "factory test file exists"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6781
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$39;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    #calls: Lcom/android/internal/policy/impl/PhoneWindowManager;->disableRecentForFactory()V
    invoke-static {v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$1600(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    .line 6786
    .end local v0           #verifyDir:Ljava/io/File;
    :cond_0
    :goto_0
    return-void

    .line 6783
    :cond_1
    const-string v1, "com.mz.action.RESET_RECENT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6784
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$39;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    #calls: Lcom/android/internal/policy/impl/PhoneWindowManager;->resetRecentValid()V
    invoke-static {v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$1700(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    goto :goto_0
.end method
