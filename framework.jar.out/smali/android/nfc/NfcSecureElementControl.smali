.class public final Landroid/nfc/NfcSecureElementControl;
.super Ljava/lang/Object;
.source "NfcSecureElementControl.java"


# static fields
.field public static final ALL_SE_ID:Ljava/lang/String; = "com.nxp.all_se.ID"

.field public static final ALL_SE_ID_TYPE:I = 0x3

.field public static final NONE_SE_ID:Ljava/lang/String; = "com.nxp.none_se.ID"

.field public static final SMART_MX_ID:Ljava/lang/String; = "com.nxp.smart_mx.ID"

.field public static final SMART_MX_ID_TYPE:I = 0xf4

.field private static final TAG:Ljava/lang/String; = "NfcSecureElementControl"

.field public static final UICC_ID:Ljava/lang/String; = "com.nxp.uicc.ID"

.field public static final UICC_ID_TYPE:I = 0xf3


# instance fields
.field private sService:Landroid/nfc/INfcSecureElementControl;


# direct methods
.method public constructor <init>(Landroid/nfc/INfcSecureElementControl;)V
    .locals 0
    .parameter "mSecureElementService"

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Landroid/nfc/NfcSecureElementControl;->sService:Landroid/nfc/INfcSecureElementControl;

    .line 62
    return-void
.end method


