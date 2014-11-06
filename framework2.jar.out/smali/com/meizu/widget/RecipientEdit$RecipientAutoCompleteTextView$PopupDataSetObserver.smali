.class Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView$PopupDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "RecipientEdit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PopupDataSetObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;


# direct methods
.method private constructor <init>(Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;)V
    .locals 0
    .parameter

    .prologue
    .line 2985
    iput-object p1, p0, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView$PopupDataSetObserver;->this$0:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;Lcom/meizu/widget/RecipientEdit$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2985
    invoke-direct {p0, p1}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView$PopupDataSetObserver;-><init>(Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 2988
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView$PopupDataSetObserver;->this$0:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v0}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->changePopupBackground()V

    .line 2989
    return-void
.end method
