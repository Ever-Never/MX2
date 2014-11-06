.class Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$11;
.super Landroid/os/Handler;
.source "KeyguardSecurityView.java"


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
    .line 1165
    iput-object p1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$11;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/16 v3, 0xfa

    const/4 v4, 0x0

    .line 1168
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 1186
    :cond_0
    :goto_0
    return-void

    .line 1170
    :sswitch_0
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$11;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mPowerManager:Landroid/os/PowerManager;

    if-nez v0, :cond_1

    .line 1171
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$11;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;

    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$11;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->access$3900(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "power"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, v1, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mPowerManager:Landroid/os/PowerManager;

    .line 1173
    :cond_1
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$11;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->goToSleep(J)V

    goto :goto_0

    .line 1176
    :sswitch_1
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$11;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mDragPosY:I
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->access$4000(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;)I

    move-result v0

    if-nez v0, :cond_2

    .line 1177
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$11;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;

    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$11;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    #setter for: Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mDragPosY:I
    invoke-static {v0, v1}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->access$4002(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;I)I

    .line 1178
    :cond_2
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$11;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mAnimationHelper:Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper;
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->access$4100(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;)Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1179
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$11;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mAnimationHelper:Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper;
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->access$4100(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;)Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$11;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mDragPosY:I
    invoke-static {v1}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->access$4000(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;)I

    move-result v1

    iget-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$11;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->DRAG_Y_FAR_ENOUGH:I
    invoke-static {v2}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->access$4200(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;)I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$11;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->DRAG_Y_FAR_ENOUGH:I
    invoke-static {v2}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->access$4200(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;)I

    move-result v2

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper;->startAnim(IIILandroid/view/View;Landroid/view/View;)Z

    goto :goto_0

    .line 1182
    :sswitch_2
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$11;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mAnimationHelper:Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper;
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->access$4100(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;)Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1183
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$11;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mAnimationHelper:Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper;
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->access$4100(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;)Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$11;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mDragPosY:I
    invoke-static {v1}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->access$4000(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;)I

    move-result v1

    iget-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$11;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iget-object v5, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$11;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->DRAG_Y_FAR_ENOUGH:I
    invoke-static {v5}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->access$4200(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;)I

    move-result v5

    sub-int/2addr v2, v5

    iget-object v5, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$11;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mDragPosY:I
    invoke-static {v5}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->access$4000(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;)I

    move-result v5

    sub-int/2addr v2, v5

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper;->startAnim(IIILandroid/view/View;Landroid/view/View;)Z

    goto/16 :goto_0

    .line 1168
    :sswitch_data_0
    .sparse-switch
        0x3e8 -> :sswitch_0
        0x7d0 -> :sswitch_1
        0x7d1 -> :sswitch_2
    .end sparse-switch
.end method
