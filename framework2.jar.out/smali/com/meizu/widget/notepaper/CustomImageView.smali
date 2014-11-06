.class public Lcom/meizu/widget/notepaper/CustomImageView;
.super Landroid/widget/ImageView;
.source "CustomImageView.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# instance fields
.field private final DEBUG:Z

.field private final TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 17
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 13
    const-string v0, "CustomImageView"

    iput-object v0, p0, Lcom/meizu/widget/notepaper/CustomImageView;->TAG:Ljava/lang/String;

    .line 14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/widget/notepaper/CustomImageView;->DEBUG:Z

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 13
    const-string v0, "CustomImageView"

    iput-object v0, p0, Lcom/meizu/widget/notepaper/CustomImageView;->TAG:Ljava/lang/String;

    .line 14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/widget/notepaper/CustomImageView;->DEBUG:Z

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 13
    const-string v0, "CustomImageView"

    iput-object v0, p0, Lcom/meizu/widget/notepaper/CustomImageView;->TAG:Ljava/lang/String;

    .line 14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/widget/notepaper/CustomImageView;->DEBUG:Z

    .line 29
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter "canvas"

    .prologue
    .line 37
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 38
    .local v0, dwidth:I
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 40
    .local v2, vwidth:I
    if-gt v0, v2, :cond_0

    .line 41
    const/high16 v1, 0x3f80

    .line 48
    .local v1, scale:F
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 49
    invoke-virtual {p1, v1, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 50
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 51
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 52
    return-void

    .line 43
    .end local v1           #scale:F
    :cond_0
    int-to-float v3, v2

    int-to-float v4, v0

    div-float v1, v3, v4

    .restart local v1       #scale:F
    goto :goto_0
.end method
