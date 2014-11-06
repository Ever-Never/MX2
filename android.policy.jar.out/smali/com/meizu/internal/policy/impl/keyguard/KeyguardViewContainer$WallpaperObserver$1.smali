.class Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$WallpaperObserver$1;
.super Ljava/lang/Object;
.source "KeyguardViewContainer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$WallpaperObserver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$WallpaperObserver;

.field final synthetic val$action:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$WallpaperObserver;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$WallpaperObserver$1;->this$1:Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$WallpaperObserver;

    iput-object p2, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$WallpaperObserver$1;->val$action:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 63
    const-string v0, "android.intent.action.LOCK_WALLPAPER_CHANGED"

    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$WallpaperObserver$1;->val$action:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$WallpaperObserver$1;->this$1:Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$WallpaperObserver;

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$WallpaperObserver;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;

    const/4 v1, 0x0

    #calls: Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;->updateWallpaper(Z)V
    invoke-static {v0, v1}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;->access$000(Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;Z)V

    .line 67
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 69
    :cond_0
    return-void
.end method
