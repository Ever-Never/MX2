.class Landroid/webkit/ZoomManager$ScaleDetectorListener;
.super Ljava/lang/Object;
.source "ZoomManager.java"

# interfaces
.implements Landroid/webkit/ScaleGestureDetector$OnScaleGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/ZoomManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScaleDetectorListener"
.end annotation


# instance fields
.field private mAccumulatedSpan:F

.field final synthetic this$0:Landroid/webkit/ZoomManager;


# direct methods
.method private constructor <init>(Landroid/webkit/ZoomManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1020
    iput-object p1, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/webkit/ZoomManager;Landroid/webkit/ZoomManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1020
    invoke-direct {p0, p1}, Landroid/webkit/ZoomManager$ScaleDetectorListener;-><init>(Landroid/webkit/ZoomManager;)V

    return-void
.end method


# virtual methods
.method public handleScale(Landroid/webkit/ScaleGestureDetector;)Z
    .locals 7
    .parameter "detector"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 1063
    invoke-virtual {p1}, Landroid/webkit/ScaleGestureDetector;->getScaleFactor()F

    move-result v4

    iget-object v5, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mActualScale:F
    invoke-static {v5}, Landroid/webkit/ZoomManager;->access$700(Landroid/webkit/ZoomManager;)F

    move-result v5

    mul-float v1, v4, v5

    .line 1067
    .local v1, scale:F
    iget-object v4, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    invoke-virtual {v4, v1}, Landroid/webkit/ZoomManager;->isScaleOverLimits(F)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    invoke-virtual {v4}, Landroid/webkit/ZoomManager;->getZoomOverviewScale()F

    move-result v4

    cmpg-float v4, v1, v4

    if-gez v4, :cond_3

    :cond_0
    move v0, v3

    .line 1071
    .local v0, isScaleLimited:Z
    :goto_0
    iget-object v4, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    invoke-virtual {v4, v1}, Landroid/webkit/ZoomManager;->computeScaleWithLimits(F)F

    move-result v4

    iget-object v5, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    invoke-virtual {v5}, Landroid/webkit/ZoomManager;->getZoomOverviewScale()F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 1073
    iget-object v4, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mPinchToZoomAnimating:Z
    invoke-static {v4}, Landroid/webkit/ZoomManager;->access$1000(Landroid/webkit/ZoomManager;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    invoke-virtual {v4, v1}, Landroid/webkit/ZoomManager;->willScaleTriggerZoom(F)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1074
    :cond_1
    iget-object v4, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #setter for: Landroid/webkit/ZoomManager;->mPinchToZoomAnimating:Z
    invoke-static {v4, v3}, Landroid/webkit/ZoomManager;->access$1002(Landroid/webkit/ZoomManager;Z)Z

    .line 1076
    iget-object v4, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mActualScale:F
    invoke-static {v4}, Landroid/webkit/ZoomManager;->access$700(Landroid/webkit/ZoomManager;)F

    move-result v4

    cmpl-float v4, v1, v4

    if-lez v4, :cond_4

    .line 1077
    iget-object v4, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mActualScale:F
    invoke-static {v4}, Landroid/webkit/ZoomManager;->access$700(Landroid/webkit/ZoomManager;)F

    move-result v4

    const/high16 v5, 0x3fa0

    mul-float/2addr v4, v5

    invoke-static {v1, v4}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 1081
    :goto_1
    iget-object v4, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    invoke-virtual {v4, v1}, Landroid/webkit/ZoomManager;->computeScaleWithLimits(F)F

    move-result v1

    .line 1083
    iget-object v4, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mActualScale:F
    invoke-static {v4}, Landroid/webkit/ZoomManager;->access$700(Landroid/webkit/ZoomManager;)F

    move-result v4

    sub-float v4, v1, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-static {}, Landroid/webkit/ZoomManager;->access$1100()F

    move-result v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_5

    .line 1091
    .end local v0           #isScaleLimited:Z
    :cond_2
    :goto_2
    return v0

    :cond_3
    move v0, v2

    .line 1067
    goto :goto_0

    .line 1079
    .restart local v0       #isScaleLimited:Z
    :cond_4
    iget-object v4, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mActualScale:F
    invoke-static {v4}, Landroid/webkit/ZoomManager;->access$700(Landroid/webkit/ZoomManager;)F

    move-result v4

    const v5, 0x3f4ccccd

    mul-float/2addr v4, v5

    invoke-static {v1, v4}, Ljava/lang/Math;->max(FF)F

    move-result v1

    goto :goto_1

    .line 1086
    :cond_5
    iget-object v4, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    invoke-virtual {p1}, Landroid/webkit/ScaleGestureDetector;->getFocusX()F

    move-result v5

    invoke-virtual {p1}, Landroid/webkit/ScaleGestureDetector;->getFocusY()F

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/webkit/ZoomManager;->setZoomCenter(FF)V

    .line 1087
    iget-object v4, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    invoke-virtual {v4, v1, v2}, Landroid/webkit/ZoomManager;->setZoomScale(FZ)V

    .line 1088
    iget-object v2, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;
    invoke-static {v2}, Landroid/webkit/ZoomManager;->access$600(Landroid/webkit/ZoomManager;)Landroid/webkit/WebViewClassic;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebViewClassic;->invalidate()V

    move v0, v3

    .line 1089
    goto :goto_2
.end method

.method public isPanningOnly(Landroid/webkit/ScaleGestureDetector;)Z
    .locals 9
    .parameter "detector"

    .prologue
    const/4 v5, 0x0

    .line 1043
    iget-object v6, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mFocusX:F
    invoke-static {v6}, Landroid/webkit/ZoomManager;->access$400(Landroid/webkit/ZoomManager;)F

    move-result v2

    .line 1044
    .local v2, prevFocusX:F
    iget-object v6, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mFocusY:F
    invoke-static {v6}, Landroid/webkit/ZoomManager;->access$500(Landroid/webkit/ZoomManager;)F

    move-result v3

    .line 1045
    .local v3, prevFocusY:F
    iget-object v6, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    invoke-virtual {p1}, Landroid/webkit/ScaleGestureDetector;->getFocusX()F

    move-result v7

    #setter for: Landroid/webkit/ZoomManager;->mFocusX:F
    invoke-static {v6, v7}, Landroid/webkit/ZoomManager;->access$402(Landroid/webkit/ZoomManager;F)F

    .line 1046
    iget-object v6, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    invoke-virtual {p1}, Landroid/webkit/ScaleGestureDetector;->getFocusY()F

    move-result v7

    #setter for: Landroid/webkit/ZoomManager;->mFocusY:F
    invoke-static {v6, v7}, Landroid/webkit/ZoomManager;->access$502(Landroid/webkit/ZoomManager;F)F

    .line 1047
    cmpl-float v6, v2, v5

    if-nez v6, :cond_0

    cmpl-float v6, v3, v5

    if-nez v6, :cond_0

    move v1, v5

    .line 1050
    .local v1, focusDelta:F
    :goto_0
    iget-object v6, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mFocusMovementQueue:Landroid/webkit/ZoomManager$FocusMovementQueue;
    invoke-static {v6}, Landroid/webkit/ZoomManager;->access$200(Landroid/webkit/ZoomManager;)Landroid/webkit/ZoomManager$FocusMovementQueue;

    move-result-object v6

    #calls: Landroid/webkit/ZoomManager$FocusMovementQueue;->add(F)V
    invoke-static {v6, v1}, Landroid/webkit/ZoomManager$FocusMovementQueue;->access$800(Landroid/webkit/ZoomManager$FocusMovementQueue;F)V

    .line 1051
    invoke-virtual {p1}, Landroid/webkit/ScaleGestureDetector;->getCurrentSpan()F

    move-result v6

    invoke-virtual {p1}, Landroid/webkit/ScaleGestureDetector;->getPreviousSpan()F

    move-result v7

    sub-float/2addr v6, v7

    iget v7, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->mAccumulatedSpan:F

    add-float v0, v6, v7

    .line 1053
    .local v0, deltaSpan:F
    iget-object v6, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mFocusMovementQueue:Landroid/webkit/ZoomManager$FocusMovementQueue;
    invoke-static {v6}, Landroid/webkit/ZoomManager;->access$200(Landroid/webkit/ZoomManager;)Landroid/webkit/ZoomManager$FocusMovementQueue;

    move-result-object v6

    #calls: Landroid/webkit/ZoomManager$FocusMovementQueue;->getSum()F
    invoke-static {v6}, Landroid/webkit/ZoomManager$FocusMovementQueue;->access$900(Landroid/webkit/ZoomManager$FocusMovementQueue;)F

    move-result v6

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_1

    const/4 v4, 0x1

    .line 1054
    .local v4, result:Z
    :goto_1
    if-eqz v4, :cond_2

    .line 1055
    iget v5, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->mAccumulatedSpan:F

    add-float/2addr v5, v0

    iput v5, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->mAccumulatedSpan:F

    .line 1059
    :goto_2
    return v4

    .line 1047
    .end local v0           #deltaSpan:F
    .end local v1           #focusDelta:F
    .end local v4           #result:Z
    :cond_0
    iget-object v6, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mFocusX:F
    invoke-static {v6}, Landroid/webkit/ZoomManager;->access$400(Landroid/webkit/ZoomManager;)F

    move-result v6

    sub-float/2addr v6, v2

    iget-object v7, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mFocusX:F
    invoke-static {v7}, Landroid/webkit/ZoomManager;->access$400(Landroid/webkit/ZoomManager;)F

    move-result v7

    sub-float/2addr v7, v2

    mul-float/2addr v6, v7

    iget-object v7, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mFocusY:F
    invoke-static {v7}, Landroid/webkit/ZoomManager;->access$500(Landroid/webkit/ZoomManager;)F

    move-result v7

    sub-float/2addr v7, v3

    iget-object v8, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mFocusY:F
    invoke-static {v8}, Landroid/webkit/ZoomManager;->access$500(Landroid/webkit/ZoomManager;)F

    move-result v8

    sub-float/2addr v8, v3

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    invoke-static {v6}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v1

    goto :goto_0

    .line 1053
    .restart local v0       #deltaSpan:F
    .restart local v1       #focusDelta:F
    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .line 1057
    .restart local v4       #result:Z
    :cond_2
    iput v5, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->mAccumulatedSpan:F

    goto :goto_2
.end method

.method public onScale(Landroid/webkit/ScaleGestureDetector;)Z
    .locals 5
    .parameter "detector"

    .prologue
    .line 1095
    iget-object v2, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mActualScale:F
    invoke-static {v2}, Landroid/webkit/ZoomManager;->access$700(Landroid/webkit/ZoomManager;)F

    move-result v1

    .line 1096
    .local v1, oldScale:F
    invoke-virtual {p1}, Landroid/webkit/ScaleGestureDetector;->getScaleFactor()F

    move-result v2

    iget-object v3, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mActualScale:F
    invoke-static {v3}, Landroid/webkit/ZoomManager;->access$700(Landroid/webkit/ZoomManager;)F

    move-result v3

    mul-float v0, v2, v3

    .line 1098
    .local v0, newScale:F
    invoke-virtual {p0, p1}, Landroid/webkit/ZoomManager$ScaleDetectorListener;->isPanningOnly(Landroid/webkit/ScaleGestureDetector;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0, p1}, Landroid/webkit/ZoomManager$ScaleDetectorListener;->handleScale(Landroid/webkit/ScaleGestureDetector;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1099
    :cond_0
    iget-object v2, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mFocusMovementQueue:Landroid/webkit/ZoomManager$FocusMovementQueue;
    invoke-static {v2}, Landroid/webkit/ZoomManager;->access$200(Landroid/webkit/ZoomManager;)Landroid/webkit/ZoomManager$FocusMovementQueue;

    move-result-object v2

    #calls: Landroid/webkit/ZoomManager$FocusMovementQueue;->clear()V
    invoke-static {v2}, Landroid/webkit/ZoomManager$FocusMovementQueue;->access$300(Landroid/webkit/ZoomManager$FocusMovementQueue;)V

    .line 1101
    iget-object v2, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;
    invoke-static {v2}, Landroid/webkit/ZoomManager;->access$600(Landroid/webkit/ZoomManager;)Landroid/webkit/WebViewClassic;

    move-result-object v2

    iget-object v2, v2, Landroid/webkit/WebViewClassic;->mZoomDetectorListener:Landroid/webkit/WebView$ZoomDetectorListener;

    if-eqz v2, :cond_1

    .line 1102
    iget-object v2, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;
    invoke-static {v2}, Landroid/webkit/ZoomManager;->access$600(Landroid/webkit/ZoomManager;)Landroid/webkit/WebViewClassic;

    move-result-object v2

    iget-object v2, v2, Landroid/webkit/WebViewClassic;->mZoomDetectorListener:Landroid/webkit/WebView$ZoomDetectorListener;

    invoke-virtual {p1}, Landroid/webkit/ScaleGestureDetector;->getFocusX()F

    move-result v3

    invoke-virtual {p1}, Landroid/webkit/ScaleGestureDetector;->getFocusY()F

    move-result v4

    invoke-interface {v2, v1, v0, v3, v4}, Landroid/webkit/WebView$ZoomDetectorListener;->onZoom(FFFF)Z

    .line 1105
    :cond_1
    const/4 v2, 0x1

    .line 1107
    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onScaleBegin(Landroid/webkit/ScaleGestureDetector;)Z
    .locals 4
    .parameter "detector"

    .prologue
    .line 1024
    iget-object v0, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    const/4 v1, 0x0

    #setter for: Landroid/webkit/ZoomManager;->mInitialZoomOverview:Z
    invoke-static {v0, v1}, Landroid/webkit/ZoomManager;->access$102(Landroid/webkit/ZoomManager;Z)Z

    .line 1025
    iget-object v0, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    invoke-virtual {v0}, Landroid/webkit/ZoomManager;->dismissZoomPicker()V

    .line 1026
    iget-object v0, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mFocusMovementQueue:Landroid/webkit/ZoomManager$FocusMovementQueue;
    invoke-static {v0}, Landroid/webkit/ZoomManager;->access$200(Landroid/webkit/ZoomManager;)Landroid/webkit/ZoomManager$FocusMovementQueue;

    move-result-object v0

    #calls: Landroid/webkit/ZoomManager$FocusMovementQueue;->clear()V
    invoke-static {v0}, Landroid/webkit/ZoomManager$FocusMovementQueue;->access$300(Landroid/webkit/ZoomManager$FocusMovementQueue;)V

    .line 1027
    iget-object v0, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    invoke-virtual {p1}, Landroid/webkit/ScaleGestureDetector;->getFocusX()F

    move-result v1

    #setter for: Landroid/webkit/ZoomManager;->mFocusX:F
    invoke-static {v0, v1}, Landroid/webkit/ZoomManager;->access$402(Landroid/webkit/ZoomManager;F)F

    .line 1028
    iget-object v0, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    invoke-virtual {p1}, Landroid/webkit/ScaleGestureDetector;->getFocusY()F

    move-result v1

    #setter for: Landroid/webkit/ZoomManager;->mFocusY:F
    invoke-static {v0, v1}, Landroid/webkit/ZoomManager;->access$502(Landroid/webkit/ZoomManager;F)F

    .line 1029
    iget-object v0, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;
    invoke-static {v0}, Landroid/webkit/ZoomManager;->access$600(Landroid/webkit/ZoomManager;)Landroid/webkit/WebViewClassic;

    move-result-object v0

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mViewManager:Landroid/webkit/ViewManager;

    invoke-virtual {v0}, Landroid/webkit/ViewManager;->startZoom()V

    .line 1030
    iget-object v0, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;
    invoke-static {v0}, Landroid/webkit/ZoomManager;->access$600(Landroid/webkit/ZoomManager;)Landroid/webkit/WebViewClassic;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->onPinchToZoomAnimationStart()V

    .line 1031
    const/4 v0, 0x0

    iput v0, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->mAccumulatedSpan:F

    .line 1033
    iget-object v0, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;
    invoke-static {v0}, Landroid/webkit/ZoomManager;->access$600(Landroid/webkit/ZoomManager;)Landroid/webkit/WebViewClassic;

    move-result-object v0

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mZoomDetectorListener:Landroid/webkit/WebView$ZoomDetectorListener;

    if-eqz v0, :cond_0

    .line 1034
    iget-object v0, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;
    invoke-static {v0}, Landroid/webkit/ZoomManager;->access$600(Landroid/webkit/ZoomManager;)Landroid/webkit/WebViewClassic;

    move-result-object v0

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mZoomDetectorListener:Landroid/webkit/WebView$ZoomDetectorListener;

    iget-object v1, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mActualScale:F
    invoke-static {v1}, Landroid/webkit/ZoomManager;->access$700(Landroid/webkit/ZoomManager;)F

    move-result v1

    invoke-virtual {p1}, Landroid/webkit/ScaleGestureDetector;->getFocusX()F

    move-result v2

    invoke-virtual {p1}, Landroid/webkit/ScaleGestureDetector;->getFocusY()F

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Landroid/webkit/WebView$ZoomDetectorListener;->onZoomBegin(FFF)Z

    .line 1037
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onScaleEnd(Landroid/webkit/ScaleGestureDetector;)V
    .locals 9
    .parameter "detector"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1111
    iget-object v3, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mPinchToZoomAnimating:Z
    invoke-static {v3}, Landroid/webkit/ZoomManager;->access$1000(Landroid/webkit/ZoomManager;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1112
    iget-object v3, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #setter for: Landroid/webkit/ZoomManager;->mPinchToZoomAnimating:Z
    invoke-static {v3, v1}, Landroid/webkit/ZoomManager;->access$1002(Landroid/webkit/ZoomManager;Z)Z

    .line 1113
    iget-object v3, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    iget-object v4, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;
    invoke-static {v4}, Landroid/webkit/ZoomManager;->access$600(Landroid/webkit/ZoomManager;)Landroid/webkit/WebViewClassic;

    move-result-object v4

    iget-object v5, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mZoomCenterX:F
    invoke-static {v5}, Landroid/webkit/ZoomManager;->access$1300(Landroid/webkit/ZoomManager;)F

    move-result v5

    float-to-int v5, v5

    iget-object v6, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;
    invoke-static {v6}, Landroid/webkit/ZoomManager;->access$600(Landroid/webkit/ZoomManager;)Landroid/webkit/WebViewClassic;

    move-result-object v6

    invoke-virtual {v6}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/webkit/WebViewClassic;->viewToContentX(I)I

    move-result v4

    #setter for: Landroid/webkit/ZoomManager;->mAnchorX:I
    invoke-static {v3, v4}, Landroid/webkit/ZoomManager;->access$1202(Landroid/webkit/ZoomManager;I)I

    .line 1114
    iget-object v3, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    iget-object v4, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;
    invoke-static {v4}, Landroid/webkit/ZoomManager;->access$600(Landroid/webkit/ZoomManager;)Landroid/webkit/WebViewClassic;

    move-result-object v4

    iget-object v5, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mZoomCenterY:F
    invoke-static {v5}, Landroid/webkit/ZoomManager;->access$1500(Landroid/webkit/ZoomManager;)F

    move-result v5

    float-to-int v5, v5

    iget-object v6, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;
    invoke-static {v6}, Landroid/webkit/ZoomManager;->access$600(Landroid/webkit/ZoomManager;)Landroid/webkit/WebViewClassic;

    move-result-object v6

    invoke-virtual {v6}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/webkit/WebViewClassic;->viewToContentY(I)I

    move-result v4

    #setter for: Landroid/webkit/ZoomManager;->mAnchorY:I
    invoke-static {v3, v4}, Landroid/webkit/ZoomManager;->access$1402(Landroid/webkit/ZoomManager;I)I

    .line 1117
    iget-object v3, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    invoke-virtual {v3}, Landroid/webkit/ZoomManager;->canZoomOut()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mActualScale:F
    invoke-static {v3}, Landroid/webkit/ZoomManager;->access$700(Landroid/webkit/ZoomManager;)F

    move-result v3

    float-to-double v3, v3

    const-wide v5, 0x3fe999999999999aL

    iget-object v7, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mTextWrapScale:F
    invoke-static {v7}, Landroid/webkit/ZoomManager;->access$1600(Landroid/webkit/ZoomManager;)F

    move-result v7

    float-to-double v7, v7

    mul-double/2addr v5, v7

    cmpg-double v3, v3, v5

    if-gtz v3, :cond_3

    :cond_0
    move v0, v2

    .line 1121
    .local v0, reflowNow:Z
    :goto_0
    iget-object v3, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;
    invoke-static {v3}, Landroid/webkit/ZoomManager;->access$600(Landroid/webkit/ZoomManager;)Landroid/webkit/WebViewClassic;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebSettingsClassic;->useNewRender()Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;
    invoke-static {v3}, Landroid/webkit/ZoomManager;->access$600(Landroid/webkit/ZoomManager;)Landroid/webkit/WebViewClassic;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebSettingsClassic;->getAutoWrapFit()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1122
    iget-object v1, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    invoke-virtual {v1, v0}, Landroid/webkit/ZoomManager;->refreshZoomScale(Z)V

    .line 1129
    :goto_1
    iget-object v1, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;
    invoke-static {v1}, Landroid/webkit/ZoomManager;->access$600(Landroid/webkit/ZoomManager;)Landroid/webkit/WebViewClassic;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic;->invalidate()V

    .line 1132
    .end local v0           #reflowNow:Z
    :cond_1
    iget-object v1, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;
    invoke-static {v1}, Landroid/webkit/ZoomManager;->access$600(Landroid/webkit/ZoomManager;)Landroid/webkit/WebViewClassic;

    move-result-object v1

    iget-object v1, v1, Landroid/webkit/WebViewClassic;->mViewManager:Landroid/webkit/ViewManager;

    invoke-virtual {v1}, Landroid/webkit/ViewManager;->endZoom()V

    .line 1133
    iget-object v1, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;
    invoke-static {v1}, Landroid/webkit/ZoomManager;->access$600(Landroid/webkit/ZoomManager;)Landroid/webkit/WebViewClassic;

    move-result-object v1

    invoke-virtual {p1}, Landroid/webkit/ScaleGestureDetector;->getFocusX()F

    move-result v2

    invoke-virtual {p1}, Landroid/webkit/ScaleGestureDetector;->getFocusY()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/webkit/WebViewClassic;->onPinchToZoomAnimationEnd(FF)V

    .line 1135
    iget-object v1, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;
    invoke-static {v1}, Landroid/webkit/ZoomManager;->access$600(Landroid/webkit/ZoomManager;)Landroid/webkit/WebViewClassic;

    move-result-object v1

    iget-object v1, v1, Landroid/webkit/WebViewClassic;->mZoomDetectorListener:Landroid/webkit/WebView$ZoomDetectorListener;

    if-eqz v1, :cond_2

    .line 1136
    iget-object v1, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;
    invoke-static {v1}, Landroid/webkit/ZoomManager;->access$600(Landroid/webkit/ZoomManager;)Landroid/webkit/WebViewClassic;

    move-result-object v1

    iget-object v1, v1, Landroid/webkit/WebViewClassic;->mZoomDetectorListener:Landroid/webkit/WebView$ZoomDetectorListener;

    iget-object v2, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mActualScale:F
    invoke-static {v2}, Landroid/webkit/ZoomManager;->access$700(Landroid/webkit/ZoomManager;)F

    move-result v2

    invoke-virtual {p1}, Landroid/webkit/ScaleGestureDetector;->getFocusX()F

    move-result v3

    invoke-virtual {p1}, Landroid/webkit/ScaleGestureDetector;->getFocusY()F

    move-result v4

    invoke-interface {v1, v2, v3, v4}, Landroid/webkit/WebView$ZoomDetectorListener;->onZoomEnd(FFF)Z

    .line 1138
    :cond_2
    return-void

    :cond_3
    move v0, v1

    .line 1117
    goto :goto_0

    .line 1125
    .restart local v0       #reflowNow:Z
    :cond_4
    iget-object v3, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    if-eqz v0, :cond_5

    iget-object v4, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;
    invoke-static {v4}, Landroid/webkit/ZoomManager;->access$600(Landroid/webkit/ZoomManager;)Landroid/webkit/WebViewClassic;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkit/WebSettingsClassic;->getUseFixedViewport()Z

    move-result v4

    if-nez v4, :cond_5

    :goto_2
    invoke-virtual {v3, v2}, Landroid/webkit/ZoomManager;->refreshZoomScale(Z)V

    goto :goto_1

    :cond_5
    move v2, v1

    goto :goto_2
.end method
