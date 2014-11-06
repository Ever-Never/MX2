.class public Lcom/meizu/mpay/service/MzMPayHelper;
.super Ljava/lang/Object;
.source "MzMPayHelper.java"


# static fields
.field public static final ALIPAY_ACCOUNT_TYPE:Ljava/lang/String; = "com.eg.android.AlipayGphone"

.field public static final ALIPAY_APP_CENTER_ID:Ljava/lang/String; = "2a205e8d24e941ecaf19beedded59e47"

.field public static final ALIPAY_PACKAGE_NAME:Ljava/lang/String; = "com.eg.android.AlipayGphone"

.field protected static final BIT_FLAG_PAY_TYPE:I = 0xf

.field protected static final BIT_SIZE_PAY_TYPE:I = 0x4

.field public static final EXTRA_BUSINESS_TYPE:Ljava/lang/String; = "BusinessType"

.field public static final EXTRA_CONTENT:Ljava/lang/String; = "SmsContent"

.field public static final EXTRA_NUMBER:Ljava/lang/String; = "SmsNum"

.field public static final EXTRA_PAY_WAY:Ljava/lang/String; = "PayWay"

.field public static final EXTRA_TRANS_NUM:Ljava/lang/String; = "TransferNum"

.field protected static final FLAG_SHIFT_LEFT:I = 0xa

.field public static final KEY_CHECK_RESULT:Ljava/lang/String; = "checkResult"

.field public static final KEY_ERROR_MSG:Ljava/lang/String; = "errorMsg"

.field public static final KEY_TRANSFER_INTENT:Ljava/lang/String; = "transferIntent"

.field public static final LAKALA_ACCOUNT_TYPE:Ljava/lang/String; = "com.lakala.android.meizu"

.field public static final LAKALA_APP_CENTER_ID:Ljava/lang/String; = "ddb9175a8222438c849ac14f23dca946"

.field public static final LAKALA_PACKAGE_NAME:Ljava/lang/String; = "com.lakala.meizu"

.field private static final MPAY_APP_PACKAGE:Ljava/lang/String; = "com.meizu.mpay"

.field public static final PAY_TYPE_NONE:I = 0x0

.field public static final PAY_TYPE_PAY_FEE:I = 0x3

.field public static final PAY_TYPE_RECHARGE:I = 0x1

.field public static final PAY_TYPE_REPAYMENT:I = 0x2

.field public static final PAY_WAY_ALIPAY:I = 0x1

.field public static final PAY_WAY_LAKALA:I = 0x2

.field public static final PENDING_RESULT_ERROR:I = -0x1

