.class public final Landroid/media/TimedText$Style;
.super Ljava/lang/Object;
.source "TimedText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/TimedText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Style"
.end annotation


# instance fields
.field public final colorRGBA:I

.field public final endChar:I

.field public final fontID:I

.field public final fontSize:I

.field public final isBold:Z

.field public final isItalic:Z

.field public final isUnderlined:Z

.field public final startChar:I


# direct methods
.method public constructor <init>(IIIZZZII)V
    .locals 0
    .parameter "startChar"
    .parameter "endChar"
    .parameter "fontId"
    .parameter "isBold"
    .parameter "isItalic"
    .parameter "isUnderlined"
    .parameter "fontSize"
    .parameter "colorRGBA"

    .prologue
    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 229
    iput p1, p0, Landroid/media/TimedText$Style;->startChar:I

    .line 230
    iput p2, p0, Landroid/media/TimedText$Style;->endChar:I

    .line 231
    iput p3, p0, Landroid/media/TimedText$Style;->fontID:I

    .line 232
    iput-boolean p4, p0, Landroid/media/TimedText$Style;->isBold:Z

    .line 233
    iput-boolean p5, p0, Landroid/media/TimedText$Style;->isItalic:Z

    .line 234
    iput-boolean p6, p0, Landroid/media/TimedText$Style;->isUnderlined:Z

    .line 235
    iput p7, p0, Landroid/media/TimedText$Style;->fontSize:I

    .line 236
    iput p8, p0, Landroid/media/TimedText$Style;->colorRGBA:I

    .line 237
    return-void
.end method
