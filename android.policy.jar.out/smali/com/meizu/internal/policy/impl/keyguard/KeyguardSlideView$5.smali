.class Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$5;
.super Ljava/lang/Object;
.source "KeyguardSlideView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;


# direct methods
.method constructor <init>(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;)V
    .locals 0
    .parameter

    .prologue
    .line 636
    iput-object p1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$5;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 640
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$5;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;

    const/4 v1, 0x1

    #calls: Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->updateMusicDateTips(I)V
    invoke-static {v0, v1}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->access$000(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;I)V

    .line 641
    return-void
.end method
