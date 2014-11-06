.class Lcom/meizu/internal/policy/impl/keyguard/GlowView$1;
.super Landroid/os/Handler;
.source "GlowView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/internal/policy/impl/keyguard/GlowView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/internal/policy/impl/keyguard/GlowView;


# direct methods
.method constructor <init>(Lcom/meizu/internal/policy/impl/keyguard/GlowView;)V
    .locals 0
    .parameter

    .prologue
    .line 125
    iput-object p1, p0, Lcom/meizu/internal/policy/impl/keyguard/GlowView$1;->this$0:Lcom/meizu/internal/policy/impl/keyguard/GlowView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 128
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 144
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    .line 145
    return-void

    .line 130
    :pswitch_0
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/GlowView$1;->this$0:Lcom/meizu/internal/policy/impl/keyguard/GlowView;

    const-wide/16 v1, 0x42b

    iget-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/GlowView$1;->this$0:Lcom/meizu/internal/policy/impl/keyguard/GlowView;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/GlowView;->mNewGlowViewDelay:J
    invoke-static {v3}, Lcom/meizu/internal/policy/impl/keyguard/GlowView;->access$000(Lcom/meizu/internal/policy/impl/keyguard/GlowView;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    #setter for: Lcom/meizu/internal/policy/impl/keyguard/GlowView;->mNewGlowViewDelay:J
    invoke-static {v0, v1, v2}, Lcom/meizu/internal/policy/impl/keyguard/GlowView;->access$002(Lcom/meizu/internal/policy/impl/keyguard/GlowView;J)J

    .line 131
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/GlowView$1;->this$0:Lcom/meizu/internal/policy/impl/keyguard/GlowView;

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/keyguard/GlowView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/GlowView$1;->this$0:Lcom/meizu/internal/policy/impl/keyguard/GlowView;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/GlowView;->mNewGlowViewDelay:J
    invoke-static {v2}, Lcom/meizu/internal/policy/impl/keyguard/GlowView;->access$000(Lcom/meizu/internal/policy/impl/keyguard/GlowView;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 132
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/GlowView$1;->this$0:Lcom/meizu/internal/policy/impl/keyguard/GlowView;

    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/GlowView$1;->this$0:Lcom/meizu/internal/policy/impl/keyguard/GlowView;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/GlowView;->mGlowViewList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/meizu/internal/policy/impl/keyguard/GlowView;->access$100(Lcom/meizu/internal/policy/impl/keyguard/GlowView;)Ljava/util/ArrayList;

    move-result-object v1

    #calls: Lcom/meizu/internal/policy/impl/keyguard/GlowView;->reliveGlowView(Ljava/util/ArrayList;)V
    invoke-static {v0, v1}, Lcom/meizu/internal/policy/impl/keyguard/GlowView;->access$200(Lcom/meizu/internal/policy/impl/keyguard/GlowView;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 135
    :pswitch_1
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/GlowView$1;->this$0:Lcom/meizu/internal/policy/impl/keyguard/GlowView;

    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/GlowView$1;->this$0:Lcom/meizu/internal/policy/impl/keyguard/GlowView;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/GlowView;->mGlowViewList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/meizu/internal/policy/impl/keyguard/GlowView;->access$100(Lcom/meizu/internal/policy/impl/keyguard/GlowView;)Ljava/util/ArrayList;

    move-result-object v1

    #calls: Lcom/meizu/internal/policy/impl/keyguard/GlowView;->isAllGlowViewDied(Ljava/util/ArrayList;)Z
    invoke-static {v0, v1}, Lcom/meizu/internal/policy/impl/keyguard/GlowView;->access$300(Lcom/meizu/internal/policy/impl/keyguard/GlowView;Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 136
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/GlowView$1;->this$0:Lcom/meizu/internal/policy/impl/keyguard/GlowView;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/GlowView;->mAnimator:Landroid/animation/ValueAnimator;
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/keyguard/GlowView;->access$400(Lcom/meizu/internal/policy/impl/keyguard/GlowView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/GlowView$1;->this$0:Lcom/meizu/internal/policy/impl/keyguard/GlowView;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/GlowView;->mAnimator:Landroid/animation/ValueAnimator;
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/keyguard/GlowView;->access$400(Lcom/meizu/internal/policy/impl/keyguard/GlowView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/GlowView$1;->this$0:Lcom/meizu/internal/policy/impl/keyguard/GlowView;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/GlowView;->mAnimator:Landroid/animation/ValueAnimator;
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/keyguard/GlowView;->access$400(Lcom/meizu/internal/policy/impl/keyguard/GlowView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/GlowView$1;->this$0:Lcom/meizu/internal/policy/impl/keyguard/GlowView;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/GlowView;->mCallback:Lcom/meizu/internal/policy/impl/keyguard/GlowView$Callback;
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/keyguard/GlowView;->access$500(Lcom/meizu/internal/policy/impl/keyguard/GlowView;)Lcom/meizu/internal/policy/impl/keyguard/GlowView$Callback;

    move-result-object v0

    invoke-interface {v0}, Lcom/meizu/internal/policy/impl/keyguard/GlowView$Callback;->onAnimEnd()V

    goto :goto_0

    .line 140
    :cond_1
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/GlowView$1;->this$0:Lcom/meizu/internal/policy/impl/keyguard/GlowView;

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/keyguard/GlowView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 128
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
