.class Lcom/meizu/widget/LockDigitView$ShapeHolder;
.super Ljava/lang/Object;
.source "LockDigitView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/widget/LockDigitView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShapeHolder"
.end annotation


# instance fields
.field private alpha:F

.field private scale:F

.field final synthetic this$0:Lcom/meizu/widget/LockDigitView;


# direct methods
.method public constructor <init>(Lcom/meizu/widget/LockDigitView;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 904
    iput-object p1, p0, Lcom/meizu/widget/LockDigitView$ShapeHolder;->this$0:Lcom/meizu/widget/LockDigitView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 889
    iput v0, p0, Lcom/meizu/widget/LockDigitView$ShapeHolder;->scale:F

    .line 890
    iput v0, p0, Lcom/meizu/widget/LockDigitView$ShapeHolder;->alpha:F

    .line 905
    return-void
.end method


# virtual methods
.method public getAlpha()F
    .locals 1

    .prologue
    .line 902
    iget v0, p0, Lcom/meizu/widget/LockDigitView$ShapeHolder;->alpha:F

    return v0
.end method

.method public getScale()F
    .locals 1

    .prologue
    .line 896
    iget v0, p0, Lcom/meizu/widget/LockDigitView$ShapeHolder;->scale:F

    return v0
.end method

.method public setAlpha(F)V
    .locals 0
    .parameter "value"

    .prologue
    .line 899
    iput p1, p0, Lcom/meizu/widget/LockDigitView$ShapeHolder;->alpha:F

    .line 900
    return-void
.end method

.method public setScale(F)V
    .locals 0
    .parameter "value"

    .prologue
    .line 893
    iput p1, p0, Lcom/meizu/widget/LockDigitView$ShapeHolder;->scale:F

    .line 894
    return-void
.end method
