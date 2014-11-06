.class Landroid/app/Fragment$DefaultGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "Fragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Fragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DefaultGestureListener"
.end annotation


# instance fields
.field private mHandleGestureToLeft:Z

.field private mHandleGestureToRight:Z

.field final synthetic this$0:Landroid/app/Fragment;


# direct methods
.method private constructor <init>(Landroid/app/Fragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1993
    iput-object p1, p0, Landroid/app/Fragment$DefaultGestureListener;->this$0:Landroid/app/Fragment;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/app/Fragment;Landroid/app/Fragment$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1993
    invoke-direct {p0, p1}, Landroid/app/Fragment$DefaultGestureListener;-><init>(Landroid/app/Fragment;)V

    return-void
.end method

.method private performGestureEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter "e1"
    .parameter "e2"

    .prologue
    const/4 v4, 0x0

    const/high16 v7, 0x42c8

    const/4 v3, 0x1

    .line 2026
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 2027
    .local v0, distanceX:F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 2028
    .local v1, distanceY:F
    cmpl-float v5, v0, v7

    if-lez v5, :cond_1

    cmpg-float v5, v1, v7

    if-gez v5, :cond_1

    const-wide v5, 0x3fe921fb54442d18L

    invoke-static {v5, v6}, Ljava/lang/Math;->tan(D)D

    move-result-wide v5

    div-float v7, v1, v0

    float-to-double v7, v7

    cmpl-double v5, v5, v7

    if-lez v5, :cond_1

    move v2, v3

    .line 2030
    .local v2, enableHandleEvent:Z
    :goto_0
    iget-boolean v5, p0, Landroid/app/Fragment$DefaultGestureListener;->mHandleGestureToRight:Z

    if-eqz v5, :cond_3

    if-eqz v2, :cond_3

    .line 2031
    iget-object v4, p0, Landroid/app/Fragment$DefaultGestureListener;->this$0:Landroid/app/Fragment;

    iget-object v4, v4, Landroid/app/Fragment;->mOnFragmentGestureListener:Landroid/app/Fragment$OnFragmentGestureListener;

    if-nez v4, :cond_2

    .line 2033
    iget-object v4, p0, Landroid/app/Fragment$DefaultGestureListener;->this$0:Landroid/app/Fragment;

    iget-object v4, v4, Landroid/app/Fragment;->mActivity:Landroid/app/Activity;

    if-eqz v4, :cond_0

    .line 2034
    iget-object v4, p0, Landroid/app/Fragment$DefaultGestureListener;->this$0:Landroid/app/Fragment;

    iget-object v4, v4, Landroid/app/Fragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->onBackPressed()V

    .line 2045
    :cond_0
    :goto_1
    return v3

    .end local v2           #enableHandleEvent:Z
    :cond_1
    move v2, v4

    .line 2028
    goto :goto_0

    .line 2036
    .restart local v2       #enableHandleEvent:Z
    :cond_2
    iget-object v4, p0, Landroid/app/Fragment$DefaultGestureListener;->this$0:Landroid/app/Fragment;

    iget-object v4, v4, Landroid/app/Fragment;->mOnFragmentGestureListener:Landroid/app/Fragment$OnFragmentGestureListener;

    invoke-interface {v4}, Landroid/app/Fragment$OnFragmentGestureListener;->OnGestureToRight()V

    goto :goto_1

    .line 2039
    :cond_3
    iget-boolean v5, p0, Landroid/app/Fragment$DefaultGestureListener;->mHandleGestureToLeft:Z

    if-eqz v5, :cond_4

    if-eqz v2, :cond_4

    .line 2040
    iget-object v5, p0, Landroid/app/Fragment$DefaultGestureListener;->this$0:Landroid/app/Fragment;

    iget-object v5, v5, Landroid/app/Fragment;->mOnFragmentGestureListener:Landroid/app/Fragment$OnFragmentGestureListener;

    if-eqz v5, :cond_4

    .line 2041
    iget-object v4, p0, Landroid/app/Fragment$DefaultGestureListener;->this$0:Landroid/app/Fragment;

    iget-object v4, v4, Landroid/app/Fragment;->mOnFragmentGestureListener:Landroid/app/Fragment$OnFragmentGestureListener;

    invoke-interface {v4}, Landroid/app/Fragment$OnFragmentGestureListener;->OnGestureToLeft()V

    goto :goto_1

    :cond_4
    move v3, v4

    .line 2045
    goto :goto_1
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    const/4 v0, 0x1

    .line 2001
    iput-boolean v0, p0, Landroid/app/Fragment$DefaultGestureListener;->mHandleGestureToLeft:Z

    .line 2002
    iput-boolean v0, p0, Landroid/app/Fragment$DefaultGestureListener;->mHandleGestureToRight:Z

    .line 2003
    const/4 v0, 0x0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    .line 2021
    invoke-direct {p0, p1, p2}, Landroid/app/Fragment$DefaultGestureListener;->performGestureEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 2010
    cmpg-float v0, p3, v2

    if-gez v0, :cond_0

    iget-boolean v0, p0, Landroid/app/Fragment$DefaultGestureListener;->mHandleGestureToLeft:Z

    if-eqz v0, :cond_0

    .line 2011
    iput-boolean v1, p0, Landroid/app/Fragment$DefaultGestureListener;->mHandleGestureToLeft:Z

    .line 2012
    :cond_0
    cmpl-float v0, p3, v2

    if-lez v0, :cond_1

    iget-boolean v0, p0, Landroid/app/Fragment$DefaultGestureListener;->mHandleGestureToRight:Z

    if-eqz v0, :cond_1

    .line 2013
    iput-boolean v1, p0, Landroid/app/Fragment$DefaultGestureListener;->mHandleGestureToRight:Z

    .line 2014
    :cond_1
    return v1
.end method
