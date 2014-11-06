.class Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$CheckSimPin$1;
.super Ljava/lang/Object;
.source "KeyguardSecurityView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$CheckSimPin;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$CheckSimPin;

.field final synthetic val$result:Z


# direct methods
.method constructor <init>(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$CheckSimPin;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 946
    iput-object p1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$CheckSimPin$1;->this$1:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$CheckSimPin;

    iput-boolean p2, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$CheckSimPin$1;->val$result:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 948
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$CheckSimPin$1;->this$1:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$CheckSimPin;

    iget-boolean v1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$CheckSimPin$1;->val$result:Z

    invoke-virtual {v0, v1}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$CheckSimPin;->onSimLockChangedResponse(Z)V

    .line 949
    return-void
.end method
