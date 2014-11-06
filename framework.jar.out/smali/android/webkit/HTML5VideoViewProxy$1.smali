.class Landroid/webkit/HTML5VideoViewProxy$1;
.super Landroid/os/Handler;
.source "HTML5VideoViewProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/HTML5VideoViewProxy;->createWebCoreHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/HTML5VideoViewProxy;


# direct methods
.method constructor <init>(Landroid/webkit/HTML5VideoViewProxy;)V
    .locals 0
    .parameter

    .prologue
    .line 715
    iput-object p1, p0, Landroid/webkit/HTML5VideoViewProxy$1;->this$0:Landroid/webkit/HTML5VideoViewProxy;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .parameter "msg"

    .prologue
    const/4 v10, 0x0

    .line 718
    iget-object v5, p0, Landroid/webkit/HTML5VideoViewProxy$1;->this$0:Landroid/webkit/HTML5VideoViewProxy;

    iget v5, v5, Landroid/webkit/HTML5VideoViewProxy;->mNativePointer:I

    if-nez v5, :cond_0

    .line 719
    invoke-virtual {p1, v10}, Landroid/os/Message;->setTarget(Landroid/os/Handler;)V

    .line 764
    :goto_0
    return-void

    .line 722
    :cond_0
    iget v5, p1, Landroid/os/Message;->what:I

    sparse-switch v5, :sswitch_data_0

    .line 763
    :cond_1
    :goto_1
    invoke-virtual {p1, v10}, Landroid/os/Message;->setTarget(Landroid/os/Handler;)V

    goto :goto_0

    .line 724
    :sswitch_0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/util/Map;

    .line 725
    .local v2, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v5, "dur"

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 726
    .local v0, duration:Ljava/lang/Integer;
    const-string/jumbo v5, "width"

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 727
    .local v4, width:Ljava/lang/Integer;
    const-string v5, "height"

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 728
    .local v1, height:Ljava/lang/Integer;
    iget-object v5, p0, Landroid/webkit/HTML5VideoViewProxy$1;->this$0:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget-object v9, p0, Landroid/webkit/HTML5VideoViewProxy$1;->this$0:Landroid/webkit/HTML5VideoViewProxy;

    iget v9, v9, Landroid/webkit/HTML5VideoViewProxy;->mNativePointer:I

    #calls: Landroid/webkit/HTML5VideoViewProxy;->nativeOnPrepared(IIII)V
    invoke-static {v5, v6, v7, v8, v9}, Landroid/webkit/HTML5VideoViewProxy;->access$700(Landroid/webkit/HTML5VideoViewProxy;IIII)V

    goto :goto_1

    .line 733
    .end local v0           #duration:Ljava/lang/Integer;
    .end local v1           #height:Ljava/lang/Integer;
    .end local v2           #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v4           #width:Ljava/lang/Integer;
    :sswitch_1
    iget-object v5, p0, Landroid/webkit/HTML5VideoViewProxy$1;->this$0:Landroid/webkit/HTML5VideoViewProxy;

    const/4 v6, 0x0

    #setter for: Landroid/webkit/HTML5VideoViewProxy;->mSeekPosition:I
    invoke-static {v5, v6}, Landroid/webkit/HTML5VideoViewProxy;->access$802(Landroid/webkit/HTML5VideoViewProxy;I)I

    .line 734
    iget-object v5, p0, Landroid/webkit/HTML5VideoViewProxy$1;->this$0:Landroid/webkit/HTML5VideoViewProxy;

    iget-object v6, p0, Landroid/webkit/HTML5VideoViewProxy$1;->this$0:Landroid/webkit/HTML5VideoViewProxy;

    iget v6, v6, Landroid/webkit/HTML5VideoViewProxy;->mNativePointer:I

    #calls: Landroid/webkit/HTML5VideoViewProxy;->nativeOnEnded(I)V
    invoke-static {v5, v6}, Landroid/webkit/HTML5VideoViewProxy;->access$900(Landroid/webkit/HTML5VideoViewProxy;I)V

    goto :goto_1

    .line 737
    :sswitch_2
    iget-object v5, p0, Landroid/webkit/HTML5VideoViewProxy$1;->this$0:Landroid/webkit/HTML5VideoViewProxy;

    iget-object v6, p0, Landroid/webkit/HTML5VideoViewProxy$1;->this$0:Landroid/webkit/HTML5VideoViewProxy;

    iget v6, v6, Landroid/webkit/HTML5VideoViewProxy;->mNativePointer:I

    #calls: Landroid/webkit/HTML5VideoViewProxy;->nativeOnPaused(I)V
    invoke-static {v5, v6}, Landroid/webkit/HTML5VideoViewProxy;->access$1000(Landroid/webkit/HTML5VideoViewProxy;I)V

    goto :goto_1

    .line 740
    :sswitch_3
    iget-object v5, p0, Landroid/webkit/HTML5VideoViewProxy$1;->this$0:Landroid/webkit/HTML5VideoViewProxy;

    iget-object v6, p0, Landroid/webkit/HTML5VideoViewProxy$1;->this$0:Landroid/webkit/HTML5VideoViewProxy;

    iget v6, v6, Landroid/webkit/HTML5VideoViewProxy;->mNativePointer:I

    #calls: Landroid/webkit/HTML5VideoViewProxy;->nativeOnPlayed(I)V
    invoke-static {v5, v6}, Landroid/webkit/HTML5VideoViewProxy;->access$1100(Landroid/webkit/HTML5VideoViewProxy;I)V

    goto :goto_1

    .line 743
    :sswitch_4
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/graphics/Bitmap;

    .line 744
    .local v3, poster:Landroid/graphics/Bitmap;
    iget-object v5, p0, Landroid/webkit/HTML5VideoViewProxy$1;->this$0:Landroid/webkit/HTML5VideoViewProxy;

    iget-object v6, p0, Landroid/webkit/HTML5VideoViewProxy$1;->this$0:Landroid/webkit/HTML5VideoViewProxy;

    iget v6, v6, Landroid/webkit/HTML5VideoViewProxy;->mNativePointer:I

    #calls: Landroid/webkit/HTML5VideoViewProxy;->nativeOnPosterFetched(Landroid/graphics/Bitmap;I)V
    invoke-static {v5, v3, v6}, Landroid/webkit/HTML5VideoViewProxy;->access$1200(Landroid/webkit/HTML5VideoViewProxy;Landroid/graphics/Bitmap;I)V

    goto :goto_1

    .line 747
    .end local v3           #poster:Landroid/graphics/Bitmap;
    :sswitch_5
    iget-object v5, p0, Landroid/webkit/HTML5VideoViewProxy$1;->this$0:Landroid/webkit/HTML5VideoViewProxy;

    iget v6, p1, Landroid/os/Message;->arg1:I

    iget-object v7, p0, Landroid/webkit/HTML5VideoViewProxy$1;->this$0:Landroid/webkit/HTML5VideoViewProxy;

    iget v7, v7, Landroid/webkit/HTML5VideoViewProxy;->mNativePointer:I

    #calls: Landroid/webkit/HTML5VideoViewProxy;->nativeOnTimeupdate(II)V
    invoke-static {v5, v6, v7}, Landroid/webkit/HTML5VideoViewProxy;->access$1300(Landroid/webkit/HTML5VideoViewProxy;II)V

    goto :goto_1

    .line 750
    :sswitch_6
    iget-object v5, p0, Landroid/webkit/HTML5VideoViewProxy$1;->this$0:Landroid/webkit/HTML5VideoViewProxy;

    iget v6, p1, Landroid/os/Message;->arg1:I

    iget-object v7, p0, Landroid/webkit/HTML5VideoViewProxy$1;->this$0:Landroid/webkit/HTML5VideoViewProxy;

    iget v7, v7, Landroid/webkit/HTML5VideoViewProxy;->mNativePointer:I

    #calls: Landroid/webkit/HTML5VideoViewProxy;->nativeOnStopFullscreen(II)V
    invoke-static {v5, v6, v7}, Landroid/webkit/HTML5VideoViewProxy;->access$1400(Landroid/webkit/HTML5VideoViewProxy;II)V

    .line 752
    iget-object v5, p0, Landroid/webkit/HTML5VideoViewProxy$1;->this$0:Landroid/webkit/HTML5VideoViewProxy;

    #getter for: Landroid/webkit/HTML5VideoViewProxy;->mIsMzBrowser:Z
    invoke-static {v5}, Landroid/webkit/HTML5VideoViewProxy;->access$1500(Landroid/webkit/HTML5VideoViewProxy;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Landroid/webkit/HTML5VideoViewProxy$1;->this$0:Landroid/webkit/HTML5VideoViewProxy;

    #getter for: Landroid/webkit/HTML5VideoViewProxy;->mWebView:Landroid/webkit/WebViewClassic;
    invoke-static {v5}, Landroid/webkit/HTML5VideoViewProxy;->access$1600(Landroid/webkit/HTML5VideoViewProxy;)Landroid/webkit/WebViewClassic;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 753
    iget-object v5, p0, Landroid/webkit/HTML5VideoViewProxy$1;->this$0:Landroid/webkit/HTML5VideoViewProxy;

    #getter for: Landroid/webkit/HTML5VideoViewProxy;->mWebView:Landroid/webkit/WebViewClassic;
    invoke-static {v5}, Landroid/webkit/HTML5VideoViewProxy;->access$1600(Landroid/webkit/HTML5VideoViewProxy;)Landroid/webkit/WebViewClassic;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/WebViewCore;->ensureExitFullScreenVideo()V

    goto/16 :goto_1

    .line 757
    :sswitch_7
    iget-object v5, p0, Landroid/webkit/HTML5VideoViewProxy$1;->this$0:Landroid/webkit/HTML5VideoViewProxy;

    iget-object v6, p0, Landroid/webkit/HTML5VideoViewProxy$1;->this$0:Landroid/webkit/HTML5VideoViewProxy;

    iget v6, v6, Landroid/webkit/HTML5VideoViewProxy;->mNativePointer:I

    #calls: Landroid/webkit/HTML5VideoViewProxy;->nativeOnRestoreState(I)V
    invoke-static {v5, v6}, Landroid/webkit/HTML5VideoViewProxy;->access$1700(Landroid/webkit/HTML5VideoViewProxy;I)V

    goto/16 :goto_1

    .line 760
    :sswitch_8
    iget-object v5, p0, Landroid/webkit/HTML5VideoViewProxy$1;->this$0:Landroid/webkit/HTML5VideoViewProxy;

    iget v5, v5, Landroid/webkit/HTML5VideoViewProxy;->mNativePointer:I

    #calls: Landroid/webkit/HTML5VideoViewProxy;->nativeOnEnterFullscreen(I)V
    invoke-static {v5}, Landroid/webkit/HTML5VideoViewProxy;->access$1800(I)V

    goto/16 :goto_1

    .line 722
    nop

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0xc9 -> :sswitch_1
        0xca -> :sswitch_4
        0xcb -> :sswitch_2
        0xcc -> :sswitch_6
        0xcd -> :sswitch_7
        0xce -> :sswitch_3
        0xcf -> :sswitch_8
        0x12c -> :sswitch_5
    .end sparse-switch
.end method
