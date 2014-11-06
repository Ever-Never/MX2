.class Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$UnlockPatternListener$1;
.super Ljava/lang/Object;
.source "KeyguardSecurityView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$UnlockPatternListener;->onPatternDetected(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$UnlockPatternListener;


# direct methods
.method constructor <init>(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$UnlockPatternListener;)V
    .locals 0
    .parameter

    .prologue
    .line 259
    iput-object p1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$UnlockPatternListener$1;->this$1:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$UnlockPatternListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 262
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$UnlockPatternListener$1;->this$1:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$UnlockPatternListener;

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$UnlockPatternListener;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;

    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$UnlockPatternListener$1;->this$1:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$UnlockPatternListener;

    iget-object v1, v1, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$UnlockPatternListener;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mInputNum:Ljava/lang/String;
    invoke-static {v1}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->access$1300(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->checkPassword(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->access$2000(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;Ljava/lang/String;)V

    .line 263
    return-void
.end method
