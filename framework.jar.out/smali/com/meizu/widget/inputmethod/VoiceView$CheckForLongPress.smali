.class Lcom/meizu/widget/inputmethod/VoiceView$CheckForLongPress;
.super Ljava/lang/Object;
.source "VoiceView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/widget/inputmethod/VoiceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CheckForLongPress"
.end annotation


# instance fields
.field private mOriginalPressToken:J

.field final synthetic this$0:Lcom/meizu/widget/inputmethod/VoiceView;


# direct methods
.method constructor <init>(Lcom/meizu/widget/inputmethod/VoiceView;)V
    .locals 0
    .parameter

    .prologue
    .line 292
    iput-object p1, p0, Lcom/meizu/widget/inputmethod/VoiceView$CheckForLongPress;->this$0:Lcom/meizu/widget/inputmethod/VoiceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public rememberPressToken(J)V
    .locals 0
    .parameter "token"

    .prologue
    .line 307
    iput-wide p1, p0, Lcom/meizu/widget/inputmethod/VoiceView$CheckForLongPress;->mOriginalPressToken:J

    .line 308
    return-void
.end method

.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 297
    iget-wide v0, p0, Lcom/meizu/widget/inputmethod/VoiceView$CheckForLongPress;->mOriginalPressToken:J

    iget-object v2, p0, Lcom/meizu/widget/inputmethod/VoiceView$CheckForLongPress;->this$0:Lcom/meizu/widget/inputmethod/VoiceView;

    #getter for: Lcom/meizu/widget/inputmethod/VoiceView;->mPressToken:J
    invoke-static {v2}, Lcom/meizu/widget/inputmethod/VoiceView;->access$000(Lcom/meizu/widget/inputmethod/VoiceView;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView$CheckForLongPress;->this$0:Lcom/meizu/widget/inputmethod/VoiceView;

    iget-boolean v0, v0, Lcom/meizu/widget/inputmethod/VoiceView;->mPressed:Z

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView$CheckForLongPress;->this$0:Lcom/meizu/widget/inputmethod/VoiceView;

    #setter for: Lcom/meizu/widget/inputmethod/VoiceView;->mClickFlag:I
    invoke-static {v0, v4}, Lcom/meizu/widget/inputmethod/VoiceView;->access$102(Lcom/meizu/widget/inputmethod/VoiceView;I)I

    .line 299
    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView$CheckForLongPress;->this$0:Lcom/meizu/widget/inputmethod/VoiceView;

    iput-boolean v4, v0, Lcom/meizu/widget/inputmethod/VoiceView;->mPressed:Z

    .line 300
    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView$CheckForLongPress;->this$0:Lcom/meizu/widget/inputmethod/VoiceView;

    iput-boolean v4, v0, Lcom/meizu/widget/inputmethod/VoiceView;->pointInRecordCircle:Z

    .line 301
    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView$CheckForLongPress;->this$0:Lcom/meizu/widget/inputmethod/VoiceView;

    #calls: Lcom/meizu/widget/inputmethod/VoiceView;->setState(I)V
    invoke-static {v0, v4}, Lcom/meizu/widget/inputmethod/VoiceView;->access$200(Lcom/meizu/widget/inputmethod/VoiceView;I)V

    .line 302
    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView$CheckForLongPress;->this$0:Lcom/meizu/widget/inputmethod/VoiceView;

    invoke-virtual {v0}, Lcom/meizu/widget/inputmethod/VoiceView;->performLongClick()Z

    .line 304
    :cond_0
    return-void
.end method
