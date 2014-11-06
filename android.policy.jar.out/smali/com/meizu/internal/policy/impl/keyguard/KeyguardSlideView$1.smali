.class Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$1;
.super Ljava/lang/Object;
.source "KeyguardSlideView.java"

# interfaces
.implements Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView$IMusicWidget;


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
    .line 117
    iput-object p1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$1;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMusicKeyClick(I)V
    .locals 0
    .parameter "keyCode"

    .prologue
    .line 130
    return-void
.end method

.method public onMusicVisibleChanged(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    .line 122
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$1;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    #calls: Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->updateMusicDateTips(I)V
    invoke-static {v1, v0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->access$000(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;I)V

    .line 123
    if-eqz p1, :cond_0

    .line 127
    :cond_0
    return-void

    .line 122
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
