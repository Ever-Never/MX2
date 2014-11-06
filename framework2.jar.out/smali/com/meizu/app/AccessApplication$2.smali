.class Lcom/meizu/app/AccessApplication$2;
.super Ljava/lang/Object;
.source "AccessApplication.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/app/AccessApplication;->onCellFhish(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/app/AccessApplication;

.field final synthetic val$password:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/meizu/app/AccessApplication;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 223
    iput-object p1, p0, Lcom/meizu/app/AccessApplication$2;->this$0:Lcom/meizu/app/AccessApplication;

    iput-object p2, p0, Lcom/meizu/app/AccessApplication$2;->val$password:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v7, 0x0

    .line 226
    iget-object v6, p0, Lcom/meizu/app/AccessApplication$2;->this$0:Lcom/meizu/app/AccessApplication;

    #getter for: Lcom/meizu/app/AccessApplication;->mLockPasswordUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v6}, Lcom/meizu/app/AccessApplication;->access$100(Lcom/meizu/app/AccessApplication;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v6

    iget-object v8, p0, Lcom/meizu/app/AccessApplication$2;->val$password:Ljava/lang/String;

    invoke-virtual {v6, v8}, Lcom/android/internal/widget/LockPatternUtils;->checkPassword(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 228
    iget-object v6, p0, Lcom/meizu/app/AccessApplication$2;->this$0:Lcom/meizu/app/AccessApplication;

    #getter for: Lcom/meizu/app/AccessApplication;->acm:Landroid/content/pm/AccessControlManager;
    invoke-static {v6}, Lcom/meizu/app/AccessApplication;->access$400(Lcom/meizu/app/AccessApplication;)Landroid/content/pm/AccessControlManager;

    move-result-object v6

    iget-object v7, p0, Lcom/meizu/app/AccessApplication$2;->this$0:Lcom/meizu/app/AccessApplication;

    #getter for: Lcom/meizu/app/AccessApplication;->mPackageName:Ljava/lang/String;
    invoke-static {v7}, Lcom/meizu/app/AccessApplication;->access$200(Lcom/meizu/app/AccessApplication;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/meizu/app/AccessApplication$2;->this$0:Lcom/meizu/app/AccessApplication;

    #getter for: Lcom/meizu/app/AccessApplication;->mFromNotification:Z
    invoke-static {v8}, Lcom/meizu/app/AccessApplication;->access$300(Lcom/meizu/app/AccessApplication;)Z

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/AccessControlManager;->addAccessControlPassMz(Ljava/lang/String;Z)V

    .line 229
    iget-object v6, p0, Lcom/meizu/app/AccessApplication$2;->this$0:Lcom/meizu/app/AccessApplication;

    #getter for: Lcom/meizu/app/AccessApplication;->mComponentName:Landroid/content/ComponentName;
    invoke-static {v6}, Lcom/meizu/app/AccessApplication;->access$500(Lcom/meizu/app/AccessApplication;)Landroid/content/ComponentName;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 230
    new-instance v2, Landroid/content/Intent;

    iget-object v6, p0, Lcom/meizu/app/AccessApplication$2;->this$0:Lcom/meizu/app/AccessApplication;

    invoke-virtual {v6}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 231
    .local v2, intent:Landroid/content/Intent;
    const/4 v1, 0x0

    .line 232
    .local v1, fromActivityStack:Z
    iget-object v6, p0, Lcom/meizu/app/AccessApplication$2;->this$0:Lcom/meizu/app/AccessApplication;

    #getter for: Lcom/meizu/app/AccessApplication;->mInfo:Landroid/content/pm/ActivityInfo;
    invoke-static {v6}, Lcom/meizu/app/AccessApplication;->access$600(Lcom/meizu/app/AccessApplication;)Landroid/content/pm/ActivityInfo;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/meizu/app/AccessApplication$2;->this$0:Lcom/meizu/app/AccessApplication;

    #getter for: Lcom/meizu/app/AccessApplication;->mInfo:Landroid/content/pm/ActivityInfo;
    invoke-static {v6}, Lcom/meizu/app/AccessApplication;->access$600(Lcom/meizu/app/AccessApplication;)Landroid/content/pm/ActivityInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->mAccessPkg:Ljava/lang/String;

    if-eqz v6, :cond_0

    .line 233
    const/4 v1, 0x1

    .line 235
    :cond_0
    const/high16 v6, 0x300

    invoke-virtual {v2, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 237
    const-string v6, "AccessApplication"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "fromActivityStack : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " intent: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    if-nez v1, :cond_1

    .line 240
    iget-object v6, p0, Lcom/meizu/app/AccessApplication$2;->this$0:Lcom/meizu/app/AccessApplication;

    invoke-virtual {v6}, Landroid/app/Activity;->isTaskRoot()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 241
    const/high16 v6, 0x1800

    invoke-virtual {v2, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 246
    :cond_1
    invoke-virtual {v2}, Landroid/content/Intent;->getFlags()I

    move-result v6

    const v7, -0x800001

    and-int/2addr v6, v7

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 248
    iget-object v6, p0, Lcom/meizu/app/AccessApplication$2;->this$0:Lcom/meizu/app/AccessApplication;

    #getter for: Lcom/meizu/app/AccessApplication;->mComponentName:Landroid/content/ComponentName;
    invoke-static {v6}, Lcom/meizu/app/AccessApplication;->access$500(Lcom/meizu/app/AccessApplication;)Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 250
    :try_start_0
    iget-object v6, p0, Lcom/meizu/app/AccessApplication$2;->this$0:Lcom/meizu/app/AccessApplication;

    invoke-virtual {v6, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 251
    iget-object v6, p0, Lcom/meizu/app/AccessApplication$2;->this$0:Lcom/meizu/app/AccessApplication;

    const/high16 v7, 0x10a

    const v8, 0x10a0001

    invoke-virtual {v6, v7, v8}, Landroid/app/Activity;->overridePendingTransition(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 256
    .end local v1           #fromActivityStack:Z
    .end local v2           #intent:Landroid/content/Intent;
    :cond_2
    :goto_0
    iget-object v6, p0, Lcom/meizu/app/AccessApplication$2;->this$0:Lcom/meizu/app/AccessApplication;

    invoke-virtual {v6}, Landroid/app/Activity;->finish()V

    .line 272
    :goto_1
    return-void

    .line 252
    .restart local v1       #fromActivityStack:Z
    .restart local v2       #intent:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 253
    .local v0, e:Ljava/lang/Exception;
    const-string v6, "AccessApplication"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 258
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #fromActivityStack:Z
    .end local v2           #intent:Landroid/content/Intent;
    :cond_3
    iget-object v6, p0, Lcom/meizu/app/AccessApplication$2;->this$0:Lcom/meizu/app/AccessApplication;

    #getter for: Lcom/meizu/app/AccessApplication;->mLockPasswordUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v6}, Lcom/meizu/app/AccessApplication;->access$100(Lcom/meizu/app/AccessApplication;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternUtils;->getPasswordLeftTimes()I

    move-result v3

    .line 259
    .local v3, leftTimes:I
    const/4 v6, 0x3

    if-ge v3, v6, :cond_6

    iget-object v6, p0, Lcom/meizu/app/AccessApplication$2;->this$0:Lcom/meizu/app/AccessApplication;

    invoke-virtual {v6}, Lcom/meizu/app/AccessApplication;->isOpenFindLock()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 260
    iget-object v6, p0, Lcom/meizu/app/AccessApplication$2;->this$0:Lcom/meizu/app/AccessApplication;

    const v8, 0x10405e3

    invoke-virtual {v6, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 261
    .local v4, text:Ljava/lang/String;
    iget-object v8, p0, Lcom/meizu/app/AccessApplication$2;->this$0:Lcom/meizu/app/AccessApplication;

    new-array v9, v10, [Ljava/lang/Object;

    if-gez v3, :cond_5

    move v6, v7

    :goto_2
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v9, v7

    invoke-static {v4, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    .line 262
    .local v5, toast:Landroid/widget/Toast;
    const/16 v6, 0x7d9

    invoke-virtual {v5, v6}, Landroid/widget/Toast;->setType(I)V

    .line 263
    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 264
    iget-object v6, p0, Lcom/meizu/app/AccessApplication$2;->this$0:Lcom/meizu/app/AccessApplication;

    #getter for: Lcom/meizu/app/AccessApplication;->mLockDigitPanel:Lcom/meizu/widget/SystemLockView;
    invoke-static {v6}, Lcom/meizu/app/AccessApplication;->access$700(Lcom/meizu/app/AccessApplication;)Lcom/meizu/widget/SystemLockView;

    move-result-object v6

    invoke-virtual {v6, v10}, Lcom/meizu/widget/SystemLockView;->clearCell(Z)V

    .line 265
    iget-object v6, p0, Lcom/meizu/app/AccessApplication$2;->this$0:Lcom/meizu/app/AccessApplication;

    #getter for: Lcom/meizu/app/AccessApplication;->mLockDigitPanel:Lcom/meizu/widget/SystemLockView;
    invoke-static {v6}, Lcom/meizu/app/AccessApplication;->access$700(Lcom/meizu/app/AccessApplication;)Lcom/meizu/widget/SystemLockView;

    move-result-object v6

    new-array v8, v10, [Ljava/lang/Object;

    if-gez v3, :cond_4

    move v3, v7

    .end local v3           #leftTimes:I
    :cond_4
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v7

    invoke-static {v4, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/meizu/widget/SystemLockView;->setTip(Ljava/lang/String;)V

    goto :goto_1

    .end local v5           #toast:Landroid/widget/Toast;
    .restart local v3       #leftTimes:I
    :cond_5
    move v6, v3

    .line 261
    goto :goto_2

    .line 267
    .end local v4           #text:Ljava/lang/String;
    :cond_6
    iget-object v6, p0, Lcom/meizu/app/AccessApplication$2;->this$0:Lcom/meizu/app/AccessApplication;

    #getter for: Lcom/meizu/app/AccessApplication;->mLockDigitPanel:Lcom/meizu/widget/SystemLockView;
    invoke-static {v6}, Lcom/meizu/app/AccessApplication;->access$700(Lcom/meizu/app/AccessApplication;)Lcom/meizu/widget/SystemLockView;

    move-result-object v6

    invoke-virtual {v6, v10}, Lcom/meizu/widget/SystemLockView;->clearCell(Z)V

    .line 268
    iget-object v6, p0, Lcom/meizu/app/AccessApplication$2;->this$0:Lcom/meizu/app/AccessApplication;

    #getter for: Lcom/meizu/app/AccessApplication;->mLockDigitPanel:Lcom/meizu/widget/SystemLockView;
    invoke-static {v6}, Lcom/meizu/app/AccessApplication;->access$700(Lcom/meizu/app/AccessApplication;)Lcom/meizu/widget/SystemLockView;

    move-result-object v6

    iget-object v7, p0, Lcom/meizu/app/AccessApplication$2;->this$0:Lcom/meizu/app/AccessApplication;

    invoke-virtual {v7}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1040611

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/meizu/widget/SystemLockView;->setTip(Ljava/lang/String;)V

    goto/16 :goto_1
.end method
