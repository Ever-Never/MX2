.class Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView$9;
.super Landroid/os/CountDownTimer;
.source "KeyguardFindPhoneView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->handleEdittextLockout(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;


# direct methods
.method constructor <init>(Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;JJ)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1077
    iput-object p1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView$9;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1087
    const-string v1, "FindPhone"

    const-string v2, "handleEdittextLockout(),onFinish()"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1088
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView$9;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;

    #setter for: Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mCountdown:Z
    invoke-static {v1, v3}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->access$3402(Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;Z)Z

    .line 1089
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView$9;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mInputEdit:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->access$200(Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;)Landroid/widget/EditText;

    move-result-object v1

    const v2, 0x10405f4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setHint(I)V

    .line 1090
    const/4 v1, 0x1

    new-array v0, v1, [Landroid/text/InputFilter;

    new-instance v1, Landroid/text/InputFilter$LengthFilter;

    const v2, 0x7fffffff

    invoke-direct {v1, v2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v1, v0, v3

    .line 1091
    .local v0, filters:[Landroid/text/InputFilter;
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView$9;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mInputEdit:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->access$200(Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 1092
    return-void
.end method

.method public onTick(J)V
    .locals 6
    .parameter "millisUntilFinished"

    .prologue
    .line 1080
    const-string v0, "FindPhone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleEdittextLockout(),onTick(), "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1081
    const-wide/16 v0, 0x1

    add-long/2addr p1, v0

    .line 1082
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView$9;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;

    const-wide/16 v1, 0x3e8

    div-long v1, p1, v1

    long-to-int v1, v1

    div-int/lit8 v1, v1, 0x3c

    #setter for: Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->RemainMinutes:I
    invoke-static {v0, v1}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->access$3302(Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;I)I

    .line 1083
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView$9;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mInputEdit:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->access$200(Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView$9;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10405f3

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView$9;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->RemainMinutes:I
    invoke-static {v5}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->access$3300(Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 1084
    return-void
.end method
