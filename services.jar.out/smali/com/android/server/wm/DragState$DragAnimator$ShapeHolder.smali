.class Lcom/android/server/wm/DragState$DragAnimator$ShapeHolder;
.super Ljava/lang/Object;
.source "DragState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/DragState$DragAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShapeHolder"
.end annotation


# instance fields
.field private alpha:F

.field private scale:F

.field final synthetic this$1:Lcom/android/server/wm/DragState$DragAnimator;

.field private x:F

.field private y:F


# direct methods
.method public constructor <init>(Lcom/android/server/wm/DragState$DragAnimator;)V
    .locals 2
    .parameter

    .prologue
    const/high16 v1, 0x3f80

    const/4 v0, 0x0

    .line 826
    iput-object p1, p0, Lcom/android/server/wm/DragState$DragAnimator$ShapeHolder;->this$1:Lcom/android/server/wm/DragState$DragAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 796
    iput v0, p0, Lcom/android/server/wm/DragState$DragAnimator$ShapeHolder;->x:F

    .line 797
    iput v0, p0, Lcom/android/server/wm/DragState$DragAnimator$ShapeHolder;->y:F

    .line 798
    iput v1, p0, Lcom/android/server/wm/DragState$DragAnimator$ShapeHolder;->scale:F

    .line 799
    iput v1, p0, Lcom/android/server/wm/DragState$DragAnimator$ShapeHolder;->alpha:F

    .line 827
    return-void
.end method


# virtual methods
.method public getAlpha()F
    .locals 1

    .prologue
    .line 823
    iget v0, p0, Lcom/android/server/wm/DragState$DragAnimator$ShapeHolder;->alpha:F

    return v0
.end method

.method public getScale()F
    .locals 1

    .prologue
    .line 817
    iget v0, p0, Lcom/android/server/wm/DragState$DragAnimator$ShapeHolder;->scale:F

    return v0
.end method

.method public getX()F
    .locals 1

    .prologue
    .line 805
    iget v0, p0, Lcom/android/server/wm/DragState$DragAnimator$ShapeHolder;->x:F

    return v0
.end method

.method public getY()F
    .locals 1

    .prologue
    .line 811
    iget v0, p0, Lcom/android/server/wm/DragState$DragAnimator$ShapeHolder;->y:F

    return v0
.end method

.method public setAlpha(F)V
    .locals 0
    .parameter "value"

    .prologue
    .line 820
    iput p1, p0, Lcom/android/server/wm/DragState$DragAnimator$ShapeHolder;->alpha:F

    .line 821
    return-void
.end method

.method public setScale(F)V
    .locals 0
    .parameter "value"

    .prologue
    .line 814
    iput p1, p0, Lcom/android/server/wm/DragState$DragAnimator$ShapeHolder;->scale:F

    .line 815
    return-void
.end method

.method public setX(F)V
    .locals 0
    .parameter "value"

    .prologue
    .line 802
    iput p1, p0, Lcom/android/server/wm/DragState$DragAnimator$ShapeHolder;->x:F

    .line 803
    return-void
.end method

.method public setY(F)V
    .locals 0
    .parameter "value"

    .prologue
    .line 808
    iput p1, p0, Lcom/android/server/wm/DragState$DragAnimator$ShapeHolder;->y:F

    .line 809
    return-void
.end method
