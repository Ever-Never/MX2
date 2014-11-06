.class Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$WallpaperObserver;
.super Landroid/content/BroadcastReceiver;
.source "KeyguardViewContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WallpaperObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;


# direct methods
.method constructor <init>(Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;)V
    .locals 0
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$WallpaperObserver;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 59
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, action:Ljava/lang/String;
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$WallpaperObserver;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;

    new-instance v2, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$WallpaperObserver$1;

    invoke-direct {v2, p0, v0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$WallpaperObserver$1;-><init>(Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$WallpaperObserver;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 71
    return-void
.end method
