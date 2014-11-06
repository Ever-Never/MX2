.class Landroid/webkit/HoldingEffect;
.super Ljava/lang/Object;
.source "HoldingEffect.java"


# static fields
.field private static final CANCEL_HOLDING_DISTANCE:I = 0x50

.field private static final ENTERING_HOLDING_TIME:I = 0x1f4

.field private static final START_SPRING_BACK_TIME:I = 0x3e8

.field private static final STATE_HOLDING:I = 0x2

.field private static final STATE_NONE:I = 0x0

.field private static final STATE_WAIT_BACK:I = 0x3

.field private static final STATE_WAIT_ENTER:I = 0x1


# instance fields
.field private final mBack:Ljava/lang/Runnable;

.field private mCurScrollY:F

.field private final mHandler:Landroid/os/Handler;

.field private final mHold:Ljava/lang/Runnable;

.field private final mHoldDistance:I

.field private final mIndicator:Lcom/meizu/widget/MzListHoldIndicator;

.field private mMinScrollY:F

.field private mState:I

.field private final mWebView:Landroid/webkit/WebViewClassic;


# direct methods
.method public constructor <init>(Landroid/webkit/WebViewClassic;)V
    .locals 3
    .parameter "webView"

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/webkit/HoldingEffect;->mHandler:Landroid/os/Handler;

    .line 116
    new-instance v0, Landroid/webkit/HoldingEffect$1;

    invoke-direct {v0, p0}, Landroid/webkit/HoldingEffect$1;-><init>(Landroid/webkit/HoldingEffect;)V

    iput-object v0, p0, Landroid/webkit/HoldingEffect;->mHold:Ljava/lang/Runnable;

    .line 128
    new-instance v0, Landroid/webkit/HoldingEffect$2;

    invoke-direct {v0, p0}, Landroid/webkit/HoldingEffect$2;-><init>(Landroid/webkit/HoldingEffect;)V

    iput-object v0, p0, Landroid/webkit/HoldingEffect;->mBack:Ljava/lang/Runnable;

    .line 29
    iput-object p1, p0, Landroid/webkit/HoldingEffect;->mWebView:Landroid/webkit/WebViewClassic;

    .line 30
    iget-object v0, p0, Landroid/webkit/HoldingEffect;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10501ff

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Landroid/webkit/HoldingEffect;->mHoldDistance:I

    .line 32
    new-instance v0, Lcom/meizu/widget/MzListHoldIndicator;

    iget-object v1, p0, Landroid/webkit/HoldingEffect;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroid/webkit/HoldingEffect;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkit/WebViewClassic;->getWebView()Landroid/webkit/WebView;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/meizu/widget/MzListHoldIndicator;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Landroid/webkit/HoldingEffect;->mIndicator:Lcom/meizu/widget/MzListHoldIndicator;

    .line 33
    return-void
.end method

