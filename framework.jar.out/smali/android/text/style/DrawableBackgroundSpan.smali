.class public Landroid/text/style/DrawableBackgroundSpan;
.super Landroid/text/style/CharacterStyle;
.source "DrawableBackgroundSpan.java"

# interfaces
.implements Landroid/text/ParcelableSpan;
.implements Landroid/text/style/UpdateAppearance;


# instance fields
.field private final mColor:I

.field private final pic:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "res"

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/text/style/CharacterStyle;-><init>()V

    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Landroid/text/style/DrawableBackgroundSpan;->pic:Landroid/graphics/Bitmap;

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Landroid/text/style/DrawableBackgroundSpan;->mColor:I

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1
    .parameter "context"
    .parameter "res"
    .parameter "color"

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/text/style/CharacterStyle;-><init>()V

    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Landroid/text/style/DrawableBackgroundSpan;->pic:Landroid/graphics/Bitmap;

    .line 45
    iput p3, p0, Landroid/text/style/DrawableBackgroundSpan;->mColor:I

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "src"

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/text/style/CharacterStyle;-><init>()V

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/text/style/DrawableBackgroundSpan;->mColor:I

    .line 50
    sget-object v0, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Landroid/text/style/DrawableBackgroundSpan;->pic:Landroid/graphics/Bitmap;

    .line 51
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method public getBackground()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Landroid/text/style/DrawableBackgroundSpan;->pic:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getBackgroundColor()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Landroid/text/style/DrawableBackgroundSpan;->mColor:I

    return v0
.end method

.method public getSpanTypeId()I
    .locals 1

    .prologue
    .line 62
    const/16 v0, 0x18

    return v0
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1
    .parameter "ds"

    .prologue
    .line 75
    iget-object v0, p0, Landroid/text/style/DrawableBackgroundSpan;->pic:Landroid/graphics/Bitmap;

    iput-object v0, p1, Landroid/text/TextPaint;->bgPic:Landroid/graphics/Bitmap;

    .line 76
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 80
    iget v0, p0, Landroid/text/style/DrawableBackgroundSpan;->mColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 81
    iget-object v0, p0, Landroid/text/style/DrawableBackgroundSpan;->pic:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    .line 82
    return-void
.end method
