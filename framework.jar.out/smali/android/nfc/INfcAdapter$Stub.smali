.class public abstract Landroid/nfc/INfcAdapter$Stub;
.super Landroid/os/Binder;
.source "INfcAdapter.java"

# interfaces
.implements Landroid/nfc/INfcAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/nfc/INfcAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/nfc/INfcAdapter$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.nfc.INfcAdapter"

.field static final TRANSACTION_applyActivityMode:I = 0x12

.field static final TRANSACTION_disable:I = 0x9

.field static final TRANSACTION_disableNdefPush:I = 0xc

.field static final TRANSACTION_dispatch:I = 0x10

.field static final TRANSACTION_enable:I = 0xa

.field static final TRANSACTION_enableNdefPush:I = 0xb

.field static final TRANSACTION_getNfcAccessExtrasInterface:I = 0x7

.field static final TRANSACTION_getNfcAdapterBrcmConfigInterface:I = 0x4

.field static final TRANSACTION_getNfcAdapterBrcmExtrasInterface:I = 0x3

.field static final TRANSACTION_getNfcAdapterDtaInterface:I = 0x5

.field static final TRANSACTION_getNfcAdapterExtrasInterface:I = 0x2

.field static final TRANSACTION_getNfcSecureElementControlInterface:I = 0x6

.field static final TRANSACTION_getNfcTagInterface:I = 0x1

.field static final TRANSACTION_getState:I = 0x8

.field static final TRANSACTION_isNdefPushEnabled:I = 0xd

.field static final TRANSACTION_setForegroundDispatch:I = 0xe

.field static final TRANSACTION_setNdefPushCallback:I = 0xf