.field public static final PENDING_RESULT_OK:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAlipayIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1
    .parameter "number"
    .parameter "content"

    .prologue
    .line 95
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/meizu/mpay/service/MzMPayHelper;->getTargetActivityIntent(Ljava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static getAlipayTransferIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 1
    .parameter "phoneNum"

    .prologue
    .line 122
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/meizu/mpay/service/MzMPayHelper;->getTransferIntent(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static getLakalaIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1
    .parameter "number"
    .parameter "content"

    .prologue
    .line 104
    const/4 v0, 0x2

    invoke-static {p0, p1, v0}, Lcom/meizu/mpay/service/MzMPayHelper;->getTargetActivityIntent(Ljava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static getLakalaTransferIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 1
    .parameter "phoneNum"

    .prologue
    .line 130
    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/meizu/mpay/service/MzMPayHelper;->getTransferIntent(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private static final getOriginalFlag(I)I
    .locals 1
    .parameter "flag"

    .prologue
    .line 85
    shr-int/lit8 v0, p0, 0xa

    return v0
.end method

.method public static final getPaymentType(I)I
    .locals 2
    .parameter "flag"

    .prologue
    .line 56
    invoke-static {p0}, Lcom/meizu/mpay/service/MzMPayHelper;->getOriginalFlag(I)I

    move-result p0

    .line 57
    and-int/lit8 v0, p0, 0xf

    .line 58
    .local v0, typeFlag:I
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 61
    .end local v0           #typeFlag:I
    :cond_0
    :goto_0
    return v0

    .restart local v0       #typeFlag:I
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static getTargetActivityIntent(Ljava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;
    .locals 2
    .parameter "number"
    .parameter "content"
    .parameter "payWay"

    .prologue
    .line 107
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 108
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.meizu.mpay"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 109
    const-string v1, "com.meizu.mpay.payment.start"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 110
    const-string v1, "SmsNum"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 111
    const-string v1, "SmsContent"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 112
    const-string v1, "PayWay"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 113
    return-object v0
.end method

.method protected static getTransferIntent(Ljava/lang/String;I)Landroid/content/Intent;
    .locals 2
    .parameter "phoneNum"
    .parameter "businessType"

    .prologue
    .line 134
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 135
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.meizu.mpay"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 136
    const-string v1, "com.meizu.mpay.transfer.start"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 137
    const-string v1, "TransferNum"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 138
    const-string v1, "BusinessType"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 139
    return-object v0
.end method

.method private static final hasAccountByType(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .parameter "context"
    .parameter "accountType"

    .prologue
    .line 155
    const-string v2, "account"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/AccountManager;

    .line 156
    .local v1, am:Landroid/accounts/AccountManager;
    invoke-virtual {v1, p1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 157
    .local v0, accounts:[Landroid/accounts/Account;
    if-eqz v0, :cond_0

    array-length v2, v0

    if-lez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static final hasAlipayAccount(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 146
    const-string v0, "com.eg.android.AlipayGphone"

    invoke-static {p0, v0}, Lcom/meizu/mpay/service/MzMPayHelper;->hasAccountByType(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static final hasLakalaAccount(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 152
    const-string v0, "com.lakala.android.meizu"

    invoke-static {p0, v0}, Lcom/meizu/mpay/service/MzMPayHelper;->hasAccountByType(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static final isAlipayClientAvailable(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 164
    const-string v0, "com.eg.android.AlipayGphone"

    invoke-static {p0, v0}, Lcom/meizu/mpay/service/MzMPayHelper;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static final isAlipaySupport(I)Z
    .locals 3
    .parameter "flag"

    .prologue
    const/4 v1, 0x1

    .line 70
    invoke-static {p0}, Lcom/meizu/mpay/service/MzMPayHelper;->getOriginalFlag(I)I

    move-result p0

    .line 71
    shr-int/lit8 v0, p0, 0x4

    .line 72
    .local v0, supportFlag:I
    and-int/lit8 v2, v0, 0x1

    if-ne v2, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static final isLakalaClientAvailable(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 170
    const-string v0, "com.lakala.meizu"

    invoke-static {p0, v0}, Lcom/meizu/mpay/service/MzMPayHelper;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static final isLakalaSupport(I)Z
    .locals 3
    .parameter "flag"

    .prologue
    .line 80
    invoke-static {p0}, Lcom/meizu/mpay/service/MzMPayHelper;->getOriginalFlag(I)I

    move-result p0

    .line 81
    shr-int/lit8 v0, p0, 0x4

    .line 82
    .local v0, supportFlag:I
    and-int/lit8 v1, v0, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static final isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .parameter "context"
    .parameter "packageName"

    .prologue
    const/4 v1, 0x0

    .line 174
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 175
    .local v0, pm:Landroid/content/pm/PackageManager;
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 178
    .end local v0           #pm:Landroid/content/pm/PackageManager;
    :cond_0
    :goto_0
    return v1

    .line 176
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static final startAlipayDownloadActivity(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 185
    const-string v0, "2a205e8d24e941ecaf19beedded59e47"

    invoke-static {p0, v0}, Lcom/meizu/mpay/service/MzMPayHelper;->startAppDownloadActivity(Landroid/content/Context;Ljava/lang/String;)V

    .line 186
    return-void
.end method

.method private static final startAppDownloadActivity(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "appId"

    .prologue
    .line 194
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mstore:http://app.meizu.com/phone/apps/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 195
    .local v1, mstoreUri:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 196
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 197
    return-void
.end method

.method public static final startLakalaDownloadActivity(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 191
    const-string v0, "ddb9175a8222438c849ac14f23dca946"

    invoke-static {p0, v0}, Lcom/meizu/mpay/service/MzMPayHelper;->startAppDownloadActivity(Landroid/content/Context;Ljava/lang/String;)V

    .line 192
    return-void
.end method
