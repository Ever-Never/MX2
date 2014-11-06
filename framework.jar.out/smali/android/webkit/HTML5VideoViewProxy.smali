.class public Landroid/webkit/HTML5VideoViewProxy;
.super Landroid/os/Handler;
.source "HTML5VideoViewProxy.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnInfoListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;,
        Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;
    }
.end annotation


# static fields
.field private static final BUFFERING_END:I = 0x6a

.field private static final BUFFERING_START:I = 0x69

.field private static final ENDED:I = 0xc9

.field private static final ENTER_FULLSCREEN:I = 0x6b

.field private static final ERROR:I = 0x67

.field private static final LOAD_DEFAULT_POSTER:I = 0x68

.field private static final LOGTAG:Ljava/lang/String; = "HTML5VideoViewProxy"

.field private static final PAUSE:I = 0x66

.field private static final PAUSED:I = 0xcb

.field private static final PLAY:I = 0x64

.field private static final PLAYED:I = 0xce

.field private static final POSTER_FETCHED:I = 0xca

.field private static final PREPARED:I = 0xc8

.field private static final RESTORESTATE:I = 0xcd

.field private static final SEEK:I = 0x65

.field private static final STOPFULLSCREEN:I = 0xcc

.field private static final TEAR_DOWN:I = 0x6c

.field private static final TIMEUPDATE:I = 0x12c

.field private static final TRIGGER_WEBKIT_ENTER_FULL_SCREEN:I = 0xcf


# instance fields
.field private final mIsMzBrowser:Z

.field private mMzVideoPlayer:Landroid/webkit/HTML5VideoClient;

.field mNativePointer:I

.field private mPoster:Landroid/graphics/Bitmap;

.field private mPosterDownloader:Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;

.field private mSeekPosition:I

.field private mWebCoreHandler:Landroid/os/Handler;

.field private mWebView:Landroid/webkit/WebViewClassic;


# direct methods
.method private constructor <init>(Landroid/webkit/WebViewClassic;I)V
    .locals 3
    .parameter "webView"
    .parameter "nativePtr"

    .prologue
    .line 695
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 697
    iput-object p1, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebView:Landroid/webkit/WebViewClassic;

    .line 698
    const-string v0, "com.android.browser"

    invoke-virtual {p1}, Landroid/webkit/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/webkit/HTML5VideoViewProxy;->mIsMzBrowser:Z

    .line 699
    iget-boolean v0, p0, Landroid/webkit/HTML5VideoViewProxy;->mIsMzBrowser:Z

    if-eqz v0, :cond_0

    .line 700
    invoke-static {}, Landroid/webkit/WebViewClassic;->getHTML5VideoCreator()Landroid/webkit/HTML5VideoClient$Creator;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/webkit/HTML5VideoClient$Creator;->create(Landroid/webkit/HTML5VideoViewProxy;Landroid/webkit/WebViewClassic;)Landroid/webkit/HTML5VideoClient;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/HTML5VideoViewProxy;->mMzVideoPlayer:Landroid/webkit/HTML5VideoClient;

    .line 701
    const/4 v0, 0x1

    invoke-static {v0}, Landroid/webkit/HTML5VideoViewProxy;->nativeSetIsMz(Z)V

    .line 706
    :cond_0
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebView:Landroid/webkit/WebViewClassic;

    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mMzVideoPlayer:Landroid/webkit/HTML5VideoClient;

    invoke-virtual {v0, p0, v1}, Landroid/webkit/WebViewClassic;->setHTML5VideoViewProxy(Landroid/webkit/HTML5VideoViewProxy;Landroid/webkit/ScaleGestureDetector$VideoScaleListener;)V

    .line 708
    iput p2, p0, Landroid/webkit/HTML5VideoViewProxy;->mNativePointer:I

    .line 710
    invoke-direct {p0}, Landroid/webkit/HTML5VideoViewProxy;->createWebCoreHandler()V

    .line 711
    const-string v0, "HtmlMedia"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "new proxy = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    return-void
.end method

.method static synthetic access$000(Landroid/graphics/SurfaceTexture;IIII)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 50
    invoke-static {p0, p1, p2, p3, p4}, Landroid/webkit/HTML5VideoViewProxy;->nativeSendSurfaceTexture(Landroid/graphics/SurfaceTexture;IIII)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Landroid/webkit/HTML5VideoViewProxy;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Landroid/webkit/HTML5VideoViewProxy;->nativeOnPaused(I)V

    return-void
.end method

