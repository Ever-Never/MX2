.class public Lmeizu/samba/client/SambaGetSharedFoldersException;
.super Ljava/lang/RuntimeException;
.source "SambaGetSharedFoldersException.java"


# static fields
.field public static final GET_SHARED_FOLDERS_STATUS_MalformedURLException:I = -0x2

.field public static final GET_SHARED_FOLDERS_STATUS_RemoteException:I = -0x4

.field public static final GET_SHARED_FOLDERS_STATUS_SmbAuthException:I = -0x1

.field public static final GET_SHARED_FOLDERS_STATUS_SmbException:I = -0x3

.field public static final GET_SHARED_FOLDERS_STATUS_UnknowException:I = -0x5


# instance fields
.field private mStatus:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter "status"

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 13
    iput p1, p0, Lmeizu/samba/client/SambaGetSharedFoldersException;->mStatus:I

    .line 14
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .parameter "status"
    .parameter "detailMessage"

    .prologue
    .line 17
    invoke-direct {p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 18
    iput p1, p0, Lmeizu/samba/client/SambaGetSharedFoldersException;->mStatus:I

    .line 19
    return-void
.end method


# virtual methods
.method public getDetailStatus()I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lmeizu/samba/client/SambaGetSharedFoldersException;->mStatus:I

    return v0
.end method
