.class Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$2;
.super Ljava/lang/Object;
.source "ChargingEdotView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->playFadeAnim(Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;)V
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
    .line 1286
    iput-object p1, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$2;->this$0:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 3
    .parameter "animation"

    .prologue
    .line 1355
    invoke-static {}, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$2;->this$0:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;

    iget-object v2, v2, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mCurrentAnimState:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  animation.cancel();"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1356
    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 6
    .parameter "animation"

    .prologue
    const/4 v5, 0x1

    .line 1295
    invoke-static {}, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->access$200()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  mOpacityAnimator.onAnimationEnd,current:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$2;->this$0:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;

    iget-object v4, v4, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mCurrentAnimState:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  target:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$2;->this$0:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;

    iget-object v4, v4, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mTargetAnimState:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1296
    :cond_0
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$2;->this$0:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mSpeed:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$SPEED;
    invoke-static {v2}, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->access$2000(Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;)Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$SPEED;

    move-result-object v2

    sget-object v3, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$SPEED;->PAUSE:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$SPEED;

    if-ne v2, v3, :cond_2

    .line 1298
    invoke-static {}, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->access$200()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  mOpacityAnimator,mSpeed:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$2;->this$0:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mSpeed:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$SPEED;
    invoke-static {v4}, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->access$2000(Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;)Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$SPEED;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1352
    :cond_1
    :goto_0
    return-void

    .line 1301
    :cond_2
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$2;->this$0:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;

    iget-object v2, v2, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mCurrentAnimState:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

    iget-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$2;->this$0:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;

    iget-object v3, v3, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mTargetAnimState:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

    if-eq v2, v3, :cond_1

    .line 1303
    const/4 v0, 0x0

    .line 1304
    .local v0, mNewAnimState:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$2;->this$0:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;

    iget-object v2, v2, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mCurrentAnimState:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

    sget-object v3, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;->fadeIn:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

    if-ne v2, v3, :cond_9

    .line 1305
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$2;->this$0:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;

    iget-object v2, v2, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mTargetAnimState:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

    sget-object v3, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;->none:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

    if-eq v2, v3, :cond_1

    .line 1309
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$2;->this$0:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mIlluminantAlpha:I
    invoke-static {v2}, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->access$1900(Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;)I

    move-result v2

    const/16 v3, 0xfe

    if-le v2, v3, :cond_8

    .line 1311
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$2;->this$0:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mCharging:Z
    invoke-static {v2}, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->access$2100(Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1312
    sget-object v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;->charging:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

    .line 1344
    :cond_3
    :goto_1
    if-eqz v0, :cond_1

    .line 1345
    invoke-static {}, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->access$200()Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object v2, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  mOpacityAnimator.End,mNewAnimState:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1346
    :cond_4
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 1347
    .local v1, msg:Landroid/os/Message;
    const/16 v2, 0x3f5

    iput v2, v1, Landroid/os/Message;->what:I

    .line 1348
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1349
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$2;->this$0:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->access$500(Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 1313
    .end local v1           #msg:Landroid/os/Message;
    :cond_5
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$2;->this$0:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mCharged:Z
    invoke-static {v2}, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->access$2200(Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1314
    sget-object v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;->charged:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

    goto :goto_1

    .line 1316
    :cond_6
    invoke-static {}, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->access$200()Z

    move-result v2

    if-eqz v2, :cond_7

    sget-object v2, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->TAG:Ljava/lang/String;

    const-string v3, "  mOpacityAnimator.error 1"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1317
    :cond_7
    invoke-static {}, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->access$200()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$2;->this$0:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;

    invoke-virtual {v2}, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->dump()V

    goto :goto_1

    .line 1321
    :cond_8
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$2;->this$0:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;

    iget-object v0, v2, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mCurrentAnimState:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

    goto :goto_1

    .line 1323
    :cond_9
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$2;->this$0:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;

    iget-object v2, v2, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mCurrentAnimState:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

    sget-object v3, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;->fadeOutIlluminant:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

    if-ne v2, v3, :cond_b

    .line 1324
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$2;->this$0:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;

    iget-object v2, v2, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mTargetAnimState:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

    sget-object v3, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;->none:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

    if-ne v2, v3, :cond_1

    .line 1327
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$2;->this$0:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mIlluminantAlpha:I
    invoke-static {v2}, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->access$1900(Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;)I

    move-result v2

    if-ge v2, v5, :cond_a

    .line 1328
    sget-object v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;->fadeOutEdot:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

    goto :goto_1

    .line 1330
    :cond_a
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$2;->this$0:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;

    iget-object v0, v2, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mCurrentAnimState:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

    goto :goto_1

    .line 1332
    :cond_b
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$2;->this$0:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;

    iget-object v2, v2, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mCurrentAnimState:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

    sget-object v3, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;->fadeOutBattery:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

    if-ne v2, v3, :cond_d

    .line 1333
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$2;->this$0:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;

    iget-object v2, v2, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mTargetAnimState:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

    sget-object v3, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;->none:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

    if-ne v2, v3, :cond_1

    .line 1336
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$2;->this$0:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mBatteryAlpha:I
    invoke-static {v2}, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->access$1800(Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;)I

    move-result v2

    if-ge v2, v5, :cond_c

    .line 1337
    sget-object v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;->none:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

    goto/16 :goto_1

    .line 1339
    :cond_c
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$2;->this$0:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;

    iget-object v0, v2, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mCurrentAnimState:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

    goto/16 :goto_1

    .line 1342
    :cond_d
    sget-object v2, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  mOpacityAnimator,unexcept state,mCurrentAnimState:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$2;->this$0:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;

    iget-object v4, v4, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mCurrentAnimState:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 1292
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3
    .parameter "animation"

    .prologue
    .line 1289
    invoke-static {}, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mOpacityAnimator.onAnimationStart:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$2;->this$0:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;

    iget-object v2, v2, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mCurrentAnimState:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1290
    :cond_0
    return-void
.end method
