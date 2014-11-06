.class final Lcom/meizu/widget/ScrollPane$1;
.super Ljava/lang/Object;
.source "ScrollPane.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/widget/ScrollPane;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 3
    .parameter "paramAnonymousFloat"

    .prologue
    const/high16 v2, 0x3f80

    .line 55
    sub-float v0, p1, v2

    .line 56
    .local v0, f:F
    mul-float v1, v0, v0

    mul-float/2addr v1, v0

    mul-float/2addr v1, v0

    mul-float/2addr v1, v0

    add-float/2addr v1, v2

    return v1
.end method
