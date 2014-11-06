.class Lcom/android/internal/policy/impl/PhoneWindowManager$22;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 5291
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$22;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 5294
    const-string v0, "WindowManager"

    const-string v1, " go to sleep"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5295
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$22;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    #setter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenDimByHome:Z
    invoke-static {v0, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$1102(Lcom/android/internal/policy/impl/PhoneWindowManager;Z)Z

    .line 5296
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$22;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    #setter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->isScreenDim:Z
    invoke-static {v0, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$1202(Lcom/android/internal/policy/impl/PhoneWindowManager;Z)Z

    .line 5298
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$22;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->goToSleep(J)V

    .line 5301
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$22;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeKeyDown:Z

    .line 5302
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$22;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeLongPressed:Z

    .line 5303
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$22;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    #setter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mReturnHome:Z
    invoke-static {v0, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$1302(Lcom/android/internal/policy/impl/PhoneWindowManager;Z)Z

    .line 5304
    return-void
.end method
