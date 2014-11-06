.class public interface abstract Lcom/meizu/backup/IMBackupAgent;
.super Ljava/lang/Object;
.source "IMBackupAgent.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/backup/IMBackupAgent$Stub;
    }
.end annotation


# virtual methods
.method public abstract doBackup()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract doRestore()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
