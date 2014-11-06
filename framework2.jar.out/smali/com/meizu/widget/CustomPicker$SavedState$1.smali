.class final Lcom/meizu/widget/CustomPicker$SavedState$1;
.super Ljava/lang/Object;
.source "CustomPicker.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/widget/CustomPicker$SavedState;
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
        "Lcom/meizu/widget/CustomPicker$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 349
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/meizu/widget/CustomPicker$SavedState;
    .locals 2
    .parameter "in"

    .prologue
    .line 351
    new-instance v0, Lcom/meizu/widget/CustomPicker$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/meizu/widget/CustomPicker$SavedState;-><init>(Landroid/os/Parcel;Lcom/meizu/widget/CustomPicker$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 349
    invoke-virtual {p0, p1}, Lcom/meizu/widget/CustomPicker$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/meizu/widget/CustomPicker$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/meizu/widget/CustomPicker$SavedState;
    .locals 1
    .parameter "size"

    .prologue
    .line 355
    new-array v0, p1, [Lcom/meizu/widget/CustomPicker$SavedState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 349
    invoke-virtual {p0, p1}, Lcom/meizu/widget/CustomPicker$SavedState$1;->newArray(I)[Lcom/meizu/widget/CustomPicker$SavedState;

    move-result-object v0

    return-object v0
.end method
