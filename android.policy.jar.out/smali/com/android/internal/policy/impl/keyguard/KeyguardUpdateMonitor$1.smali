.class Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$1;
.super Landroid/os/Handler;
.source "KeyguardUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)V
    .locals 0
    .parameter

    .prologue
    .line 122
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    .line 125
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 193
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 127
    :pswitch_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->handleTimeUpdate()V
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$000(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)V

    goto :goto_0

    .line 130
    :pswitch_2
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->handleBatteryUpdate(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;)V
    invoke-static {v3, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;)V

    goto :goto_0

    .line 133
    :pswitch_3
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->handleCarrierInfoUpdate()V
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$200(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)V

    goto :goto_0

    .line 136
    :pswitch_4
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimArgs;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->handleSimStateChange(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimArgs;)V
    invoke-static {v3, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$300(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimArgs;)V

    goto :goto_0

    .line 139
    :pswitch_5
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->handleRingerModeChange(I)V

    goto :goto_0

    .line 142
    :pswitch_6
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->handlePhoneStateChanged(Ljava/lang/String;)V

    goto :goto_0

    .line 145
    :pswitch_7
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->handleClockVisibilityChanged()V
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$400(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)V

    goto :goto_0

    .line 148
    :pswitch_8
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->handleDeviceProvisioned()V

    goto :goto_0

    .line 151
    :pswitch_9
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->handleDevicePolicyManagerStateChanged()V

    goto :goto_0

    .line 154
    :pswitch_a
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/IRemoteCallback;

    invoke-virtual {v3, v4, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->handleUserSwitched(ILandroid/os/IRemoteCallback;)V

    goto :goto_0

    .line 157
    :pswitch_b
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->handleUserRemoved(I)V

    goto :goto_0

    .line 160
    :pswitch_c
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    iget v3, p1, Landroid/os/Message;->arg1:I

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->handleKeyguardVisibilityChanged(I)V
    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$500(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;I)V

    goto :goto_0

    .line 163
    :pswitch_d
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->handleBootCompleted()V

    goto :goto_0

    .line 168
    :pswitch_e
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    iget-object v2, v2, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    iget-object v2, v2, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isFindphoneLocked()Z

    move-result v2

    if-nez v2, :cond_0

    .line 169
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->handleFindPhoneLock()V
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$600(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)V

    goto :goto_0

    .line 173
    :pswitch_f
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    iget-object v2, v2, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    iget-object v2, v2, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isFindphoneLocked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 174
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->handleFindPhoneUnlock()V
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$700(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)V

    goto/16 :goto_0

    .line 178
    :pswitch_10
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    iget-object v2, v2, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    iget-object v2, v2, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isFindphoneLocked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 179
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 180
    .local v1, message:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->handleFindPhoneMessage(Ljava/lang/String;)V
    invoke-static {v2, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$800(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 185
    .end local v1           #message:Ljava/lang/String;
    :pswitch_11
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "true"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->handStopAlarm(Z)V
    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$900(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;Z)V

    goto/16 :goto_0

    .line 188
    :pswitch_12
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 189
    .local v0, data:Landroid/os/Bundle;
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    const-string v3, "type"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "msgs"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const-string v5, "anim"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    const-string v6, "fadeIn"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->handStartAlarm(Ljava/lang/String;[Ljava/lang/String;ZZ)V
    invoke-static {v2, v3, v4, v5, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$1000(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;Ljava/lang/String;[Ljava/lang/String;ZZ)V

    goto/16 :goto_0

    .line 125
    :pswitch_data_0
    .packed-switch 0x12d
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
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_0
        :pswitch_11
        :pswitch_12
    .end packed-switch
.end method
