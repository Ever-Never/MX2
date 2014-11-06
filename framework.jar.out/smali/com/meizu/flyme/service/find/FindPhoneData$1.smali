.class final Lcom/meizu/flyme/service/find/FindPhoneData$1;
.super Ljava/lang/Object;
.source "FindPhoneData.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/flyme/service/find/FindPhoneData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/meizu/flyme/service/find/FindPhoneData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/meizu/flyme/service/find/FindPhoneData;
    .locals 2
    .parameter "source"

    .prologue
    .line 53
    new-instance v0, Lcom/meizu/flyme/service/find/FindPhoneData;

    invoke-direct {v0}, Lcom/meizu/flyme/service/find/FindPhoneData;-><init>()V

    .line 54
    .local v0, item:Lcom/meizu/flyme/service/find/FindPhoneData;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/meizu/flyme/service/find/FindPhoneData;->mCode:I

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/meizu/flyme/service/find/FindPhoneData;->mData:Ljava/lang/String;

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/meizu/flyme/service/find/FindPhoneData;->mDescribe:Ljava/lang/String;

    .line 57
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    invoke-virtual {p0, p1}, Lcom/meizu/flyme/service/find/FindPhoneData$1;->createFromParcel(Landroid/os/Parcel;)Lcom/meizu/flyme/service/find/FindPhoneData;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/meizu/flyme/service/find/FindPhoneData;
    .locals 1
    .parameter "size"

    .prologue
    .line 62
    new-array v0, p1, [Lcom/meizu/flyme/service/find/FindPhoneData;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    invoke-virtual {p0, p1}, Lcom/meizu/flyme/service/find/FindPhoneData$1;->newArray(I)[Lcom/meizu/flyme/service/find/FindPhoneData;

    move-result-object v0

    return-object v0
.end method
