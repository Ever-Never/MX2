.class Lcom/meizu/widget/TimePicker$TimeAdapter;
.super Ljava/lang/Object;
.source "TimePicker.java"

# interfaces
.implements Lcom/meizu/widget/ScrollTextView$IDataAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/widget/TimePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimeAdapter"
.end annotation


# static fields
.field static final SET_AMPM:I = 0x3

.field static final SET_HOUR:I = 0x1

.field static final SET_MIN:I = 0x2


# instance fields
.field item_data:Ljava/lang/String;

.field mType:I

.field final synthetic this$0:Lcom/meizu/widget/TimePicker;


# direct methods
.method constructor <init>(Lcom/meizu/widget/TimePicker;I)V
    .locals 1
    .parameter
    .parameter "i"

    .prologue
    .line 99
    iput-object p1, p0, Lcom/meizu/widget/TimePicker$TimeAdapter;->this$0:Lcom/meizu/widget/TimePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/widget/TimePicker$TimeAdapter;->item_data:Ljava/lang/String;

    .line 97
    const/4 v0, 0x0

    iput v0, p0, Lcom/meizu/widget/TimePicker$TimeAdapter;->mType:I

    .line 100
    iput p2, p0, Lcom/meizu/widget/TimePicker$TimeAdapter;->mType:I

    .line 101
    return-void
.end method


