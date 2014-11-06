.class Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$13;
.super Ljava/lang/Object;
.source "KeyguardSecurityView.java"

# interfaces
.implements Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$AlarmServiceCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;


# direct methods
.method constructor <init>(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;)V
    .locals 0
    .parameter

    .prologue
    .line 1449
    iput-object p1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$13;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public startAlarm(Ljava/lang/String;[Ljava/lang/String;ZZ)V
    .locals 3
    .parameter "type"
    .parameter "msgs"
    .parameter "anim"
    .parameter "fadeIn"

    .prologue
    .line 1452
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$13;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;

    #calls: Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->loadGlowView()V
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->access$4500(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;)V

    .line 1453
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$13;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mGlowView:Lcom/meizu/internal/policy/impl/keyguard/GlowView;
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->access$4600(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;)Lcom/meizu/internal/policy/impl/keyguard/GlowView;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p2, v1

    const/4 v2, 0x1

    aget-object v2, p2, v2

    invoke-virtual {v0, v1, v2}, Lcom/meizu/internal/policy/impl/keyguard/GlowView;->SetText(Ljava/lang/String;Ljava/lang/String;)V

    .line 1454
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$13;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mStopAlarmTv:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->access$4700(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x2

    aget-object v1, p2, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1455
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$13;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mAlarmState:Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService$State;
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->access$4800(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;)Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService$State;

    move-result-object v0

    sget-object v1, Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService$State;->ALARMING:Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService$State;

    if-eq v0, v1, :cond_0

    .line 1456
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$13;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;

    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$13;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    #setter for: Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mDragPosY:I
    invoke-static {v0, v1}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->access$4002(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;I)I

    .line 1457
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$13;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;

    sget-object v1, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$ANIM_MODE;->LOCK_V:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$ANIM_MODE;

    #setter for: Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mDragAnimMode:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$ANIM_MODE;
    invoke-static {v0, v1}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->access$4902(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$ANIM_MODE;)Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$ANIM_MODE;

    .line 1458
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$13;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mKeyHandler:Landroid/os/Handler;

    const/16 v1, 0x7d0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1459
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$13;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;

    sget-object v1, Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService$State;->ALARMING:Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService$State;

    #setter for: Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mAlarmState:Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService$State;
    invoke-static {v0, v1}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->access$4802(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService$State;)Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService$State;

    .line 1460
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$13;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;

    #calls: Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->updateGlowView()V
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->access$5000(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;)V

    .line 1462
    :cond_0
    return-void
.end method

.method public stopAlarm(Z)V
    .locals 2
    .parameter "fadeOut"

    .prologue
    .line 1465
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$13;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mAlarmState:Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService$State;
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->access$4800(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;)Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService$State;

    move-result-object v0

    sget-object v1, Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService$State;->ALARMING:Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService$State;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$13;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mDragAnimMode:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$ANIM_MODE;
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->access$4900(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;)Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$ANIM_MODE;

    move-result-object v0

    sget-object v1, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$ANIM_MODE;->UNLOCK_V:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$ANIM_MODE;

    if-eq v0, v1, :cond_0

    .line 1466
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$13;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;

    sget-object v1, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$ANIM_MODE;->UNLOCK_V:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$ANIM_MODE;

    #setter for: Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mDragAnimMode:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$ANIM_MODE;
    invoke-static {v0, v1}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->access$4902(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$ANIM_MODE;)Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$ANIM_MODE;

    .line 1467
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$13;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mKeyHandler:Landroid/os/Handler;

    const/16 v1, 0x7d1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1469
    :cond_0
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$13;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;

    sget-object v1, Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService$State;->DESTORY:Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService$State;

    #setter for: Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mAlarmState:Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService$State;
    invoke-static {v0, v1}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->access$4802(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService$State;)Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService$State;

    .line 1470
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$13;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;

    #calls: Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->updateGlowView()V
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->access$5000(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;)V

    .line 1471
    return-void
.end method
