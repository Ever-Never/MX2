.class public interface abstract Lcom/meizu/internal/policy/impl/keyguard/IKeyguardAlarmActionCallback;
.super Ljava/lang/Object;
.source "IKeyguardAlarmActionCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/internal/policy/impl/keyguard/IKeyguardAlarmActionCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract userAction(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
