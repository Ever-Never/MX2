.class Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$CheckSimPuk$1;
.super Ljava/lang/Object;
.source "KeyguardSecurityView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$CheckSimPuk;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$CheckSimPuk;

.field final synthetic val$result:Z


# direct methods
.method constructor <init>(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$CheckSimPuk;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1024
    iput-object p1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$CheckSimPuk$1;->this$1:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$CheckSimPuk;

    iput-boolean p2, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$CheckSimPuk$1;->val$result:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1026
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$CheckSimPuk$1;->this$1:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$CheckSimPuk;

    iget-boolean v1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$CheckSimPuk$1;->val$result:Z

    invoke-virtual {v0, v1}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$CheckSimPuk;->onSimLockChangedResponse(Z)V

    .line 1027
    return-void
.end method
