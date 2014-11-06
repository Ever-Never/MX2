.class Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView$3;
.super Ljava/lang/Object;
.source "KeyguardFindPhoneView.java"

# interfaces
.implements Landroid/widget/EditText$OnKeyPreImeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;-><init>(Landroid/content/Context;Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$KeyguardViewCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;


# direct methods
.method constructor <init>(Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;)V
    .locals 0
    .parameter

    .prologue
    .line 184
    iput-object p1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView$3;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyPreIme(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "view"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 188
    const/4 v0, 0x4

    if-eq p2, v0, :cond_0

    const/4 v0, 0x3

    if-ne p2, v0, :cond_1

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView$3;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mCallback:Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$KeyguardViewCallback;
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->access$000(Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;)Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$KeyguardViewCallback;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-interface {v0, v1, v2}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$KeyguardViewCallback;->userActivity(J)V

    .line 190
    const/4 v0, 0x1

    .line 192
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
