.class Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView$MyOrientationEventListener;
.super Landroid/view/OrientationEventListener;
.source "KeyguardFindPhoneView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyOrientationEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;


# direct methods
.method public constructor <init>(Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 1051
    iput-object p1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView$MyOrientationEventListener;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;

    .line 1052
    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    .line 1053
    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 2
    .parameter "orientation"

    .prologue
    .line 1056
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 1058
    :goto_0
    return-void

    .line 1057
    :cond_0
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView$MyOrientationEventListener;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;

    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView$MyOrientationEventListener;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mOrientation:I
    invoke-static {v1}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->access$3000(Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;)I

    move-result v1

    invoke-static {p1, v1}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->roundOrientation(II)I

    move-result v1

    #setter for: Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mOrientation:I
    invoke-static {v0, v1}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->access$3002(Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;I)I

    goto :goto_0
.end method
