.class Lcom/android/server/wm/DragState$DragAnimator$1;
.super Ljava/lang/Object;
.source "DragState.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/DragState$DragAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/wm/DragState$DragAnimator;


# direct methods
.method constructor <init>(Lcom/android/server/wm/DragState$DragAnimator;)V
    .locals 0
    .parameter

    .prologue
    .line 787
    iput-object p1, p0, Lcom/android/server/wm/DragState$DragAnimator$1;->this$1:Lcom/android/server/wm/DragState$DragAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 2
    .parameter "t"

    .prologue
    const/high16 v1, 0x3f80

    .line 789
    sub-float/2addr p1, v1

    .line 790
    mul-float v0, p1, p1

    mul-float/2addr v0, p1

    add-float/2addr v0, v1

    return v0
.end method
