.class Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$7;
.super Ljava/lang/Object;
.source "KeyguardSlideView.java"

# interfaces
.implements Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$AlarmServiceCallbacks;


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
    .line 829
    iput-object p1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$7;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public startAlarm(Ljava/lang/String;[Ljava/lang/String;ZZ)V
    .locals 4
    .parameter "type"
    .parameter "msgs"
    .parameter "anim"
    .parameter "fadeIn"

    .prologue
    const/4 v3, 0x1

    .line 832
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$7;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;

    #calls: Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->loadGlowView()V
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->access$800(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;)V

    .line 833
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$7;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mGlowView:Lcom/meizu/internal/policy/impl/keyguard/GlowView;
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->access$900(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;)Lcom/meizu/internal/policy/impl/keyguard/GlowView;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p2, v1

    aget-object v2, p2, v3

    invoke-virtual {v0, v1, v2}, Lcom/meizu/internal/policy/impl/keyguard/GlowView;->SetText(Ljava/lang/String;Ljava/lang/String;)V

    .line 834
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$7;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mStopAlarmTv:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->access$1000(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x2

    aget-object v1, p2, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 835
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$7;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mAlarmState:Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService$State;
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->access$1100(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;)Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService$State;

    move-result-object v0

    sget-object v1, Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService$State;->ALARMING:Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService$State;

    if-eq v0, v1, :cond_0

    .line 836
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$7;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;

    #calls: Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->updateGlowView(Z)V
    invoke-static {v0, v3}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->access$1200(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;Z)V

    .line 837
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$7;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;

    sget-object v1, Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService$State;->ALARMING:Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService$State;

    #setter for: Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mAlarmState:Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService$State;
    invoke-static {v0, v1}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->access$1102(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService$State;)Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService$State;

    .line 839
    :cond_0
    return-void
.end method

.method public stopAlarm(Z)V
    .locals 2
    .parameter "fadeOut"

    .prologue
    .line 842
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$7;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mAlarmState:Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService$State;
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->access$1100(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;)Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService$State;

    move-result-object v0

    sget-object v1, Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService$State;->DESTORY:Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService$State;

    if-eq v0, v1, :cond_0

    .line 843
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$7;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;

    sget-object v1, Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService$State;->DESTORY:Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService$State;

    #setter for: Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mAlarmState:Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService$State;
    invoke-static {v0, v1}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->access$1102(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService$State;)Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService$State;

    .line 844
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$7;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;

    const/4 v1, 0x0

    #calls: Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->updateGlowView(Z)V
    invoke-static {v0, v1}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->access$1200(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;Z)V

    .line 846
    :cond_0
    return-void
.end method
