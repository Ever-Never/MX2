.class Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotHandler;
.super Landroid/os/Handler;
.source "ChargingEdotView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EdotHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;


# direct methods
.method private constructor <init>(Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;)V
    .locals 0
    .parameter

    .prologue
    .line 268
    iput-object p1, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotHandler;->this$0:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 268
    invoke-direct {p0, p1}, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotHandler;-><init>(Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "m"

    .prologue
    const/16 v5, 0x3ea

    .line 270
    invoke-static {}, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->access$200()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 334
    :cond_1
    :goto_0
    return-void

    .line 273
    :pswitch_0
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotHandler;->this$0:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;

    #calls: Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->updateEdot()V
    invoke-static {v1}, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->access$300(Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;)V

    goto :goto_0

    .line 276
    :pswitch_1
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotHandler;->this$0:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;

    #calls: Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->bornEdot()V
    invoke-static {v1}, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->access$400(Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;)V

    goto :goto_0

    .line 279
    :pswitch_2
    invoke-static {}, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->access$200()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "charing: receive stop anim msg and remove Update and born, time "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    :cond_2
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotHandler;->this$0:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->access$500(Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 281
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotHandler;->this$0:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->access$500(Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x3e9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 282
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotHandler;->this$0:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mStopTime:J
    invoke-static {v1}, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->access$600(Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    .line 283
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotHandler;->this$0:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    #setter for: Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mStopTime:J
    invoke-static {v1, v2, v3}, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->access$602(Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;J)J

    goto :goto_0

    .line 286
    :pswitch_3
    sget-object v1, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "charing: receive stop born msg and remove born, time "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotHandler;->this$0:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->access$500(Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 290
    :pswitch_4
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotHandler;->this$0:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;

    #calls: Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->updateEdotForDied()V
    invoke-static {v1}, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->access$700(Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;)V

    goto/16 :goto_0

    .line 293
    :pswitch_5
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotHandler;->this$0:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;

    #calls: Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->startEdoitDiedAnim()V
    invoke-static {v1}, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->access$800(Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;)V

    goto/16 :goto_0

    .line 296
    :pswitch_6
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotHandler;->this$0:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;

    #calls: Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->handleUpdateIlluminantOut()V
    invoke-static {v1}, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->access$900(Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;)V

    goto/16 :goto_0

    .line 299
    :pswitch_7
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotHandler;->this$0:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;

    #calls: Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->updateBatteryBoxOut()V
    invoke-static {v1}, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->access$1000(Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;)V

    goto/16 :goto_0

    .line 302
    :pswitch_8
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotHandler;->this$0:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;

    #calls: Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->handleUpdateIlliminantIn()V
    invoke-static {v1}, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->access$1100(Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;)V

    goto/16 :goto_0

    .line 305
    :pswitch_9
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotHandler;->this$0:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;

    #calls: Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->killAllEdot()V
    invoke-static {v1}, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->access$1200(Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;)V

    goto/16 :goto_0

    .line 308
    :pswitch_a
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotHandler;->this$0:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;

    #calls: Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->updateAnimState()V
    invoke-static {v1}, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->access$1300(Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;)V

    goto/16 :goto_0

    .line 311
    :pswitch_b
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotHandler;->this$0:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;

    #calls: Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->updateSpeed()V
    invoke-static {v1}, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->access$1400(Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;)V

    goto/16 :goto_0

    .line 314
    :pswitch_c
    invoke-static {}, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->access$200()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotHandler;->this$0:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;

    invoke-virtual {v1}, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->dump()V

    .line 315
    :cond_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

    .line 316
    .local v0, mAnimState:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;
    sget-object v1, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;->fadeIn:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

    if-eq v0, v1, :cond_4

    sget-object v1, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;->fadeOutIlluminant:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

    if-eq v0, v1, :cond_4

    sget-object v1, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;->fadeOutBattery:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

    if-ne v0, v1, :cond_5

    .line 319
    :cond_4
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotHandler;->this$0:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;

    #calls: Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->playFadeAnim(Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;)V
    invoke-static {v1, v0}, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->access$1500(Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;)V

    goto/16 :goto_0

    .line 320
    :cond_5
    sget-object v1, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;->fadeOutEdot:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

    if-eq v0, v1, :cond_6

    sget-object v1, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;->charging:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

    if-eq v0, v1, :cond_6

    sget-object v1, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;->chargFull:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

    if-ne v0, v1, :cond_7

    .line 323
    :cond_6
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotHandler;->this$0:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;

    #calls: Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->playEdotAnim(Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;)V
    invoke-static {v1, v0}, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->access$1600(Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;)V

    goto/16 :goto_0

    .line 324
    :cond_7
    sget-object v1, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;->charged:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

    if-ne v0, v1, :cond_8

    .line 325
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotHandler;->this$0:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;

    sget-object v2, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;->charged:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

    iput-object v2, v1, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mCurrentAnimState:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

    goto/16 :goto_0

    .line 326
    :cond_8
    sget-object v1, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;->none:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

    if-ne v0, v1, :cond_1

    .line 327
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotHandler;->this$0:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;

    #calls: Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->pause()V
    invoke-static {v1}, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->access$1700(Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;)V

    goto/16 :goto_0

    .line 271
    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method
