.class Lcom/meizu/widget/SystemLockView$UnlockPatternListener;
.super Ljava/lang/Object;
.source "SystemLockView.java"

# interfaces
.implements Lcom/meizu/widget/LockDigitView$OnPatternListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/widget/SystemLockView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UnlockPatternListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/widget/SystemLockView;


# direct methods
.method private constructor <init>(Lcom/meizu/widget/SystemLockView;)V
    .locals 0
    .parameter

    .prologue
    .line 384
    iput-object p1, p0, Lcom/meizu/widget/SystemLockView$UnlockPatternListener;->this$0:Lcom/meizu/widget/SystemLockView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/meizu/widget/SystemLockView;Lcom/meizu/widget/SystemLockView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 384
    invoke-direct {p0, p1}, Lcom/meizu/widget/SystemLockView$UnlockPatternListener;-><init>(Lcom/meizu/widget/SystemLockView;)V

    return-void
.end method


# virtual methods
.method public onPatternCellAdded(Ljava/util/List;)V
    .locals 4
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
    .line 396
    .local p1, pattern:Ljava/util/List;,"Ljava/util/List<Lcom/meizu/widget/LockDigitView$Cell;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 397
    .local v2, size:I
    add-int/lit8 v3, v2, -0x1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/widget/LockDigitView$Cell;

    .line 398
    .local v0, newCell:Lcom/meizu/widget/LockDigitView$Cell;
    iget-object v3, p0, Lcom/meizu/widget/SystemLockView$UnlockPatternListener;->this$0:Lcom/meizu/widget/SystemLockView;

    #calls: Lcom/meizu/widget/SystemLockView;->converNum(Lcom/meizu/widget/LockDigitView$Cell;)Ljava/lang/String;
    invoke-static {v3, v0}, Lcom/meizu/widget/SystemLockView;->access$100(Lcom/meizu/widget/SystemLockView;Lcom/meizu/widget/LockDigitView$Cell;)Ljava/lang/String;

    move-result-object v1

    .line 399
    .local v1, newNum:Ljava/lang/String;
    const-string v3, "left"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 400
    iget-object v3, p0, Lcom/meizu/widget/SystemLockView$UnlockPatternListener;->this$0:Lcom/meizu/widget/SystemLockView;

    #calls: Lcom/meizu/widget/SystemLockView;->notifyKeyLeftButtonClick()V
    invoke-static {v3}, Lcom/meizu/widget/SystemLockView;->access$200(Lcom/meizu/widget/SystemLockView;)V

    .line 406
    :goto_0
    return-void

    .line 401
    :cond_0
    const-string v3, "right"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 402
    iget-object v3, p0, Lcom/meizu/widget/SystemLockView$UnlockPatternListener;->this$0:Lcom/meizu/widget/SystemLockView;

    #calls: Lcom/meizu/widget/SystemLockView;->notifyKeyRightButtonClick()V
    invoke-static {v3}, Lcom/meizu/widget/SystemLockView;->access$300(Lcom/meizu/widget/SystemLockView;)V

    goto :goto_0

    .line 404
    :cond_1
    iget-object v3, p0, Lcom/meizu/widget/SystemLockView$UnlockPatternListener;->this$0:Lcom/meizu/widget/SystemLockView;

    #calls: Lcom/meizu/widget/SystemLockView;->addCell(Ljava/lang/String;)V
    invoke-static {v3, v1}, Lcom/meizu/widget/SystemLockView;->access$400(Lcom/meizu/widget/SystemLockView;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onPatternCleared()V
    .locals 0

    .prologue
    .line 392
    return-void
.end method

.method public onPatternDetected(Ljava/util/List;)V
    .locals 2
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
    .line 411
    .local p1, pattern:Ljava/util/List;,"Ljava/util/List<Lcom/meizu/widget/LockDigitView$Cell;>;"
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView$UnlockPatternListener;->this$0:Lcom/meizu/widget/SystemLockView;

    #getter for: Lcom/meizu/widget/SystemLockView;->mCellCount:I
    invoke-static {v0}, Lcom/meizu/widget/SystemLockView;->access$500(Lcom/meizu/widget/SystemLockView;)I

    move-result v0

    iget-object v1, p0, Lcom/meizu/widget/SystemLockView$UnlockPatternListener;->this$0:Lcom/meizu/widget/SystemLockView;

    #getter for: Lcom/meizu/widget/SystemLockView;->mMaxCellLength:I
    invoke-static {v1}, Lcom/meizu/widget/SystemLockView;->access$600(Lcom/meizu/widget/SystemLockView;)I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 412
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView$UnlockPatternListener;->this$0:Lcom/meizu/widget/SystemLockView;

    #calls: Lcom/meizu/widget/SystemLockView;->notifyCellFhish()V
    invoke-static {v0}, Lcom/meizu/widget/SystemLockView;->access$700(Lcom/meizu/widget/SystemLockView;)V

    .line 414
    :cond_0
    return-void
.end method

.method public onPatternStart()V
    .locals 0

    .prologue
    .line 388
    return-void
.end method
