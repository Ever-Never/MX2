.class Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$UnlockPatternListener;
.super Ljava/lang/Object;
.source "KeyguardSecurityView.java"

# interfaces
.implements Lcom/meizu/widget/LockDigitView$OnPatternListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UnlockPatternListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;


# direct methods
.method private constructor <init>(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;)V
    .locals 0
    .parameter

    .prologue
    .line 217
    iput-object p1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$UnlockPatternListener;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 217
    invoke-direct {p0, p1}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$UnlockPatternListener;-><init>(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;)V

    return-void
.end method


# virtual methods
.method public onPatternCellAdded(Ljava/util/List;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/widget/LockDigitView$Cell;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 229
    .local p1, pattern:Ljava/util/List;,"Ljava/util/List<Lcom/meizu/widget/LockDigitView$Cell;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 230
    .local v2, size:I
    add-int/lit8 v3, v2, -0x1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/widget/LockDigitView$Cell;

    .line 231
    .local v0, newCell:Lcom/meizu/widget/LockDigitView$Cell;
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$UnlockPatternListener;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;

    #calls: Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->converNum(Lcom/meizu/widget/LockDigitView$Cell;)Ljava/lang/String;
    invoke-static {v3, v0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->access$1100(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;Lcom/meizu/widget/LockDigitView$Cell;)Ljava/lang/String;

    move-result-object v1

    .line 232
    .local v1, newNum:Ljava/lang/String;
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$UnlockPatternListener;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;

    iget-object v4, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$UnlockPatternListener;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;

    iget-object v4, v4, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mRestKeypadAsPoint:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 233
    const-string v3, "left"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 234
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$UnlockPatternListener;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;

    const v4, 0x1020336

    #calls: Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->updateInputState(I)V
    invoke-static {v3, v4}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->access$1200(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;I)V

    .line 244
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$UnlockPatternListener;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mCallback:Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$KeyguardViewCallback;
    invoke-static {v3}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->access$1600(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;)Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$KeyguardViewCallback;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-interface {v3, v4, v5}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$KeyguardViewCallback;->userActivity(J)V

    .line 246
    return-void

    .line 235
    :cond_1
    const-string v3, "right"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 236
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$UnlockPatternListener;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;

    invoke-static {v3, v1}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->access$1384(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;Ljava/lang/Object;)Ljava/lang/String;

    .line 237
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$UnlockPatternListener;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mInputText:Lcom/meizu/widget/LockPasswordView;
    invoke-static {v3}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->access$1400(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;)Lcom/meizu/widget/LockPasswordView;

    move-result-object v3

    iget-object v4, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$UnlockPatternListener;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mInputNum:Ljava/lang/String;
    invoke-static {v4}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->access$1300(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/meizu/widget/LockPasswordView;->setCurNum(I)Z

    .line 240
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$UnlockPatternListener;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mInputText:Lcom/meizu/widget/LockPasswordView;
    invoke-static {v3}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->access$1400(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;)Lcom/meizu/widget/LockPasswordView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/meizu/widget/LockPasswordView;->getCurNum()I

    move-result v3

    if-lez v3, :cond_0

    .line 241
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$UnlockPatternListener;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mInputDelete:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->access$1500(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;)Landroid/widget/ImageView;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onPatternCleared()V
    .locals 0

    .prologue
    .line 225
    return-void
.end method

.method public onPatternDetected(Ljava/util/List;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/widget/LockDigitView$Cell;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 252
    .local p1, pattern:Ljava/util/List;,"Ljava/util/List<Lcom/meizu/widget/LockDigitView$Cell;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 253
    .local v2, size:I
    add-int/lit8 v3, v2, -0x1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/widget/LockDigitView$Cell;

    .line 254
    .local v0, newCell:Lcom/meizu/widget/LockDigitView$Cell;
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$UnlockPatternListener;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;

    #calls: Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->converNum(Lcom/meizu/widget/LockDigitView$Cell;)Ljava/lang/String;
    invoke-static {v3, v0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->access$1100(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;Lcom/meizu/widget/LockDigitView$Cell;)Ljava/lang/String;

    move-result-object v1

    .line 255
    .local v1, newNum:Ljava/lang/String;
    const-string v3, "left"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "right"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 256
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$UnlockPatternListener;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mKeypadState:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$KeypadState;
    invoke-static {v3}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->access$1700(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;)Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$KeypadState;

    move-result-object v3

    sget-object v4, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$KeypadState;->password:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$KeypadState;

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$UnlockPatternListener;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mInputNum:Ljava/lang/String;
    invoke-static {v3}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->access$1300(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$UnlockPatternListener;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;

    #calls: Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->getPasswordLimit()I
    invoke-static {v4}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->access$1800(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;)I

    move-result v4

    if-lt v3, v4, :cond_1

    iget-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$UnlockPatternListener;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mIsChecking:Z
    invoke-static {v3}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->access$1900(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 258
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$UnlockPatternListener;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;

    const/4 v4, 0x1

    #setter for: Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mIsChecking:Z
    invoke-static {v3, v4}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->access$1902(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;Z)Z

    .line 259
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$UnlockPatternListener;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;

    new-instance v4, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$UnlockPatternListener$1;

    invoke-direct {v4, p0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$UnlockPatternListener$1;-><init>(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$UnlockPatternListener;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 272
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$UnlockPatternListener;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;

    iget-object v4, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$UnlockPatternListener;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;

    iget-object v4, v4, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mRestKeypadAsPoint:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 273
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$UnlockPatternListener;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;

    iget-object v4, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$UnlockPatternListener;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;

    iget-object v4, v4, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mRestKeypadAsPoint:Ljava/lang/Runnable;

    const-wide/16 v5, 0x1388

    invoke-virtual {v3, v4, v5, v6}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 274
    return-void

    .line 265
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    iget-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$UnlockPatternListener;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mKeypadView:Lcom/meizu/widget/LockDigitView;
    invoke-static {v3}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->access$300(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;)Lcom/meizu/widget/LockDigitView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/meizu/widget/LockDigitView;->isKeyAsPoint()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$UnlockPatternListener;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mIsChecking:Z
    invoke-static {v3}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->access$1900(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 266
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$UnlockPatternListener;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;

    #calls: Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->setKeypadAsNum()V
    invoke-static {v3}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->access$2100(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;)V

    goto :goto_0

    .line 268
    :cond_2
    const-string v3, "right"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 269
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$UnlockPatternListener;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;

    const v4, 0x1020335

    #calls: Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->updateInputState(I)V
    invoke-static {v3, v4}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->access$1200(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;I)V

    goto :goto_0
.end method

.method public onPatternStart()V
    .locals 0

    .prologue
    .line 221
    return-void
.end method
