.class public abstract Lmeizu/app/IFileProtect$Stub;
.super Landroid/os/Binder;
.source "IFileProtect.java"

# interfaces
.implements Lmeizu/app/IFileProtect;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmeizu/app/IFileProtect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmeizu/app/IFileProtect$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "meizu.app.IFileProtect"

.field static final TRANSACTION_addGlobalUnlockFile:I = 0x3

.field static final TRANSACTION_checkGranted:I = 0x1

.field static final TRANSACTION_checkPassword:I = 0x4

.field static final TRANSACTION_grantedExpired:I = 0x6

.field static final TRANSACTION_isGlobalUnlockFile:I = 0x7

.field static final TRANSACTION_openPassword:I = 0x5

.field static final TRANSACTION_requestGranted:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string/jumbo v0, "meizu.app.IFileProtect"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lmeizu/app/IFileProtect;
    .locals 2
    .parameter "obj"

    .prologue
    .line 24
    if-nez p0, :cond_0

    .line 25
    const/4 v0, 0x0

    .line 31
    :goto_0
    return-object v0

    .line 27
    :cond_0
    const-string/jumbo v1, "meizu.app.IFileProtect"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lmeizu/app/IFileProtect;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Lmeizu/app/IFileProtect;

    goto :goto_0

    .line 31
    :cond_1
    new-instance v0, Lmeizu/app/IFileProtect$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lmeizu/app/IFileProtect$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 35
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
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 39
    sparse-switch p1, :sswitch_data_0

    .line 114
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_0
    return v5

    .line 43
    :sswitch_0
    const-string/jumbo v4, "meizu.app.IFileProtect"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 48
    :sswitch_1
    const-string/jumbo v6, "meizu.app.IFileProtect"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0}, Lmeizu/app/IFileProtect$Stub;->checkGranted()Z

    move-result v3

    .line 50
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 51
    if-eqz v3, :cond_0

    move v4, v5

    :cond_0
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 56
    .end local v3           #_result:Z
    :sswitch_2
    const-string/jumbo v6, "meizu.app.IFileProtect"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1

    move v0, v5

    .line 60
    .local v0, _arg0:Z
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lmeizu/app/INotifier$Stub;->asInterface(Landroid/os/IBinder;)Lmeizu/app/INotifier;

    move-result-object v1

    .line 62
    .local v1, _arg1:Lmeizu/app/INotifier;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 63
    .local v2, _arg2:I
    invoke-virtual {p0, v0, v1, v2}, Lmeizu/app/IFileProtect$Stub;->requestGranted(ZLmeizu/app/INotifier;I)V

    .line 64
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .end local v0           #_arg0:Z
    .end local v1           #_arg1:Lmeizu/app/INotifier;
    .end local v2           #_arg2:I
    :cond_1
    move v0, v4

    .line 58
    goto :goto_1

    .line 69
    :sswitch_3
    const-string/jumbo v4, "meizu.app.IFileProtect"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lmeizu/app/INotifier$Stub;->asInterface(Landroid/os/IBinder;)Lmeizu/app/INotifier;

    move-result-object v1

    .line 74
    .restart local v1       #_arg1:Lmeizu/app/INotifier;
    invoke-virtual {p0, v0, v1}, Lmeizu/app/IFileProtect$Stub;->addGlobalUnlockFile(Ljava/lang/String;Lmeizu/app/INotifier;)V

    .line 75
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 80
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:Lmeizu/app/INotifier;
    :sswitch_4
    const-string/jumbo v4, "meizu.app.IFileProtect"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lmeizu/app/INotifier$Stub;->asInterface(Landroid/os/IBinder;)Lmeizu/app/INotifier;

    move-result-object v0

    .line 83
    .local v0, _arg0:Lmeizu/app/INotifier;
    invoke-virtual {p0, v0}, Lmeizu/app/IFileProtect$Stub;->checkPassword(Lmeizu/app/INotifier;)V

    .line 84
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 89
    .end local v0           #_arg0:Lmeizu/app/INotifier;
    :sswitch_5
    const-string/jumbo v4, "meizu.app.IFileProtect"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lmeizu/app/INotifier$Stub;->asInterface(Landroid/os/IBinder;)Lmeizu/app/INotifier;

    move-result-object v0

    .line 92
    .restart local v0       #_arg0:Lmeizu/app/INotifier;
    invoke-virtual {p0, v0}, Lmeizu/app/IFileProtect$Stub;->openPassword(Lmeizu/app/INotifier;)V

    .line 93
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 98
    .end local v0           #_arg0:Lmeizu/app/INotifier;
    :sswitch_6
    const-string/jumbo v4, "meizu.app.IFileProtect"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0}, Lmeizu/app/IFileProtect$Stub;->grantedExpired()V

    .line 100
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 105
    :sswitch_7
    const-string/jumbo v6, "meizu.app.IFileProtect"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lmeizu/app/IFileProtect$Stub;->isGlobalUnlockFile(Ljava/lang/String;)Z

    move-result v3

    .line 109
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 110
    if-eqz v3, :cond_2

    move v4, v5

    :cond_2
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 39
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
