.class public abstract Lcom/meizu/internal/policy/impl/keyguard/IKeyguardAlarmService$Stub;
.super Landroid/os/Binder;
.source "IKeyguardAlarmService.java"

# interfaces
.implements Lcom/meizu/internal/policy/impl/keyguard/IKeyguardAlarmService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/internal/policy/impl/keyguard/IKeyguardAlarmService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/internal/policy/impl/keyguard/IKeyguardAlarmService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.meizu.internal.policy.impl.keyguard.IKeyguardAlarmService"

.field static final TRANSACTION_setActionCallback:I = 0x3

.field static final TRANSACTION_startAlarm:I = 0x1

.field static final TRANSACTION_stopAlarm:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.meizu.internal.policy.impl.keyguard.IKeyguardAlarmService"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/meizu/internal/policy/impl/keyguard/IKeyguardAlarmService;
    .locals 2
    .parameter "obj"

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string v1, "com.meizu.internal.policy.impl.keyguard.IKeyguardAlarmService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/meizu/internal/policy/impl/keyguard/IKeyguardAlarmService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/meizu/internal/policy/impl/keyguard/IKeyguardAlarmService;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/meizu/internal/policy/impl/keyguard/IKeyguardAlarmService$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/meizu/internal/policy/impl/keyguard/IKeyguardAlarmService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 79
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    .line 42
    :sswitch_0
    const-string v5, "com.meizu.internal.policy.impl.keyguard.IKeyguardAlarmService"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v6, "com.meizu.internal.policy.impl.keyguard.IKeyguardAlarmService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 53
    .local v1, _arg1:[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_0

    move v2, v4

    .line 55
    .local v2, _arg2:Z
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1

    move v3, v4

    .line 56
    .local v3, _arg3:Z
    :goto_2
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/meizu/internal/policy/impl/keyguard/IKeyguardAlarmService$Stub;->startAlarm(Ljava/lang/String;[Ljava/lang/String;ZZ)V

    .line 57
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .end local v2           #_arg2:Z
    .end local v3           #_arg3:Z
    :cond_0
    move v2, v5

    .line 53
    goto :goto_1

    .restart local v2       #_arg2:Z
    :cond_1
    move v3, v5

    .line 55
    goto :goto_2

    .line 62
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:[Ljava/lang/String;
    .end local v2           #_arg2:Z
    :sswitch_2
    const-string v6, "com.meizu.internal.policy.impl.keyguard.IKeyguardAlarmService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_2

    move v0, v4

    .line 65
    .local v0, _arg0:Z
    :goto_3
    invoke-virtual {p0, v0}, Lcom/meizu/internal/policy/impl/keyguard/IKeyguardAlarmService$Stub;->stopAlarm(Z)V

    .line 66
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .end local v0           #_arg0:Z
    :cond_2
    move v0, v5

    .line 64
    goto :goto_3

    .line 71
    :sswitch_3
    const-string v5, "com.meizu.internal.policy.impl.keyguard.IKeyguardAlarmService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/meizu/internal/policy/impl/keyguard/IKeyguardAlarmActionCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/meizu/internal/policy/impl/keyguard/IKeyguardAlarmActionCallback;

    move-result-object v0

    .line 74
    .local v0, _arg0:Lcom/meizu/internal/policy/impl/keyguard/IKeyguardAlarmActionCallback;
    invoke-virtual {p0, v0}, Lcom/meizu/internal/policy/impl/keyguard/IKeyguardAlarmService$Stub;->setActionCallback(Lcom/meizu/internal/policy/impl/keyguard/IKeyguardAlarmActionCallback;)V

    .line 75
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 38
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
