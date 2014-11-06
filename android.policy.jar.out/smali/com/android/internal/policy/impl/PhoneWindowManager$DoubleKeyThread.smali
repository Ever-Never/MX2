.class final Lcom/android/internal/policy/impl/PhoneWindowManager$DoubleKeyThread;
.super Ljava/lang/Thread;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DoubleKeyThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 0
    .parameter

    .prologue
    .line 6668
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$DoubleKeyThread;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 6671
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    .line 6672
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 6677
    const-wide/16 v2, 0x32

    :try_start_0
    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager$DoubleKeyThread;->sleep(J)V

    .line 6679
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/16 v2, 0x1e

    if-ge v1, v2, :cond_0

    .line 6680
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$DoubleKeyThread;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-boolean v2, v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDoubleKeyWaitAgain:Z

    if-eqz v2, :cond_0

    .line 6681
    const-wide/16 v2, 0x14

    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager$DoubleKeyThread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6679
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6687
    .end local v1           #i:I
    :catch_0
    move-exception v0

    .line 6690
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v2, "WindowManager"

    const-string v3, "Interrupt the DoubleKeyThread"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6694
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_0
    return-void
.end method
