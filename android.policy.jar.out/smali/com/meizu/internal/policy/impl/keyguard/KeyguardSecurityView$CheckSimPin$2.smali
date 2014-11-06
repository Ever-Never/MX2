.class Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$CheckSimPin$2;
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


# direct methods
.method constructor <init>(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$CheckSimPin;)V
    .locals 0
    .parameter

    .prologue
    .line 952
    iput-object p1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$CheckSimPin$2;->this$1:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$CheckSimPin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 954
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$CheckSimPin$2;->this$1:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$CheckSimPin;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$CheckSimPin;->onSimLockChangedResponse(Z)V

    .line 955
    return-void
.end method
