.class Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService$1;
.super Lcom/meizu/internal/policy/impl/keyguard/IKeyguardAlarmService$Stub;
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
    .line 110
    iput-object p1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService$1;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService;

    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/keyguard/IKeyguardAlarmService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public setActionCallback(Lcom/meizu/internal/policy/impl/keyguard/IKeyguardAlarmActionCallback;)V
    .locals 2
    .parameter "callback"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 133
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService$1;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService;

    #setter for: Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService;->mActionCallback:Lcom/meizu/internal/policy/impl/keyguard/IKeyguardAlarmActionCallback;
    invoke-static {v0, p1}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService;->access$302(Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService;Lcom/meizu/internal/policy/impl/keyguard/IKeyguardAlarmActionCallback;)Lcom/meizu/internal/policy/impl/keyguard/IKeyguardAlarmActionCallback;

    .line 134
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService$1;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService;->mActionCallbacks:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService;->access$400(Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService$1;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService;

    const/4 v1, 0x0

    #calls: Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService;->removeCallback(Lcom/meizu/internal/policy/impl/keyguard/IKeyguardAlarmActionCallback;)V
    invoke-static {v0, v1}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService;->access$500(Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService;Lcom/meizu/internal/policy/impl/keyguard/IKeyguardAlarmActionCallback;)V

    .line 137
    return-void
.end method

.method public startAlarm(Ljava/lang/String;[Ljava/lang/String;ZZ)V
    .locals 5
    .parameter "type"
    .parameter "msgs"
    .parameter "anim"
    .parameter "fadeIn"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 115
    move-object v0, p2

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 118
    :cond_0
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService$1;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService;

    const-string v4, ""

    #calls: Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService;->updateStatus(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService;->access$000(Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService;Ljava/lang/String;)V

    .line 119
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService$1;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService;->mKeyguardUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;
    invoke-static {v3}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService;->access$100(Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    invoke-virtual {v3, p1, p2, p3, p4}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->StartAlarm(Ljava/lang/String;[Ljava/lang/String;ZZ)V

    .line 120
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService$1;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService;

    sget-object v4, Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService$State;->ALARMING:Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService$State;

    #setter for: Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService;->mServiceState:Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService$State;
    invoke-static {v3, v4}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService;->access$202(Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService;Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService$State;)Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService$State;

    .line 123
    return-void
.end method

.method public stopAlarm(Z)V
    .locals 2
    .parameter "fadeOut"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 127
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService$1;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService;->mKeyguardUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService;->access$100(Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->stopAlarm(Z)V

    .line 128
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService$1;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService;

    sget-object v1, Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService$State;->READY:Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService$State;

    #setter for: Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService;->mServiceState:Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService$State;
    invoke-static {v0, v1}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService;->access$202(Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService;Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService$State;)Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService$State;

    .line 129
    return-void
.end method
