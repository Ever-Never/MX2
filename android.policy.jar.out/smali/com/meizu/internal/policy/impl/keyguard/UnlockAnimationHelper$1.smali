.class Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper$1;
.super Landroid/os/Handler;
.source "UnlockAnimationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper;


# direct methods
.method constructor <init>(Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper$1;->this$0:Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .parameter "msg"

    .prologue
    const/4 v11, 0x0

    const/16 v10, 0x3e8

    .line 74
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 76
    :pswitch_0
    iget-object v6, p0, Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper$1;->this$0:Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper;

    iget v7, v6, Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper;->count:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper;->count:I

    .line 77
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 78
    .local v2, now:J
    iget-object v6, p0, Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper$1;->this$0:Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper;

    iget-wide v6, v6, Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper;->mLastTime:J

    sub-long v0, v2, v6

    .line 79
    .local v0, duration:J
    iget-object v6, p0, Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper$1;->this$0:Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper;

    iget-wide v6, v6, Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper;->mBeginTime:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_1

    .line 80
    iget-object v6, p0, Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper$1;->this$0:Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper;

    iput-wide v2, v6, Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper;->mBeginTime:J

    .line 81
    :cond_1
    const-string v6, "optimum"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "-------------------duration: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", -- "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper$1;->this$0:Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper;

    iget v8, v8, Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper;->count:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget-object v6, p0, Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper$1;->this$0:Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper;

    iput-wide v2, v6, Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper;->mLastTime:J

    .line 83
    iget-object v6, p0, Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper$1;->this$0:Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    iput-wide v7, v6, Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper;->current:J

    .line 84
    iget-object v6, p0, Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper$1;->this$0:Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper;

    iget-wide v6, v6, Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper;->current:J

    iget-object v8, p0, Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper$1;->this$0:Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper;->mStartAnimTime:J
    invoke-static {v8}, Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper;->access$000(Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper;)J

    move-result-wide v8

    sub-long/2addr v6, v8

    long-to-float v6, v6

    iget-object v7, p0, Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper$1;->this$0:Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper;->mDuration:I
    invoke-static {v7}, Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper;->access$100(Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper;)I

    move-result v7

    int-to-float v7, v7

    div-float v5, v6, v7

    .line 85
    .local v5, rate:F
    const/high16 v6, 0x3f80

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    const/4 v7, 0x0

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 97
    float-to-double v6, v5

    const-wide v8, 0x3ff921fb54442d18L

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float v5, v6

    .line 99
    iget-object v6, p0, Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper$1;->this$0:Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper;->mAnimSpace:I
    invoke-static {v6}, Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper;->access$200(Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper;)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v5

    float-to-int v4, v6

    .line 100
    .local v4, offset:I
    iget-object v6, p0, Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper$1;->this$0:Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper;

    #calls: Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper;->updatePositionToLock(I)V
    invoke-static {v6, v4}, Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper;->access$300(Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper;I)V

    .line 102
    iget-object v6, p0, Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper$1;->this$0:Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper;->mCallback:Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper$Callback;
    invoke-static {v6}, Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper;->access$400(Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper;)Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper$Callback;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 103
    iget-object v6, p0, Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper$1;->this$0:Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper;->mCallback:Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper$Callback;
    invoke-static {v6}, Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper;->access$400(Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper;)Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper$Callback;

    move-result-object v6

    iget-object v7, p0, Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper$1;->this$0:Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper;->mStartPosition:I
    invoke-static {v7}, Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper;->access$500(Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper;)I

    move-result v7

    invoke-interface {v6, v7, v4}, Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper$Callback;->onNotifyNewPosition(II)V

    .line 106
    :cond_2
    iget-object v6, p0, Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper$1;->this$0:Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper;->mAnimSpace:I
    invoke-static {v6}, Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper;->access$200(Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper;)I

    move-result v6

    if-ne v4, v6, :cond_3

    .line 107
    iget-object v6, p0, Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper$1;->this$0:Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper;

    #setter for: Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper;->mIsAnimating:Z
    invoke-static {v6, v11}, Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper;->access$602(Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper;Z)Z

    .line 108
    iget-object v6, p0, Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper$1;->this$0:Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper;

    iget-object v6, v6, Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 109
    iget-object v6, p0, Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper$1;->this$0:Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper;

    iget-object v6, v6, Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x3ea

    const-wide/16 v8, 0x32

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 110
    iget-object v6, p0, Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper$1;->this$0:Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper;

    iput v11, v6, Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper;->count:I

    .line 111
    const-string v6, "optimum"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "----------------------the end------------------- mBeginTime = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper$1;->this$0:Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper;

    iget-wide v8, v8, Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper;->mBeginTime:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", endTime = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 113
    :cond_3
    iget-object v6, p0, Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper$1;->this$0:Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper;

    iget-object v6, v6, Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 114
    iget-object v6, p0, Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper$1;->this$0:Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper;

    iget-object v6, v6, Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper$1;->this$0:Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper;

    iget-object v7, v7, Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    const-wide/16 v8, 0x10

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 120
    .end local v0           #duration:J
    .end local v2           #now:J
    .end local v4           #offset:I
    .end local v5           #rate:F
    :pswitch_1
    iget-object v6, p0, Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper$1;->this$0:Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper;

    #setter for: Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper;->mIsAnimating:Z
    invoke-static {v6, v11}, Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper;->access$602(Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper;Z)Z

    .line 121
    iget-object v6, p0, Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper$1;->this$0:Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper;

    iget-object v6, v6, Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v10}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_0

    .line 124
    :pswitch_2
    iget-object v6, p0, Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper$1;->this$0:Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper;->mCallback:Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper$Callback;
    invoke-static {v6}, Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper;->access$400(Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper;)Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper$Callback;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 125
    iget-object v6, p0, Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper$1;->this$0:Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper;->mCallback:Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper$Callback;
    invoke-static {v6}, Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper;->access$400(Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper;)Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper$Callback;

    move-result-object v6

    invoke-interface {v6}, Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper$Callback;->onAnimEnd()V

    goto/16 :goto_0

    .line 74
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
