.class Lcom/meizu/widget/CustomPicker$DataAdapter;
.super Ljava/lang/Object;
.source "CustomPicker.java"

# interfaces
.implements Lcom/meizu/widget/ScrollTextView$IDataAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/widget/CustomPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DataAdapter"
.end annotation


# instance fields
.field private mColumnIndex:I

.field private mStartValue:I

.field final synthetic this$0:Lcom/meizu/widget/CustomPicker;


# direct methods
.method constructor <init>(Lcom/meizu/widget/CustomPicker;II)V
    .locals 1
    .parameter
    .parameter "i"
    .parameter "value"

    .prologue
    .line 116
    iput-object p1, p0, Lcom/meizu/widget/CustomPicker$DataAdapter;->this$0:Lcom/meizu/widget/CustomPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    const/4 v0, 0x0

    iput v0, p0, Lcom/meizu/widget/CustomPicker$DataAdapter;->mColumnIndex:I

    .line 117
    iput p2, p0, Lcom/meizu/widget/CustomPicker$DataAdapter;->mColumnIndex:I

    .line 118
    iput p3, p0, Lcom/meizu/widget/CustomPicker$DataAdapter;->mStartValue:I

    .line 119
    return-void
.end method


# virtual methods
.method public onChanged(Landroid/view/View;II)V
    .locals 3
    .parameter "view"
    .parameter "fromOld"
    .parameter "toNew"

    .prologue
    .line 134
    iget-object v0, p0, Lcom/meizu/widget/CustomPicker$DataAdapter;->this$0:Lcom/meizu/widget/CustomPicker;

    #getter for: Lcom/meizu/widget/CustomPicker;->mCurrentItems:[I
    invoke-static {v0}, Lcom/meizu/widget/CustomPicker;->access$000(Lcom/meizu/widget/CustomPicker;)[I

    move-result-object v0

    iget v1, p0, Lcom/meizu/widget/CustomPicker$DataAdapter;->mColumnIndex:I

    aput p3, v0, v1

    .line 136
    iget-object v0, p0, Lcom/meizu/widget/CustomPicker$DataAdapter;->this$0:Lcom/meizu/widget/CustomPicker;

    #getter for: Lcom/meizu/widget/CustomPicker;->mOnItemChangedListener:Lcom/meizu/widget/CustomPicker$OnCurrentItemChangedListener;
    invoke-static {v0}, Lcom/meizu/widget/CustomPicker;->access$100(Lcom/meizu/widget/CustomPicker;)Lcom/meizu/widget/CustomPicker$OnCurrentItemChangedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/meizu/widget/CustomPicker$DataAdapter;->this$0:Lcom/meizu/widget/CustomPicker;

    #getter for: Lcom/meizu/widget/CustomPicker;->mOnItemChangedListener:Lcom/meizu/widget/CustomPicker$OnCurrentItemChangedListener;
    invoke-static {v0}, Lcom/meizu/widget/CustomPicker;->access$100(Lcom/meizu/widget/CustomPicker;)Lcom/meizu/widget/CustomPicker$OnCurrentItemChangedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/widget/CustomPicker$DataAdapter;->this$0:Lcom/meizu/widget/CustomPicker;

    iget-object v2, p0, Lcom/meizu/widget/CustomPicker$DataAdapter;->this$0:Lcom/meizu/widget/CustomPicker;

    #getter for: Lcom/meizu/widget/CustomPicker;->mCurrentItems:[I
    invoke-static {v2}, Lcom/meizu/widget/CustomPicker;->access$000(Lcom/meizu/widget/CustomPicker;)[I

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/meizu/widget/CustomPicker$OnCurrentItemChangedListener;->onCurrentItemChanged(Lcom/meizu/widget/CustomPicker;[I)V

    .line 139
    :cond_0
    return-void
.end method

.method public setFocusedItemAction(Landroid/widget/TextView;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 127
    return-void
.end method

.method public setUnfocusedItemAction(Landroid/widget/TextView;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 131
    return-void
.end method

.method public setViewData(Landroid/widget/TextView;I)V
    .locals 1
    .parameter "view"
    .parameter "position"

    .prologue
    .line 122
    iget v0, p0, Lcom/meizu/widget/CustomPicker$DataAdapter;->mStartValue:I

    add-int/2addr v0, p2

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    return-void
.end method