.method static synthetic access$1100(Landroid/webkit/HTML5VideoViewProxy;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Landroid/webkit/HTML5VideoViewProxy;->nativeOnPlayed(I)V

    return-void
.end method

.method static synthetic access$1200(Landroid/webkit/HTML5VideoViewProxy;Landroid/graphics/Bitmap;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Landroid/webkit/HTML5VideoViewProxy;->nativeOnPosterFetched(Landroid/graphics/Bitmap;I)V

    return-void
.end method

.method static synthetic access$1300(Landroid/webkit/HTML5VideoViewProxy;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Landroid/webkit/HTML5VideoViewProxy;->nativeOnTimeupdate(II)V

    return-void
.end method

.method static synthetic access$1400(Landroid/webkit/HTML5VideoViewProxy;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Landroid/webkit/HTML5VideoViewProxy;->nativeOnStopFullscreen(II)V

    return-void
.end method

.method static synthetic access$1500(Landroid/webkit/HTML5VideoViewProxy;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-boolean v0, p0, Landroid/webkit/HTML5VideoViewProxy;->mIsMzBrowser:Z

    return v0
.end method

.method static synthetic access$1600(Landroid/webkit/HTML5VideoViewProxy;)Landroid/webkit/WebViewClassic;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebView:Landroid/webkit/WebViewClassic;

    return-object v0
.end method

.method static synthetic access$1700(Landroid/webkit/HTML5VideoViewProxy;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Landroid/webkit/HTML5VideoViewProxy;->nativeOnRestoreState(I)V

    return-void
.end method

.method static synthetic access$1800(I)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 50
    invoke-static {p0}, Landroid/webkit/HTML5VideoViewProxy;->nativeOnEnterFullscreen(I)V

    return-void
.end method

.method static synthetic access$300(Landroid/webkit/HTML5VideoViewProxy;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Landroid/webkit/HTML5VideoViewProxy;->doSetPoster(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$700(Landroid/webkit/HTML5VideoViewProxy;IIII)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/webkit/HTML5VideoViewProxy;->nativeOnPrepared(IIII)V

    return-void
.end method

.method static synthetic access$802(Landroid/webkit/HTML5VideoViewProxy;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput p1, p0, Landroid/webkit/HTML5VideoViewProxy;->mSeekPosition:I

    return p1
.end method

.method static synthetic access$900(Landroid/webkit/HTML5VideoViewProxy;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Landroid/webkit/HTML5VideoViewProxy;->nativeOnEnded(I)V

    return-void
.end method

.method private createWebCoreHandler()V
    .locals 1

    .prologue
    .line 715
    new-instance v0, Landroid/webkit/HTML5VideoViewProxy$1;

    invoke-direct {v0, p0}, Landroid/webkit/HTML5VideoViewProxy$1;-><init>(Landroid/webkit/HTML5VideoViewProxy;)V

    iput-object v0, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    .line 766
    return-void
.end method

.method private doSetPoster(Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "poster"

    .prologue
    .line 769
    if-nez p1, :cond_0

    .line 777
    :goto_0
    return-void

    .line 773
    :cond_0
    iput-object p1, p0, Landroid/webkit/HTML5VideoViewProxy;->mPoster:Landroid/graphics/Bitmap;

    .line 774
    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    const/16 v2, 0xca

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 775
    .local v0, msg:Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 776
    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public static getInstance(Landroid/webkit/WebViewCore;I)Landroid/webkit/HTML5VideoViewProxy;
    .locals 2
    .parameter "webViewCore"
    .parameter "nativePtr"

    .prologue
    .line 951
    new-instance v0, Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {p0}, Landroid/webkit/WebViewCore;->getWebViewClassic()Landroid/webkit/WebViewClassic;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/webkit/HTML5VideoViewProxy;-><init>(Landroid/webkit/WebViewClassic;I)V

    return-object v0
.end method

.method public static isLayerValid(II)Z
    .locals 1
    .parameter "baseLayer"
    .parameter "videoLayer"

    .prologue
    .line 937
    invoke-static {p0, p1}, Landroid/webkit/HTML5VideoViewProxy;->nativeIsLayerValid(II)Z

    move-result v0

    return v0
.end method

.method private static native nativeGetLayerRect(ILandroid/graphics/RectF;Landroid/graphics/RectF;)V
.end method

.method private static native nativeIsLayerValid(II)Z
.end method

.method private native nativeOnEnded(I)V
.end method

.method private static native nativeOnEnterFullscreen(I)V
.end method

.method private native nativeOnPaused(I)V
.end method

.method private native nativeOnPlayed(I)V
.end method

.method private native nativeOnPosterFetched(Landroid/graphics/Bitmap;I)V
.end method

.method private native nativeOnPrepared(IIII)V
.end method

.method private native nativeOnRestoreState(I)V
.end method

.method private native nativeOnStopFullscreen(II)V
.end method

.method private native nativeOnTimeupdate(II)V
.end method

.method private static native nativeSendSurfaceTexture(Landroid/graphics/SurfaceTexture;IIII)Z
.end method

.method private static native nativeSetIsMz(Z)V
.end method

.method private static native nativeSetLayerIsFullScreen(IIZ)Z
.end method

.method public static sendSurfaceTexture(Landroid/graphics/SurfaceTexture;IIII)Z
    .locals 1
    .parameter "texture"
    .parameter "baseLayer"
    .parameter "videoLayerId"
    .parameter "textureName"
    .parameter "playerState"

    .prologue
    .line 933
    invoke-static {p0, p1, p2, p3, p4}, Landroid/webkit/HTML5VideoViewProxy;->nativeSendSurfaceTexture(Landroid/graphics/SurfaceTexture;IIII)Z

    move-result v0

    return v0
.end method

.method private sendTimeupdate()V
    .locals 3

    .prologue
    .line 780
    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    const/16 v2, 0x12c

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 781
    .local v0, msg:Landroid/os/Message;
    iget-boolean v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mIsMzBrowser:Z

    if-eqz v1, :cond_1

    .line 782
    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mMzVideoPlayer:Landroid/webkit/HTML5VideoClient;

    if-eqz v1, :cond_0

    .line 783
    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mMzVideoPlayer:Landroid/webkit/HTML5VideoClient;

    invoke-interface {v1}, Landroid/webkit/HTML5VideoClient;->getCurrentPosition()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 788
    :cond_0
    :goto_0
    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 789
    return-void

    .line 786
    :cond_1
    invoke-static {}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->getCurrentPosition()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    goto :goto_0
.end method

.method public static setLayerIsFullScreen(IIZ)Z
    .locals 1
    .parameter "baseLayer"
    .parameter "videoLayer"
    .parameter "isFullScreen"

    .prologue
    .line 941
    invoke-static {p0, p1, p2}, Landroid/webkit/HTML5VideoViewProxy;->nativeSetLayerIsFullScreen(IIZ)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public destory()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 961
    iget-boolean v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mIsMzBrowser:Z

    if-eqz v1, :cond_2

    .line 962
    const-string v1, "HtmlMedia"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "proxy destory! proxy = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 963
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy;->mMzVideoPlayer:Landroid/webkit/HTML5VideoClient;

    .line 964
    .local v0, mzPlayer:Landroid/webkit/HTML5VideoClient;
    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mMzVideoPlayer:Landroid/webkit/HTML5VideoClient;

    if-eqz v1, :cond_0

    .line 965
    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mMzVideoPlayer:Landroid/webkit/HTML5VideoClient;

    invoke-interface {v1}, Landroid/webkit/HTML5VideoClient;->destory()V

    .line 966
    iput-object v4, p0, Landroid/webkit/HTML5VideoViewProxy;->mMzVideoPlayer:Landroid/webkit/HTML5VideoClient;

    .line 968
    :cond_0
    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v1, p0, v0}, Landroid/webkit/WebViewClassic;->removeMeVideoProxy(Landroid/webkit/HTML5VideoViewProxy;Landroid/webkit/ScaleGestureDetector$VideoScaleListener;)V

    .line 969
    invoke-virtual {p0, v4}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 970
    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 977
    .end local v0           #mzPlayer:Landroid/webkit/HTML5VideoClient;
    :cond_1
    :goto_0
    return-void

    .line 973
    :cond_2
    invoke-static {}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->access$1900()Landroid/webkit/HTML5VideoView;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 974
    invoke-static {}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->access$1900()Landroid/webkit/HTML5VideoView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/HTML5VideoView;->stopPlayback()V

    goto :goto_0
.end method

.method public dispatchOnEnded()V
    .locals 3

    .prologue
    .line 345
    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    const/16 v2, 0xc9

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 346
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 347
    return-void
.end method

.method public dispatchOnPaused()V
    .locals 3

    .prologue
    .line 350
    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    const/16 v2, 0xcb

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 351
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 352
    return-void
.end method

.method public dispatchOnPlayed()V
    .locals 3

    .prologue
    .line 355
    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    const/16 v2, 0xce

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 356
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 357
    return-void
.end method

.method public dispatchOnPrepared(Landroid/media/MediaPlayer;)V
    .locals 5
    .parameter "mp"

    .prologue
    .line 360
    iget-object v2, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    const/16 v3, 0xc8

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 361
    .local v1, msg:Landroid/os/Message;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 362
    .local v0, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "dur"

    new-instance v3, Ljava/lang/Integer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    const-string/jumbo v2, "width"

    new-instance v3, Ljava/lang/Integer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    const-string v2, "height"

    new-instance v3, Ljava/lang/Integer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 366
    iget-object v2, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 367
    return-void
.end method

.method public dispatchOnRestoreState()V
    .locals 3

    .prologue
    .line 376
    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    const/16 v2, 0xcd

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 377
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 378
    return-void
.end method

.method public dispatchOnStopFullScreen(Z)V
    .locals 3
    .parameter "stillPlaying"

    .prologue
    .line 370
    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    const/16 v2, 0xcc

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 371
    .local v0, msg:Landroid/os/Message;
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 372
    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 373
    return-void

    .line 371
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public enterFullScreenVideo(ILjava/lang/String;)V
    .locals 1
    .parameter "layerId"
    .parameter "url"

    .prologue
    .line 904
    iget-boolean v0, p0, Landroid/webkit/HTML5VideoViewProxy;->mIsMzBrowser:Z

    if-eqz v0, :cond_1

    .line 905
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy;->mMzVideoPlayer:Landroid/webkit/HTML5VideoClient;

    if-eqz v0, :cond_0

    .line 906
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy;->mMzVideoPlayer:Landroid/webkit/HTML5VideoClient;

    invoke-interface {v0, p1, p2}, Landroid/webkit/HTML5VideoClient;->enterFullScreenVideo(ILjava/lang/String;)V

    .line 911
    :cond_0
    :goto_0
    return-void

    .line 910
    :cond_1
    invoke-virtual {p0}, Landroid/webkit/HTML5VideoViewProxy;->getWebView()Landroid/webkit/WebViewClassic;

    move-result-object v0

    invoke-static {p1, p2, p0, v0}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->enterFullScreenVideo(ILjava/lang/String;Landroid/webkit/HTML5VideoViewProxy;Landroid/webkit/WebViewClassic;)V

    goto :goto_0
.end method

.method public enterFullscreenForVideoLayer(Ljava/lang/String;I)V
    .locals 2
    .parameter "url"
    .parameter "videoLayerID"

    .prologue
    .line 819
    if-nez p1, :cond_0

    .line 827
    :goto_0
    return-void

    .line 823
    :cond_0
    const/16 v1, 0x6b

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 824
    .local v0, message:Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 825
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 826
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public exitFullScreenVideo()V
    .locals 1

    .prologue
    .line 914
    iget-boolean v0, p0, Landroid/webkit/HTML5VideoViewProxy;->mIsMzBrowser:Z

    if-eqz v0, :cond_1

    .line 915
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy;->mMzVideoPlayer:Landroid/webkit/HTML5VideoClient;

    if-eqz v0, :cond_0

    .line 916
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy;->mMzVideoPlayer:Landroid/webkit/HTML5VideoClient;

    invoke-interface {v0}, Landroid/webkit/HTML5VideoClient;->exitFullScreenVideo()V

    .line 921
    :cond_0
    :goto_0
    return-void

    .line 920
    :cond_1
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-static {p0, v0}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->exitFullScreenVideo(Landroid/webkit/HTML5VideoViewProxy;Landroid/webkit/WebViewClassic;)V

    goto :goto_0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 792
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getLayerRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 1
    .parameter "layerRect"
    .parameter "videoRect"

    .prologue
    .line 924
    iget v0, p0, Landroid/webkit/HTML5VideoViewProxy;->mNativePointer:I

    if-nez v0, :cond_0

    .line 928
    :goto_0
    return-void

    .line 927
    :cond_0
    iget v0, p0, Landroid/webkit/HTML5VideoViewProxy;->mNativePointer:I

    invoke-static {v0, p1, p2}, Landroid/webkit/HTML5VideoViewProxy;->nativeGetLayerRect(ILandroid/graphics/RectF;Landroid/graphics/RectF;)V

    goto :goto_0
.end method

.method public getWebView()Landroid/webkit/WebViewClassic;
    .locals 1

    .prologue
    .line 1005
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebView:Landroid/webkit/WebViewClassic;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 401
    iget v6, p1, Landroid/os/Message;->what:I

    sparse-switch v6, :sswitch_data_0

    .line 527
    :cond_0
    :goto_0
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Landroid/os/Message;->setTarget(Landroid/os/Handler;)V

    .line 528
    return-void

    .line 403
    :sswitch_0
    iget-boolean v4, p0, Landroid/webkit/HTML5VideoViewProxy;->mIsMzBrowser:Z

    if-eqz v4, :cond_1

    .line 404
    iget-object v4, p0, Landroid/webkit/HTML5VideoViewProxy;->mMzVideoPlayer:Landroid/webkit/HTML5VideoClient;

    if-eqz v4, :cond_0

    .line 405
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 406
    .local v2, url:Ljava/lang/String;
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 407
    .local v3, videoLayerID:I
    iget-object v4, p0, Landroid/webkit/HTML5VideoViewProxy;->mMzVideoPlayer:Landroid/webkit/HTML5VideoClient;

    iget v5, p0, Landroid/webkit/HTML5VideoViewProxy;->mSeekPosition:I

    invoke-interface {v4, v2, v5, v3}, Landroid/webkit/HTML5VideoClient;->play(Ljava/lang/String;II)V

    goto :goto_0

    .line 411
    .end local v2           #url:Ljava/lang/String;
    .end local v3           #videoLayerID:I
    :cond_1
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 412
    .restart local v2       #url:Ljava/lang/String;
    iget-object v4, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->getWebChromeClient()Landroid/webkit/WebChromeClient;

    move-result-object v0

    .line 413
    .local v0, client:Landroid/webkit/WebChromeClient;
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 414
    .restart local v3       #videoLayerID:I
    if-eqz v0, :cond_0

    .line 415
    iget v4, p0, Landroid/webkit/HTML5VideoViewProxy;->mSeekPosition:I

    invoke-static {v2, v4, p0, v0, v3}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->play(Ljava/lang/String;ILandroid/webkit/HTML5VideoViewProxy;Landroid/webkit/WebChromeClient;I)V

    goto :goto_0

    .line 420
    .end local v0           #client:Landroid/webkit/WebChromeClient;
    .end local v2           #url:Ljava/lang/String;
    .end local v3           #videoLayerID:I
    :sswitch_1
    iget-boolean v4, p0, Landroid/webkit/HTML5VideoViewProxy;->mIsMzBrowser:Z

    if-eqz v4, :cond_2

    .line 421
    iget-object v4, p0, Landroid/webkit/HTML5VideoViewProxy;->mMzVideoPlayer:Landroid/webkit/HTML5VideoClient;

    if-eqz v4, :cond_0

    .line 422
    iget-object v5, p0, Landroid/webkit/HTML5VideoViewProxy;->mMzVideoPlayer:Landroid/webkit/HTML5VideoClient;

    iget v6, p1, Landroid/os/Message;->arg1:I

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-interface {v5, v6, v4}, Landroid/webkit/HTML5VideoClient;->enterFullScreenVideo(ILjava/lang/String;)V

    goto :goto_0

    .line 426
    :cond_2
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 427
    .restart local v2       #url:Ljava/lang/String;
    iget-object v4, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->getWebChromeClient()Landroid/webkit/WebChromeClient;

    move-result-object v0

    .line 428
    .restart local v0       #client:Landroid/webkit/WebChromeClient;
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 429
    .restart local v3       #videoLayerID:I
    if-eqz v0, :cond_0

    .line 430
    iget-object v4, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-static {v3, v2, p0, v4}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->enterFullScreenVideo(ILjava/lang/String;Landroid/webkit/HTML5VideoViewProxy;Landroid/webkit/WebViewClassic;)V

    goto :goto_0

    .line 435
    .end local v0           #client:Landroid/webkit/WebChromeClient;
    .end local v2           #url:Ljava/lang/String;
    .end local v3           #videoLayerID:I
    :sswitch_2
    iget-boolean v4, p0, Landroid/webkit/HTML5VideoViewProxy;->mIsMzBrowser:Z

    if-eqz v4, :cond_3

    .line 436
    iget-object v4, p0, Landroid/webkit/HTML5VideoViewProxy;->mMzVideoPlayer:Landroid/webkit/HTML5VideoClient;

    if-eqz v4, :cond_0

    .line 437
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    .line 438
    .local v1, time:Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, p0, Landroid/webkit/HTML5VideoViewProxy;->mSeekPosition:I

    .line 439
    iget-object v4, p0, Landroid/webkit/HTML5VideoViewProxy;->mMzVideoPlayer:Landroid/webkit/HTML5VideoClient;

    iget v5, p0, Landroid/webkit/HTML5VideoViewProxy;->mSeekPosition:I

    invoke-interface {v4, v5}, Landroid/webkit/HTML5VideoClient;->seek(I)V

    goto :goto_0

    .line 443
    .end local v1           #time:Ljava/lang/Integer;
    :cond_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    .line 444
    .restart local v1       #time:Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, p0, Landroid/webkit/HTML5VideoViewProxy;->mSeekPosition:I

    .line 445
    iget v4, p0, Landroid/webkit/HTML5VideoViewProxy;->mSeekPosition:I

    invoke-static {v4, p0}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->seek(ILandroid/webkit/HTML5VideoViewProxy;)V

    goto :goto_0

    .line 449
    .end local v1           #time:Ljava/lang/Integer;
    :sswitch_3
    iget-boolean v4, p0, Landroid/webkit/HTML5VideoViewProxy;->mIsMzBrowser:Z

    if-eqz v4, :cond_4

    .line 450
    iget-object v4, p0, Landroid/webkit/HTML5VideoViewProxy;->mMzVideoPlayer:Landroid/webkit/HTML5VideoClient;

    if-eqz v4, :cond_0

    .line 451
    iget-object v4, p0, Landroid/webkit/HTML5VideoViewProxy;->mMzVideoPlayer:Landroid/webkit/HTML5VideoClient;

    invoke-interface {v4}, Landroid/webkit/HTML5VideoClient;->pause()V

    goto/16 :goto_0

    .line 455
    :cond_4
    invoke-static {p0}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->pause(Landroid/webkit/HTML5VideoViewProxy;)V

    goto/16 :goto_0

    .line 459
    :sswitch_4
    iget-boolean v6, p0, Landroid/webkit/HTML5VideoViewProxy;->mIsMzBrowser:Z

    if-eqz v6, :cond_6

    .line 460
    iget-object v6, p0, Landroid/webkit/HTML5VideoViewProxy;->mMzVideoPlayer:Landroid/webkit/HTML5VideoClient;

    if-eqz v6, :cond_0

    .line 461
    iget-object v6, p0, Landroid/webkit/HTML5VideoViewProxy;->mMzVideoPlayer:Landroid/webkit/HTML5VideoClient;

    iget v7, p1, Landroid/os/Message;->arg1:I

    if-ne v7, v4, :cond_5

    :goto_1
    invoke-interface {v6, v4, v5}, Landroid/webkit/HTML5VideoClient;->end(ZZ)V

    goto/16 :goto_0

    :cond_5
    move v4, v5

    goto :goto_1

    .line 465
    :cond_6
    iget v5, p1, Landroid/os/Message;->arg1:I

    if-ne v5, v4, :cond_7

    .line 466
    invoke-static {v4}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->access$102(Z)Z

    .line 467
    :cond_7
    invoke-static {}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->end()V

    goto/16 :goto_0

    .line 470
    :sswitch_5
    iget-boolean v5, p0, Landroid/webkit/HTML5VideoViewProxy;->mIsMzBrowser:Z

    if-eqz v5, :cond_8

    .line 471
    iget-object v5, p0, Landroid/webkit/HTML5VideoViewProxy;->mMzVideoPlayer:Landroid/webkit/HTML5VideoClient;

    if-eqz v5, :cond_0

    .line 472
    iget-object v5, p0, Landroid/webkit/HTML5VideoViewProxy;->mMzVideoPlayer:Landroid/webkit/HTML5VideoClient;

    invoke-interface {v5, v4, v4}, Landroid/webkit/HTML5VideoClient;->end(ZZ)V

    goto/16 :goto_0

    .line 476
    :cond_8
    iget-object v4, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->getWebChromeClient()Landroid/webkit/WebChromeClient;

    move-result-object v0

    .line 477
    .restart local v0       #client:Landroid/webkit/WebChromeClient;
    if-eqz v0, :cond_0

    .line 478
    invoke-virtual {v0}, Landroid/webkit/WebChromeClient;->onHideCustomView()V

    goto/16 :goto_0

    .line 483
    .end local v0           #client:Landroid/webkit/WebChromeClient;
    :sswitch_6
    iget-boolean v4, p0, Landroid/webkit/HTML5VideoViewProxy;->mIsMzBrowser:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/webkit/HTML5VideoViewProxy;->mMzVideoPlayer:Landroid/webkit/HTML5VideoClient;

    if-eqz v4, :cond_0

    .line 484
    invoke-virtual {p0}, Landroid/webkit/HTML5VideoViewProxy;->destory()V

    goto/16 :goto_0

    .line 488
    :sswitch_7
    iget-object v4, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->getWebChromeClient()Landroid/webkit/WebChromeClient;

    move-result-object v0

    .line 489
    .restart local v0       #client:Landroid/webkit/WebChromeClient;
    if-eqz v0, :cond_0

    .line 490
    invoke-virtual {v0}, Landroid/webkit/WebChromeClient;->getDefaultVideoPoster()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-direct {p0, v4}, Landroid/webkit/HTML5VideoViewProxy;->doSetPoster(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 495
    .end local v0           #client:Landroid/webkit/WebChromeClient;
    :sswitch_8
    iget-boolean v4, p0, Landroid/webkit/HTML5VideoViewProxy;->mIsMzBrowser:Z

    if-eqz v4, :cond_9

    .line 496
    iget-object v4, p0, Landroid/webkit/HTML5VideoViewProxy;->mMzVideoPlayer:Landroid/webkit/HTML5VideoClient;

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/webkit/HTML5VideoViewProxy;->mMzVideoPlayer:Landroid/webkit/HTML5VideoClient;

    invoke-interface {v4}, Landroid/webkit/HTML5VideoClient;->isPlaying()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 497
    invoke-direct {p0}, Landroid/webkit/HTML5VideoViewProxy;->sendTimeupdate()V

    goto/16 :goto_0

    .line 501
    :cond_9
    invoke-static {p0}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->isPlaying(Landroid/webkit/HTML5VideoViewProxy;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 502
    invoke-direct {p0}, Landroid/webkit/HTML5VideoViewProxy;->sendTimeupdate()V

    goto/16 :goto_0

    .line 507
    :sswitch_9
    iget-boolean v5, p0, Landroid/webkit/HTML5VideoViewProxy;->mIsMzBrowser:Z

    if-eqz v5, :cond_a

    .line 508
    iget-object v5, p0, Landroid/webkit/HTML5VideoViewProxy;->mMzVideoPlayer:Landroid/webkit/HTML5VideoClient;

    if-eqz v5, :cond_0

    .line 509
    iget-object v5, p0, Landroid/webkit/HTML5VideoViewProxy;->mMzVideoPlayer:Landroid/webkit/HTML5VideoClient;

    invoke-interface {v5, v4}, Landroid/webkit/HTML5VideoClient;->setPlayerBuffering(Z)V

    goto/16 :goto_0

    .line 513
    :cond_a
    #calls: Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->setPlayerBuffering(Z)V
    invoke-static {v4}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->access$200(Z)V

    goto/16 :goto_0

    .line 517
    :sswitch_a
    iget-boolean v4, p0, Landroid/webkit/HTML5VideoViewProxy;->mIsMzBrowser:Z

    if-eqz v4, :cond_b

    .line 518
    iget-object v4, p0, Landroid/webkit/HTML5VideoViewProxy;->mMzVideoPlayer:Landroid/webkit/HTML5VideoClient;

    if-eqz v4, :cond_0

    .line 519
    iget-object v4, p0, Landroid/webkit/HTML5VideoViewProxy;->mMzVideoPlayer:Landroid/webkit/HTML5VideoClient;

    invoke-interface {v4, v5}, Landroid/webkit/HTML5VideoClient;->setPlayerBuffering(Z)V

    goto/16 :goto_0

    .line 523
    :cond_b
    #calls: Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->setPlayerBuffering(Z)V
    invoke-static {v5}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->access$200(Z)V

    goto/16 :goto_0

    .line 401
    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x65 -> :sswitch_2
        0x66 -> :sswitch_3
        0x67 -> :sswitch_5
        0x68 -> :sswitch_7
        0x69 -> :sswitch_9
        0x6a -> :sswitch_a
        0x6b -> :sswitch_1
        0x6c -> :sswitch_6
        0xc9 -> :sswitch_4
        0x12c -> :sswitch_8
    .end sparse-switch
.end method

.method public hasTearDown()Z
    .locals 1

    .prologue
    .line 1001
    iget v0, p0, Landroid/webkit/HTML5VideoViewProxy;->mNativePointer:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInFullScreen()Z
    .locals 1

    .prologue
    .line 994
    iget-boolean v0, p0, Landroid/webkit/HTML5VideoViewProxy;->mIsMzBrowser:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy;->mMzVideoPlayer:Landroid/webkit/HTML5VideoClient;

    if-eqz v0, :cond_0

    .line 995
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy;->mMzVideoPlayer:Landroid/webkit/HTML5VideoClient;

    invoke-interface {v0}, Landroid/webkit/HTML5VideoClient;->isInFullScreen()Z

    move-result v0

    .line 997
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadPoster(Ljava/lang/String;)V
    .locals 2
    .parameter "url"

    .prologue
    .line 867
    if-nez p1, :cond_0

    .line 868
    const/16 v1, 0x68

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 869
    .local v0, message:Landroid/os/Message;
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 879
    .end local v0           #message:Landroid/os/Message;
    :goto_0
    return-void

    .line 873
    :cond_0
    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mPosterDownloader:Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;

    if-eqz v1, :cond_1

    .line 874
    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mPosterDownloader:Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;

    invoke-virtual {v1}, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->cancelAndReleaseQueue()V

    .line 877
    :cond_1
    new-instance v1, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;

    invoke-direct {v1, p1, p0}, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;-><init>(Ljava/lang/String;Landroid/webkit/HTML5VideoViewProxy;)V

    iput-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mPosterDownloader:Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;

    .line 878
    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mPosterDownloader:Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;

    invoke-virtual {v1}, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->start()V

    goto :goto_0
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 3
    .parameter "mp"

    .prologue
    .line 334
    const/16 v0, 0xc9

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 335
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 1
    .parameter "mp"
    .parameter "what"
    .parameter "extra"

    .prologue
    .line 340
    const/16 v0, 0x67

    invoke-virtual {p0, v0, p2, p3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 341
    const/4 v0, 0x0

    return v0
.end method

.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 1
    .parameter "surfaceTexture"

    .prologue
    .line 394
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->invalidate()V

    .line 395
    return-void
.end method

.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 1
    .parameter "mp"
    .parameter "what"
    .parameter "extra"

    .prologue
    .line 1027
    const/16 v0, 0x2bd

    if-ne p2, v0, :cond_1

    .line 1028
    const/16 v0, 0x69

    invoke-virtual {p0, v0, p2, p3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1032
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 1029
    :cond_1
    const/16 v0, 0x2be

    if-ne p2, v0, :cond_0

    .line 1030
    const/16 v0, 0x6a

    invoke-virtual {p0, v0, p2, p3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 1037
    const/4 v1, 0x4

    if-ne p2, v1, :cond_1

    iget-boolean v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mIsMzBrowser:Z

    if-nez v1, :cond_1

    .line 1038
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 1045
    :goto_0
    return v0

    .line 1040
    :cond_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1041
    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-static {p0, v1}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->exitFullScreenVideo(Landroid/webkit/HTML5VideoViewProxy;Landroid/webkit/WebViewClassic;)V

    goto :goto_0

    .line 1045
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 986
    iget-boolean v0, p0, Landroid/webkit/HTML5VideoViewProxy;->mIsMzBrowser:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy;->mMzVideoPlayer:Landroid/webkit/HTML5VideoClient;

    if-eqz v0, :cond_0

    .line 987
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy;->mMzVideoPlayer:Landroid/webkit/HTML5VideoClient;

    invoke-interface {v0, p1}, Landroid/webkit/HTML5VideoClient;->onKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 989
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1
    .parameter "mp"

    .prologue
    .line 317
    iget-boolean v0, p0, Landroid/webkit/HTML5VideoViewProxy;->mIsMzBrowser:Z

    if-eqz v0, :cond_1

    .line 318
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy;->mMzVideoPlayer:Landroid/webkit/HTML5VideoClient;

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy;->mMzVideoPlayer:Landroid/webkit/HTML5VideoClient;

    invoke-interface {v0}, Landroid/webkit/HTML5VideoClient;->onPrepared()V

    .line 324
    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Landroid/webkit/HTML5VideoViewProxy;->dispatchOnPrepared(Landroid/media/MediaPlayer;)V

    .line 325
    return-void

    .line 322
    :cond_1
    invoke-static {}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->onPrepared()V

    goto :goto_0
.end method

.method public onTimeupdate()V
    .locals 1

    .prologue
    .line 381
    const/16 v0, 0x12c

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 382
    return-void
.end method

.method public onWebViewResume()V
    .locals 1

    .prologue
    .line 955
    iget-boolean v0, p0, Landroid/webkit/HTML5VideoViewProxy;->mIsMzBrowser:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy;->mMzVideoPlayer:Landroid/webkit/HTML5VideoClient;

    if-eqz v0, :cond_0

    .line 956
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy;->mMzVideoPlayer:Landroid/webkit/HTML5VideoClient;

    invoke-interface {v0}, Landroid/webkit/HTML5VideoClient;->onWebViewResume()V

    .line 958
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 843
    const/16 v1, 0x66

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 844
    .local v0, message:Landroid/os/Message;
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 845
    return-void
.end method

.method public pauseAndDispatch()V
    .locals 1

    .prologue
    .line 894
    iget-boolean v0, p0, Landroid/webkit/HTML5VideoViewProxy;->mIsMzBrowser:Z

    if-eqz v0, :cond_1

    .line 895
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy;->mMzVideoPlayer:Landroid/webkit/HTML5VideoClient;

    if-eqz v0, :cond_0

    .line 896
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy;->mMzVideoPlayer:Landroid/webkit/HTML5VideoClient;

    invoke-interface {v0}, Landroid/webkit/HTML5VideoClient;->onWebViewPause()V

    .line 901
    :cond_0
    :goto_0
    return-void

    .line 900
    :cond_1
    invoke-static {}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->pauseAndDispatch()V

    goto :goto_0
.end method

.method public play(Ljava/lang/String;II)V
    .locals 2
    .parameter "url"
    .parameter "position"
    .parameter "videoLayerID"

    .prologue
    .line 801
    if-nez p1, :cond_0

    .line 812
    :goto_0
    return-void

    .line 805
    :cond_0
    if-lez p2, :cond_1

    .line 806
    invoke-virtual {p0, p2}, Landroid/webkit/HTML5VideoViewProxy;->seek(I)V

    .line 808
    :cond_1
    const/16 v1, 0x64

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 809
    .local v0, message:Landroid/os/Message;
    iput p3, v0, Landroid/os/Message;->arg1:I

    .line 810
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 811
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public putInBackground()V
    .locals 1

    .prologue
    .line 980
    iget-boolean v0, p0, Landroid/webkit/HTML5VideoViewProxy;->mIsMzBrowser:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy;->mMzVideoPlayer:Landroid/webkit/HTML5VideoClient;

    if-eqz v0, :cond_0

    .line 981
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy;->mMzVideoPlayer:Landroid/webkit/HTML5VideoClient;

    invoke-interface {v0}, Landroid/webkit/HTML5VideoClient;->putInBackground()V

    .line 983
    :cond_0
    return-void
.end method

.method public seek(I)V
    .locals 2
    .parameter "time"

    .prologue
    .line 834
    const/16 v1, 0x65

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 835
    .local v0, message:Landroid/os/Message;
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 836
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 837
    return-void
.end method

.method public setBaseLayer(I)V
    .locals 2
    .parameter "layer"

    .prologue
    .line 883
    iget-boolean v0, p0, Landroid/webkit/HTML5VideoViewProxy;->mIsMzBrowser:Z

    if-eqz v0, :cond_1

    .line 884
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy;->mMzVideoPlayer:Landroid/webkit/HTML5VideoClient;

    if-eqz v0, :cond_0

    .line 885
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy;->mMzVideoPlayer:Landroid/webkit/HTML5VideoClient;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Landroid/webkit/HTML5VideoClient;->setBaseLayer(IZ)V

    .line 890
    :cond_0
    :goto_0
    return-void

    .line 889
    :cond_1
    invoke-static {p1}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->setBaseLayer(I)V

    goto :goto_0
.end method

.method public teardown()V
    .locals 3

    .prologue
    .line 851
    const/16 v0, 0x6c

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 855
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy;->mPosterDownloader:Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;

    if-eqz v0, :cond_0

    .line 856
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy;->mPosterDownloader:Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->cancelAndReleaseQueue()V

    .line 858
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Landroid/webkit/HTML5VideoViewProxy;->mNativePointer:I

    .line 859
    const-string v0, "HtmlMedia"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "proxy teardown proxy = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    return-void
.end method

.method public triggerWebkitEnterFullScreenVideo()V
    .locals 3

    .prologue
    .line 385
    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    const/16 v2, 0xcf

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 386
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 387
    return-void
.end method
