.class Lcom/meizu/widget/RecipientEdit$4;
.super Ljava/lang/Object;
.source "RecipientEdit.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/widget/RecipientEdit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private changeCount:I

.field final synthetic this$0:Lcom/meizu/widget/RecipientEdit;


# direct methods
.method constructor <init>(Lcom/meizu/widget/RecipientEdit;)V
    .locals 0
    .parameter

    .prologue
    .line 989
    iput-object p1, p0, Lcom/meizu/widget/RecipientEdit$4;->this$0:Lcom/meizu/widget/RecipientEdit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 11
    .parameter "s"

    .prologue
    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 1037
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v6

    const-class v7, Landroid/text/style/VoiceAnimSpan;

    invoke-interface {p1, v10, v6, v7}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/text/style/VoiceAnimSpan;

    .line 1038
    .local v5, spans:[Landroid/text/style/VoiceAnimSpan;
    array-length v6, v5

    if-lez v6, :cond_1

    .line 1094
    :cond_0
    :goto_0
    return-void

    .line 1042
    :cond_1
    iget-object v6, p0, Lcom/meizu/widget/RecipientEdit$4;->this$0:Lcom/meizu/widget/RecipientEdit;

    #calls: Lcom/meizu/widget/RecipientEdit;->isDefaultInputMethod()Z
    invoke-static {v6}, Lcom/meizu/widget/RecipientEdit;->access$1700(Lcom/meizu/widget/RecipientEdit;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1043
    iget-object v6, p0, Lcom/meizu/widget/RecipientEdit$4;->this$0:Lcom/meizu/widget/RecipientEdit;

    #getter for: Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;
    invoke-static {v6}, Lcom/meizu/widget/RecipientEdit;->access$000(Lcom/meizu/widget/RecipientEdit;)Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->getImeOptions()I

    move-result v6

    and-int/lit16 v1, v6, -0x100

    .line 1044
    .local v1, imeOptions:I
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/meizu/widget/RecipientEdit$4;->this$0:Lcom/meizu/widget/RecipientEdit;

    #getter for: Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;
    invoke-static {v6}, Lcom/meizu/widget/RecipientEdit;->access$000(Lcom/meizu/widget/RecipientEdit;)Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->getImeOptions()I

    move-result v6

    and-int/lit16 v6, v6, 0xff

    if-ne v6, v9, :cond_6

    .line 1046
    iget-object v6, p0, Lcom/meizu/widget/RecipientEdit$4;->this$0:Lcom/meizu/widget/RecipientEdit;

    const/16 v7, 0x82

    invoke-virtual {v6, v7}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 1047
    iget-object v6, p0, Lcom/meizu/widget/RecipientEdit$4;->this$0:Lcom/meizu/widget/RecipientEdit;

    #getter for: Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;
    invoke-static {v6}, Lcom/meizu/widget/RecipientEdit;->access$000(Lcom/meizu/widget/RecipientEdit;)Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    move-result-object v6

    or-int/lit8 v7, v1, 0x5

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 1048
    iget-object v6, p0, Lcom/meizu/widget/RecipientEdit$4;->this$0:Lcom/meizu/widget/RecipientEdit;

    #getter for: Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;
    invoke-static {v6}, Lcom/meizu/widget/RecipientEdit;->access$000(Lcom/meizu/widget/RecipientEdit;)Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    move-result-object v6

    const/4 v7, 0x5

    invoke-virtual {v6, v8, v7}, Landroid/widget/TextView;->setImeActionLabel(Ljava/lang/CharSequence;I)V

    .line 1054
    :goto_1
    iget-object v6, p0, Lcom/meizu/widget/RecipientEdit$4;->this$0:Lcom/meizu/widget/RecipientEdit;

    #getter for: Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;
    invoke-static {v6}, Lcom/meizu/widget/RecipientEdit;->access$000(Lcom/meizu/widget/RecipientEdit;)Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    move-result-object v6

    invoke-static {v6}, Lcom/meizu/widget/EditTextEx;->notifyImeActionChanged(Landroid/widget/EditText;)V

    .line 1065
    .end local v1           #imeOptions:I
    :cond_2
    :goto_2
    iget-object v6, p0, Lcom/meizu/widget/RecipientEdit$4;->this$0:Lcom/meizu/widget/RecipientEdit;

    #getter for: Lcom/meizu/widget/RecipientEdit;->mOnRecipientChangedListener:Lcom/meizu/widget/RecipientEdit$OnRecipientChangedListener;
    invoke-static {v6}, Lcom/meizu/widget/RecipientEdit;->access$1800(Lcom/meizu/widget/RecipientEdit;)Lcom/meizu/widget/RecipientEdit$OnRecipientChangedListener;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 1066
    iget-object v6, p0, Lcom/meizu/widget/RecipientEdit$4;->this$0:Lcom/meizu/widget/RecipientEdit;

    #getter for: Lcom/meizu/widget/RecipientEdit;->mOnRecipientChangedListener:Lcom/meizu/widget/RecipientEdit$OnRecipientChangedListener;
    invoke-static {v6}, Lcom/meizu/widget/RecipientEdit;->access$1800(Lcom/meizu/widget/RecipientEdit;)Lcom/meizu/widget/RecipientEdit$OnRecipientChangedListener;

    move-result-object v6

    invoke-interface {v6}, Lcom/meizu/widget/RecipientEdit$OnRecipientChangedListener;->OnRecipientChanged()V

    .line 1070
    :cond_3
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v4

    .line 1071
    .local v4, sLen:I
    iget v6, p0, Lcom/meizu/widget/RecipientEdit$4;->changeCount:I

    if-ne v6, v9, :cond_8

    add-int/lit8 v6, v4, -0x1

    invoke-interface {p1, v6}, Landroid/text/Editable;->charAt(I)C

    move-result v6

    const/16 v7, 0x20

    if-ne v6, v7, :cond_8

    if-le v4, v9, :cond_8

    .line 1072
    add-int/lit8 v6, v4, -0x2

    invoke-interface {p1, v6}, Landroid/text/Editable;->charAt(I)C

    move-result v0

    .line 1073
    .local v0, c:C
    const/16 v6, 0x2c

    if-eq v0, v6, :cond_4

    const/16 v6, 0x3b

    if-ne v0, v6, :cond_7

    .line 1074
    :cond_4
    iget-object v6, p0, Lcom/meizu/widget/RecipientEdit$4;->this$0:Lcom/meizu/widget/RecipientEdit;

    add-int/lit8 v7, v4, -0x2

    invoke-interface {p1, v10, v7}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/meizu/widget/RecipientEdit;->addRecipient(Ljava/lang/CharSequence;)Z

    .line 1075
    iget-object v6, p0, Lcom/meizu/widget/RecipientEdit$4;->this$0:Lcom/meizu/widget/RecipientEdit;

    #getter for: Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;
    invoke-static {v6}, Lcom/meizu/widget/RecipientEdit;->access$000(Lcom/meizu/widget/RecipientEdit;)Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1076
    iget-object v6, p0, Lcom/meizu/widget/RecipientEdit$4;->this$0:Lcom/meizu/widget/RecipientEdit;

    iget-object v7, p0, Lcom/meizu/widget/RecipientEdit$4;->this$0:Lcom/meizu/widget/RecipientEdit;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result v7

    #calls: Lcom/meizu/widget/RecipientEdit;->refreshLayout(Z)V
    invoke-static {v6, v7}, Lcom/meizu/widget/RecipientEdit;->access$1900(Lcom/meizu/widget/RecipientEdit;Z)V

    goto/16 :goto_0

    .line 1050
    .end local v0           #c:C
    .end local v4           #sLen:I
    .restart local v1       #imeOptions:I
    :cond_5
    iget-object v6, p0, Lcom/meizu/widget/RecipientEdit$4;->this$0:Lcom/meizu/widget/RecipientEdit;

    #getter for: Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;
    invoke-static {v6}, Lcom/meizu/widget/RecipientEdit;->access$000(Lcom/meizu/widget/RecipientEdit;)Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    move-result-object v6

    or-int/lit8 v7, v1, 0x6

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 1051
    iget-object v6, p0, Lcom/meizu/widget/RecipientEdit$4;->this$0:Lcom/meizu/widget/RecipientEdit;

    #getter for: Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;
    invoke-static {v6}, Lcom/meizu/widget/RecipientEdit;->access$000(Lcom/meizu/widget/RecipientEdit;)Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    move-result-object v6

    const/4 v7, 0x6

    invoke-virtual {v6, v8, v7}, Landroid/widget/TextView;->setImeActionLabel(Ljava/lang/CharSequence;I)V

    goto :goto_1

    .line 1055
    :cond_6
    iget-object v6, p0, Lcom/meizu/widget/RecipientEdit$4;->this$0:Lcom/meizu/widget/RecipientEdit;

    #getter for: Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;
    invoke-static {v6}, Lcom/meizu/widget/RecipientEdit;->access$000(Lcom/meizu/widget/RecipientEdit;)Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->getImeOptions()I

    move-result v6

    and-int/lit16 v6, v6, 0xff

    if-eq v6, v9, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 1057
    iget-object v6, p0, Lcom/meizu/widget/RecipientEdit$4;->this$0:Lcom/meizu/widget/RecipientEdit;

    #getter for: Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;
    invoke-static {v6}, Lcom/meizu/widget/RecipientEdit;->access$000(Lcom/meizu/widget/RecipientEdit;)Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    move-result-object v6

    or-int/lit8 v7, v1, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 1058
    iget-object v6, p0, Lcom/meizu/widget/RecipientEdit$4;->this$0:Lcom/meizu/widget/RecipientEdit;

    #getter for: Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;
    invoke-static {v6}, Lcom/meizu/widget/RecipientEdit;->access$000(Lcom/meizu/widget/RecipientEdit;)Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    move-result-object v6

    iget-object v7, p0, Lcom/meizu/widget/RecipientEdit$4;->this$0:Lcom/meizu/widget/RecipientEdit;

    invoke-virtual {v7}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x10405ba

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v9}, Landroid/widget/TextView;->setImeActionLabel(Ljava/lang/CharSequence;I)V

    .line 1061
    iget-object v6, p0, Lcom/meizu/widget/RecipientEdit$4;->this$0:Lcom/meizu/widget/RecipientEdit;

    #getter for: Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;
    invoke-static {v6}, Lcom/meizu/widget/RecipientEdit;->access$000(Lcom/meizu/widget/RecipientEdit;)Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    move-result-object v6

    invoke-static {v6}, Lcom/meizu/widget/EditTextEx;->notifyImeActionChanged(Landroid/widget/EditText;)V

    goto/16 :goto_2

    .line 1079
    .end local v1           #imeOptions:I
    .restart local v0       #c:C
    .restart local v4       #sLen:I
    :cond_7
    add-int/lit8 v6, v4, -0x1

    invoke-interface {p1, v10, v6}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 1080
    .local v3, number:Ljava/lang/String;
    invoke-static {v3}, Lcom/meizu/widget/RecipientEdit;->isEmailAddress(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1081
    iget-object v6, p0, Lcom/meizu/widget/RecipientEdit$4;->this$0:Lcom/meizu/widget/RecipientEdit;

    invoke-virtual {v6, v3}, Lcom/meizu/widget/RecipientEdit;->addRecipient(Ljava/lang/CharSequence;)Z

    .line 1082
    iget-object v6, p0, Lcom/meizu/widget/RecipientEdit$4;->this$0:Lcom/meizu/widget/RecipientEdit;

    #getter for: Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;
    invoke-static {v6}, Lcom/meizu/widget/RecipientEdit;->access$000(Lcom/meizu/widget/RecipientEdit;)Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1083
    iget-object v6, p0, Lcom/meizu/widget/RecipientEdit$4;->this$0:Lcom/meizu/widget/RecipientEdit;

    iget-object v7, p0, Lcom/meizu/widget/RecipientEdit$4;->this$0:Lcom/meizu/widget/RecipientEdit;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result v7

    #calls: Lcom/meizu/widget/RecipientEdit;->refreshLayout(Z)V
    invoke-static {v6, v7}, Lcom/meizu/widget/RecipientEdit;->access$1900(Lcom/meizu/widget/RecipientEdit;Z)V

    goto/16 :goto_0

    .line 1086
    .end local v0           #c:C
    .end local v3           #number:Ljava/lang/String;
    :cond_8
    iget v6, p0, Lcom/meizu/widget/RecipientEdit$4;->changeCount:I

    if-le v6, v9, :cond_0

    .line 1087
    iget-object v6, p0, Lcom/meizu/widget/RecipientEdit$4;->this$0:Lcom/meizu/widget/RecipientEdit;

    #calls: Lcom/meizu/widget/RecipientEdit;->splitRecipient(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    invoke-static {v6, p1}, Lcom/meizu/widget/RecipientEdit;->access$2000(Lcom/meizu/widget/RecipientEdit;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1088
    .local v2, newText:Ljava/lang/CharSequence;
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1089
    iget-object v6, p0, Lcom/meizu/widget/RecipientEdit$4;->this$0:Lcom/meizu/widget/RecipientEdit;

    #getter for: Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;
    invoke-static {v6}, Lcom/meizu/widget/RecipientEdit;->access$000(Lcom/meizu/widget/RecipientEdit;)Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1090
    iget-object v6, p0, Lcom/meizu/widget/RecipientEdit$4;->this$0:Lcom/meizu/widget/RecipientEdit;

    #getter for: Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;
    invoke-static {v6}, Lcom/meizu/widget/RecipientEdit;->access$000(Lcom/meizu/widget/RecipientEdit;)Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    move-result-object v6

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setSelection(I)V

    .line 1091
    iget-object v6, p0, Lcom/meizu/widget/RecipientEdit$4;->this$0:Lcom/meizu/widget/RecipientEdit;

    iget-object v7, p0, Lcom/meizu/widget/RecipientEdit$4;->this$0:Lcom/meizu/widget/RecipientEdit;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result v7

    #calls: Lcom/meizu/widget/RecipientEdit;->refreshLayout(Z)V
    invoke-static {v6, v7}, Lcom/meizu/widget/RecipientEdit;->access$1900(Lcom/meizu/widget/RecipientEdit;Z)V

    goto/16 :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    const/4 v3, 0x1

    .line 1011
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1012
    .local v0, str:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit$4;->this$0:Lcom/meizu/widget/RecipientEdit;

    #getter for: Lcom/meizu/widget/RecipientEdit;->mRecipientDataList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/meizu/widget/RecipientEdit;->access$900(Lcom/meizu/widget/RecipientEdit;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1013
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit$4;->this$0:Lcom/meizu/widget/RecipientEdit;

    #getter for: Lcom/meizu/widget/RecipientEdit;->mRecipientHandler:Lcom/meizu/widget/RecipientEdit$RecipientHandler;
    invoke-static {v1}, Lcom/meizu/widget/RecipientEdit;->access$1000(Lcom/meizu/widget/RecipientEdit;)Lcom/meizu/widget/RecipientEdit$RecipientHandler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1014
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit$4;->this$0:Lcom/meizu/widget/RecipientEdit;

    #getter for: Lcom/meizu/widget/RecipientEdit;->mRecipientHandler:Lcom/meizu/widget/RecipientEdit$RecipientHandler;
    invoke-static {v1}, Lcom/meizu/widget/RecipientEdit;->access$1000(Lcom/meizu/widget/RecipientEdit;)Lcom/meizu/widget/RecipientEdit$RecipientHandler;

    move-result-object v1

    invoke-virtual {v1, v3, v0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 1016
    :cond_0
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit$4;->this$0:Lcom/meizu/widget/RecipientEdit;

    #getter for: Lcom/meizu/widget/RecipientEdit;->mRecipientState:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/meizu/widget/RecipientEdit;->access$1100(Lcom/meizu/widget/RecipientEdit;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1017
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit$4;->this$0:Lcom/meizu/widget/RecipientEdit;

    #getter for: Lcom/meizu/widget/RecipientEdit;->mSipVersion:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/meizu/widget/RecipientEdit;->access$1200(Lcom/meizu/widget/RecipientEdit;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1018
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit$4;->this$0:Lcom/meizu/widget/RecipientEdit;

    #getter for: Lcom/meizu/widget/RecipientEdit;->mCheckingRecipient:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/meizu/widget/RecipientEdit;->access$700(Lcom/meizu/widget/RecipientEdit;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1019
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit$4;->this$0:Lcom/meizu/widget/RecipientEdit;

    #getter for: Lcom/meizu/widget/RecipientEdit;->mRecipientNotSip:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/meizu/widget/RecipientEdit;->access$1300(Lcom/meizu/widget/RecipientEdit;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1021
    if-nez p2, :cond_1

    if-nez p4, :cond_1

    .line 1023
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit$4;->this$0:Lcom/meizu/widget/RecipientEdit;

    #calls: Lcom/meizu/widget/RecipientEdit;->refreshSipDestState()V
    invoke-static {v1}, Lcom/meizu/widget/RecipientEdit;->access$1400(Lcom/meizu/widget/RecipientEdit;)V

    .line 1024
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit$4;->this$0:Lcom/meizu/widget/RecipientEdit;

    #calls: Lcom/meizu/widget/RecipientEdit;->endCheck()V
    invoke-static {v1}, Lcom/meizu/widget/RecipientEdit;->access$1500(Lcom/meizu/widget/RecipientEdit;)V

    .line 1028
    :cond_1
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit$4;->this$0:Lcom/meizu/widget/RecipientEdit;

    #getter for: Lcom/meizu/widget/RecipientEdit;->mViewSelected:Landroid/view/View;
    invoke-static {v1}, Lcom/meizu/widget/RecipientEdit;->access$1600(Lcom/meizu/widget/RecipientEdit;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1029
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit$4;->this$0:Lcom/meizu/widget/RecipientEdit;

    #getter for: Lcom/meizu/widget/RecipientEdit;->mViewSelected:Landroid/view/View;
    invoke-static {v1}, Lcom/meizu/widget/RecipientEdit;->access$1600(Lcom/meizu/widget/RecipientEdit;)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setSelected(Z)V

    .line 1030
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit$4;->this$0:Lcom/meizu/widget/RecipientEdit;

    const/4 v2, 0x0

    #setter for: Lcom/meizu/widget/RecipientEdit;->mViewSelected:Landroid/view/View;
    invoke-static {v1, v2}, Lcom/meizu/widget/RecipientEdit;->access$1602(Lcom/meizu/widget/RecipientEdit;Landroid/view/View;)Landroid/view/View;

    .line 1031
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit$4;->this$0:Lcom/meizu/widget/RecipientEdit;

    #getter for: Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;
    invoke-static {v1}, Lcom/meizu/widget/RecipientEdit;->access$000(Lcom/meizu/widget/RecipientEdit;)Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setCursorVisible(Z)V

    .line 1033
    :cond_2
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 994
    iput p4, p0, Lcom/meizu/widget/RecipientEdit$4;->changeCount:I

    .line 996
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit$4;->this$0:Lcom/meizu/widget/RecipientEdit;

    #getter for: Lcom/meizu/widget/RecipientEdit;->mOnTextChangedListener:Lcom/meizu/widget/RecipientEdit$OnTextChangedListener;
    invoke-static {v0}, Lcom/meizu/widget/RecipientEdit;->access$500(Lcom/meizu/widget/RecipientEdit;)Lcom/meizu/widget/RecipientEdit$OnTextChangedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 997
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit$4;->this$0:Lcom/meizu/widget/RecipientEdit;

    #getter for: Lcom/meizu/widget/RecipientEdit;->mOnTextChangedListener:Lcom/meizu/widget/RecipientEdit$OnTextChangedListener;
    invoke-static {v0}, Lcom/meizu/widget/RecipientEdit;->access$500(Lcom/meizu/widget/RecipientEdit;)Lcom/meizu/widget/RecipientEdit$OnTextChangedListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/meizu/widget/RecipientEdit$OnTextChangedListener;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 1000
    :cond_0
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit$4;->this$0:Lcom/meizu/widget/RecipientEdit;

    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit$4;->this$0:Lcom/meizu/widget/RecipientEdit;

    #getter for: Lcom/meizu/widget/RecipientEdit;->mRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/meizu/widget/RecipientEdit;->access$600(Lcom/meizu/widget/RecipientEdit;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1001
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit$4;->this$0:Lcom/meizu/widget/RecipientEdit;

    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit$4;->this$0:Lcom/meizu/widget/RecipientEdit;

    #getter for: Lcom/meizu/widget/RecipientEdit;->mRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/meizu/widget/RecipientEdit;->access$600(Lcom/meizu/widget/RecipientEdit;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1004
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit$4;->this$0:Lcom/meizu/widget/RecipientEdit;

    #getter for: Lcom/meizu/widget/RecipientEdit;->mCheckingRecipient:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/meizu/widget/RecipientEdit;->access$700(Lcom/meizu/widget/RecipientEdit;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit$4;->this$0:Lcom/meizu/widget/RecipientEdit;

    #getter for: Lcom/meizu/widget/RecipientEdit;->mOnSipStateChangedListener:Lcom/meizu/widget/RecipientStateInfo$OnSipStateChangedListener;
    invoke-static {v0}, Lcom/meizu/widget/RecipientEdit;->access$800(Lcom/meizu/widget/RecipientEdit;)Lcom/meizu/widget/RecipientStateInfo$OnSipStateChangedListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1006
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit$4;->this$0:Lcom/meizu/widget/RecipientEdit;

    #getter for: Lcom/meizu/widget/RecipientEdit;->mOnSipStateChangedListener:Lcom/meizu/widget/RecipientStateInfo$OnSipStateChangedListener;
    invoke-static {v0}, Lcom/meizu/widget/RecipientEdit;->access$800(Lcom/meizu/widget/RecipientEdit;)Lcom/meizu/widget/RecipientStateInfo$OnSipStateChangedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit$4;->this$0:Lcom/meizu/widget/RecipientEdit;

    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit$4;->this$0:Lcom/meizu/widget/RecipientEdit;

    invoke-virtual {v2}, Lcom/meizu/widget/RecipientEdit;->getSipState()Lcom/meizu/widget/RecipientStateInfo$SipState;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/meizu/widget/RecipientStateInfo$OnSipStateChangedListener;->onSipStateChanged(Landroid/view/View;Lcom/meizu/widget/RecipientStateInfo$SipState;)V

    .line 1008
    :cond_1
    return-void
.end method
