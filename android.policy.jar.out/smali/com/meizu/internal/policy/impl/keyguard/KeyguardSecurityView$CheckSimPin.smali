.class abstract Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$CheckSimPin;
.super Ljava/lang/Thread;
.source "KeyguardSecurityView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "CheckSimPin"
.end annotation


# instance fields
.field private final mPin:Ljava/lang/String;

.field final synthetic this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;


# direct methods
.method protected constructor <init>(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "pin"

    .prologue
    .line 934
    iput-object p1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$CheckSimPin;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 935
    iput-object p2, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$CheckSimPin;->mPin:Ljava/lang/String;

    .line 936
    return-void
.end method


# virtual methods
.method abstract onSimLockChangedResponse(Z)V
.end method

.method public run()V
    .locals 4

    .prologue
    .line 943
    :try_start_0
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$CheckSimPin;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;

    const/4 v3, 0x1

    #setter for: Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mIsChecking:Z
    invoke-static {v2, v3}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->access$1902(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;Z)Z

    .line 944
    const-string v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    iget-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$CheckSimPin;->mPin:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/ITelephony;->supplyPin(Ljava/lang/String;)Z

    move-result v1

    .line 946
    .local v1, result:Z
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$CheckSimPin;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;

    new-instance v3, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$CheckSimPin$1;

    invoke-direct {v3, p0, v1}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$CheckSimPin$1;-><init>(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$CheckSimPin;Z)V

    invoke-virtual {v2, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 958
    .end local v1           #result:Z
    :goto_0
    return-void

    .line 951
    :catch_0
    move-exception v0

    .line 952
    .local v0, e:Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$CheckSimPin;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;

    new-instance v3, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$CheckSimPin$2;

    invoke-direct {v3, p0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$CheckSimPin$2;-><init>(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$CheckSimPin;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
