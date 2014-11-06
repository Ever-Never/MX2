.class Lcom/meizu/widget/RecipientEdit$2;
.super Ljava/lang/Object;
.source "RecipientEdit.java"

# interfaces
.implements Landroid/widget/EditText$OnKeyPreImeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/widget/RecipientEdit;->initRecipientEdit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/widget/RecipientEdit;


# direct methods
.method constructor <init>(Lcom/meizu/widget/RecipientEdit;)V
    .locals 0
    .parameter

    .prologue
    .line 324
    iput-object p1, p0, Lcom/meizu/widget/RecipientEdit$2;->this$0:Lcom/meizu/widget/RecipientEdit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyPreIme(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "view"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 326
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit$2;->this$0:Lcom/meizu/widget/RecipientEdit;

    #getter for: Lcom/meizu/widget/RecipientEdit;->mOnKeyPreImeListener:Landroid/widget/EditText$OnKeyPreImeListener;
    invoke-static {v0}, Lcom/meizu/widget/RecipientEdit;->access$100(Lcom/meizu/widget/RecipientEdit;)Landroid/widget/EditText$OnKeyPreImeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 327
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit$2;->this$0:Lcom/meizu/widget/RecipientEdit;

    #getter for: Lcom/meizu/widget/RecipientEdit;->mOnKeyPreImeListener:Landroid/widget/EditText$OnKeyPreImeListener;
    invoke-static {v0}, Lcom/meizu/widget/RecipientEdit;->access$100(Lcom/meizu/widget/RecipientEdit;)Landroid/widget/EditText$OnKeyPreImeListener;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit$2;->this$0:Lcom/meizu/widget/RecipientEdit;

    invoke-interface {v0, v1, p2, p3}, Landroid/widget/EditText$OnKeyPreImeListener;->onKeyPreIme(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 329
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
