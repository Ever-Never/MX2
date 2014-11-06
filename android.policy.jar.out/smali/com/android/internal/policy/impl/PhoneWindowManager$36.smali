.class Lcom/android/internal/policy/impl/PhoneWindowManager$36;
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
    .line 6631
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$36;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    .line 6634
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 6635
    .local v1, point:Landroid/graphics/Point;
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$36;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v3, v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDisplay:Landroid/view/Display;

    invoke-virtual {v3, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 6636
    iget v2, v1, Landroid/graphics/Point;->x:I

    .line 6637
    .local v2, width:I
    iget v0, v1, Landroid/graphics/Point;->y:I

    .line 6638
    .local v0, height:I
    if-ge v2, v0, :cond_0

    .line 6639
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$36;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    #setter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenDimByHome:Z
    invoke-static {v3, v4}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$1102(Lcom/android/internal/policy/impl/PhoneWindowManager;Z)Z

    .line 6642
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$36;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    #calls: Lcom/android/internal/policy/impl/PhoneWindowManager;->updateGestureBar(Z)V
    invoke-static {v3, v4}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$1000(Lcom/android/internal/policy/impl/PhoneWindowManager;Z)V

    .line 6643
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$36;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v3, v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$36;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v4, v4, Lcom/android/internal/policy/impl/PhoneWindowManager;->mGotoSleep:Ljava/lang/Runnable;

    const-wide/16 v5, 0x32

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 6648
    :cond_0
    return-void
.end method