.method static synthetic access$000(Landroid/webkit/HoldingEffect;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget v0, p0, Landroid/webkit/HoldingEffect;->mState:I

    return v0
.end method

.method static synthetic access$002(Landroid/webkit/HoldingEffect;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13
    iput p1, p0, Landroid/webkit/HoldingEffect;->mState:I

    return p1
.end method

.method static synthetic access$100(Landroid/webkit/HoldingEffect;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget v0, p0, Landroid/webkit/HoldingEffect;->mCurScrollY:F

    return v0
.end method

.method static synthetic access$200(Landroid/webkit/HoldingEffect;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget v0, p0, Landroid/webkit/HoldingEffect;->mHoldDistance:I

    return v0
.end method

.method static synthetic access$300(Landroid/webkit/HoldingEffect;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13
    invoke-direct {p0, p1}, Landroid/webkit/HoldingEffect;->show(Z)V

    return-void
.end method

.method static synthetic access$400(Landroid/webkit/HoldingEffect;)Landroid/webkit/WebViewClassic;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget-object v0, p0, Landroid/webkit/HoldingEffect;->mWebView:Landroid/webkit/WebViewClassic;

    return-object v0
.end method

.method private show(Z)V
    .locals 1
    .parameter "show"

    .prologue
    .line 102
    iget-object v0, p0, Landroid/webkit/HoldingEffect;->mIndicator:Lcom/meizu/widget/MzListHoldIndicator;

    invoke-virtual {v0}, Lcom/meizu/widget/MzListHoldIndicator;->isShowing()Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 103
    if-eqz p1, :cond_1

    .line 104
    iget-object v0, p0, Landroid/webkit/HoldingEffect;->mIndicator:Lcom/meizu/widget/MzListHoldIndicator;

    invoke-virtual {v0}, Lcom/meizu/widget/MzListHoldIndicator;->show()V

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 106
    :cond_1
    iget-object v0, p0, Landroid/webkit/HoldingEffect;->mIndicator:Lcom/meizu/widget/MzListHoldIndicator;

    invoke-virtual {v0}, Lcom/meizu/widget/MzListHoldIndicator;->hide()V

    goto :goto_0
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    .line 112
    iget-object v0, p0, Landroid/webkit/HoldingEffect;->mIndicator:Lcom/meizu/widget/MzListHoldIndicator;

    iget-object v1, p0, Landroid/webkit/HoldingEffect;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic;->getTitleHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/meizu/widget/MzListHoldIndicator;->setExtraOffset(I)V

    .line 113
    iget-object v0, p0, Landroid/webkit/HoldingEffect;->mIndicator:Lcom/meizu/widget/MzListHoldIndicator;

    invoke-virtual {v0, p1}, Lcom/meizu/widget/MzListHoldIndicator;->draw(Landroid/graphics/Canvas;)V

    .line 114
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "event"

    .prologue
    const/high16 v6, 0x42a0

    const/4 v2, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 37
    const/4 v0, 0x0

    .line 38
    .local v0, handled:Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 97
    :cond_0
    :goto_0
    return v0

    .line 40
    :pswitch_0
    iget-object v1, p0, Landroid/webkit/HoldingEffect;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Landroid/webkit/HoldingEffect;->mCurScrollY:F

    .line 41
    iget v1, p0, Landroid/webkit/HoldingEffect;->mState:I

    if-ne v1, v2, :cond_0

    .line 42
    iget-object v1, p0, Landroid/webkit/HoldingEffect;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/webkit/HoldingEffect;->mBack:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 43
    iget v1, p0, Landroid/webkit/HoldingEffect;->mCurScrollY:F

    iget v2, p0, Landroid/webkit/HoldingEffect;->mHoldDistance:I

    neg-int v2, v2

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    .line 44
    iput v5, p0, Landroid/webkit/HoldingEffect;->mState:I

    .line 45
    invoke-direct {p0, v4}, Landroid/webkit/HoldingEffect;->show(Z)V

    goto :goto_0

    .line 47
    :cond_1
    iput v3, p0, Landroid/webkit/HoldingEffect;->mState:I

    .line 48
    invoke-direct {p0, v3}, Landroid/webkit/HoldingEffect;->show(Z)V

    goto :goto_0

    .line 53
    :pswitch_1
    iget-object v1, p0, Landroid/webkit/HoldingEffect;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Landroid/webkit/HoldingEffect;->mCurScrollY:F

    .line 54
    iget v1, p0, Landroid/webkit/HoldingEffect;->mMinScrollY:F

    iget v2, p0, Landroid/webkit/HoldingEffect;->mCurScrollY:F

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, p0, Landroid/webkit/HoldingEffect;->mMinScrollY:F

    .line 55
    iget v1, p0, Landroid/webkit/HoldingEffect;->mState:I

    if-nez v1, :cond_2

    .line 56
    iget v1, p0, Landroid/webkit/HoldingEffect;->mCurScrollY:F

    iget v2, p0, Landroid/webkit/HoldingEffect;->mHoldDistance:I

    neg-int v2, v2

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 57
    iput v4, p0, Landroid/webkit/HoldingEffect;->mState:I

    .line 58
    iget-object v1, p0, Landroid/webkit/HoldingEffect;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/webkit/HoldingEffect;->mHold:Ljava/lang/Runnable;

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 60
    :cond_2
    iget v1, p0, Landroid/webkit/HoldingEffect;->mState:I

    if-ne v1, v4, :cond_3

    .line 61
    iget v1, p0, Landroid/webkit/HoldingEffect;->mCurScrollY:F

    iget v2, p0, Landroid/webkit/HoldingEffect;->mMinScrollY:F

    sub-float/2addr v1, v2

    cmpl-float v1, v1, v6

    if-lez v1, :cond_0

    .line 62
    iput v3, p0, Landroid/webkit/HoldingEffect;->mState:I

    .line 63
    iget-object v1, p0, Landroid/webkit/HoldingEffect;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/webkit/HoldingEffect;->mHold:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 65
    :cond_3
    iget v1, p0, Landroid/webkit/HoldingEffect;->mState:I

    if-ne v1, v5, :cond_0

    .line 66
    iget v1, p0, Landroid/webkit/HoldingEffect;->mCurScrollY:F

    iget v2, p0, Landroid/webkit/HoldingEffect;->mMinScrollY:F

    sub-float/2addr v1, v2

    cmpl-float v1, v1, v6

    if-lez v1, :cond_0

    .line 67
    iput v3, p0, Landroid/webkit/HoldingEffect;->mState:I

    .line 68
    iget-object v1, p0, Landroid/webkit/HoldingEffect;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/webkit/HoldingEffect;->mHold:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 69
    invoke-direct {p0, v3}, Landroid/webkit/HoldingEffect;->show(Z)V

    goto/16 :goto_0

    .line 74
    :pswitch_2
    iget v1, p0, Landroid/webkit/HoldingEffect;->mState:I

    if-ne v1, v5, :cond_4

    .line 75
    const/4 v0, 0x1

    .line 76
    iput v2, p0, Landroid/webkit/HoldingEffect;->mState:I

    .line 77
    iget-object v1, p0, Landroid/webkit/HoldingEffect;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/webkit/HoldingEffect;->mBack:Ljava/lang/Runnable;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 78
    :cond_4
    iget v1, p0, Landroid/webkit/HoldingEffect;->mState:I

    if-ne v1, v4, :cond_0

    .line 79
    iget-object v1, p0, Landroid/webkit/HoldingEffect;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/webkit/HoldingEffect;->mHold:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 80
    iput v3, p0, Landroid/webkit/HoldingEffect;->mState:I

    goto/16 :goto_0

    .line 86
    :pswitch_3
    iget v1, p0, Landroid/webkit/HoldingEffect;->mState:I

    if-eq v1, v5, :cond_5

    iget v1, p0, Landroid/webkit/HoldingEffect;->mState:I

    if-eq v1, v2, :cond_5

    iget v1, p0, Landroid/webkit/HoldingEffect;->mState:I

    if-ne v1, v4, :cond_0

    .line 87
    :cond_5
    iget-object v1, p0, Landroid/webkit/HoldingEffect;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/webkit/HoldingEffect;->mHold:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 88
    iget-object v1, p0, Landroid/webkit/HoldingEffect;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/webkit/HoldingEffect;->mBack:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 89
    invoke-direct {p0, v3}, Landroid/webkit/HoldingEffect;->show(Z)V

    .line 90
    iput v3, p0, Landroid/webkit/HoldingEffect;->mState:I

    .line 91
    iget-object v1, p0, Landroid/webkit/HoldingEffect;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic;->onHoldingBack()V

    .line 92
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 38
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method
