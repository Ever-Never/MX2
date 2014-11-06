.class public interface abstract Lcom/meizu/internal/policy/impl/keyguard/IKeyguardAlarmService;
.super Ljava/lang/Object;
.source "IKeyguardAlarmService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/internal/policy/impl/keyguard/IKeyguardAlarmService$Stub;
    }
.end annotation


# virtual methods
.method public abstract setActionCallback(Lcom/meizu/internal/policy/impl/keyguard/IKeyguardAlarmActionCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract startAlarm(Ljava/lang/String;[Ljava/lang/String;ZZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract stopAlarm(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
