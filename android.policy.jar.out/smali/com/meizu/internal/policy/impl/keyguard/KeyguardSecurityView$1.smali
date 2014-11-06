.class Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$1;
.super Ljava/lang/Object;
.source "KeyguardSecurityView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;


# direct methods
.method constructor <init>(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;)V
    .locals 0
    .parameter

    .prologue
    .line 158
    iput-object p1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$1;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$1;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;

    const/4 v1, 0x1

    #calls: Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->updateMusicDateTips(I)V
    invoke-static {v0, v1}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->access$000(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;I)V

    .line 163
    return-void
.end method
