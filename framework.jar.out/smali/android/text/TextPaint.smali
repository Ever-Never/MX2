.class public Landroid/text/TextPaint;
.super Landroid/graphics/Paint;
.source "TextPaint.java"


# instance fields
.field public baselineShift:I

.field public bgColor:I

.field public bgPic:Landroid/graphics/Bitmap;

.field public density:F

.field public drawableState:[I

.field public linkColor:I

.field public mIncludeBottomLineSpacing:Z

.field public underlineColor:I

.field public underlineThickness:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/graphics/Paint;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/text/TextPaint;->bgPic:Landroid/graphics/Bitmap;

    .line 37
    const/high16 v0, 0x3f80

    iput v0, p0, Landroid/text/TextPaint;->density:F

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Landroid/text/TextPaint;->underlineColor:I

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/text/TextPaint;->mIncludeBottomLineSpacing:Z

    .line 57
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "flags"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Landroid/graphics/Paint;-><init>(I)V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/text/TextPaint;->bgPic:Landroid/graphics/Bitmap;

    .line 37
    const/high16 v0, 0x3f80

    iput v0, p0, Landroid/text/TextPaint;->density:F

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Landroid/text/TextPaint;->underlineColor:I

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/text/TextPaint;->mIncludeBottomLineSpacing:Z

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Paint;)V
    .locals 1
    .parameter "p"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/text/TextPaint;->bgPic:Landroid/graphics/Bitmap;

    .line 37
    const/high16 v0, 0x3f80

    iput v0, p0, Landroid/text/TextPaint;->density:F

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Landroid/text/TextPaint;->underlineColor:I

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/text/TextPaint;->mIncludeBottomLineSpacing:Z

    .line 65
    return-void
.end method


# virtual methods
.method public set(Landroid/text/TextPaint;)V
    .locals 1
    .parameter "tp"

    .prologue
    .line 72
    invoke-super {p0, p1}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    .line 74
    iget v0, p1, Landroid/text/TextPaint;->bgColor:I

    iput v0, p0, Landroid/text/TextPaint;->bgColor:I

    .line 75
    iget-object v0, p1, Landroid/text/TextPaint;->bgPic:Landroid/graphics/Bitmap;

    iput-object v0, p0, Landroid/text/TextPaint;->bgPic:Landroid/graphics/Bitmap;

    .line 76
    iget v0, p1, Landroid/text/TextPaint;->baselineShift:I

    iput v0, p0, Landroid/text/TextPaint;->baselineShift:I

    .line 77
    iget v0, p1, Landroid/text/TextPaint;->linkColor:I

    iput v0, p0, Landroid/text/TextPaint;->linkColor:I

    .line 78
    iget-object v0, p1, Landroid/text/TextPaint;->drawableState:[I

    iput-object v0, p0, Landroid/text/TextPaint;->drawableState:[I

    .line 79
    iget v0, p1, Landroid/text/TextPaint;->density:F

    iput v0, p0, Landroid/text/TextPaint;->density:F

    .line 80
    iget v0, p1, Landroid/text/TextPaint;->underlineColor:I

    iput v0, p0, Landroid/text/TextPaint;->underlineColor:I

    .line 81
    iget v0, p1, Landroid/text/TextPaint;->underlineThickness:F

    iput v0, p0, Landroid/text/TextPaint;->underlineThickness:F

    .line 82
    return-void
.end method

.method public setUnderlineText(IF)V
    .locals 0
    .parameter "color"
    .parameter "thickness"

    .prologue
    .line 91
    iput p1, p0, Landroid/text/TextPaint;->underlineColor:I

    .line 92
    iput p2, p0, Landroid/text/TextPaint;->underlineThickness:F

    .line 93
    return-void
.end method
