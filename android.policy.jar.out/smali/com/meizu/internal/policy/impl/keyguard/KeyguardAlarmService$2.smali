.class Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService$2;
.super Landroid/os/Handler;
.source "KeyguardAlarmService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService;


# direct methods
.method constructor <init>(Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService;)V
    .locals 0
    .parameter

    .prologue
    .line 151
    iput-object p1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService$2;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 154
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 168
    :cond_0
    :goto_0
    return-void

    .line 156
    :pswitch_0
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService$2;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService;

    const-string v1, "delay_alarm"

    invoke-virtual {v0, v1}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService;->sendUserAction(Ljava/lang/String;)Z

    goto :goto_0

    .line 159
    :pswitch_1
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService$2;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService;

    const-string v1, "stop_alarm"

    invoke-virtual {v0, v1}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService;->sendUserAction(Ljava/lang/String;)Z

    goto :goto_0

    .line 162
    :pswitch_2
    invoke-static {}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService;->access$600()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService;->access$700()I

    move-result v0

    invoke-static {}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService;->access$600()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 163
    :cond_1
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService$2;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService;

    invoke-virtual {v0}, Landroid/app/Service;->stopSelf()V

    goto :goto_0

    .line 154
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
