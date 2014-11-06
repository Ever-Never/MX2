.class public interface abstract Lcom/meizu/security/FileProtectManager$OnGrantChangedListener;
.super Ljava/lang/Object;
.source "FileProtectManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/security/FileProtectManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnGrantChangedListener"
.end annotation


# virtual methods
.method public abstract onFailedGranted()V
.end method

.method public abstract onGranted()V
.end method

.method public abstract onUngranted()V
.end method
