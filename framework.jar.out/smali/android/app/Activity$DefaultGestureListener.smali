.class Landroid/app/Activity$DefaultGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "Activity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Activity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DefaultGestureListener"
.end annotation


# instance fields
.field private mHandleGestureToLeft:Z

.field private mHandleGestureToRight:Z

.field final synthetic this$0:Landroid/app/Activity;


# direct methods
.method private constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .parameter

    .prologue
    .line 5470
    iput-object p1, p0, Landroid/app/Activity$DefaultGestureListener;->this$0:Landroid/app/Activity;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/app/Activity;Landroid/app/Activity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5470
    invoke-direct {p0, p1}, Landroid/app/Activity$DefaultGestureListener;-><init>(Landroid/app/Activity;)V

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

    .line 5508
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 5509
    .local v0, distanceX:F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 5510
    .local v1, distanceY:F
    cmpl-float v5, v0, v7

    if-lez v5, :cond_0

    cmpg-float v5, v1, v7

    if-gez v5, :cond_0

    const-wide v5, 0x3fe921fb54442d18L

    invoke-static {v5, v6}, Ljava/lang/Math;->tan(D)D

    move-result-wide v5

    div-float v7, v1, v0

    float-to-double v7, v7

    cmpl-double v5, v5, v7

    if-lez v5, :cond_0

    move v2, v3

    .line 5512
    .local v2, enableHandleEvent:Z
    :goto_0
    iget-boolean v5, p0, Landroid/app/Activity$DefaultGestureListener;->mHandleGestureToRight:Z

    if-eqz v5, :cond_2

    if-eqz v2, :cond_2

    .line 5513
    iget-object v4, p0, Landroid/app/Activity$DefaultGestureListener;->this$0:Landroid/app/Activity;

    #getter for: Landroid/app/Activity;->mActivityGestureListener:Landroid/app/Activity$OnActivityGestureListener;
    invoke-static {v4}, Landroid/app/Activity;->access$500(Landroid/app/Activity;)Landroid/app/Activity$OnActivityGestureListener;

    move-result-object v4

    if-nez v4, :cond_1

    .line 5514
    iget-object v4, p0, Landroid/app/Activity$DefaultGestureListener;->this$0:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->onBackPressed()V

    .line 5525
    :goto_1
    return v3

    .end local v2           #enableHandleEvent:Z
    :cond_0
    move v2, v4

    .line 5510
    goto :goto_0

    .line 5516
    .restart local v2       #enableHandleEvent:Z
    :cond_1
    iget-object v4, p0, Landroid/app/Activity$DefaultGestureListener;->this$0:Landroid/app/Activity;

    #getter for: Landroid/app/Activity;->mActivityGestureListener:Landroid/app/Activity$OnActivityGestureListener;
    invoke-static {v4}, Landroid/app/Activity;->access$500(Landroid/app/Activity;)Landroid/app/Activity$OnActivityGestureListener;

    move-result-object v4

    invoke-interface {v4}, Landroid/app/Activity$OnActivityGestureListener;->OnGestureToRight()V

    goto :goto_1

    .line 5519
    :cond_2
    iget-boolean v5, p0, Landroid/app/Activity$DefaultGestureListener;->mHandleGestureToLeft:Z

    if-eqz v5, :cond_3

    if-eqz v2, :cond_3

    .line 5520
    iget-object v5, p0, Landroid/app/Activity$DefaultGestureListener;->this$0:Landroid/app/Activity;

    #getter for: Landroid/app/Activity;->mActivityGestureListener:Landroid/app/Activity$OnActivityGestureListener;
    invoke-static {v5}, Landroid/app/Activity;->access$500(Landroid/app/Activity;)Landroid/app/Activity$OnActivityGestureListener;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 5521
    iget-object v4, p0, Landroid/app/Activity$DefaultGestureListener;->this$0:Landroid/app/Activity;

    #getter for: Landroid/app/Activity;->mActivityGestureListener:Landroid/app/Activity$OnActivityGestureListener;
    invoke-static {v4}, Landroid/app/Activity;->access$500(Landroid/app/Activity;)Landroid/app/Activity$OnActivityGestureListener;

    move-result-object v4

    invoke-interface {v4}, Landroid/app/Activity$OnActivityGestureListener;->OnGestureToLeft()V

    goto :goto_1

    :cond_3
    move v3, v4

    .line 5525
    goto :goto_1
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    const/4 v0, 0x1

    .line 5478
    iput-boolean v0, p0, Landroid/app/Activity$DefaultGestureListener;->mHandleGestureToLeft:Z

    .line 5479
    iput-boolean v0, p0, Landroid/app/Activity$DefaultGestureListener;->mHandleGestureToRight:Z

    .line 5480
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
    .line 5498
    invoke-direct {p0, p1, p2}, Landroid/app/Activity$DefaultGestureListener;->performGestureEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

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

    .line 5487
    cmpg-float v0, p3, v2

    if-gez v0, :cond_0

    iget-boolean v0, p0, Landroid/app/Activity$DefaultGestureListener;->mHandleGestureToLeft:Z

    if-eqz v0, :cond_0

    .line 5488
    iput-boolean v1, p0, Landroid/app/Activity$DefaultGestureListener;->mHandleGestureToLeft:Z

    .line 5489
    :cond_0
    cmpl-float v0, p3, v2

    if-lez v0, :cond_1

    iget-boolean v0, p0, Landroid/app/Activity$DefaultGestureListener;->mHandleGestureToRight:Z

    if-eqz v0, :cond_1

    .line 5490
    iput-boolean v1, p0, Landroid/app/Activity$DefaultGestureListener;->mHandleGestureToRight:Z

    .line 5491
    :cond_1
    return v1
.end method
