.class abstract Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$CheckSimPuk;
.super Ljava/lang/Thread;
.source "KeyguardSecurityView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "CheckSimPuk"
.end annotation


# instance fields
.field private final mPin:Ljava/lang/String;

.field private final mPuk:Ljava/lang/String;

.field final synthetic this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;


# direct methods
.method protected constructor <init>(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "puk"
    .parameter "pin"

    .prologue
    .line 1009
    iput-object p1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$CheckSimPuk;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1010
    iput-object p2, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$CheckSimPuk;->mPuk:Ljava/lang/String;

    .line 1011
    iput-object p3, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$CheckSimPuk;->mPin:Ljava/lang/String;

    .line 1012
    return-void
.end method


# virtual methods
.method abstract onSimLockChangedResponse(Z)V
.end method

.method public run()V
    .locals 5

    .prologue
    .line 1019
    :try_start_0
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$CheckSimPuk;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;

    const/4 v4, 0x1

    #setter for: Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mIsChecking:Z
    invoke-static {v3, v4}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->access$1902(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;Z)Z

    .line 1020
    const-string v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 1022
    .local v1, iPhone:Lcom/android/internal/telephony/ITelephony;
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$CheckSimPuk;->mPuk:Ljava/lang/String;

    iget-object v4, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$CheckSimPuk;->mPin:Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Lcom/android/internal/telephony/ITelephony;->supplyPuk(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 1024
    .local v2, result:Z
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$CheckSimPuk;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;

    new-instance v4, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$CheckSimPuk$1;

    invoke-direct {v4, p0, v2}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$CheckSimPuk$1;-><init>(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$CheckSimPuk;Z)V

    invoke-virtual {v3, v4}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1036
    .end local v1           #iPhone:Lcom/android/internal/telephony/ITelephony;
    .end local v2           #result:Z
    :goto_0
    return-void

    .line 1029
    :catch_0
    move-exception v0

    .line 1030
    .local v0, e:Landroid/os/RemoteException;
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$CheckSimPuk;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;

    new-instance v4, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$CheckSimPuk$2;

    invoke-direct {v4, p0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$CheckSimPuk$2;-><init>(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$CheckSimPuk;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
