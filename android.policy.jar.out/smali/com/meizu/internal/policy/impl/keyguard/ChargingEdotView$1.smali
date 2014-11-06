.class Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$1;
.super Ljava/lang/Object;
.source "ChargingEdotView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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
    .line 1254
    iput-object p1, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$1;->this$0:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6
    .parameter "animation"

    .prologue
    const/4 v5, 0x1

    const/16 v4, 0xff

    const/16 v3, 0x14

    const/4 v2, 0x0

    .line 1258
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$1;->this$0:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mCurrentAnimState:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

    sget-object v1, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;->fadeIn:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

    if-ne v0, v1, :cond_2

    .line 1259
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$1;->this$0:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;

    invoke-static {v0, v3}, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->access$1812(Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;I)I

    .line 1260
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$1;->this$0:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;

    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$1;->this$0:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mBatteryAlpha:I
    invoke-static {v1}, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->access$1800(Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;)I

    move-result v1

    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    #setter for: Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mBatteryAlpha:I
    invoke-static {v0, v1}, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->access$1802(Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;I)I

    .line 1261
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$1;->this$0:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;

    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$1;->this$0:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mBatteryAlpha:I
    invoke-static {v1}, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->access$1800(Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;)I

    move-result v1

    #setter for: Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mIlluminantAlpha:I
    invoke-static {v0, v1}, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->access$1902(Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;I)I

    .line 1262
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$1;->this$0:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;

    invoke-virtual {v0}, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->invalidate()V

    .line 1263
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$1;->this$0:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mBatteryAlpha:I
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->access$1800(Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;)I

    move-result v0

    const/16 v1, 0xfe

    if-le v0, v1, :cond_0

    .line 1264
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1283
    :cond_0
    :goto_0
    invoke-static {}, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->access$200()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " update,state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$1;->this$0:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;

    iget-object v2, v2, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mCurrentAnimState:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  mBatteryAlpha:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$1;->this$0:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mBatteryAlpha:I
    invoke-static {v2}, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->access$1800(Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  mIlluminantAlpha:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$1;->this$0:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mIlluminantAlpha:I
    invoke-static {v2}, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->access$1900(Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1284
    :cond_1
    return-void

    .line 1266
    :cond_2
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$1;->this$0:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mCurrentAnimState:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

    sget-object v1, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;->fadeOutIlluminant:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

    if-ne v0, v1, :cond_3

    .line 1267
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$1;->this$0:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;

    invoke-static {v0, v3}, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->access$1920(Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;I)I

    .line 1268
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$1;->this$0:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;

    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$1;->this$0:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mIlluminantAlpha:I
    invoke-static {v1}, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->access$1900(Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;)I

    move-result v1

    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    #setter for: Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mIlluminantAlpha:I
    invoke-static {v0, v1}, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->access$1902(Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;I)I

    .line 1269
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$1;->this$0:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;

    invoke-virtual {v0}, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->invalidate()V

    .line 1270
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$1;->this$0:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mIlluminantAlpha:I
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->access$1900(Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;)I

    move-result v0

    if-ge v0, v5, :cond_0

    .line 1271
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    goto :goto_0

    .line 1273
    :cond_3
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$1;->this$0:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mCurrentAnimState:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

    sget-object v1, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;->fadeOutBattery:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

    if-ne v0, v1, :cond_4

    .line 1274
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$1;->this$0:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;

    invoke-static {v0, v3}, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->access$1820(Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;I)I

    .line 1275
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$1;->this$0:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;

    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$1;->this$0:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mBatteryAlpha:I
    invoke-static {v1}, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->access$1800(Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;)I

    move-result v1

    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    #setter for: Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mBatteryAlpha:I
    invoke-static {v0, v1}, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->access$1802(Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;I)I

    .line 1276
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$1;->this$0:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;

    invoke-virtual {v0}, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->invalidate()V

    .line 1277
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$1;->this$0:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mBatteryAlpha:I
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->access$1800(Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;)I

    move-result v0

    if-ge v0, v5, :cond_0

    .line 1278
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    goto/16 :goto_0

    .line 1281
    :cond_4
    sget-object v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "   mOpacityAnimator.onAnimationUpdate,error!!!  :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$1;->this$0:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;

    iget-object v2, v2, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mCurrentAnimState:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
