.class public Lcom/meizu/flyme/service/find/FindPhoneData;
.super Ljava/lang/Object;
.source "FindPhoneData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/meizu/flyme/service/find/FindPhoneData;",
            ">;"
        }
    .end annotation
.end field

.field public static final ERROR_GETUSERNAME_EMPTY_SN:I = 0x8

.field public static final ERROR_UNKNOWN:I = 0x0

.field public static final ERROR_UNLOCKPHONE_ACCOUNT_NO_BIND_SN:I = 0x6

.field public static final ERROR_UNLOCKPHONE_COUNT_LIMIT:I = 0x7

.field public static final ERROR_UNLOCKPHONE_EMPTY_USER_OR_PSW:I = 0x5

.field public static final ERROR_UNLOCKPHONE_WRONG_USER_OR_PSW:I = 0x4

.field public static final INVALID_TOKEN_ERROR:I = 0x3

.field public static final SERVER_ERROR:I = 0x2

.field public static final SUCCESS:I = 0x1


# instance fields
.field public mCode:I

.field public mData:Ljava/lang/String;

.field public mDescribe:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    new-instance v0, Lcom/meizu/flyme/service/find/FindPhoneData$1;

    invoke-direct {v0}, Lcom/meizu/flyme/service/find/FindPhoneData$1;-><init>()V

    sput-object v0, Lcom/meizu/flyme/service/find/FindPhoneData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "code"
    .parameter "data"
    .parameter "describe"

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput p1, p0, Lcom/meizu/flyme/service/find/FindPhoneData;->mCode:I

    .line 32
    iput-object p2, p0, Lcom/meizu/flyme/service/find/FindPhoneData;->mData:Ljava/lang/String;

    .line 33
    iput-object p3, p0, Lcom/meizu/flyme/service/find/FindPhoneData;->mDescribe:Ljava/lang/String;

    .line 34
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 38
    iget v0, p0, Lcom/meizu/flyme/service/find/FindPhoneData;->mCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 39
    iget-object v0, p0, Lcom/meizu/flyme/service/find/FindPhoneData;->mData:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 40
    iget-object v0, p0, Lcom/meizu/flyme/service/find/FindPhoneData;->mDescribe:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 41
    return-void
.end method