.field static final TRANSACTION_setP2pModes:I = 0x11


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "android.nfc.INfcAdapter"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcAdapter;
    .locals 2
    .parameter "obj"

    .prologue
    .line 26
    if-nez p0, :cond_0

    .line 27
    const/4 v0, 0x0

    .line 33
    :goto_0
    return-object v0

    .line 29
    :cond_0
    const-string v1, "android.nfc.INfcAdapter"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/nfc/INfcAdapter;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Landroid/nfc/INfcAdapter;

    goto :goto_0

    .line 33
    :cond_1
    new-instance v0, Landroid/nfc/INfcAdapter$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/nfc/INfcAdapter$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 37
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

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 232
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_0
    return v5

    .line 45
    :sswitch_0
    const-string v4, "android.nfc.INfcAdapter"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :sswitch_1
    const-string v6, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->getNfcTagInterface()Landroid/nfc/INfcTag;

    move-result-object v3

    .line 52
    .local v3, _result:Landroid/nfc/INfcTag;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 53
    if-eqz v3, :cond_0

    invoke-interface {v3}, Landroid/nfc/INfcTag;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    :cond_0
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto :goto_0

    .line 58
    .end local v3           #_result:Landroid/nfc/INfcTag;
    :sswitch_2
    const-string v6, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/nfc/INfcAdapter$Stub;->getNfcAdapterExtrasInterface(Ljava/lang/String;)Landroid/nfc/INfcAdapterExtras;

    move-result-object v3

    .line 62
    .local v3, _result:Landroid/nfc/INfcAdapterExtras;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 63
    if-eqz v3, :cond_1

    invoke-interface {v3}, Landroid/nfc/INfcAdapterExtras;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    :cond_1
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto :goto_0

    .line 68
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:Landroid/nfc/INfcAdapterExtras;
    :sswitch_3
    const-string v6, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 71
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/nfc/INfcAdapter$Stub;->getNfcAdapterBrcmExtrasInterface(Ljava/lang/String;)Landroid/nfc/INfcAdapterBrcmExtras;

    move-result-object v3

    .line 72
    .local v3, _result:Landroid/nfc/INfcAdapterBrcmExtras;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 73
    if-eqz v3, :cond_2

    invoke-interface {v3}, Landroid/nfc/INfcAdapterBrcmExtras;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    :cond_2
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto :goto_0

    .line 78
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:Landroid/nfc/INfcAdapterBrcmExtras;
    :sswitch_4
    const-string v6, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 81
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/nfc/INfcAdapter$Stub;->getNfcAdapterBrcmConfigInterface(Ljava/lang/String;)Landroid/nfc/INfcAdapterBrcmConfig;

    move-result-object v3

    .line 82
    .local v3, _result:Landroid/nfc/INfcAdapterBrcmConfig;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 83
    if-eqz v3, :cond_3

    invoke-interface {v3}, Landroid/nfc/INfcAdapterBrcmConfig;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    :cond_3
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto :goto_0

    .line 88
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:Landroid/nfc/INfcAdapterBrcmConfig;
    :sswitch_5
    const-string v6, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->getNfcAdapterDtaInterface()Landroid/nfc/INfcAdapterDta;

    move-result-object v3

    .line 90
    .local v3, _result:Landroid/nfc/INfcAdapterDta;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 91
    if-eqz v3, :cond_4

    invoke-interface {v3}, Landroid/nfc/INfcAdapterDta;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    :cond_4
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto :goto_0

    .line 96
    .end local v3           #_result:Landroid/nfc/INfcAdapterDta;
    :sswitch_6
    const-string v6, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 99
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/nfc/INfcAdapter$Stub;->getNfcSecureElementControlInterface(Ljava/lang/String;)Landroid/nfc/INfcSecureElementControl;

    move-result-object v3

    .line 100
    .local v3, _result:Landroid/nfc/INfcSecureElementControl;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 101
    if-eqz v3, :cond_5

    invoke-interface {v3}, Landroid/nfc/INfcSecureElementControl;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    :cond_5
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto/16 :goto_0

    .line 106
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:Landroid/nfc/INfcSecureElementControl;
    :sswitch_7
    const-string v6, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 109
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/nfc/INfcAdapter$Stub;->getNfcAccessExtrasInterface(Ljava/lang/String;)Landroid/nfc/INfcAccessExtras;

    move-result-object v3

    .line 110
    .local v3, _result:Landroid/nfc/INfcAccessExtras;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 111
    if-eqz v3, :cond_6

    invoke-interface {v3}, Landroid/nfc/INfcAccessExtras;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    :cond_6
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto/16 :goto_0

    .line 116
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:Landroid/nfc/INfcAccessExtras;
    :sswitch_8
    const-string v4, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->getState()I

    move-result v3

    .line 118
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 119
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 124
    .end local v3           #_result:I
    :sswitch_9
    const-string v4, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_8

    move v0, v5

    .line 127
    .local v0, _arg0:Z
    :goto_1
    invoke-virtual {p0, v0}, Landroid/nfc/INfcAdapter$Stub;->disable(Z)Z

    move-result v3

    .line 128
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 129
    if-eqz v3, :cond_7

    move v6, v5

    :cond_7
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    .end local v3           #_result:Z
    :cond_8
    move v0, v6

    .line 126
    goto :goto_1

    .line 134
    :sswitch_a
    const-string v4, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->enable()Z

    move-result v3

    .line 136
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 137
    if-eqz v3, :cond_9

    move v6, v5

    :cond_9
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 142
    .end local v3           #_result:Z
    :sswitch_b
    const-string v4, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->enableNdefPush()Z

    move-result v3

    .line 144
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 145
    if-eqz v3, :cond_a

    move v6, v5

    :cond_a
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 150
    .end local v3           #_result:Z
    :sswitch_c
    const-string v4, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->disableNdefPush()Z

    move-result v3

    .line 152
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 153
    if-eqz v3, :cond_b

    move v6, v5

    :cond_b
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 158
    .end local v3           #_result:Z
    :sswitch_d
    const-string v4, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 159
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->isNdefPushEnabled()Z

    move-result v3

    .line 160
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 161
    if-eqz v3, :cond_c

    move v6, v5

    :cond_c
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 166
    .end local v3           #_result:Z
    :sswitch_e
    const-string v4, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_d

    .line 169
    sget-object v4, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    .line 175
    .local v0, _arg0:Landroid/app/PendingIntent;
    :goto_2
    sget-object v4, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/content/IntentFilter;

    .line 177
    .local v1, _arg1:[Landroid/content/IntentFilter;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_e

    .line 178
    sget-object v4, Landroid/nfc/TechListParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/nfc/TechListParcel;

    .line 183
    .local v2, _arg2:Landroid/nfc/TechListParcel;
    :goto_3
    invoke-virtual {p0, v0, v1, v2}, Landroid/nfc/INfcAdapter$Stub;->setForegroundDispatch(Landroid/app/PendingIntent;[Landroid/content/IntentFilter;Landroid/nfc/TechListParcel;)V

    .line 184
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 172
    .end local v0           #_arg0:Landroid/app/PendingIntent;
    .end local v1           #_arg1:[Landroid/content/IntentFilter;
    .end local v2           #_arg2:Landroid/nfc/TechListParcel;
    :cond_d
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/app/PendingIntent;
    goto :goto_2

    .line 181
    .restart local v1       #_arg1:[Landroid/content/IntentFilter;
    :cond_e
    const/4 v2, 0x0

    .restart local v2       #_arg2:Landroid/nfc/TechListParcel;
    goto :goto_3

    .line 189
    .end local v0           #_arg0:Landroid/app/PendingIntent;
    .end local v1           #_arg1:[Landroid/content/IntentFilter;
    .end local v2           #_arg2:Landroid/nfc/TechListParcel;
    :sswitch_f
    const-string v4, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 191
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/nfc/INdefPushCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/INdefPushCallback;

    move-result-object v0

    .line 192
    .local v0, _arg0:Landroid/nfc/INdefPushCallback;
    invoke-virtual {p0, v0}, Landroid/nfc/INfcAdapter$Stub;->setNdefPushCallback(Landroid/nfc/INdefPushCallback;)V

    .line 193
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 198
    .end local v0           #_arg0:Landroid/nfc/INdefPushCallback;
    :sswitch_10
    const-string v4, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 200
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_f

    .line 201
    sget-object v4, Landroid/nfc/Tag;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/nfc/Tag;

    .line 206
    .local v0, _arg0:Landroid/nfc/Tag;
    :goto_4
    invoke-virtual {p0, v0}, Landroid/nfc/INfcAdapter$Stub;->dispatch(Landroid/nfc/Tag;)V

    .line 207
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 204
    .end local v0           #_arg0:Landroid/nfc/Tag;
    :cond_f
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/nfc/Tag;
    goto :goto_4

    .line 212
    .end local v0           #_arg0:Landroid/nfc/Tag;
    :sswitch_11
    const-string v4, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 214
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 216
    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 217
    .local v1, _arg1:I
    invoke-virtual {p0, v0, v1}, Landroid/nfc/INfcAdapter$Stub;->setP2pModes(II)V

    .line 218
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 223
    .end local v0           #_arg0:I
    .end local v1           #_arg1:I
    :sswitch_12
    const-string v4, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 225
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 226
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Landroid/nfc/INfcAdapter$Stub;->applyActivityMode(I)Z

    move-result v3

    .line 227
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 228
    if-eqz v3, :cond_10

    move v6, v5

    :cond_10
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 41
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
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
