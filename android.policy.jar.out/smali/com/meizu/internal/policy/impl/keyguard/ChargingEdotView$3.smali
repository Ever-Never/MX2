.class Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$3;
.super Ljava/lang/Object;
.source "ChargingEdotView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->playEdotAnim(Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;


# direct methods
.method constructor <init>(Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;)V
    .locals 0
    .parameter

    .prologue
    .line 1390
    iput-object p1, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$3;->this$0:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5
    .parameter "animation"

    .prologue
    const/4 v4, 0x0

    .line 1394
    sget-object v2, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$SPEED;->SLOW:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$SPEED;

    iget-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$3;->this$0:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mSpeed:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$SPEED;
    invoke-static {v3}, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->access$2000(Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;)Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$SPEED;

    move-result-object v3

    if-ne v2, v3, :cond_4

    .line 1395
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$3;->this$0:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;

    invoke-static {v2}, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->access$2308(Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;)I

    .line 1396
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$3;->this$0:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mFpsCount:I
    invoke-static {v2}, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->access$2300(Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;)I

    move-result v2

    const/4 v3, 0x3

    if-ge v2, v3, :cond_1

    .line 1438
    :cond_0
    :goto_0
    return-void

    .line 1399
    :cond_1
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$3;->this$0:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;

    #setter for: Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mFpsCount:I
    invoke-static {v2, v4}, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->access$2302(Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;I)I

    .line 1407
    :cond_2
    :goto_1
    const/4 v0, 0x0

    .line 1408
    .local v0, mAnimState:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$3;->this$0:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;

    iget-object v2, v2, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mCurrentAnimState:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

    sget-object v3, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;->charging:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$3;->this$0:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;

    iget-object v2, v2, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mCurrentAnimState:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

    sget-object v3, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;->fadeOutIlluminant:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

    if-ne v2, v3, :cond_5

    .line 1410
    :cond_3
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$3;->this$0:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;

    #calls: Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->updateEdot()V
    invoke-static {v2}, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->access$300(Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;)V

    .line 1432
    :goto_2
    if-eqz v0, :cond_0

    .line 1433
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 1434
    .local v1, msg:Landroid/os/Message;
    const/16 v2, 0x3f5

    iput v2, v1, Landroid/os/Message;->what:I

    .line 1435
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1436
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$3;->this$0:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->access$500(Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;)Landroid/os/Handler;

    move-result-object v2

    const-wide/16 v3, 0x1

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 1400
    .end local v0           #mAnimState:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;
    .end local v1           #msg:Landroid/os/Message;
    :cond_4
    sget-object v2, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$SPEED;->PAUSE:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$SPEED;

    iget-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$3;->this$0:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mSpeed:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$SPEED;
    invoke-static {v3}, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->access$2000(Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;)Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$SPEED;

    move-result-object v3

    if-ne v2, v3, :cond_2

    .line 1401
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$3;->this$0:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;

    invoke-static {v2}, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->access$2308(Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;)I

    .line 1402
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$3;->this$0:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mFpsCount:I
    invoke-static {v2}, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->access$2300(Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;)I

    move-result v2

    const/16 v3, 0x14

    if-lt v2, v3, :cond_0

    .line 1405
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$3;->this$0:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;

    #setter for: Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mFpsCount:I
    invoke-static {v2, v4}, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->access$2302(Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;I)I

    goto :goto_1

    .line 1411
    .restart local v0       #mAnimState:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;
    :cond_5
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$3;->this$0:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;

    iget-object v2, v2, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mCurrentAnimState:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

    sget-object v3, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;->chargFull:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

    if-ne v2, v3, :cond_8

    .line 1412
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$3;->this$0:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mEdotAllDied:Z
    invoke-static {v2}, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->access$2400(Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1413
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$3;->this$0:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;

    #calls: Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->killAllEdot()V
    invoke-static {v2}, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->access$1200(Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;)V

    .line 1414
    sget-object v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;->charged:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

    .line 1415
    invoke-static {}, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->access$200()Z

    move-result v2

    if-eqz v2, :cond_6

    sget-object v2, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "   playEdotAnim.onAnimationUpdate(),mEdotAllDied~~ "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$3;->this$0:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;

    iget-object v4, v4, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mCurrentAnimState:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1416
    :cond_6
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    goto :goto_2

    .line 1418
    :cond_7
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$3;->this$0:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;

    #calls: Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->updateEdot()V
    invoke-static {v2}, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->access$300(Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;)V

    goto :goto_2

    .line 1420
    :cond_8
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$3;->this$0:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;

    iget-object v2, v2, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mCurrentAnimState:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

    sget-object v3, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;->fadeOutEdot:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

    if-ne v2, v3, :cond_b

    .line 1421
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$3;->this$0:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mEdotAllDied:Z
    invoke-static {v2}, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->access$2400(Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1422
    sget-object v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;->fadeOutBattery:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

    .line 1423
    invoke-static {}, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->access$200()Z

    move-result v2

    if-eqz v2, :cond_9

    sget-object v2, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "   playEdotAnim.onAnimationUpdate(),mEdotAllDied~~ "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$3;->this$0:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;

    iget-object v4, v4, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mCurrentAnimState:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1424
    :cond_9
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    goto/16 :goto_2

    .line 1426
    :cond_a
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$3;->this$0:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;

    #calls: Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->updateEdotForDied()V
    invoke-static {v2}, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->access$700(Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;)V

    goto/16 :goto_2

    .line 1429
    :cond_b
    sget-object v2, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "   playEdotAnim.onAnimationUpdate(),error!!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$3;->this$0:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;

    iget-object v4, v4, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mCurrentAnimState:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1430
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    goto/16 :goto_2
.end method
