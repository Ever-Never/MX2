.class Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$4;
.super Ljava/lang/Object;
.source "ChargingEdotView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


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
    .line 1440
    iput-object p1, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$4;->this$0:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 1469
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .parameter "animation"

    .prologue
    .line 1447
    invoke-static {}, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->access$200()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "   playEdotAnim.onAnimationEnd():"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$4;->this$0:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;

    iget-object v3, v3, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mCurrentAnimState:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mEdotAllDied:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$4;->this$0:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mEdotAllDied:Z
    invoke-static {v3}, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->access$2400(Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1448
    :cond_0
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$4;->this$0:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mSpeed:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$SPEED;
    invoke-static {v1}, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->access$2000(Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;)Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$SPEED;

    move-result-object v1

    sget-object v2, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$SPEED;->PAUSE:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$SPEED;

    if-ne v1, v2, :cond_2

    .line 1450
    invoke-static {}, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->access$200()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mOpacityAnimator,mSpeed:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$4;->this$0:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mSpeed:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$SPEED;
    invoke-static {v3}, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->access$2000(Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;)Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$SPEED;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1466
    :cond_1
    :goto_0
    return-void

    .line 1453
    :cond_2
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$4;->this$0:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mEdotAllDied:Z
    invoke-static {v1}, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->access$2400(Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$4;->this$0:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;

    iget-object v1, v1, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mCurrentAnimState:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

    sget-object v2, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;->charging:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$4;->this$0:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;

    iget-object v1, v1, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mCurrentAnimState:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

    sget-object v2, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;->fadeOutEdot:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$4;->this$0:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;

    iget-object v1, v1, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mCurrentAnimState:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

    sget-object v2, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;->chargFull:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

    if-ne v1, v2, :cond_4

    .line 1457
    :cond_3
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 1458
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x3f5

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1459
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$4;->this$0:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;

    iget-object v1, v1, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mCurrentAnimState:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1460
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$4;->this$0:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->access$500(Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 1461
    .end local v0           #msg:Landroid/os/Message;
    :cond_4
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$4;->this$0:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;

    iget-object v1, v1, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mCurrentAnimState:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

    sget-object v2, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;->fadeOutIlluminant:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

    if-ne v1, v2, :cond_5

    .line 1462
    invoke-static {}, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->access$200()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "   mEdotAnimator.end(),no handle event:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$4;->this$0:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;

    iget-object v3, v3, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mCurrentAnimState:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1464
    :cond_5
    sget-object v1, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "   mEdotAnimator.end(),unhandle event"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$4;->this$0:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;

    iget-object v3, v3, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mCurrentAnimState:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 1472
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3
    .parameter "animation"

    .prologue
    .line 1443
    invoke-static {}, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "   playEdotAnim.onAnimationStart():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$4;->this$0:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;

    iget-object v2, v2, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mCurrentAnimState:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1444
    :cond_0
    return-void
.end method