# virtual methods
.method public onChanged(Landroid/view/View;II)V
    .locals 4
    .parameter "view"
    .parameter "fromOld"
    .parameter "toNew"

    .prologue
    .line 144
    iget v0, p0, Lcom/meizu/widget/TimePicker$TimeAdapter;->mType:I

    packed-switch v0, :pswitch_data_0

    .line 162
    :cond_0
    :goto_0
    return-void

    .line 146
    :pswitch_0
    iget-object v0, p0, Lcom/meizu/widget/TimePicker$TimeAdapter;->this$0:Lcom/meizu/widget/TimePicker;

    #setter for: Lcom/meizu/widget/TimePicker;->mCurrentHour:I
    invoke-static {v0, p3}, Lcom/meizu/widget/TimePicker;->access$302(Lcom/meizu/widget/TimePicker;I)I

    .line 158
    :goto_1
    iget-object v0, p0, Lcom/meizu/widget/TimePicker$TimeAdapter;->this$0:Lcom/meizu/widget/TimePicker;

    #getter for: Lcom/meizu/widget/TimePicker;->mOnTimeChangedListener:Lcom/meizu/widget/TimePicker$OnTimeChangedListener;
    invoke-static {v0}, Lcom/meizu/widget/TimePicker;->access$600(Lcom/meizu/widget/TimePicker;)Lcom/meizu/widget/TimePicker$OnTimeChangedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/meizu/widget/TimePicker$TimeAdapter;->this$0:Lcom/meizu/widget/TimePicker;

    #getter for: Lcom/meizu/widget/TimePicker;->mOnTimeChangedListener:Lcom/meizu/widget/TimePicker$OnTimeChangedListener;
    invoke-static {v0}, Lcom/meizu/widget/TimePicker;->access$600(Lcom/meizu/widget/TimePicker;)Lcom/meizu/widget/TimePicker$OnTimeChangedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/widget/TimePicker$TimeAdapter;->this$0:Lcom/meizu/widget/TimePicker;

    iget-object v2, p0, Lcom/meizu/widget/TimePicker$TimeAdapter;->this$0:Lcom/meizu/widget/TimePicker;

    invoke-virtual {v2}, Lcom/meizu/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/meizu/widget/TimePicker$TimeAdapter;->this$0:Lcom/meizu/widget/TimePicker;

    invoke-virtual {v3}, Lcom/meizu/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/meizu/widget/TimePicker$OnTimeChangedListener;->onTimeChanged(Lcom/meizu/widget/TimePicker;II)V

    goto :goto_0

    .line 149
    :pswitch_1
    iget-object v0, p0, Lcom/meizu/widget/TimePicker$TimeAdapter;->this$0:Lcom/meizu/widget/TimePicker;

    #setter for: Lcom/meizu/widget/TimePicker;->mCurrentMinute:I
    invoke-static {v0, p3}, Lcom/meizu/widget/TimePicker;->access$402(Lcom/meizu/widget/TimePicker;I)I

    goto :goto_1

    .line 152
    :pswitch_2
    iget-object v0, p0, Lcom/meizu/widget/TimePicker$TimeAdapter;->this$0:Lcom/meizu/widget/TimePicker;

    #setter for: Lcom/meizu/widget/TimePicker;->mIsAm:I
    invoke-static {v0, p3}, Lcom/meizu/widget/TimePicker;->access$502(Lcom/meizu/widget/TimePicker;I)I

    goto :goto_1

    .line 144
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setFocusedItemAction(Landroid/widget/TextView;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 130
    iget v0, p0, Lcom/meizu/widget/TimePicker$TimeAdapter;->mType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 131
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/meizu/widget/TimePicker$TimeAdapter;->this$0:Lcom/meizu/widget/TimePicker;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10501b0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 134
    :cond_0
    return-void
.end method

.method public setUnfocusedItemAction(Landroid/widget/TextView;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 137
    iget v0, p0, Lcom/meizu/widget/TimePicker$TimeAdapter;->mType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 138
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/meizu/widget/TimePicker$TimeAdapter;->this$0:Lcom/meizu/widget/TimePicker;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10501af

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 141
    :cond_0
    return-void
.end method

.method public setViewData(Landroid/widget/TextView;I)V
    .locals 3
    .parameter "view"
    .parameter "position"

    .prologue
    .line 104
    iget v1, p0, Lcom/meizu/widget/TimePicker$TimeAdapter;->mType:I

    packed-switch v1, :pswitch_data_0

    .line 126
    :goto_0
    iget-object v1, p0, Lcom/meizu/widget/TimePicker$TimeAdapter;->item_data:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    return-void

    .line 106
    :pswitch_0
    move v0, p2

    .line 107
    .local v0, dispHour:I
    iget-object v1, p0, Lcom/meizu/widget/TimePicker$TimeAdapter;->this$0:Lcom/meizu/widget/TimePicker;

    #getter for: Lcom/meizu/widget/TimePicker;->mIs24HourView:Ljava/lang/Boolean;
    invoke-static {v1}, Lcom/meizu/widget/TimePicker;->access$000(Lcom/meizu/widget/TimePicker;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    if-nez p2, :cond_0

    .line 108
    const/16 v0, 0xc

    .line 111
    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/widget/TimePicker$TimeAdapter;->item_data:Ljava/lang/String;

    goto :goto_0

    .line 114
    .end local v0           #dispHour:I
    :pswitch_1
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/widget/TimePicker$TimeAdapter;->item_data:Ljava/lang/String;

    goto :goto_0

    .line 117
    :pswitch_2
    if-nez p2, :cond_1

    .line 118
    iget-object v1, p0, Lcom/meizu/widget/TimePicker$TimeAdapter;->this$0:Lcom/meizu/widget/TimePicker;

    #getter for: Lcom/meizu/widget/TimePicker;->mAmText:Ljava/lang/String;
    invoke-static {v1}, Lcom/meizu/widget/TimePicker;->access$100(Lcom/meizu/widget/TimePicker;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/widget/TimePicker$TimeAdapter;->item_data:Ljava/lang/String;

    goto :goto_0

    .line 120
    :cond_1
    iget-object v1, p0, Lcom/meizu/widget/TimePicker$TimeAdapter;->this$0:Lcom/meizu/widget/TimePicker;

    #getter for: Lcom/meizu/widget/TimePicker;->mPmText:Ljava/lang/String;
    invoke-static {v1}, Lcom/meizu/widget/TimePicker;->access$200(Lcom/meizu/widget/TimePicker;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/widget/TimePicker$TimeAdapter;->item_data:Ljava/lang/String;

    goto :goto_0

    .line 104
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
