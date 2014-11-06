.class Lcom/android/internal/telephony/SMSDispatcher$LongSMSSegmentInfo;
.super Ljava/lang/Object;
.source "SMSDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SMSDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LongSMSSegmentInfo"
.end annotation


# instance fields
.field address:Ljava/lang/String;

.field destPort:I

.field format:Ljava/lang/String;

.field messageCount:I

.field referenceNumber:I

.field sequenceNumber:I

.field final synthetic this$0:Lcom/android/internal/telephony/SMSDispatcher;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/SMSDispatcher;)V
    .locals 0
    .parameter

    .prologue
    .line 691
    iput-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher$LongSMSSegmentInfo;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
