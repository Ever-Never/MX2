.class Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$3;
.super Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardSlideView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;


# direct methods
.method constructor <init>(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;)V
    .locals 0
    .parameter

    .prologue
    .line 557
    iput-object p1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$3;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefreshBatteryInfo(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;)V
    .locals 3
    .parameter "status"

    .prologue
    const/4 v2, 0x1

    .line 560
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$3;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;

    invoke-virtual {p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;->isPluggedIn()Z

    move-result v1

    #setter for: Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mPluggedIn:Z
    invoke-static {v0, v1}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->access$202(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;Z)Z

    .line 561
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$3;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mChargingView:Lcom/meizu/internal/policy/impl/keyguard/ChargeViewBase;
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->access$300(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;)Lcom/meizu/internal/policy/impl/keyguard/ChargeViewBase;

    move-result-object v0

    if-nez v0, :cond_0

    .line 562
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$3;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;

    #calls: Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->loadCharingView()V
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->access$400(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;)V

    .line 563
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$3;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mChargingView:Lcom/meizu/internal/policy/impl/keyguard/ChargeViewBase;
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->access$300(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;)Lcom/meizu/internal/policy/impl/keyguard/ChargeViewBase;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 565
    :cond_0
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$3;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mChargingView:Lcom/meizu/internal/policy/impl/keyguard/ChargeViewBase;
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->access$300(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;)Lcom/meizu/internal/policy/impl/keyguard/ChargeViewBase;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$3;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;

    invoke-virtual {v1}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->getScreenState()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/meizu/internal/policy/impl/keyguard/ChargeViewBase;->updateBatteryInfo(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;I)V

    .line 566
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$3;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mPluggedIn:Z
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->access$200(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$3;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mChargingView:Lcom/meizu/internal/policy/impl/keyguard/ChargeViewBase;
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->access$300(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;)Lcom/meizu/internal/policy/impl/keyguard/ChargeViewBase;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$3;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mDragAnimMode:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$ANIM_MODE;
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->access$500(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;)Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$ANIM_MODE;

    move-result-object v0

    sget-object v1, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$ANIM_MODE;->NONE:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$ANIM_MODE;

    if-ne v0, v1, :cond_1

    .line 567
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$3;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mChargingView:Lcom/meizu/internal/policy/impl/keyguard/ChargeViewBase;
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->access$300(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;)Lcom/meizu/internal/policy/impl/keyguard/ChargeViewBase;

    move-result-object v0

    invoke-interface {v0, v2, v2}, Lcom/meizu/internal/policy/impl/keyguard/ChargeViewBase;->setVisible(ZZ)V

    .line 568
    :cond_1
    return-void
.end method
