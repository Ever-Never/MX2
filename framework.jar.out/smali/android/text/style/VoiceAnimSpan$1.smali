.class Landroid/text/style/VoiceAnimSpan$1;
.super Landroid/os/Handler;
.source "VoiceAnimSpan.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/style/VoiceAnimSpan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/text/style/VoiceAnimSpan;


# direct methods
.method constructor <init>(Landroid/text/style/VoiceAnimSpan;)V
    .locals 0
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Landroid/text/style/VoiceAnimSpan$1;->this$0:Landroid/text/style/VoiceAnimSpan;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 57
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 58
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 66
    :cond_0
    :goto_0
    return-void

    .line 60
    :pswitch_0
    iget-object v0, p0, Landroid/text/style/VoiceAnimSpan$1;->this$0:Landroid/text/style/VoiceAnimSpan;

    #getter for: Landroid/text/style/VoiceAnimSpan;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/text/style/VoiceAnimSpan;->access$000(Landroid/text/style/VoiceAnimSpan;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Landroid/text/style/VoiceAnimSpan$1;->this$0:Landroid/text/style/VoiceAnimSpan;

    #getter for: Landroid/text/style/VoiceAnimSpan;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/text/style/VoiceAnimSpan;->access$000(Landroid/text/style/VoiceAnimSpan;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Landroid/text/style/VoiceAnimSpan$1;->this$0:Landroid/text/style/VoiceAnimSpan;

    #getter for: Landroid/text/style/VoiceAnimSpan;->mStart:I
    invoke-static {v1}, Landroid/text/style/VoiceAnimSpan;->access$100(Landroid/text/style/VoiceAnimSpan;)I

    move-result v1

    iget-object v2, p0, Landroid/text/style/VoiceAnimSpan$1;->this$0:Landroid/text/style/VoiceAnimSpan;

    #getter for: Landroid/text/style/VoiceAnimSpan;->mEnd:I
    invoke-static {v2}, Landroid/text/style/VoiceAnimSpan;->access$200(Landroid/text/style/VoiceAnimSpan;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->invalidateTextDisplayList(II)V

    goto :goto_0

    .line 58
    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
    .end packed-switch
.end method