# virtual methods
.method public deSelectedSecureElement(Ljava/lang/String;)V
    .locals 3
    .parameter "pkg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 184
    :try_start_0
    iget-object v1, p0, Landroid/nfc/NfcSecureElementControl;->sService:Landroid/nfc/INfcSecureElementControl;

    invoke-interface {v1, p1}, Landroid/nfc/INfcSecureElementControl;->deselectSecureElement(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    return-void

    .line 185
    :catch_0
    move-exception v0

    .line 186
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "NfcSecureElementControl"

    const-string v2, "deselectSecureElement failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 187
    new-instance v1, Ljava/io/IOException;

    const-string v2, "deselectSecureElement failed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getAvailableSecureElementList(Ljava/lang/String;)[Ljava/lang/String;
    .locals 7
    .parameter "pkg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 200
    const/4 v2, 0x0

    .line 203
    .local v2, list:[I
    :try_start_0
    iget-object v5, p0, Landroid/nfc/NfcSecureElementControl;->sService:Landroid/nfc/INfcSecureElementControl;

    invoke-interface {v5, p1}, Landroid/nfc/INfcSecureElementControl;->getSecureElementList(Ljava/lang/String;)[I

    move-result-object v2

    .line 204
    array-length v3, v2

    .line 206
    .local v3, listSize:I
    new-array v4, v3, [Ljava/lang/String;

    .line 207
    .local v4, listStrArray:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_3

    .line 208
    aget v5, v2, v1

    const/16 v6, 0xf4

    if-ne v5, v6, :cond_0

    .line 209
    const-string v5, "com.nxp.smart_mx.ID"

    aput-object v5, v4, v1

    .line 207
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 210
    :cond_0
    aget v5, v2, v1

    const/16 v6, 0xf3

    if-ne v5, v6, :cond_1

    .line 211
    const-string v5, "com.nxp.uicc.ID"

    aput-object v5, v4, v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 220
    .end local v1           #i:I
    .end local v3           #listSize:I
    .end local v4           #listStrArray:[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 221
    .local v0, e:Landroid/os/RemoteException;
    const-string v5, "NfcSecureElementControl"

    const-string v6, "deselectSecureElement failed"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 222
    new-instance v5, Ljava/io/IOException;

    const-string v6, "deselectSecureElement failed"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 212
    .end local v0           #e:Landroid/os/RemoteException;
    .restart local v1       #i:I
    .restart local v3       #listSize:I
    .restart local v4       #listStrArray:[Ljava/lang/String;
    :cond_1
    :try_start_1
    aget v5, v2, v1

    const/4 v6, 0x3

    if-ne v5, v6, :cond_2

    .line 213
    const-string v5, "com.nxp.all_se.ID"

    aput-object v5, v4, v1

    goto :goto_1

    .line 215
    :cond_2
    new-instance v5, Ljava/io/IOException;

    const-string v6, "Get Secure Element failed"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 219
    :cond_3
    return-object v4
.end method

.method public getDefaultSelectedSecureElement(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "pkg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 155
    const/4 v1, 0x0

    .line 159
    .local v1, seID:I
    :try_start_0
    iget-object v2, p0, Landroid/nfc/NfcSecureElementControl;->sService:Landroid/nfc/INfcSecureElementControl;

    invoke-interface {v2, p1}, Landroid/nfc/INfcSecureElementControl;->getSelectedSecureElement(Ljava/lang/String;)I

    move-result v1

    .line 160
    const/16 v2, 0xf3

    if-ne v1, v2, :cond_0

    .line 161
    const-string v2, "com.nxp.uicc.ID"

    .line 167
    :goto_0
    return-object v2

    .line 162
    :cond_0
    const/16 v2, 0xf4

    if-ne v1, v2, :cond_1

    .line 163
    const-string v2, "com.nxp.smart_mx.ID"

    goto :goto_0

    .line 164
    :cond_1
    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 165
    const-string v2, "com.nxp.all_se.ID"

    goto :goto_0

    .line 167
    :cond_2
    const-string v2, "com.nxp.none_se.ID"
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 169
    :catch_0
    move-exception v0

    .line 170
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "NfcSecureElementControl"

    const-string v3, "getSelectedSecureElement failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 171
    new-instance v2, Ljava/io/IOException;

    const-string v3, "getSelectedSecureElement failed"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public selectDefaultSecureElement(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "pkg"
    .parameter "seId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 75
    const/4 v3, 0x0

    .line 76
    .local v3, seID:I
    const/4 v4, 0x0

    .line 78
    .local v4, seSelected:Z
    const-string v5, "com.nxp.uicc.ID"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 79
    const/16 v3, 0xf3

    .line 121
    :goto_0
    :try_start_0
    iget-object v5, p0, Landroid/nfc/NfcSecureElementControl;->sService:Landroid/nfc/INfcSecureElementControl;

    invoke-interface {v5, p1, v3}, Landroid/nfc/INfcSecureElementControl;->selectSecureElement(Ljava/lang/String;I)I

    move-result v2

    .line 122
    .local v2, result:I
    if-eqz v2, :cond_0

    const/16 v5, -0x12

    if-ne v2, v5, :cond_1

    .line 123
    :cond_0
    const/4 v4, 0x1

    .line 127
    :cond_1
    if-nez v4, :cond_7

    .line 128
    invoke-static {v2}, Landroid/nfc/ErrorCodes;->asString(I)Ljava/lang/String;

    move-result-object v1

    .line 129
    .local v1, errorStr:Ljava/lang/String;
    const-string v5, "com.nxp.uicc.ID"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 130
    iget-object v5, p0, Landroid/nfc/NfcSecureElementControl;->sService:Landroid/nfc/INfcSecureElementControl;

    invoke-interface {v5, v3}, Landroid/nfc/INfcSecureElementControl;->storeSePreference(I)V

    .line 131
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UICC not detected, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    .end local v1           #errorStr:Ljava/lang/String;
    .end local v2           #result:I
    :catch_0
    move-exception v0

    .line 141
    .local v0, e:Landroid/os/RemoteException;
    const-string v5, "NfcSecureElementControl"

    const-string/jumbo v6, "selectDefaultSecureElement: getSecureElementList failed"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 142
    new-instance v5, Ljava/io/IOException;

    const-string/jumbo v6, "selectDefaultSecureElement: getSecureElementList failed"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 80
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_2
    const-string v5, "com.nxp.smart_mx.ID"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 81
    const/16 v3, 0xf4

    goto :goto_0

    .line 82
    :cond_3
    const-string v5, "com.nxp.all_se.ID"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 83
    const/4 v3, 0x3

    goto :goto_0

    .line 85
    :cond_4
    const-string v5, "NfcSecureElementControl"

    const-string/jumbo v6, "selectDefaultSecureElement: wrong Secure Element ID"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    new-instance v5, Ljava/io/IOException;

    const-string/jumbo v6, "selectDefaultSecureElement failed: Wronf Secure Element ID"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 132
    .restart local v1       #errorStr:Ljava/lang/String;
    .restart local v2       #result:I
    :cond_5
    :try_start_1
    const-string v5, "com.nxp.smart_mx.ID"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 133
    iget-object v5, p0, Landroid/nfc/NfcSecureElementControl;->sService:Landroid/nfc/INfcSecureElementControl;

    invoke-interface {v5, v3}, Landroid/nfc/INfcSecureElementControl;->storeSePreference(I)V

    .line 134
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SMART_MX not detected, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 135
    :cond_6
    const-string v5, "com.nxp.all_se.ID"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 136
    iget-object v5, p0, Landroid/nfc/NfcSecureElementControl;->sService:Landroid/nfc/INfcSecureElementControl;

    invoke-interface {v5, v3}, Landroid/nfc/INfcSecureElementControl;->storeSePreference(I)V

    .line 137
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ALL_SE not detected, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 144
    .end local v1           #errorStr:Ljava/lang/String;
    :cond_7
    return-void
.end method
