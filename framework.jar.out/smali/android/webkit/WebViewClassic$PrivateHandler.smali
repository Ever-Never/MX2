.class Landroid/webkit/WebViewClassic$PrivateHandler;
.super Landroid/os/Handler;
.source "WebViewClassic.java"

# interfaces
.implements Landroid/webkit/WebViewInputDispatcher$UiCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebViewClassic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PrivateHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/WebViewClassic;


# direct methods
.method constructor <init>(Landroid/webkit/WebViewClassic;)V
    .locals 0
    .parameter

    .prologue
    .line 8719
    iput-object p1, p0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public clearPreviousHitTest()V
    .locals 2

    .prologue
    .line 9297
    iget-object v0, p0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    const/4 v1, 0x0

    #calls: Landroid/webkit/WebViewClassic;->setHitTestResult(Landroid/webkit/WebViewCore$WebKitHitTest;)V
    invoke-static {v0, v1}, Landroid/webkit/WebViewClassic;->access$8400(Landroid/webkit/WebViewClassic;Landroid/webkit/WebViewCore$WebKitHitTest;)V

    .line 9298
    return-void
.end method

.method public dispatchUiEvent(Landroid/view/MotionEvent;II)V
    .locals 1
    .parameter "event"
    .parameter "eventType"
    .parameter "flags"

    .prologue
    .line 9251
    iget-object v0, p0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #calls: Landroid/webkit/WebViewClassic;->onHandleUiEvent(Landroid/view/MotionEvent;II)V
    invoke-static {v0, p1, p2, p3}, Landroid/webkit/WebViewClassic;->access$9900(Landroid/webkit/WebViewClassic;Landroid/view/MotionEvent;II)V

    .line 9252
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 9256
    iget-object v0, p0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getUiLooper()Landroid/os/Looper;
    .locals 1

    .prologue
    .line 9246
    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 57
    .parameter "msg"

    .prologue
    .line 8736
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$800(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebViewCore;

    move-result-object v2

    if-nez v2, :cond_1

    .line 9242
    :cond_0
    :goto_0
    return-void

    .line 8740
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mBlockWebkitViewMessages:Z
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$4100(Landroid/webkit/WebViewClassic;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const/16 v7, 0x6b

    if-ne v2, v7, :cond_0

    .line 8745
    :cond_2
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 9239
    invoke-super/range {p0 .. p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 8747
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mDatabase:Landroid/webkit/WebViewDatabaseClassic;
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$3800(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebViewDatabaseClassic;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "host"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v8

    const-string/jumbo v9, "username"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v9

    const-string/jumbo v10, "password"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v7, v8, v9}, Landroid/webkit/WebViewDatabaseClassic;->setUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 8751
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 8755
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mDatabase:Landroid/webkit/WebViewDatabaseClassic;
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$3800(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebViewDatabaseClassic;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "host"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v2, v7, v8, v9}, Landroid/webkit/WebViewDatabaseClassic;->setUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 8756
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 8760
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mAutoScrollX:I
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$4200(Landroid/webkit/WebViewClassic;)I

    move-result v2

    if-nez v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mAutoScrollY:I
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$4300(Landroid/webkit/WebViewClassic;)I

    move-result v2

    if-nez v2, :cond_3

    .line 8761
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    const/4 v7, 0x0

    #setter for: Landroid/webkit/WebViewClassic;->mSentAutoScrollMessage:Z
    invoke-static {v2, v7}, Landroid/webkit/WebViewClassic;->access$4402(Landroid/webkit/WebViewClassic;Z)Z

    goto/16 :goto_0

    .line 8764
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mCurrentScrollingLayerId:I
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$4500(Landroid/webkit/WebViewClassic;)I

    move-result v2

    if-nez v2, :cond_4

    .line 8765
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mAutoScrollX:I
    invoke-static {v7}, Landroid/webkit/WebViewClassic;->access$4200(Landroid/webkit/WebViewClassic;)I

    move-result v7

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mAutoScrollY:I
    invoke-static {v8}, Landroid/webkit/WebViewClassic;->access$4300(Landroid/webkit/WebViewClassic;)I

    move-result v8

    const/4 v9, 0x1

    const/4 v10, 0x0

    #calls: Landroid/webkit/WebViewClassic;->pinScrollBy(IIZI)Z
    invoke-static {v2, v7, v8, v9, v10}, Landroid/webkit/WebViewClassic;->access$4600(Landroid/webkit/WebViewClassic;IIZI)Z

    .line 8770
    :goto_1
    const/16 v2, 0xb

    const-wide/16 v7, 0x10

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v7, v8}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 8767
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mScrollingLayerRect:Landroid/graphics/Rect;
    invoke-static {v7}, Landroid/webkit/WebViewClassic;->access$4700(Landroid/webkit/WebViewClassic;)Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mAutoScrollX:I
    invoke-static {v8}, Landroid/webkit/WebViewClassic;->access$4200(Landroid/webkit/WebViewClassic;)I

    move-result v8

    add-int/2addr v7, v8

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mScrollingLayerRect:Landroid/graphics/Rect;
    invoke-static {v8}, Landroid/webkit/WebViewClassic;->access$4700(Landroid/webkit/WebViewClassic;)Landroid/graphics/Rect;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mAutoScrollY:I
    invoke-static {v9}, Landroid/webkit/WebViewClassic;->access$4300(Landroid/webkit/WebViewClassic;)I

    move-result v9

    add-int/2addr v8, v9

    #calls: Landroid/webkit/WebViewClassic;->scrollLayerTo(II)V
    invoke-static {v2, v7, v8}, Landroid/webkit/WebViewClassic;->access$4800(Landroid/webkit/WebViewClassic;II)V

    goto :goto_1

    .line 8776
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mSelectingText:Z
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$2000(Landroid/webkit/WebViewClassic;)Z

    move-result v2

    if-nez v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    iget-boolean v2, v2, Landroid/webkit/WebViewClassic;->mIsEditingText:Z

    if-eqz v2, :cond_0

    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    iget-boolean v2, v2, Landroid/webkit/WebViewClassic;->mInTouch:Z

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mScrollingInComputing:Z
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$4900(Landroid/webkit/WebViewClassic;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 8777
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mOptionWindow:Lcom/meizu/widget/OptionPopupWindow;
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$2200(Landroid/webkit/WebViewClassic;)Lcom/meizu/widget/OptionPopupWindow;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mOptionWindow:Lcom/meizu/widget/OptionPopupWindow;
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$2200(Landroid/webkit/WebViewClassic;)Lcom/meizu/widget/OptionPopupWindow;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 8778
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static {v7}, Landroid/webkit/WebViewClassic;->access$000(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v7

    #calls: Landroid/webkit/WebViewClassic;->showOptionWindow(Landroid/view/View;)V
    invoke-static {v2, v7}, Landroid/webkit/WebViewClassic;->access$5000(Landroid/webkit/WebViewClassic;Landroid/view/View;)V

    goto/16 :goto_0

    .line 8784
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$000(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mSelectMoreTextDistance:I
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$5100(Landroid/webkit/WebViewClassic;)I

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mSelectCursorBase:Landroid/graphics/Point;
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$1800(Landroid/webkit/WebViewClassic;)Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mSelectCursorExtent:Landroid/graphics/Point;
    invoke-static {v7}, Landroid/webkit/WebViewClassic;->access$5200(Landroid/webkit/WebViewClassic;)Landroid/graphics/Point;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Point;->y:I

    if-ge v2, v7, :cond_0

    .line 8785
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mSelectMoreTextDistance:I
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$5100(Landroid/webkit/WebViewClassic;)I

    move-result v2

    int-to-double v7, v2

    const-wide v9, 0x3fd999999999999aL

    mul-double/2addr v7, v9

    double-to-int v0, v7

    move/from16 v19, v0

    .line 8786
    .local v19, deltaScroll:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkit/WebViewClassic;->computeMaxScrollY()I

    move-result v39

    .line 8787
    .local v39, maxY:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v2

    add-int v56, v2, v19

    .line 8788
    .local v56, y:I
    const/4 v2, 0x0

    move/from16 v0, v56

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    move/from16 v0, v39

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v56

    .line 8789
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$000(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v7}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v7

    move/from16 v0, v56

    invoke-virtual {v2, v7, v0}, Landroid/view/View;->scrollTo(II)V

    .line 8791
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mLastTouchX:I
    invoke-static {v7}, Landroid/webkit/WebViewClassic;->access$5300(Landroid/webkit/WebViewClassic;)I

    move-result v7

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v8}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v2, v7}, Landroid/webkit/WebViewClassic;->viewToContentX(I)I

    move-result v16

    .line 8792
    .local v16, contentX:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mLastTouchY:I
    invoke-static {v7}, Landroid/webkit/WebViewClassic;->access$5400(Landroid/webkit/WebViewClassic;)I

    move-result v7

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v8}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v2, v7}, Landroid/webkit/WebViewClassic;->viewToContentY(I)I

    move-result v17

    .line 8793
    .local v17, contentY:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mSelectOffset:Landroid/graphics/Point;
    invoke-static {v7}, Landroid/webkit/WebViewClassic;->access$5500(Landroid/webkit/WebViewClassic;)Landroid/graphics/Point;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Point;->x:I

    #calls: Landroid/webkit/WebViewClassic;->viewToContentDimension(I)I
    invoke-static {v2, v7}, Landroid/webkit/WebViewClassic;->access$5600(Landroid/webkit/WebViewClassic;I)I

    move-result v2

    add-int v25, v16, v2

    .line 8794
    .local v25, handleX:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mSelectOffset:Landroid/graphics/Point;
    invoke-static {v7}, Landroid/webkit/WebViewClassic;->access$5500(Landroid/webkit/WebViewClassic;)Landroid/graphics/Point;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Point;->y:I

    #calls: Landroid/webkit/WebViewClassic;->viewToContentDimension(I)I
    invoke-static {v2, v7}, Landroid/webkit/WebViewClassic;->access$5600(Landroid/webkit/WebViewClassic;I)I

    move-result v2

    add-int v26, v17, v2

    .line 8795
    .local v26, handleY:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mSelectDraggingCursor:Landroid/graphics/Point;
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$1700(Landroid/webkit/WebViewClassic;)Landroid/graphics/Point;

    move-result-object v2

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Point;->set(II)V

    .line 8796
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    const/4 v7, 0x0

    #calls: Landroid/webkit/WebViewClassic;->updateWebkitSelection(Z)V
    invoke-static {v2, v7}, Landroid/webkit/WebViewClassic;->access$5700(Landroid/webkit/WebViewClassic;Z)V

    .line 8797
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v2, v2, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v7, 0xd

    const-wide/16 v8, 0x14

    invoke-virtual {v2, v7, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 8804
    .end local v16           #contentX:I
    .end local v17           #contentY:I
    .end local v19           #deltaScroll:I
    .end local v25           #handleX:I
    .end local v26           #handleY:I
    .end local v39           #maxY:I
    .end local v56           #y:I
    :sswitch_5
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg2:I

    const/4 v7, 0x1

    if-ne v2, v7, :cond_6

    .line 8807
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v30

    .line 8808
    .local v30, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v30, :cond_0

    invoke-virtual/range {v30 .. v30}, Landroid/view/inputmethod/InputMethodManager;->isAcceptingText()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$000(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v2

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 8813
    .end local v30           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_6
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v42, v0

    check-cast v42, Landroid/graphics/Point;

    .line 8814
    .local v42, p:Landroid/graphics/Point;
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v0, v42

    iget v8, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, v42

    iget v9, v0, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/4 v10, 0x1

    if-ne v2, v10, :cond_7

    const/4 v2, 0x1

    :goto_2
    #calls: Landroid/webkit/WebViewClassic;->contentScrollTo(IIZ)V
    invoke-static {v7, v8, v9, v2}, Landroid/webkit/WebViewClassic;->access$5800(Landroid/webkit/WebViewClassic;IIZ)V

    goto/16 :goto_0

    :cond_7
    const/4 v2, 0x0

    goto :goto_2

    .line 8818
    .end local v42           #p:Landroid/graphics/Point;
    :sswitch_6
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v52, v0

    check-cast v52, Landroid/webkit/WebViewCore$ViewState;

    .line 8820
    .local v52, viewState:Landroid/webkit/WebViewCore$ViewState;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$1100(Landroid/webkit/WebViewClassic;)Landroid/webkit/ZoomManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v7}, Landroid/webkit/WebViewClassic;->getViewWidth()I

    move-result v7

    move-object/from16 v0, v52

    iget v8, v0, Landroid/webkit/WebViewCore$ViewState;->mScrollX:I

    move-object/from16 v0, v52

    invoke-virtual {v2, v0, v7, v8}, Landroid/webkit/ZoomManager;->updateZoomRange(Landroid/webkit/WebViewCore$ViewState;II)V

    goto/16 :goto_0

    .line 8824
    .end local v52           #viewState:Landroid/webkit/WebViewCore$ViewState;
    :sswitch_7
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v20

    .line 8825
    .local v20, density:F
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$1100(Landroid/webkit/WebViewClassic;)Landroid/webkit/ZoomManager;

    move-result-object v2

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/webkit/ZoomManager;->updateDefaultZoomDensity(F)V

    goto/16 :goto_0

    .line 8830
    .end local v20           #density:F
    :sswitch_8
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Landroid/webkit/WebViewCore$DrawData;

    .line 8831
    .local v22, draw:Landroid/webkit/WebViewCore$DrawData;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    const/4 v7, 0x1

    move-object/from16 v0, v22

    invoke-virtual {v2, v0, v7}, Landroid/webkit/WebViewClassic;->setNewPicture(Landroid/webkit/WebViewCore$DrawData;Z)V

    goto/16 :goto_0

    .line 8836
    .end local v22           #draw:Landroid/webkit/WebViewCore$DrawData;
    :sswitch_9
    const/4 v2, 0x3

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;
    invoke-static {v7}, Landroid/webkit/WebViewClassic;->access$900(Landroid/webkit/WebViewClassic;)Landroid/content/Context;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/webkit/BrowserFrame;->getRawResFilename(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v23

    .line 8838
    .local v23, drawableDir:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg1:I

    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v8

    move-object/from16 v0, v23

    #calls: Landroid/webkit/WebViewClassic;->nativeCreate(ILjava/lang/String;Z)V
    invoke-static {v2, v7, v0, v8}, Landroid/webkit/WebViewClassic;->access$5900(Landroid/webkit/WebViewClassic;ILjava/lang/String;Z)V

    .line 8839
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mDelaySetPicture:Landroid/webkit/WebViewCore$DrawData;
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$6000(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebViewCore$DrawData;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 8840
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mDelaySetPicture:Landroid/webkit/WebViewCore$DrawData;
    invoke-static {v7}, Landroid/webkit/WebViewClassic;->access$6000(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebViewCore$DrawData;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v2, v7, v8}, Landroid/webkit/WebViewClassic;->setNewPicture(Landroid/webkit/WebViewCore$DrawData;Z)V

    .line 8841
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    const/4 v7, 0x0

    #setter for: Landroid/webkit/WebViewClassic;->mDelaySetPicture:Landroid/webkit/WebViewCore$DrawData;
    invoke-static {v2, v7}, Landroid/webkit/WebViewClassic;->access$6002(Landroid/webkit/WebViewClassic;Landroid/webkit/WebViewCore$DrawData;)Landroid/webkit/WebViewCore$DrawData;

    .line 8843
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mIsPaused:Z
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$6100(Landroid/webkit/WebViewClassic;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 8844
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mNativeClass:I
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$1200(Landroid/webkit/WebViewClassic;)I

    move-result v2

    const/4 v7, 0x1

    #calls: Landroid/webkit/WebViewClassic;->nativeSetPauseDrawing(IZ)V
    invoke-static {v2, v7}, Landroid/webkit/WebViewClassic;->access$6200(IZ)V

    .line 8846
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    new-instance v7, Landroid/webkit/WebViewInputDispatcher;

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;
    invoke-static {v8}, Landroid/webkit/WebViewClassic;->access$800(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebViewCore;

    move-result-object v8

    invoke-virtual {v8}, Landroid/webkit/WebViewCore;->getInputDispatcherCallbacks()Landroid/webkit/WebViewInputDispatcher$WebKitCallbacks;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-direct {v7, v0, v8}, Landroid/webkit/WebViewInputDispatcher;-><init>(Landroid/webkit/WebViewInputDispatcher$UiCallbacks;Landroid/webkit/WebViewInputDispatcher$WebKitCallbacks;)V

    #setter for: Landroid/webkit/WebViewClassic;->mInputDispatcher:Landroid/webkit/WebViewInputDispatcher;
    invoke-static {v2, v7}, Landroid/webkit/WebViewClassic;->access$6302(Landroid/webkit/WebViewClassic;Landroid/webkit/WebViewInputDispatcher;)Landroid/webkit/WebViewInputDispatcher;

    .line 8848
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mInputDispatcher:Landroid/webkit/WebViewInputDispatcher;
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$6300(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebViewInputDispatcher;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mEnableSinglePointerScale:Z
    invoke-static {v7}, Landroid/webkit/WebViewClassic;->access$6400(Landroid/webkit/WebViewClassic;)Z

    move-result v7

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mSinglePointerScaleSlopSquare:I
    invoke-static {v8}, Landroid/webkit/WebViewClassic;->access$6500(Landroid/webkit/WebViewClassic;)I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v2, v7, v8}, Landroid/webkit/WebViewInputDispatcher;->setupSinglePointerScale(ZF)V

    goto/16 :goto_0

    .line 8853
    .end local v23           #drawableDir:Ljava/lang/String;
    :sswitch_a
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg2:I

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mTextGeneration:I
    invoke-static {v7}, Landroid/webkit/WebViewClassic;->access$6600(Landroid/webkit/WebViewClassic;)I

    move-result v7

    if-ne v2, v7, :cond_0

    .line 8854
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    .line 8855
    .local v5, text:Ljava/lang/String;
    if-nez v5, :cond_a

    .line 8856
    const-string v5, ""

    .line 8858
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v2, v2, Landroid/webkit/WebViewClassic;->mInputConnection:Landroid/webkit/WebViewClassic$WebViewInputConnection;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mFieldPointer:I
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$100(Landroid/webkit/WebViewClassic;)I

    move-result v2

    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg1:I

    if-ne v2, v7, :cond_0

    .line 8860
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v2, v2, Landroid/webkit/WebViewClassic;->mInputConnection:Landroid/webkit/WebViewClassic$WebViewInputConnection;

    invoke-virtual {v2, v5}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->setTextAndKeepSelection(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 8865
    .end local v5           #text:Ljava/lang/String;
    :sswitch_b
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v9, v0, Landroid/os/Message;->arg2:I

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/webkit/WebViewCore$TextSelectionData;

    #calls: Landroid/webkit/WebViewClassic;->updateTextSelectionFromMessage(IILandroid/webkit/WebViewCore$TextSelectionData;)V
    invoke-static {v7, v8, v9, v2}, Landroid/webkit/WebViewClassic;->access$6700(Landroid/webkit/WebViewClassic;IILandroid/webkit/WebViewCore$TextSelectionData;)V

    goto/16 :goto_0

    .line 8869
    :sswitch_c
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v21, v0

    .line 8870
    .local v21, direction:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$000(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v2

    move/from16 v0, v21

    invoke-virtual {v2, v0}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v24

    .line 8871
    .local v24, focusSearch:Landroid/view/View;
    if-eqz v24, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$000(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v2

    move-object/from16 v0, v24

    if-eq v0, v2, :cond_0

    .line 8872
    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->requestFocus()Z

    goto/16 :goto_0

    .line 8876
    .end local v21           #direction:I
    .end local v24           #focusSearch:Landroid/view/View;
    :sswitch_d
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #calls: Landroid/webkit/WebViewClassic;->hideSoftKeyboard()V
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$400(Landroid/webkit/WebViewClassic;)V

    .line 8877
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #calls: Landroid/webkit/WebViewClassic;->resetCaretMenuFlags()V
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$6800(Landroid/webkit/WebViewClassic;)V

    goto/16 :goto_0

    .line 8880
    :sswitch_e
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v45, v0

    check-cast v45, Landroid/graphics/Rect;

    .line 8881
    .local v45, r:Landroid/graphics/Rect;
    if-nez v45, :cond_b

    .line 8882
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkit/WebViewClassic;->invalidate()V

    goto/16 :goto_0

    .line 8886
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v0, v45

    iget v7, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v45

    iget v8, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v45

    iget v9, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v45

    iget v10, v0, Landroid/graphics/Rect;->bottom:I

    #calls: Landroid/webkit/WebViewClassic;->viewInvalidate(IIII)V
    invoke-static {v2, v7, v8, v9, v10}, Landroid/webkit/WebViewClassic;->access$6900(Landroid/webkit/WebViewClassic;IIII)V

    goto/16 :goto_0

    .line 8891
    .end local v45           #r:Landroid/graphics/Rect;
    :sswitch_f
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mFieldPointer:I
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$100(Landroid/webkit/WebViewClassic;)I

    move-result v2

    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg1:I

    if-ne v2, v7, :cond_0

    .line 8892
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/widget/ArrayAdapter;

    .line 8893
    .local v13, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mAutoCompletePopup:Landroid/webkit/AutoCompletePopup;
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$500(Landroid/webkit/WebViewClassic;)Landroid/webkit/AutoCompletePopup;

    move-result-object v2

    invoke-virtual {v2, v13}, Landroid/webkit/AutoCompletePopup;->setAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_0

    .line 8900
    .end local v13           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    :sswitch_10
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    const/4 v7, 0x0

    #setter for: Landroid/webkit/WebViewClassic;->mGotCenterDown:Z
    invoke-static {v2, v7}, Landroid/webkit/WebViewClassic;->access$7002(Landroid/webkit/WebViewClassic;Z)Z

    .line 8901
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    const/4 v7, 0x0

    #setter for: Landroid/webkit/WebViewClassic;->mTrackballDown:Z
    invoke-static {v2, v7}, Landroid/webkit/WebViewClassic;->access$7102(Landroid/webkit/WebViewClassic;Z)Z

    .line 8902
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$000(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebView;->performLongClick()Z

    goto/16 :goto_0

    .line 8906
    :sswitch_11
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mInputDispatcher:Landroid/webkit/WebViewInputDispatcher;
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$6300(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebViewInputDispatcher;

    move-result-object v7

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    if-eqz v2, :cond_c

    const/4 v2, 0x1

    :goto_3
    invoke-virtual {v7, v2}, Landroid/webkit/WebViewInputDispatcher;->setWebKitWantsTouchEvents(Z)V

    goto/16 :goto_0

    :cond_c
    const/4 v2, 0x0

    goto :goto_3

    .line 8910
    :sswitch_12
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    if-nez v2, :cond_d

    .line 8911
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #calls: Landroid/webkit/WebViewClassic;->hideSoftKeyboard()V
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$400(Landroid/webkit/WebViewClassic;)V

    goto/16 :goto_0

    .line 8914
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    const/4 v7, 0x1

    #calls: Landroid/webkit/WebViewClassic;->displaySoftKeyboard(Z)V
    invoke-static {v2, v7}, Landroid/webkit/WebViewClassic;->access$7200(Landroid/webkit/WebViewClassic;Z)V

    goto/16 :goto_0

    .line 8919
    :sswitch_13
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    const/4 v7, 0x2

    #setter for: Landroid/webkit/WebViewClassic;->mHeldMotionless:I
    invoke-static {v2, v7}, Landroid/webkit/WebViewClassic;->access$7302(Landroid/webkit/WebViewClassic;I)I

    .line 8920
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkit/WebViewClassic;->invalidate()V

    goto/16 :goto_0

    .line 8924
    :sswitch_14
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$000(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v7

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/4 v8, 0x1

    if-ne v2, v8, :cond_e

    const/4 v2, 0x1

    :goto_4
    invoke-virtual {v7, v2}, Landroid/view/View;->setKeepScreenOn(Z)V

    goto/16 :goto_0

    :cond_e
    const/4 v2, 0x0

    goto :goto_4

    .line 8928
    :sswitch_15
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mHTML5VideoViewProxy:Landroid/webkit/HTML5VideoViewProxy;
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$7400(Landroid/webkit/WebViewClassic;)Landroid/webkit/HTML5VideoViewProxy;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 8929
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mHTML5VideoViewProxy:Landroid/webkit/HTML5VideoViewProxy;
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$7400(Landroid/webkit/WebViewClassic;)Landroid/webkit/HTML5VideoViewProxy;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/HTML5VideoViewProxy;->exitFullScreenVideo()V

    goto/16 :goto_0

    .line 8934
    :sswitch_16
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v50, v0

    check-cast v50, Landroid/view/View;

    .line 8935
    .local v50, view:Landroid/view/View;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v41, v0

    .line 8936
    .local v41, orientation:I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v40, v0

    .line 8938
    .local v40, npp:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #calls: Landroid/webkit/WebViewClassic;->inFullScreenMode()Z
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$7500(Landroid/webkit/WebViewClassic;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 8939
    const-string/jumbo v2, "webview"

    const-string v7, "Should not have another full screen."

    invoke-static {v2, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8940
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #calls: Landroid/webkit/WebViewClassic;->dismissFullScreenMode()V
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$7600(Landroid/webkit/WebViewClassic;)V

    .line 8942
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    new-instance v7, Landroid/webkit/PluginFullScreenHolder;

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    move/from16 v0, v41

    move/from16 v1, v40

    invoke-direct {v7, v8, v0, v1}, Landroid/webkit/PluginFullScreenHolder;-><init>(Landroid/webkit/WebViewClassic;II)V

    iput-object v7, v2, Landroid/webkit/WebViewClassic;->mFullScreenHolder:Landroid/webkit/PluginFullScreenHolder;

    .line 8943
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v2, v2, Landroid/webkit/WebViewClassic;->mFullScreenHolder:Landroid/webkit/PluginFullScreenHolder;

    move-object/from16 v0, v50

    invoke-virtual {v2, v0}, Landroid/webkit/PluginFullScreenHolder;->setContentView(Landroid/view/View;)V

    .line 8944
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v2, v2, Landroid/webkit/WebViewClassic;->mFullScreenHolder:Landroid/webkit/PluginFullScreenHolder;

    invoke-virtual {v2}, Landroid/webkit/PluginFullScreenHolder;->show()V

    .line 8945
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkit/WebViewClassic;->invalidate()V

    goto/16 :goto_0

    .line 8950
    .end local v40           #npp:I
    .end local v41           #orientation:I
    .end local v50           #view:Landroid/view/View;
    :sswitch_17
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #calls: Landroid/webkit/WebViewClassic;->dismissFullScreenMode()V
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$7600(Landroid/webkit/WebViewClassic;)V

    goto/16 :goto_0

    .line 8954
    :sswitch_18
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Landroid/webkit/WebViewCore$ShowRectData;

    .line 8955
    .local v18, data:Landroid/webkit/WebViewCore$ShowRectData;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v0, v18

    iget v7, v0, Landroid/webkit/WebViewCore$ShowRectData;->mLeft:I

    invoke-virtual {v2, v7}, Landroid/webkit/WebViewClassic;->contentToViewX(I)I

    move-result v34

    .line 8956
    .local v34, left:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v0, v18

    iget v7, v0, Landroid/webkit/WebViewCore$ShowRectData;->mWidth:I

    invoke-virtual {v2, v7}, Landroid/webkit/WebViewClassic;->contentToViewDimension(I)I

    move-result v54

    .line 8957
    .local v54, width:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v0, v18

    iget v7, v0, Landroid/webkit/WebViewCore$ShowRectData;->mContentWidth:I

    invoke-virtual {v2, v7}, Landroid/webkit/WebViewClassic;->contentToViewDimension(I)I

    move-result v38

    .line 8958
    .local v38, maxWidth:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkit/WebViewClassic;->getViewWidth()I

    move-result v53

    .line 8959
    .local v53, viewWidth:I
    move/from16 v0, v34

    int-to-float v2, v0

    move-object/from16 v0, v18

    iget v7, v0, Landroid/webkit/WebViewCore$ShowRectData;->mXPercentInDoc:F

    move/from16 v0, v54

    int-to-float v8, v0

    mul-float/2addr v7, v8

    add-float/2addr v2, v7

    move-object/from16 v0, v18

    iget v7, v0, Landroid/webkit/WebViewCore$ShowRectData;->mXPercentInView:F

    move/from16 v0, v53

    int-to-float v8, v0

    mul-float/2addr v7, v8

    sub-float/2addr v2, v7

    float-to-int v0, v2

    move/from16 v55, v0

    .line 8970
    .local v55, x:I
    const/4 v2, 0x0

    add-int v7, v55, v53

    move/from16 v0, v38

    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    sub-int v7, v7, v53

    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    move-result v55

    .line 8972
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v0, v18

    iget v7, v0, Landroid/webkit/WebViewCore$ShowRectData;->mTop:I

    invoke-virtual {v2, v7}, Landroid/webkit/WebViewClassic;->contentToViewY(I)I

    move-result v49

    .line 8973
    .local v49, top:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v0, v18

    iget v7, v0, Landroid/webkit/WebViewCore$ShowRectData;->mHeight:I

    invoke-virtual {v2, v7}, Landroid/webkit/WebViewClassic;->contentToViewDimension(I)I

    move-result v27

    .line 8974
    .local v27, height:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v0, v18

    iget v7, v0, Landroid/webkit/WebViewCore$ShowRectData;->mContentHeight:I

    invoke-virtual {v2, v7}, Landroid/webkit/WebViewClassic;->contentToViewDimension(I)I

    move-result v37

    .line 8975
    .local v37, maxHeight:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkit/WebViewClassic;->getViewHeight()I

    move-result v51

    .line 8976
    .local v51, viewHeight:I
    move/from16 v0, v49

    int-to-float v2, v0

    move-object/from16 v0, v18

    iget v7, v0, Landroid/webkit/WebViewCore$ShowRectData;->mYPercentInDoc:F

    move/from16 v0, v27

    int-to-float v8, v0

    mul-float/2addr v7, v8

    add-float/2addr v2, v7

    move-object/from16 v0, v18

    iget v7, v0, Landroid/webkit/WebViewCore$ShowRectData;->mYPercentInView:F

    move/from16 v0, v51

    int-to-float v8, v0

    mul-float/2addr v7, v8

    sub-float/2addr v2, v7

    float-to-int v0, v2

    move/from16 v56, v0

    .line 8987
    .restart local v56       #y:I
    const/4 v2, 0x0

    add-int v7, v56, v51

    move/from16 v0, v37

    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    sub-int v7, v7, v51

    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    move-result v56

    .line 8991
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #calls: Landroid/webkit/WebViewClassic;->getVisibleTitleHeightImpl()I
    invoke-static {v7}, Landroid/webkit/WebViewClassic;->access$7700(Landroid/webkit/WebViewClassic;)I

    move-result v7

    sub-int v7, v56, v7

    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    move-result v56

    .line 8992
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$000(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v2

    move/from16 v0, v55

    move/from16 v1, v56

    invoke-virtual {v2, v0, v1}, Landroid/view/View;->scrollTo(II)V

    goto/16 :goto_0

    .line 8997
    .end local v18           #data:Landroid/webkit/WebViewCore$ShowRectData;
    .end local v27           #height:I
    .end local v34           #left:I
    .end local v37           #maxHeight:I
    .end local v38           #maxWidth:I
    .end local v49           #top:I
    .end local v51           #viewHeight:I
    .end local v53           #viewWidth:I
    .end local v54           #width:I
    .end local v55           #x:I
    .end local v56           #y:I
    :sswitch_19
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/Rect;

    invoke-virtual {v7, v2}, Landroid/webkit/WebViewClassic;->centerFitRect(Landroid/graphics/Rect;)V

    goto/16 :goto_0

    .line 9001
    :sswitch_1a
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg1:I

    #setter for: Landroid/webkit/WebViewClassic;->mHorizontalScrollBarMode:I
    invoke-static {v2, v7}, Landroid/webkit/WebViewClassic;->access$7802(Landroid/webkit/WebViewClassic;I)I

    .line 9002
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg2:I

    #setter for: Landroid/webkit/WebViewClassic;->mVerticalScrollBarMode:I
    invoke-static {v2, v7}, Landroid/webkit/WebViewClassic;->access$7902(Landroid/webkit/WebViewClassic;I)I

    goto/16 :goto_0

    .line 9006
    :sswitch_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #calls: Landroid/webkit/WebViewClassic;->isAccessibilityInjectionEnabled()Z
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$8000(Landroid/webkit/WebViewClassic;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 9007
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #calls: Landroid/webkit/WebViewClassic;->getAccessibilityInjector()Landroid/webkit/AccessibilityInjector;
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$8100(Landroid/webkit/WebViewClassic;)Landroid/webkit/AccessibilityInjector;

    move-result-object v7

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v7, v2}, Landroid/webkit/AccessibilityInjector;->handleSelectionChangedIfNecessary(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 9013
    :sswitch_1c
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mFieldPointer:I
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$100(Landroid/webkit/WebViewClassic;)I

    move-result v2

    if-eqz v2, :cond_11

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mFieldPointer:I
    invoke-static {v8}, Landroid/webkit/WebViewClassic;->access$100(Landroid/webkit/WebViewClassic;)I

    move-result v8

    if-ne v2, v8, :cond_11

    const/4 v2, 0x1

    :goto_5
    iput-boolean v2, v7, Landroid/webkit/WebViewClassic;->mIsEditingText:Z

    .line 9014
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mAutoCompletePopup:Landroid/webkit/AutoCompletePopup;
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$500(Landroid/webkit/WebViewClassic;)Landroid/webkit/AutoCompletePopup;

    move-result-object v2

    if-eqz v2, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    iget-boolean v2, v2, Landroid/webkit/WebViewClassic;->mIsEditingText:Z

    if-nez v2, :cond_10

    .line 9015
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mAutoCompletePopup:Landroid/webkit/AutoCompletePopup;
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$500(Landroid/webkit/WebViewClassic;)Landroid/webkit/AutoCompletePopup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/AutoCompletePopup;->clearAdapter()V

    .line 9019
    :cond_10
    :sswitch_1d
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Landroid/webkit/WebViewCore$WebKitHitTest;

    .line 9020
    .local v28, hit:Landroid/webkit/WebViewCore$WebKitHitTest;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v0, v28

    #setter for: Landroid/webkit/WebViewClassic;->mFocusedNode:Landroid/webkit/WebViewCore$WebKitHitTest;
    invoke-static {v2, v0}, Landroid/webkit/WebViewClassic;->access$8202(Landroid/webkit/WebViewClassic;Landroid/webkit/WebViewCore$WebKitHitTest;)Landroid/webkit/WebViewCore$WebKitHitTest;

    .line 9021
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v0, v28

    #calls: Landroid/webkit/WebViewClassic;->setTouchHighlightRects(Landroid/webkit/WebViewCore$WebKitHitTest;)V
    invoke-static {v2, v0}, Landroid/webkit/WebViewClassic;->access$8300(Landroid/webkit/WebViewClassic;Landroid/webkit/WebViewCore$WebKitHitTest;)V

    .line 9022
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v0, v28

    #calls: Landroid/webkit/WebViewClassic;->setHitTestResult(Landroid/webkit/WebViewCore$WebKitHitTest;)V
    invoke-static {v2, v0}, Landroid/webkit/WebViewClassic;->access$8400(Landroid/webkit/WebViewClassic;Landroid/webkit/WebViewCore$WebKitHitTest;)V

    goto/16 :goto_0

    .line 9013
    .end local v28           #hit:Landroid/webkit/WebViewCore$WebKitHitTest;
    :cond_11
    const/4 v2, 0x0

    goto :goto_5

    .line 9026
    :sswitch_1e
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v48, v0

    check-cast v48, Landroid/webkit/WebViewClassic$SaveWebArchiveMessage;

    .line 9027
    .local v48, saveMessage:Landroid/webkit/WebViewClassic$SaveWebArchiveMessage;
    move-object/from16 v0, v48

    iget-object v2, v0, Landroid/webkit/WebViewClassic$SaveWebArchiveMessage;->mCallback:Landroid/webkit/ValueCallback;

    if-eqz v2, :cond_0

    .line 9028
    move-object/from16 v0, v48

    iget-object v2, v0, Landroid/webkit/WebViewClassic$SaveWebArchiveMessage;->mCallback:Landroid/webkit/ValueCallback;

    move-object/from16 v0, v48

    iget-object v7, v0, Landroid/webkit/WebViewClassic$SaveWebArchiveMessage;->mResultFile:Ljava/lang/String;

    invoke-interface {v2, v7}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 9033
    .end local v48           #saveMessage:Landroid/webkit/WebViewClassic$SaveWebArchiveMessage;
    :sswitch_1f
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/webkit/WebViewCore$AutoFillData;

    #setter for: Landroid/webkit/WebViewClassic;->mAutoFillData:Landroid/webkit/WebViewCore$AutoFillData;
    invoke-static {v7, v2}, Landroid/webkit/WebViewClassic;->access$3702(Landroid/webkit/WebViewClassic;Landroid/webkit/WebViewCore$AutoFillData;)Landroid/webkit/WebViewCore$AutoFillData;

    .line 9034
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v2, v2, Landroid/webkit/WebViewClassic;->mInputConnection:Landroid/webkit/WebViewClassic$WebViewInputConnection;

    if-eqz v2, :cond_0

    .line 9035
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v2, v2, Landroid/webkit/WebViewClassic;->mInputConnection:Landroid/webkit/WebViewClassic$WebViewInputConnection;

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mAutoFillData:Landroid/webkit/WebViewCore$AutoFillData;
    invoke-static {v7}, Landroid/webkit/WebViewClassic;->access$3700(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebViewCore$AutoFillData;

    move-result-object v7

    invoke-virtual {v7}, Landroid/webkit/WebViewCore$AutoFillData;->getQueryId()I

    move-result v7

    invoke-virtual {v2, v7}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->setAutoFillable(I)V

    .line 9036
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mAutoCompletePopup:Landroid/webkit/AutoCompletePopup;
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$500(Landroid/webkit/WebViewClassic;)Landroid/webkit/AutoCompletePopup;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mAutoFillData:Landroid/webkit/WebViewCore$AutoFillData;
    invoke-static {v7}, Landroid/webkit/WebViewClassic;->access$3700(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebViewCore$AutoFillData;

    move-result-object v7

    invoke-virtual {v7}, Landroid/webkit/WebViewCore$AutoFillData;->getQueryId()I

    move-result v7

    invoke-virtual {v2, v7}, Landroid/webkit/AutoCompletePopup;->setAutoFillQueryId(I)V

    goto/16 :goto_0

    .line 9041
    :sswitch_20
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mAutoCompletePopup:Landroid/webkit/AutoCompletePopup;
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$500(Landroid/webkit/WebViewClassic;)Landroid/webkit/AutoCompletePopup;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 9042
    new-instance v44, Ljava/util/ArrayList;

    invoke-direct/range {v44 .. v44}, Ljava/util/ArrayList;-><init>()V

    .line 9043
    .local v44, pastEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mAutoCompletePopup:Landroid/webkit/AutoCompletePopup;
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$500(Landroid/webkit/WebViewClassic;)Landroid/webkit/AutoCompletePopup;

    move-result-object v2

    new-instance v7, Landroid/widget/ArrayAdapter;

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;
    invoke-static {v8}, Landroid/webkit/WebViewClassic;->access$900(Landroid/webkit/WebViewClassic;)Landroid/content/Context;

    move-result-object v8

    const v9, 0x1090132

    move-object/from16 v0, v44

    invoke-direct {v7, v8, v9, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v2, v7}, Landroid/webkit/AutoCompletePopup;->setAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_0

    .line 9051
    .end local v44           #pastEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_21
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    #calls: Landroid/webkit/WebViewClassic;->copyToClipboard(Ljava/lang/String;)V
    invoke-static {v7, v2}, Landroid/webkit/WebViewClassic;->access$8500(Landroid/webkit/WebViewClassic;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 9055
    :sswitch_22
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v2, v2, Landroid/webkit/WebViewClassic;->mInputConnection:Landroid/webkit/WebViewClassic$WebViewInputConnection;

    if-eqz v2, :cond_0

    .line 9056
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Landroid/webkit/WebViewCore$TextFieldInitData;

    .line 9057
    .local v31, initData:Landroid/webkit/WebViewCore$TextFieldInitData;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    const/4 v7, 0x0

    #setter for: Landroid/webkit/WebViewClassic;->mTextGeneration:I
    invoke-static {v2, v7}, Landroid/webkit/WebViewClassic;->access$6602(Landroid/webkit/WebViewClassic;I)I

    .line 9058
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v0, v31

    iget v7, v0, Landroid/webkit/WebViewCore$TextFieldInitData;->mFieldPointer:I

    #setter for: Landroid/webkit/WebViewClassic;->mFieldPointer:I
    invoke-static {v2, v7}, Landroid/webkit/WebViewClassic;->access$102(Landroid/webkit/WebViewClassic;I)I

    .line 9059
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v2, v2, Landroid/webkit/WebViewClassic;->mInputConnection:Landroid/webkit/WebViewClassic$WebViewInputConnection;

    move-object/from16 v0, v31

    invoke-virtual {v2, v0}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->initEditorInfo(Landroid/webkit/WebViewCore$TextFieldInitData;)V

    .line 9060
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v2, v2, Landroid/webkit/WebViewClassic;->mInputConnection:Landroid/webkit/WebViewClassic$WebViewInputConnection;

    move-object/from16 v0, v31

    iget-object v7, v0, Landroid/webkit/WebViewCore$TextFieldInitData;->mText:Ljava/lang/String;

    invoke-virtual {v2, v7}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->setTextAndKeepSelection(Ljava/lang/CharSequence;)V

    .line 9061
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v2, v2, Landroid/webkit/WebViewClassic;->mEditTextContentBounds:Landroid/graphics/Rect;

    move-object/from16 v0, v31

    iget-object v7, v0, Landroid/webkit/WebViewCore$TextFieldInitData;->mContentBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 9062
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v0, v31

    iget v7, v0, Landroid/webkit/WebViewCore$TextFieldInitData;->mNodeLayerId:I

    iput v7, v2, Landroid/webkit/WebViewClassic;->mEditTextLayerId:I

    .line 9063
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mNativeClass:I
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$1200(Landroid/webkit/WebViewClassic;)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    iget v7, v7, Landroid/webkit/WebViewClassic;->mEditTextLayerId:I

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v8, v8, Landroid/webkit/WebViewClassic;->mEditTextContentBounds:Landroid/graphics/Rect;

    #calls: Landroid/webkit/WebViewClassic;->nativeMapLayerRect(IILandroid/graphics/Rect;)V
    invoke-static {v2, v7, v8}, Landroid/webkit/WebViewClassic;->access$8600(IILandroid/graphics/Rect;)V

    .line 9065
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v2, v2, Landroid/webkit/WebViewClassic;->mEditTextContent:Landroid/graphics/Rect;

    move-object/from16 v0, v31

    iget-object v7, v0, Landroid/webkit/WebViewCore$TextFieldInitData;->mClientRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 9066
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #calls: Landroid/webkit/WebViewClassic;->relocateAutoCompletePopup()V
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$8700(Landroid/webkit/WebViewClassic;)V

    goto/16 :goto_0

    .line 9071
    .end local v31           #initData:Landroid/webkit/WebViewCore$TextFieldInitData;
    :sswitch_23
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    .line 9072
    .restart local v5       #text:Ljava/lang/String;
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    .line 9073
    .local v3, start:I
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg2:I

    .line 9074
    .local v4, end:I
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v2

    add-int v6, v3, v2

    .line 9075
    .local v6, cursorPosition:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    move v7, v6

    invoke-virtual/range {v2 .. v7}, Landroid/webkit/WebViewClassic;->replaceTextfieldText(IILjava/lang/String;II)V

    .line 9077
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkit/WebViewClassic;->selectionDone()V

    goto/16 :goto_0

    .line 9082
    .end local v3           #start:I
    .end local v4           #end:I
    .end local v5           #text:Ljava/lang/String;
    .end local v6           #cursorPosition:I
    :sswitch_24
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v46, v0

    check-cast v46, Landroid/webkit/WebViewCore$FindAllRequest;

    .line 9083
    .local v46, request:Landroid/webkit/WebViewCore$FindAllRequest;
    if-nez v46, :cond_12

    .line 9084
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mFindCallback:Landroid/webkit/FindOnPageInterface;
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$8800(Landroid/webkit/WebViewClassic;)Landroid/webkit/FindOnPageInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 9085
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mFindCallback:Landroid/webkit/FindOnPageInterface;
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$8800(Landroid/webkit/WebViewClassic;)Landroid/webkit/FindOnPageInterface;

    move-result-object v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-interface {v2, v7, v8, v9}, Landroid/webkit/FindOnPageInterface;->updateMatchCount(IIZ)V

    goto/16 :goto_0

    .line 9087
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mFindRequest:Landroid/webkit/WebViewCore$FindAllRequest;
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$8900(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebViewCore$FindAllRequest;

    move-result-object v2

    move-object/from16 v0, v46

    if-ne v0, v2, :cond_0

    .line 9089
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mFindRequest:Landroid/webkit/WebViewCore$FindAllRequest;
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$8900(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebViewCore$FindAllRequest;

    move-result-object v7

    monitor-enter v7

    .line 9090
    :try_start_0
    move-object/from16 v0, v46

    iget v0, v0, Landroid/webkit/WebViewCore$FindAllRequest;->mMatchCount:I

    move/from16 v35, v0

    .line 9091
    .local v35, matchCount:I
    move-object/from16 v0, v46

    iget v0, v0, Landroid/webkit/WebViewCore$FindAllRequest;->mMatchIndex:I

    move/from16 v36, v0

    .line 9092
    .local v36, matchIndex:I
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9093
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mFindCallback:Landroid/webkit/FindOnPageInterface;
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$8800(Landroid/webkit/WebViewClassic;)Landroid/webkit/FindOnPageInterface;

    move-result-object v2

    if-eqz v2, :cond_13

    .line 9094
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mFindCallback:Landroid/webkit/FindOnPageInterface;
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$8800(Landroid/webkit/WebViewClassic;)Landroid/webkit/FindOnPageInterface;

    move-result-object v2

    const/4 v7, 0x0

    move/from16 v0, v36

    move/from16 v1, v35

    invoke-interface {v2, v0, v1, v7}, Landroid/webkit/FindOnPageInterface;->updateMatchCount(IIZ)V

    .line 9096
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mFindListener:Landroid/webkit/WebView$FindListener;
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$9000(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView$FindListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 9097
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mFindListener:Landroid/webkit/WebView$FindListener;
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$9000(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView$FindListener;

    move-result-object v2

    const/4 v7, 0x1

    move/from16 v0, v36

    move/from16 v1, v35

    invoke-interface {v2, v0, v1, v7}, Landroid/webkit/WebView$FindListener;->onFindResultReceived(IIZ)V

    goto/16 :goto_0

    .line 9092
    .end local v35           #matchCount:I
    .end local v36           #matchIndex:I
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 9104
    .end local v46           #request:Landroid/webkit/WebViewCore$FindAllRequest;
    :sswitch_25
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mIsCaretSelection:Z
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$9100(Landroid/webkit/WebViewClassic;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_0

    .line 9110
    :sswitch_26
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    const/16 v7, 0xdf

    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->arg1:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v2, v7, v8, v9, v10}, Landroid/webkit/WebViewClassic;->sendBatchableInputMessage(IIILjava/lang/Object;)V

    goto/16 :goto_0

    .line 9114
    :sswitch_27
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #calls: Landroid/webkit/WebViewClassic;->relocateAutoCompletePopup()V
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$8700(Landroid/webkit/WebViewClassic;)V

    goto/16 :goto_0

    .line 9118
    :sswitch_28
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$800(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebViewCore;

    move-result-object v2

    const/16 v7, 0xc0

    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->arg1:I

    const/4 v9, 0x0

    invoke-virtual {v2, v7, v8, v9}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    goto/16 :goto_0

    .line 9123
    :sswitch_29
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mFieldPointer:I
    invoke-static {v7}, Landroid/webkit/WebViewClassic;->access$100(Landroid/webkit/WebViewClassic;)I

    move-result v7

    if-ne v2, v7, :cond_0

    .line 9124
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v7, v2, Landroid/webkit/WebViewClassic;->mEditTextContent:Landroid/graphics/Rect;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/Rect;

    invoke-virtual {v7, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_0

    .line 9129
    :sswitch_2a
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mSelectingText:Z
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$2000(Landroid/webkit/WebViewClassic;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    iget-boolean v2, v2, Landroid/webkit/WebViewClassic;->mIsEditingText:Z

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mIsCaretSelection:Z
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$9100(Landroid/webkit/WebViewClassic;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 9130
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #calls: Landroid/webkit/WebViewClassic;->setupWebkitSelect()Z
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$9200(Landroid/webkit/WebViewClassic;)Z

    .line 9131
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #calls: Landroid/webkit/WebViewClassic;->resetCaretTimer()V
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$9300(Landroid/webkit/WebViewClassic;)V

    .line 9132
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static {v7}, Landroid/webkit/WebViewClassic;->access$000(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v7

    #calls: Landroid/webkit/WebViewClassic;->showOptionWindow(Landroid/view/View;)V
    invoke-static {v2, v7}, Landroid/webkit/WebViewClassic;->access$5000(Landroid/webkit/WebViewClassic;Landroid/view/View;)V

    goto/16 :goto_0

    .line 9137
    :sswitch_2b
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v7, v2, Landroid/webkit/WebViewClassic;->mEditTextContentBounds:Landroid/graphics/Rect;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/Rect;

    invoke-virtual {v7, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 9138
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mNativeClass:I
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$1200(Landroid/webkit/WebViewClassic;)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    iget v7, v7, Landroid/webkit/WebViewClassic;->mEditTextLayerId:I

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v8, v8, Landroid/webkit/WebViewClassic;->mEditTextContentBounds:Landroid/graphics/Rect;

    #calls: Landroid/webkit/WebViewClassic;->nativeMapLayerRect(IILandroid/graphics/Rect;)V
    invoke-static {v2, v7, v8}, Landroid/webkit/WebViewClassic;->access$8600(IILandroid/graphics/Rect;)V

    goto/16 :goto_0

    .line 9143
    :sswitch_2c
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #calls: Landroid/webkit/WebViewClassic;->scrollEditWithCursor()V
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$9400(Landroid/webkit/WebViewClassic;)V

    goto/16 :goto_0

    .line 9147
    :sswitch_2d
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #calls: Landroid/webkit/WebViewClassic;->scrollDraggedSelectionHandleIntoView()V
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$9500(Landroid/webkit/WebViewClassic;)V

    goto/16 :goto_0

    .line 9152
    :sswitch_2e
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$1100(Landroid/webkit/WebViewClassic;)Landroid/webkit/ZoomManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 9153
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v16, v0

    .line 9154
    .restart local v16       #contentX:I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v17, v0

    .line 9155
    .restart local v17       #contentY:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/webkit/WebViewClassic;->contentToViewX(I)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v7}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v7

    sub-int/2addr v2, v7

    int-to-float v0, v2

    move/from16 v32, v0

    .line 9156
    .local v32, lastTouchX:F
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/webkit/WebViewClassic;->contentToViewY(I)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v7}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v7

    sub-int/2addr v2, v7

    int-to-float v0, v2

    move/from16 v33, v0

    .line 9157
    .local v33, lastTouchY:F
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Landroid/graphics/Rect;

    .line 9158
    .local v14, bounds:Landroid/graphics/Rect;
    const/4 v15, 0x0

    .line 9159
    .local v15, canFixCenter:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$900(Landroid/webkit/WebViewClassic;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v43

    .line 9160
    .local v43, packageName:Ljava/lang/String;
    if-eqz v43, :cond_15

    invoke-static {}, Landroid/webkit/WebViewClassic;->access$9600()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v43

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    invoke-static {}, Landroid/webkit/WebViewClassic;->access$9700()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v43

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 9162
    :cond_14
    if-eqz v14, :cond_15

    invoke-virtual {v14}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_15

    .line 9163
    const/4 v15, 0x1

    .line 9166
    :cond_15
    if-eqz v15, :cond_16

    .line 9175
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$1100(Landroid/webkit/WebViewClassic;)Landroid/webkit/ZoomManager;

    move-result-object v2

    const/4 v7, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v2, v7, v14, v0, v1}, Landroid/webkit/ZoomManager;->handleDoubleTapOnImage(ZLandroid/graphics/Rect;II)V

    goto/16 :goto_0

    .line 9177
    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$1100(Landroid/webkit/WebViewClassic;)Landroid/webkit/ZoomManager;

    move-result-object v2

    move/from16 v0, v32

    move/from16 v1, v33

    invoke-virtual {v2, v0, v1}, Landroid/webkit/ZoomManager;->handleDoubleTapHalfBottom(FF)V

    goto/16 :goto_0

    .line 9183
    .end local v14           #bounds:Landroid/graphics/Rect;
    .end local v15           #canFixCenter:Z
    .end local v16           #contentX:I
    .end local v17           #contentY:I
    .end local v32           #lastTouchX:F
    .end local v33           #lastTouchY:F
    .end local v43           #packageName:Ljava/lang/String;
    :sswitch_2f
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$1100(Landroid/webkit/WebViewClassic;)Landroid/webkit/ZoomManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 9184
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v16, v0

    .line 9185
    .restart local v16       #contentX:I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v17, v0

    .line 9186
    .restart local v17       #contentY:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/webkit/WebViewClassic;->contentToViewX(I)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v7}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v7

    sub-int/2addr v2, v7

    int-to-float v0, v2

    move/from16 v32, v0

    .line 9187
    .restart local v32       #lastTouchX:F
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/webkit/WebViewClassic;->contentToViewY(I)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v7}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v7

    sub-int/2addr v2, v7

    int-to-float v0, v2

    move/from16 v33, v0

    .line 9188
    .restart local v33       #lastTouchY:F
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Landroid/graphics/Rect;

    .line 9189
    .restart local v14       #bounds:Landroid/graphics/Rect;
    if-eqz v14, :cond_17

    invoke-virtual {v14}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_17

    .line 9190
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$1100(Landroid/webkit/WebViewClassic;)Landroid/webkit/ZoomManager;

    move-result-object v2

    const/4 v7, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v2, v7, v14, v0, v1}, Landroid/webkit/ZoomManager;->handleDoubleTapOnImage(ZLandroid/graphics/Rect;II)V

    goto/16 :goto_0

    .line 9192
    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$1100(Landroid/webkit/WebViewClassic;)Landroid/webkit/ZoomManager;

    move-result-object v2

    move/from16 v0, v32

    move/from16 v1, v33

    invoke-virtual {v2, v0, v1}, Landroid/webkit/ZoomManager;->handleDoubleTapHalfBottom(FF)V

    goto/16 :goto_0

    .line 9198
    .end local v14           #bounds:Landroid/graphics/Rect;
    .end local v16           #contentX:I
    .end local v17           #contentY:I
    .end local v32           #lastTouchX:F
    .end local v33           #lastTouchY:F
    :sswitch_30
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$1100(Landroid/webkit/WebViewClassic;)Landroid/webkit/ZoomManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 9199
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v16, v0

    .line 9200
    .restart local v16       #contentX:I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v17, v0

    .line 9201
    .restart local v17       #contentY:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/webkit/WebViewClassic;->contentToViewX(I)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v7}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v7

    sub-int/2addr v2, v7

    int-to-float v0, v2

    move/from16 v32, v0

    .line 9202
    .restart local v32       #lastTouchX:F
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/webkit/WebViewClassic;->contentToViewY(I)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v7}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v7

    sub-int/2addr v2, v7

    int-to-float v0, v2

    move/from16 v33, v0

    .line 9203
    .restart local v33       #lastTouchY:F
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Landroid/graphics/Rect;

    .line 9204
    .restart local v14       #bounds:Landroid/graphics/Rect;
    if-eqz v14, :cond_19

    invoke-virtual {v14}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_19

    .line 9205
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebSettingsClassic;->useNewRender()Z

    move-result v2

    if-nez v2, :cond_18

    .line 9206
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$1100(Landroid/webkit/WebViewClassic;)Landroid/webkit/ZoomManager;

    move-result-object v2

    move/from16 v0, v32

    move/from16 v1, v33

    invoke-virtual {v2, v14, v0, v1}, Landroid/webkit/ZoomManager;->handleDoubleTapOnImage(Landroid/graphics/Rect;FF)V

    goto/16 :goto_0

    .line 9208
    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$1100(Landroid/webkit/WebViewClassic;)Landroid/webkit/ZoomManager;

    move-result-object v2

    const/4 v7, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v2, v7, v14, v0, v1}, Landroid/webkit/ZoomManager;->handleDoubleTapOnImage(ZLandroid/graphics/Rect;II)V

    goto/16 :goto_0

    .line 9210
    :cond_19
    if-eqz v14, :cond_1a

    iget v2, v14, Landroid/graphics/Rect;->left:I

    const/high16 v7, -0x8000

    if-eq v2, v7, :cond_1a

    iget v2, v14, Landroid/graphics/Rect;->top:I

    const/high16 v7, -0x8000

    if-ne v2, v7, :cond_1a

    iget v2, v14, Landroid/graphics/Rect;->right:I

    const/high16 v7, -0x8000

    if-ne v2, v7, :cond_1a

    iget v2, v14, Landroid/graphics/Rect;->bottom:I

    const/high16 v7, -0x8000

    if-ne v2, v7, :cond_1a

    .line 9213
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    iget v7, v14, Landroid/graphics/Rect;->left:I

    iput v7, v2, Landroid/webkit/WebViewClassic;->mDoubleTapLeftEdge:I

    .line 9214
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$1100(Landroid/webkit/WebViewClassic;)Landroid/webkit/ZoomManager;

    move-result-object v2

    move/from16 v0, v32

    move/from16 v1, v33

    invoke-virtual {v2, v0, v1}, Landroid/webkit/ZoomManager;->handleDoubleTapHalfBottom(FF)V

    goto/16 :goto_0

    .line 9216
    :cond_1a
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$1100(Landroid/webkit/WebViewClassic;)Landroid/webkit/ZoomManager;

    move-result-object v2

    move/from16 v0, v32

    move/from16 v1, v33

    invoke-virtual {v2, v0, v1}, Landroid/webkit/ZoomManager;->handleDoubleTapHalfBottom(FF)V

    goto/16 :goto_0

    .line 9222
    .end local v14           #bounds:Landroid/graphics/Rect;
    .end local v16           #contentX:I
    .end local v17           #contentY:I
    .end local v32           #lastTouchX:F
    .end local v33           #lastTouchY:F
    :sswitch_31
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v47, v0

    check-cast v47, Landroid/webkit/WebViewCore$MagnifyHrefsShowData;

    .line 9224
    .local v47, sData:Landroid/webkit/WebViewCore$MagnifyHrefsShowData;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkit/WebViewClassic;->getMagnifierHrefsController()Landroid/webkit/WebViewClassic$MagnifierHrefsController;

    move-result-object v7

    move-object/from16 v0, v47

    iget v8, v0, Landroid/webkit/WebViewCore$MagnifyHrefsShowData;->mViewLastTouchX:I

    move-object/from16 v0, v47

    iget v9, v0, Landroid/webkit/WebViewCore$MagnifyHrefsShowData;->mViewLastTouchY:I

    move-object/from16 v0, v47

    iget-object v10, v0, Landroid/webkit/WebViewCore$MagnifyHrefsShowData;->mMagnifyHrefsRect:Landroid/graphics/Rect;

    move-object/from16 v0, v47

    iget-object v11, v0, Landroid/webkit/WebViewCore$MagnifyHrefsShowData;->mPicture:Landroid/graphics/Picture;

    move-object/from16 v0, v47

    iget v12, v0, Landroid/webkit/WebViewCore$MagnifyHrefsShowData;->mPicScale:F

    invoke-virtual/range {v7 .. v12}, Landroid/webkit/WebViewClassic$MagnifierHrefsController;->show(IILandroid/graphics/Rect;Landroid/graphics/Picture;F)V

    goto/16 :goto_0

    .line 9229
    .end local v47           #sData:Landroid/webkit/WebViewCore$MagnifyHrefsShowData;
    :sswitch_32
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v29, v0

    check-cast v29, Landroid/webkit/WebViewCore$WebKitHitTest;

    .line 9230
    .local v29, hitTest:Landroid/webkit/WebViewCore$WebKitHitTest;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Landroid/webkit/WebViewClassic;->processMagnifyHrefsLongClick(Landroid/webkit/WebViewCore$WebKitHitTest;)V

    goto/16 :goto_0

    .line 9235
    .end local v29           #hitTest:Landroid/webkit/WebViewCore$WebKitHitTest;
    :sswitch_33
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/Picture;

    #setter for: Landroid/webkit/WebViewClassic;->mScreenShot:Landroid/graphics/Picture;
    invoke-static {v7, v2}, Landroid/webkit/WebViewClassic;->access$9802(Landroid/webkit/WebViewClassic;Landroid/graphics/Picture;)Landroid/graphics/Picture;

    goto/16 :goto_0

    .line 8745
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x6 -> :sswitch_f
        0x8 -> :sswitch_13
        0xb -> :sswitch_2
        0xc -> :sswitch_3
        0xd -> :sswitch_4
        0x65 -> :sswitch_5
        0x69 -> :sswitch_8
        0x6b -> :sswitch_9
        0x6c -> :sswitch_a
        0x6d -> :sswitch_6
        0x6e -> :sswitch_c
        0x6f -> :sswitch_d
        0x70 -> :sswitch_b
        0x71 -> :sswitch_18
        0x72 -> :sswitch_10
        0x74 -> :sswitch_11
        0x75 -> :sswitch_e
        0x76 -> :sswitch_12
        0x78 -> :sswitch_16
        0x79 -> :sswitch_17
        0x7e -> :sswitch_24
        0x7f -> :sswitch_19
        0x81 -> :sswitch_1a
        0x82 -> :sswitch_1b
        0x83 -> :sswitch_1d
        0x84 -> :sswitch_1e
        0x85 -> :sswitch_1f
        0x86 -> :sswitch_20
        0x88 -> :sswitch_14
        0x8b -> :sswitch_7
        0x8c -> :sswitch_15
        0x8d -> :sswitch_21
        0x8e -> :sswitch_22
        0x8f -> :sswitch_23
        0x90 -> :sswitch_25
        0x91 -> :sswitch_26
        0x92 -> :sswitch_27
        0x93 -> :sswitch_1c
        0x94 -> :sswitch_28
        0x95 -> :sswitch_2c
        0x96 -> :sswitch_29
        0x97 -> :sswitch_2a
        0x98 -> :sswitch_2b
        0x99 -> :sswitch_2e
        0x9a -> :sswitch_2f
        0x9b -> :sswitch_30
        0x9c -> :sswitch_31
        0x9d -> :sswitch_32
        0x9e -> :sswitch_2d
        0x9f -> :sswitch_33
    .end sparse-switch
.end method

.method public isScrolling()Z
    .locals 1

    .prologue
    .line 9302
    iget-object v0, p0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mScroller:Lcom/meizu/widget/MzOverScroller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mScroller:Lcom/meizu/widget/MzOverScroller;

    invoke-virtual {v0}, Lcom/meizu/widget/MzOverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 9303
    const/4 v0, 0x1

    .line 9305
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    const/4 v0, 0x0

    .line 9269
    iget-object v3, p0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mSelectingText:Z
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$2000(Landroid/webkit/WebViewClassic;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 9284
    :goto_0
    return v0

    .line 9272
    :cond_0
    iget-object v3, p0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #calls: Landroid/webkit/WebViewClassic;->ensureSelectionHandles()V
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$10100(Landroid/webkit/WebViewClassic;)V

    .line 9273
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget-object v4, p0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->getTitleHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget-object v4, p0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 9274
    .local v2, y:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget-object v4, p0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 9276
    .local v1, x:I
    iget-object v3, p0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mIsCaretSelection:Z
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$9100(Landroid/webkit/WebViewClassic;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 9277
    iget-object v3, p0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mSelectHandleCenter:Landroid/graphics/drawable/Drawable;
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$10200(Landroid/webkit/WebViewClassic;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    .local v0, isPressingHandle:Z
    goto :goto_0

    .line 9280
    .end local v0           #isPressingHandle:Z
    :cond_1
    iget-object v3, p0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mSelectHandleBaseBounds:Landroid/graphics/Rect;
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$10300(Landroid/webkit/WebViewClassic;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mSelectHandleExtentBounds:Landroid/graphics/Rect;
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$10400(Landroid/webkit/WebViewClassic;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    const/4 v0, 0x1

    .restart local v0       #isPressingHandle:Z
    :cond_3
    goto :goto_0
.end method

.method public shouldSkipWebKitClick(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 9261
    iget-object v0, p0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #calls: Landroid/webkit/WebViewClassic;->isTouchInComposingEditText(Landroid/view/MotionEvent;)Z
    invoke-static {v0, p1}, Landroid/webkit/WebViewClassic;->access$10000(Landroid/webkit/WebViewClassic;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9262
    const/4 v0, 0x1

    .line 9264
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showTapHighlight(Z)V
    .locals 1
    .parameter "show"

    .prologue
    .line 9289
    iget-object v0, p0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mShowTapHighlight:Z
    invoke-static {v0}, Landroid/webkit/WebViewClassic;->access$10500(Landroid/webkit/WebViewClassic;)Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 9290
    iget-object v0, p0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #setter for: Landroid/webkit/WebViewClassic;->mShowTapHighlight:Z
    invoke-static {v0, p1}, Landroid/webkit/WebViewClassic;->access$10502(Landroid/webkit/WebViewClassic;Z)Z

    .line 9291
    iget-object v0, p0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->invalidate()V

    .line 9293
    :cond_0
    return-void
.end method
