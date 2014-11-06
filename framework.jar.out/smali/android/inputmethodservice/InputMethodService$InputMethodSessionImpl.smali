.class public Landroid/inputmethodservice/InputMethodService$InputMethodSessionImpl;
.super Landroid/inputmethodservice/AbstractInputMethodService$AbstractInputMethodSessionImpl;
.source "InputMethodService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/inputmethodservice/InputMethodService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "InputMethodSessionImpl"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/inputmethodservice/InputMethodService;


# direct methods
.method public constructor <init>(Landroid/inputmethodservice/InputMethodService;)V
    .locals 0
    .parameter

    .prologue
    .line 464
    iput-object p1, p0, Landroid/inputmethodservice/InputMethodService$InputMethodSessionImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-direct {p0, p1}, Landroid/inputmethodservice/AbstractInputMethodService$AbstractInputMethodSessionImpl;-><init>(Landroid/inputmethodservice/AbstractInputMethodService;)V

    return-void
.end method


# virtual methods
.method public appPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 8
    .parameter "action"
    .parameter "data"

    .prologue
    .line 534
    invoke-virtual {p0}, Landroid/inputmethodservice/AbstractInputMethodService$AbstractInputMethodSessionImpl;->isEnabled()Z

    move-result v5

    if-nez v5, :cond_1

    .line 561
    :cond_0
    :goto_0
    return-void

    .line 537
    :cond_1
    const-string v5, "com.meizu.input.attrsChanged"

    invoke-static {v5, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 538
    iget-object v5, p0, Landroid/inputmethodservice/InputMethodService$InputMethodSessionImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v5}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v2

    .line 539
    .local v2, attrs:Landroid/view/inputmethod/EditorInfo;
    if-eqz v2, :cond_0

    if-eqz p2, :cond_0

    iget-object v5, p0, Landroid/inputmethodservice/InputMethodService$InputMethodSessionImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    iget-boolean v5, v5, Landroid/inputmethodservice/InputMethodService;->mInputStarted:Z

    if-eqz v5, :cond_0

    .line 540
    const-string v5, "imeOptions"

    iget v6, v2, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    invoke-virtual {p2, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 541
    .local v4, imeOptions:I
    const-string v5, "actionId"

    iget v6, v2, Landroid/view/inputmethod/EditorInfo;->actionId:I

    invoke-virtual {p2, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 542
    .local v0, actionId:I
    const-string v5, "actionLabel"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 543
    .local v1, actionLabel:Ljava/lang/CharSequence;
    iget v5, v2, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    if-ne v4, v5, :cond_2

    iget v5, v2, Landroid/view/inputmethod/EditorInfo;->actionId:I

    if-ne v5, v0, :cond_2

    iget-object v5, v2, Landroid/view/inputmethod/EditorInfo;->actionLabel:Ljava/lang/CharSequence;

    invoke-static {v1, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 547
    :cond_2
    iput v4, v2, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 548
    iput v0, v2, Landroid/view/inputmethod/EditorInfo;->actionId:I

    .line 549
    iput-object v1, v2, Landroid/view/inputmethod/EditorInfo;->actionLabel:Ljava/lang/CharSequence;

    .line 550
    const-string v5, "initialSelStart"

    iget v6, v2, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    invoke-virtual {p2, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, v2, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    .line 551
    const-string v5, "initialSelEnd"

    iget v6, v2, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    invoke-virtual {p2, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, v2, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    .line 552
    iget-object v5, p0, Landroid/inputmethodservice/InputMethodService$InputMethodSessionImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    iget-object v6, p0, Landroid/inputmethodservice/InputMethodService$InputMethodSessionImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v6}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v2, v7}, Landroid/inputmethodservice/InputMethodService;->doStartInput(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Z)V

    goto :goto_0

    .line 555
    .end local v0           #actionId:I
    .end local v1           #actionLabel:Ljava/lang/CharSequence;
    .end local v2           #attrs:Landroid/view/inputmethod/EditorInfo;
    .end local v4           #imeOptions:I
    :cond_3
    iget-object v5, p0, Landroid/inputmethodservice/InputMethodService$InputMethodSessionImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    #getter for: Landroid/inputmethodservice/InputMethodService;->mCoverView:Lcom/meizu/widget/inputmethod/CoverView;
    invoke-static {v5}, Landroid/inputmethodservice/InputMethodService;->access$400(Landroid/inputmethodservice/InputMethodService;)Lcom/meizu/widget/inputmethod/CoverView;

    move-result-object v3

    .line 556
    .local v3, cover:Lcom/meizu/widget/inputmethod/CoverView;
    if-eqz v3, :cond_4

    .line 557
    invoke-virtual {v3, p1, p2}, Lcom/meizu/widget/inputmethod/CoverView;->onAppPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 559
    :cond_4
    iget-object v5, p0, Landroid/inputmethodservice/InputMethodService$InputMethodSessionImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v5, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onAppPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public displayCompletions([Landroid/view/inputmethod/CompletionInfo;)V
    .locals 1
    .parameter "completions"

    .prologue
    .line 478
    invoke-virtual {p0}, Landroid/inputmethodservice/AbstractInputMethodService$AbstractInputMethodSessionImpl;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 483
    :goto_0
    return-void

    .line 481
    :cond_0
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodSessionImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    iput-object p1, v0, Landroid/inputmethodservice/InputMethodService;->mCurCompletions:[Landroid/view/inputmethod/CompletionInfo;

    .line 482
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodSessionImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v0, p1}, Landroid/inputmethodservice/InputMethodService;->onDisplayCompletions([Landroid/view/inputmethod/CompletionInfo;)V

    goto :goto_0
.end method

.method public finishInput()V
    .locals 1

    .prologue
    .line 466
    invoke-virtual {p0}, Landroid/inputmethodservice/AbstractInputMethodService$AbstractInputMethodSessionImpl;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 471
    :goto_0
    return-void

    .line 470
    :cond_0
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodSessionImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v0}, Landroid/inputmethodservice/InputMethodService;->doFinishInput()V

    goto :goto_0
.end method

.method public toggleSoftInput(II)V
    .locals 1
    .parameter "showFlags"
    .parameter "hideFlags"

    .prologue
    .line 564
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodSessionImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    #calls: Landroid/inputmethodservice/InputMethodService;->onToggleSoftInput(II)V
    invoke-static {v0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->access$500(Landroid/inputmethodservice/InputMethodService;II)V

    .line 565
    return-void
.end method

.method public updateCursor(Landroid/graphics/Rect;)V
    .locals 1
    .parameter "newCursor"

    .prologue
    .line 523
    invoke-virtual {p0}, Landroid/inputmethodservice/AbstractInputMethodService$AbstractInputMethodSessionImpl;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 527
    :goto_0
    return-void

    .line 526
    :cond_0
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodSessionImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v0, p1}, Landroid/inputmethodservice/InputMethodService;->onUpdateCursor(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public updateExtractedText(ILandroid/view/inputmethod/ExtractedText;)V
    .locals 1
    .parameter "token"
    .parameter "text"

    .prologue
    .line 490
    invoke-virtual {p0}, Landroid/inputmethodservice/AbstractInputMethodService$AbstractInputMethodSessionImpl;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 494
    :goto_0
    return-void

    .line 493
    :cond_0
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodSessionImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onUpdateExtractedText(ILandroid/view/inputmethod/ExtractedText;)V

    goto :goto_0
.end method

.method public updateSelection(IIIIII)V
    .locals 7
    .parameter "oldSelStart"
    .parameter "oldSelEnd"
    .parameter "newSelStart"
    .parameter "newSelEnd"
    .parameter "candidatesStart"
    .parameter "candidatesEnd"

    .prologue
    .line 503
    invoke-virtual {p0}, Landroid/inputmethodservice/AbstractInputMethodService$AbstractInputMethodSessionImpl;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 508
    :goto_0
    return-void

    .line 506
    :cond_0
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodSessionImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/inputmethodservice/InputMethodService;->onUpdateSelection(IIIIII)V

    goto :goto_0
.end method

.method public viewClicked(Z)V
    .locals 1
    .parameter "focusChanged"

    .prologue
    .line 512
    invoke-virtual {p0}, Landroid/inputmethodservice/AbstractInputMethodService$AbstractInputMethodSessionImpl;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 516
    :goto_0
    return-void

    .line 515
    :cond_0
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodSessionImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v0, p1}, Landroid/inputmethodservice/InputMethodService;->onViewClicked(Z)V

    goto :goto_0
.end method
