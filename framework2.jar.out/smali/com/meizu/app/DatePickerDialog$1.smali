.class Lcom/meizu/app/DatePickerDialog$1;
.super Ljava/lang/Object;
.source "DatePickerDialog.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/app/DatePickerDialog;->setTitleWithCheckBox(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/app/DatePickerDialog;


# direct methods
.method constructor <init>(Lcom/meizu/app/DatePickerDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 116
    iput-object p1, p0, Lcom/meizu/app/DatePickerDialog$1;->this$0:Lcom/meizu/app/DatePickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/meizu/app/DatePickerDialog$1;->this$0:Lcom/meizu/app/DatePickerDialog;

    #getter for: Lcom/meizu/app/DatePickerDialog;->mDatePicker:Lcom/meizu/widget/DatePicker;
    invoke-static {v0}, Lcom/meizu/app/DatePickerDialog;->access$000(Lcom/meizu/app/DatePickerDialog;)Lcom/meizu/widget/DatePicker;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/meizu/widget/DatePicker;->setLunar(Z)V

    .line 120
    iget-object v0, p0, Lcom/meizu/app/DatePickerDialog$1;->this$0:Lcom/meizu/app/DatePickerDialog;

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog;->setChecked(Z)V

    .line 121
    return-void
.end method
