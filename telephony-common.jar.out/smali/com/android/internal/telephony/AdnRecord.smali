.class public Lcom/android/internal/telephony/AdnRecord;
.super Ljava/lang/Object;
.source "AdnRecord.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field static final ADN_BCD_NUMBER_LENGTH:I = 0x0

.field static final ADN_CAPABILITY_ID:I = 0xc

.field static final ADN_DIALING_NUMBER_END:I = 0xb

.field static final ADN_DIALING_NUMBER_START:I = 0x2

.field static final ADN_EXTENSION_ID:I = 0xd

.field static final ADN_TON_AND_NPI:I = 0x1

.field static final ANR_ADDITIONAL_NUMBER_END:I = 0xc

.field static final ANR_ADDITIONAL_NUMBER_RECORD_IDENTIFIER:I = 0x0

.field static final ANR_ADDITIONAL_NUMBER_START:I = 0x3

.field static final ANR_BCD_NUMBER_LENGTH:I = 0x1

.field static final ANR_CAPABILITY_ID:I = 0xd

.field static final ANR_EXTENSION_ID:I = 0xe

.field static final ANR_FILE_RECORD_IDENTIFIER:I = 0x10

.field static final ANR_FILE_SFI:I = 0xf

.field static final ANR_TON_AND_NPI:I = 0x2

.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/telephony/AdnRecord;",
            ">;"
        }
    .end annotation
.end field

.field static final EXT1_BCD_NUMBER_LENGTH:I = 0x1

.field static final EXT1_EXTENSION_DATA_END:I = 0xb

.field static final EXT1_EXTENSION_DATA_START:I = 0x2

.field static final EXT1_IDENTIFIER:I = 0xc

.field static final EXT1_RECORD_TYPE:I = 0x0

.field static final EXT1_TYPE_ADDITIONAL_DATA:I = 0x2

.field static final EXT1_TYPE_FREE:I = 0x0

.field static final EXT_RECORD_LENGTH_BYTES:I = 0xd

.field static final EXT_RECORD_TYPE_ADDITIONAL_DATA:I = 0x2

.field static final EXT_RECORD_TYPE_MASK:I = 0x3

.field static final FOOTER_SIZE_BYTES:I = 0xe

.field static final LOG_TAG:Ljava/lang/String; = "GSM"

.field static final MAX_EXT_CALLED_PARTY_LENGTH:I = 0xa

.field static final MAX_NUMBER_SIZE_BYTES:I = 0xb

.field static final TYPE1_ANR_RECORD_LENGTH_BYTES:I = 0xf

.field static final TYPE2_ANR_RECORD_LENGTH_BYTES:I = 0x11


# instance fields
.field additionalNumber:Ljava/lang/String;

.field alphaTag:Ljava/lang/String;

.field efid:I

.field emails:[Ljava/lang/String;

.field extRecord:I

.field extRecordForAdditionalNumber:I

.field number:Ljava/lang/String;

.field recordNumber:I

.field sortKey:Ljava/lang/String;

.field tmp:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 76
    new-instance v0, Lcom/android/internal/telephony/AdnRecord$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/AdnRecord$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/AdnRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "efid"
    .parameter "recordNumber"
    .parameter "alphaTag"
    .parameter "number"

    .prologue
    const/16 v1, 0xff

    const/4 v0, 0x0

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    .line 45
    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    .line 47
    iput v1, p0, Lcom/android/internal/telephony/AdnRecord;->extRecord:I

    .line 367
    iput v1, p0, Lcom/android/internal/telephony/AdnRecord;->extRecordForAdditionalNumber:I

    .line 134
    iput p1, p0, Lcom/android/internal/telephony/AdnRecord;->efid:I

    .line 135
    iput p2, p0, Lcom/android/internal/telephony/AdnRecord;->recordNumber:I

    .line 136
    iput-object p3, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    .line 137
    iput-object p4, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    .line 138
    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    .line 141
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 142
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/telephony/LocalizeUtils;->getSortKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->sortKey:Ljava/lang/String;

    .line 145
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .parameter "efid"
    .parameter "recordNumber"
    .parameter "alphaTag"
    .parameter "number"
    .parameter "emails"

    .prologue
    const/4 v1, 0x0

    const/16 v0, 0xff

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object v1, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    .line 45
    iput-object v1, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    .line 47
    iput v0, p0, Lcom/android/internal/telephony/AdnRecord;->extRecord:I

    .line 367
    iput v0, p0, Lcom/android/internal/telephony/AdnRecord;->extRecordForAdditionalNumber:I

    .line 120
    iput p1, p0, Lcom/android/internal/telephony/AdnRecord;->efid:I

    .line 121
    iput p2, p0, Lcom/android/internal/telephony/AdnRecord;->recordNumber:I

    .line 122
    iput-object p3, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    .line 123
    iput-object p4, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    .line 124
    iput-object p5, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    .line 127
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 128
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/telephony/LocalizeUtils;->getSortKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->sortKey:Ljava/lang/String;

    .line 131
    return-void
.end method

.method public constructor <init>(II[B)V
    .locals 2
    .parameter "efid"
    .parameter "recordNumber"
    .parameter "record"

    .prologue
    const/4 v1, 0x0

    const/16 v0, 0xff

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object v1, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    .line 45
    iput-object v1, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    .line 47
    iput v0, p0, Lcom/android/internal/telephony/AdnRecord;->extRecord:I

    .line 367
    iput v0, p0, Lcom/android/internal/telephony/AdnRecord;->extRecordForAdditionalNumber:I

    .line 106
    iput p1, p0, Lcom/android/internal/telephony/AdnRecord;->efid:I

    .line 107
    iput p2, p0, Lcom/android/internal/telephony/AdnRecord;->recordNumber:I

    .line 108
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/AdnRecord;->parseRecord([B)V

    .line 109
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "alphaTag"
    .parameter "number"

    .prologue
    const/4 v0, 0x0

    .line 112
    invoke-direct {p0, v0, v0, p1, p2}, Lcom/android/internal/telephony/AdnRecord;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 113
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "alphaTag"
    .parameter "number"
    .parameter "additionalNumber"
    .parameter "email"

    .prologue
    const/16 v0, 0xff

    const/4 v1, 0x0

    .line 763
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object v1, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    .line 45
    iput-object v1, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    .line 47
    iput v0, p0, Lcom/android/internal/telephony/AdnRecord;->extRecord:I

    .line 367
    iput v0, p0, Lcom/android/internal/telephony/AdnRecord;->extRecordForAdditionalNumber:I

    .line 764
    iput-object p1, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    .line 765
    iput-object p2, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    .line 766
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 767
    iput-object v1, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    .line 770
    :goto_0
    iput-object p3, p0, Lcom/android/internal/telephony/AdnRecord;->additionalNumber:Ljava/lang/String;

    .line 773
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/telephony/LocalizeUtils;->getSortKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->sortKey:Ljava/lang/String;

    .line 775
    return-void

    .line 769
    :cond_0
    const-string v0, ","

    invoke-virtual {p4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 6
    .parameter "alphaTag"
    .parameter "number"
    .parameter "emails"

    .prologue
    const/4 v1, 0x0

    .line 116
    move-object v0, p0

    move v2, v1

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/AdnRecord;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 117
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .parameter "record"

    .prologue
    const/4 v0, 0x0

    .line 102
    invoke-direct {p0, v0, v0, p1}, Lcom/android/internal/telephony/AdnRecord;-><init>(II[B)V

    .line 103
    return-void
.end method

.method public static buildAdnString(ILjava/lang/String;[BIII)[B
    .locals 8
    .parameter "recordSize"
    .parameter "tag"
    .parameter "number"
    .parameter "offset"
    .parameter "numberBytes"
    .parameter "extRecordId"

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 544
    const/4 v1, 0x0

    .line 545
    .local v1, byteTag:[B
    const/4 v0, 0x0

    .line 546
    .local v0, adnRecord:[B
    add-int/lit8 v2, p0, -0xe

    .line 548
    .local v2, footerOffset:I
    if-eqz p2, :cond_1

    const/16 v5, 0xb

    if-gt p4, v5, :cond_0

    if-gez p4, :cond_1

    .line 577
    :cond_0
    :goto_0
    return-object v4

    .line 552
    :cond_1
    new-array v0, p0, [B

    .line 553
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, p0, :cond_2

    .line 554
    aput-byte v6, v0, v3

    .line 553
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 558
    :cond_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 559
    const/4 v1, 0x0

    .line 569
    :goto_2
    if-eqz p2, :cond_3

    .line 570
    add-int/lit8 v4, v2, 0x1

    invoke-static {p2, p3, v0, v4, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 572
    add-int/lit8 v4, v2, 0x0

    int-to-byte v5, p4

    aput-byte v5, v0, v4

    .line 573
    add-int/lit8 v4, v2, 0xc

    aput-byte v6, v0, v4

    .line 574
    add-int/lit8 v4, v2, 0xd

    int-to-byte v5, p5

    aput-byte v5, v0, v4

    :cond_3
    move-object v4, v0

    .line 577
    goto :goto_0

    .line 561
    :cond_4
    add-int/lit8 v5, p0, -0xe

    invoke-static {p1, v5}, Lcom/android/internal/telephony/AdnRecord;->getAdnBytes(Ljava/lang/String;I)[B

    move-result-object v1

    .line 562
    if-eqz v1, :cond_0

    array-length v5, v1

    if-gt v5, v2, :cond_0

    .line 565
    array-length v4, v1

    invoke-static {v1, v7, v0, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2
.end method

.method public static buildAnrString(I[BIIIII)[B
    .locals 7
    .parameter "recordSize"
    .parameter "adNumber"
    .parameter "offset"
    .parameter "adNumberBytes"
    .parameter "ext1RecordId"
    .parameter "efAdnSfi"
    .parameter "adnRecordId"

    .prologue
    const/4 v2, 0x0

    const/16 v6, 0x11

    const/16 v5, 0xf

    const/4 v4, 0x0

    .line 672
    const/4 v0, 0x0

    .line 674
    .local v0, anrRecord:[B
    if-eq p0, v5, :cond_1

    if-eq p0, v6, :cond_1

    .line 700
    :cond_0
    :goto_0
    return-object v2

    .line 677
    :cond_1
    if-eqz p1, :cond_2

    const/16 v3, 0xb

    if-gt p3, v3, :cond_0

    if-ltz p3, :cond_0

    .line 680
    :cond_2
    new-array v0, p0, [B

    .line 683
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, p0, :cond_3

    .line 684
    const/4 v2, -0x1

    aput-byte v2, v0, v1

    .line 683
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 688
    :cond_3
    if-ne p0, v6, :cond_4

    .line 689
    int-to-byte v2, p5

    aput-byte v2, v0, v5

    .line 690
    const/16 v2, 0x10

    int-to-byte v3, p6

    aput-byte v3, v0, v2

    .line 693
    :cond_4
    if-eqz p1, :cond_5

    .line 694
    aput-byte v4, v0, v4

    .line 695
    const/4 v2, 0x1

    int-to-byte v3, p3

    aput-byte v3, v0, v2

    .line 696
    const/16 v2, 0xe

    int-to-byte v3, p4

    aput-byte v3, v0, v2

    .line 697
    const/4 v2, 0x2

    invoke-static {p1, p2, v0, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_5
    move-object v2, v0

    .line 700
    goto :goto_0
.end method

.method public static buildEmailString(ILjava/lang/String;IIZ)[B
    .locals 5
    .parameter "recordSize"
    .parameter "email"
    .parameter "efAdnSfi"
    .parameter "adnRecordId"
    .parameter "isType1"

    .prologue
    const/4 v2, 0x0

    .line 618
    const/4 v0, 0x0

    .line 620
    .local v0, emailRecord:[B
    if-eqz p1, :cond_2

    .line 621
    if-eqz p4, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, p0, :cond_1

    .line 643
    :cond_0
    :goto_0
    return-object v2

    .line 624
    :cond_1
    if-nez p4, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v4, p0, -0x2

    if-gt v3, v4, :cond_0

    .line 628
    :cond_2
    new-array v0, p0, [B

    .line 630
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, p0, :cond_3

    .line 631
    const/4 v2, -0x1

    aput-byte v2, v0, v1

    .line 630
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 634
    :cond_3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 635
    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {p1, v0, v2, v3}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm8BitUnpackedField(Ljava/lang/String;[BII)V

    .line 637
    if-nez p4, :cond_4

    .line 638
    add-int/lit8 v2, p0, -0x2

    int-to-byte v3, p2

    aput-byte v3, v0, v2

    .line 639
    add-int/lit8 v2, p0, -0x1

    int-to-byte v3, p3

    aput-byte v3, v0, v2

    :cond_4
    move-object v2, v0

    .line 643
    goto :goto_0
.end method

.method public static buildExt1String([BIII)[B
    .locals 5
    .parameter "ext1Data"
    .parameter "offset"
    .parameter "ext1DataBytes"
    .parameter "extRecordId"

    .prologue
    const/4 v4, 0x2

    .line 725
    const/4 v0, 0x0

    .line 727
    .local v0, ext1Record:[B
    if-eqz p0, :cond_1

    const/16 v2, 0xa

    if-gt p2, v2, :cond_0

    if-gez p2, :cond_1

    .line 728
    :cond_0
    const/4 v2, 0x0

    .line 744
    :goto_0
    return-object v2

    .line 730
    :cond_1
    const/16 v2, 0xd

    new-array v0, v2, [B

    .line 732
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_2

    .line 733
    const/4 v2, -0x1

    aput-byte v2, v0, v1

    .line 732
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 736
    :cond_2
    if-eqz p0, :cond_3

    .line 737
    const/4 v2, 0x0

    aput-byte v4, v0, v2

    .line 738
    const/4 v2, 0x1

    int-to-byte v3, p2

    aput-byte v3, v0, v2

    .line 739
    invoke-static {p0, p1, v0, v4, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 742
    :cond_3
    const/16 v2, 0xc

    int-to-byte v3, p3

    aput-byte v3, v0, v2

    move-object v2, v0

    .line 744
    goto :goto_0
.end method

.method public static buildIapString(III)[B
    .locals 3
    .parameter "recordSize"
    .parameter "emailTagNumberInIap"
    .parameter "emailRecordId"

    .prologue
    .line 591
    const/4 v1, 0x0

    .line 593
    .local v1, iapRecord:[B
    const/4 v2, 0x3

    if-gt p0, v2, :cond_0

    if-lt p1, p0, :cond_1

    .line 594
    :cond_0
    const/4 v2, 0x0

    .line 602
    :goto_0
    return-object v2

    .line 596
    :cond_1
    new-array v1, p0, [B

    .line 597
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, p0, :cond_2

    .line 598
    const/4 v2, -0x1

    aput-byte v2, v1, v0

    .line 597
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 600
    :cond_2
    int-to-byte v2, p2

    aput-byte v2, v1, p1

    move-object v2, v1

    .line 602
    goto :goto_0
.end method

.method public static calcEmptyExt1RecordCntNeeded(Ljava/lang/String;)I
    .locals 5
    .parameter "number"

    .prologue
    const/4 v1, 0x0

    .line 907
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 929
    :cond_0
    :goto_0
    return v1

    .line 911
    :cond_1
    :try_start_0
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCD(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 916
    .local v3, numberBytes:[B
    if-eqz v3, :cond_0

    .line 919
    array-length v0, v3

    .line 921
    .local v0, bytes:I
    const/16 v4, 0xb

    if-le v0, v4, :cond_0

    .line 924
    add-int/lit8 v4, v0, -0xb

    div-int/lit8 v1, v4, 0xa

    .line 925
    .local v1, cnt:I
    add-int/lit8 v4, v0, -0xb

    rem-int/lit8 v4, v4, 0xa

    if-eqz v4, :cond_0

    .line 926
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 912
    .end local v0           #bytes:I
    .end local v1           #cnt:I
    .end local v3           #numberBytes:[B
    :catch_0
    move-exception v2

    .line 913
    .local v2, e:Ljava/lang/Exception;
    goto :goto_0
.end method

.method private static getAdnBytes(Ljava/lang/String;I)[B
    .locals 3
    .parameter "str"
    .parameter "maxBytesToReturn"

    .prologue
    const/4 v1, 0x0

    .line 849
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v0, v1

    .line 871
    :cond_0
    :goto_0
    return-object v0

    .line 852
    :cond_1
    invoke-static {p0}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm8BitPackedChecked(Ljava/lang/String;)[B

    move-result-object v0

    .line 853
    .local v0, ret:[B
    if-nez v0, :cond_2

    .line 854
    invoke-static {p0}, Lcom/android/internal/telephony/AdnByteArray;->stringToAdnUcs2StartsWith80(Ljava/lang/String;)[B

    move-result-object v0

    .line 857
    :cond_2
    if-eqz v0, :cond_3

    array-length v2, v0

    if-le v2, p1, :cond_0

    .line 861
    :cond_3
    invoke-static {p0}, Lcom/android/internal/telephony/AdnByteArray;->stringToAdnUcs2StartsWith81(Ljava/lang/String;)[B

    move-result-object v0

    .line 862
    if-eqz v0, :cond_4

    array-length v2, v0

    if-le v2, p1, :cond_0

    .line 866
    :cond_4
    invoke-static {p0}, Lcom/android/internal/telephony/AdnByteArray;->stringToAdnUcs2StartsWith82(Ljava/lang/String;)[B

    move-result-object v0

    .line 867
    if-eqz v0, :cond_5

    array-length v2, v0

    if-le v2, p1, :cond_0

    :cond_5
    move-object v0, v1

    .line 871
    goto :goto_0
.end method

.method private isAdditionalNumberLegal()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 809
    iget-object v4, p0, Lcom/android/internal/telephony/AdnRecord;->additionalNumber:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 828
    :goto_0
    return v2

    .line 812
    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/AdnRecord;->additionalNumber:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/AdnRecord;->containsNonGsmCharacter(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v2, v3

    .line 813
    goto :goto_0

    .line 815
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/AdnRecord;->additionalNumber:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    .line 816
    .local v1, len:I
    iget-object v4, p0, Lcom/android/internal/telephony/AdnRecord;->additionalNumber:Ljava/lang/String;

    const-string v5, "+"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 817
    add-int/lit8 v1, v1, -0x1

    .line 819
    :cond_2
    const/16 v4, 0xf

    if-le v1, v4, :cond_3

    move v2, v3

    .line 820
    goto :goto_0

    .line 823
    :cond_3
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/AdnRecord;->additionalNumber:Ljava/lang/String;

    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCD(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 824
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    move v2, v3

    .line 825
    goto :goto_0
.end method

.method private isAlphaTagLegal(I)Z
    .locals 4
    .parameter "adnRecordSize"

    .prologue
    const/4 v1, 0x1

    .line 875
    iget-object v2, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 883
    :cond_0
    :goto_0
    return v1

    .line 878
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    add-int/lit8 v3, p1, -0xe

    invoke-static {v2, v3}, Lcom/android/internal/telephony/AdnRecord;->getAdnBytes(Ljava/lang/String;I)[B

    move-result-object v0

    .line 880
    .local v0, tagBytes:[B
    if-eqz v0, :cond_2

    array-length v2, v0

    add-int/lit8 v3, p1, -0xe

    if-le v2, v3, :cond_0

    .line 881
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isEmailsEmpty()Z
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 176
    iget-object v5, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    if-nez v5, :cond_1

    .line 181
    :cond_0
    :goto_0
    return v4

    .line 178
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 179
    .local v1, email:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 180
    const/4 v4, 0x0

    goto :goto_0

    .line 178
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private isEmailsLegal()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 832
    iget-object v3, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    if-nez v3, :cond_1

    .line 845
    :cond_0
    :goto_0
    return v1

    .line 835
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 838
    iget-object v3, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/AdnRecord;->containsNonGsmCharacter(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v1, v2

    .line 839
    goto :goto_0

    .line 841
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    .line 842
    .local v0, len:I
    const/16 v3, 0x26

    if-le v0, v3, :cond_0

    move v1, v2

    .line 843
    goto :goto_0
.end method

.method private isNumberLegal()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 786
    iget-object v4, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 805
    :goto_0
    return v2

    .line 789
    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/AdnRecord;->containsNonGsmCharacter(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v2, v3

    .line 790
    goto :goto_0

    .line 792
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    .line 793
    .local v1, len:I
    iget-object v4, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    const-string v5, "+"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 794
    add-int/lit8 v1, v1, -0x1

    .line 796
    :cond_2
    const/16 v4, 0x30

    if-le v1, v4, :cond_3

    move v2, v3

    .line 797
    goto :goto_0

    .line 800
    :cond_3
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCD(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 801
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    move v2, v3

    .line 802
    goto :goto_0
.end method

.method private parseRecord([B)V
    .locals 6
    .parameter "record"

    .prologue
    const/4 v5, 0x0

    .line 320
    const/4 v3, 0x0

    :try_start_0
    array-length v4, p1

    add-int/lit8 v4, v4, -0xe

    invoke-static {p1, v3, v4}, Lcom/android/internal/telephony/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    .line 324
    iget-object v3, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 325
    const-string v3, ""

    iput-object v3, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    .line 326
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/internal/telephony/LocalizeUtils;->getSortKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/AdnRecord;->sortKey:Ljava/lang/String;

    .line 329
    array-length v3, p1

    add-int/lit8 v1, v3, -0xe

    .line 331
    .local v1, footerOffset:I
    aget-byte v3, p1, v1

    and-int/lit16 v2, v3, 0xff

    .line 333
    .local v2, numberLength:I
    const/16 v3, 0xb

    if-le v2, v3, :cond_1

    .line 335
    const-string v3, ""

    iput-object v3, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    .line 360
    .end local v1           #footerOffset:I
    .end local v2           #numberLength:I
    :goto_0
    return-void

    .line 346
    .restart local v1       #footerOffset:I
    .restart local v2       #numberLength:I
    :cond_1
    add-int/lit8 v3, v1, 0x1

    invoke-static {p1, v3, v2}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDToString([BII)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    .line 350
    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    iput v3, p0, Lcom/android/internal/telephony/AdnRecord;->extRecord:I

    .line 352
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 354
    .end local v1           #footerOffset:I
    .end local v2           #numberLength:I
    :catch_0
    move-exception v0

    .line 355
    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v3, "GSM"

    const-string v4, "Error parsing AdnRecord"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 356
    const-string v3, ""

    iput-object v3, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    .line 357
    const-string v3, ""

    iput-object v3, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    .line 358
    iput-object v5, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    goto :goto_0
.end method

.method private static stringCompareNullEqualsEmpty(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "s1"
    .parameter "s2"

    .prologue
    .line 190
    if-ne p0, p1, :cond_0

    .line 191
    const/4 v0, 0x1

    .line 199
    :goto_0
    return v0

    .line 193
    :cond_0
    if-nez p0, :cond_1

    .line 194
    const-string p0, ""

    .line 196
    :cond_1
    if-nez p1, :cond_2

    .line 197
    const-string p1, ""

    .line 199
    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public appendExtRecord([B)V
    .locals 4
    .parameter "extRecord"

    .prologue
    const/4 v3, 0x2

    .line 288
    :try_start_0
    array-length v1, p1

    const/16 v2, 0xd

    if-eq v1, v2, :cond_1

    .line 310
    :cond_0
    :goto_0
    return-void

    .line 292
    :cond_1
    const/4 v1, 0x0

    aget-byte v1, p1, v1

    and-int/lit8 v1, v1, 0x3

    if-ne v1, v3, :cond_0

    .line 297
    const/4 v1, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0xa

    if-gt v1, v2, :cond_0

    .line 302
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    invoke-static {p1, v2, v3}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDFragmentToString([BII)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 307
    :catch_0
    move-exception v0

    .line 308
    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v1, "GSM"

    const-string v2, "Error parsing AdnRecord ext record"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public appendExtRecordForAdditionalNumber([B)V
    .locals 4
    .parameter "extRecord"

    .prologue
    const/4 v3, 0x2

    .line 503
    :try_start_0
    array-length v1, p1

    const/16 v2, 0xd

    if-eq v1, v2, :cond_0

    .line 504
    const/16 v1, 0xff

    iput v1, p0, Lcom/android/internal/telephony/AdnRecord;->extRecordForAdditionalNumber:I

    .line 528
    :goto_0
    return-void

    .line 508
    :cond_0
    const/4 v1, 0x0

    aget-byte v1, p1, v1

    and-int/lit8 v1, v1, 0x3

    if-eq v1, v3, :cond_1

    .line 509
    const/16 v1, 0xff

    iput v1, p0, Lcom/android/internal/telephony/AdnRecord;->extRecordForAdditionalNumber:I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 525
    :catch_0
    move-exception v0

    .line 526
    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v1, "GSM"

    const-string v2, "Error parsing AdnRecord ext record"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 513
    .end local v0           #ex:Ljava/lang/RuntimeException;
    :cond_1
    const/4 v1, 0x1

    :try_start_1
    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0xa

    if-le v1, v2, :cond_2

    .line 515
    const/16 v1, 0xff

    iput v1, p0, Lcom/android/internal/telephony/AdnRecord;->extRecordForAdditionalNumber:I

    goto :goto_0

    .line 519
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/internal/telephony/AdnRecord;->additionalNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    invoke-static {p1, v2, v3}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDFragmentToString([BII)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/AdnRecord;->additionalNumber:Ljava/lang/String;

    .line 523
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/android/internal/telephony/AdnRecord;->extRecordForAdditionalNumber:I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public appendExtRecordForNumber([B)V
    .locals 4
    .parameter "extRecord"

    .prologue
    const/4 v3, 0x2

    .line 474
    :try_start_0
    array-length v1, p1

    const/16 v2, 0xd

    if-eq v1, v2, :cond_0

    .line 475
    const/16 v1, 0xff

    iput v1, p0, Lcom/android/internal/telephony/AdnRecord;->extRecord:I

    .line 499
    :goto_0
    return-void

    .line 479
    :cond_0
    const/4 v1, 0x0

    aget-byte v1, p1, v1

    and-int/lit8 v1, v1, 0x3

    if-eq v1, v3, :cond_1

    .line 480
    const/16 v1, 0xff

    iput v1, p0, Lcom/android/internal/telephony/AdnRecord;->extRecord:I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 496
    :catch_0
    move-exception v0

    .line 497
    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v1, "GSM"

    const-string v2, "Error parsing AdnRecord ext record"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 484
    .end local v0           #ex:Ljava/lang/RuntimeException;
    :cond_1
    const/4 v1, 0x1

    :try_start_1
    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0xa

    if-le v1, v2, :cond_2

    .line 486
    const/16 v1, 0xff

    iput v1, p0, Lcom/android/internal/telephony/AdnRecord;->extRecord:I

    goto :goto_0

    .line 490
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    invoke-static {p1, v2, v3}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDFragmentToString([BII)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    .line 494
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/android/internal/telephony/AdnRecord;->extRecord:I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public buildAdnString(I)[B
    .locals 10
    .parameter "recordSize"

    .prologue
    const/4 v5, 0x0

    const/4 v9, 0x0

    const/4 v8, -0x1

    .line 236
    add-int/lit8 v3, p1, -0xe

    .line 239
    .local v3, footerOffset:I
    new-array v0, p1, [B

    .line 240
    .local v0, adnString:[B
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, p1, :cond_0

    .line 241
    aput-byte v8, v0, v4

    .line 240
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 244
    :cond_0
    iget-object v6, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 245
    const-string v5, "GSM"

    const-string v6, "[buildAdnString] Empty dialing number"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    .end local v0           #adnString:[B
    :cond_1
    :goto_1
    return-object v0

    .line 247
    .restart local v0       #adnString:[B
    :cond_2
    iget-object v6, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x14

    if-le v6, v7, :cond_3

    .line 249
    const-string v6, "GSM"

    const-string v7, "[buildAdnString] Max length of dialing number is 20"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v5

    .line 251
    goto :goto_1

    .line 252
    :cond_3
    iget-object v6, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v3, :cond_4

    .line 253
    const-string v6, "GSM"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[buildAdnString] Max length of tag is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v5

    .line 255
    goto :goto_1

    .line 257
    :cond_4
    iget-object v5, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v1

    .line 259
    .local v1, bcdNumber:[B
    add-int/lit8 v5, v3, 0x1

    array-length v6, v1

    invoke-static {v1, v9, v0, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 262
    add-int/lit8 v5, v3, 0x0

    array-length v6, v1

    int-to-byte v6, v6

    aput-byte v6, v0, v5

    .line 264
    add-int/lit8 v5, v3, 0xc

    aput-byte v8, v0, v5

    .line 266
    add-int/lit8 v5, v3, 0xd

    aput-byte v8, v0, v5

    .line 269
    iget-object v5, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 272
    iget-object v5, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    add-int/lit8 v6, p1, -0xe

    invoke-static {v5, v6}, Lcom/android/internal/telephony/AdnRecord;->getAdnBytes(Ljava/lang/String;I)[B

    move-result-object v2

    .line 275
    .local v2, byteTag:[B
    array-length v5, v2

    invoke-static {v2, v9, v0, v9, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1
.end method

.method public containsNonGsmCharacter(Ljava/lang/String;)Z
    .locals 3
    .parameter "str"

    .prologue
    const/4 v1, 0x1

    .line 778
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 782
    :cond_0
    :goto_0
    return v1

    .line 781
    :cond_1
    invoke-static {p1}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm8BitPackedChecked(Ljava/lang/String;)[B

    move-result-object v0

    .line 782
    .local v0, byteStr:[B
    if-eqz v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 213
    const/4 v0, 0x0

    return v0
.end method

.method public getAdditionalNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->additionalNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getAdditionalNumberLength()I
    .locals 2

    .prologue
    .line 396
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->additionalNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 397
    const/4 v0, 0x0

    .line 402
    :goto_0
    return v0

    .line 399
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->additionalNumber:Ljava/lang/String;

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 400
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->additionalNumber:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 402
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->additionalNumber:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_0
.end method

.method public getAlphaTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    return-object v0
.end method

.method public getEfId()I
    .locals 1

    .prologue
    .line 756
    iget v0, p0, Lcom/android/internal/telephony/AdnRecord;->efid:I

    return v0
.end method

.method public getEmailLength()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 410
    iget-object v1, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    if-nez v1, :cond_1

    .line 415
    :cond_0
    :goto_0
    return v0

    .line 412
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 415
    iget-object v1, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_0
.end method

.method public getEmails()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    return-object v0
.end method

.method public getExtRecord()I
    .locals 1

    .prologue
    .line 431
    iget v0, p0, Lcom/android/internal/telephony/AdnRecord;->extRecord:I

    return v0
.end method

.method public getExtRecordForAdditionalNumber()I
    .locals 1

    .prologue
    .line 435
    iget v0, p0, Lcom/android/internal/telephony/AdnRecord;->extRecordForAdditionalNumber:I

    return v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    return-object v0
.end method

.method public getNumberLength()I
    .locals 2

    .prologue
    .line 386
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 387
    const/4 v0, 0x0

    .line 392
    :goto_0
    return v0

    .line 389
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 390
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 392
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_0
.end method

.method public getRecordId()I
    .locals 1

    .prologue
    .line 748
    iget v0, p0, Lcom/android/internal/telephony/AdnRecord;->recordNumber:I

    return v0
.end method

.method public getSortKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->sortKey:Ljava/lang/String;

    return-object v0
.end method

.method public getTempInt()I
    .locals 1

    .prologue
    .line 378
    iget v0, p0, Lcom/android/internal/telephony/AdnRecord;->tmp:I

    return v0
.end method

.method public hasExtendedRecord()Z
    .locals 2

    .prologue
    .line 185
    iget v0, p0, Lcom/android/internal/telephony/AdnRecord;->extRecord:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/AdnRecord;->extRecord:I

    const/16 v1, 0xff

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasExtendedRecordForAdditionalNumber()Z
    .locals 2

    .prologue
    .line 469
    iget v0, p0, Lcom/android/internal/telephony/AdnRecord;->extRecordForAdditionalNumber:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/AdnRecord;->extRecordForAdditionalNumber:I

    const/16 v1, 0xff

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/telephony/AdnRecord;->isEmailsEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->additionalNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEqual(Lcom/android/internal/telephony/AdnRecord;)Z
    .locals 2
    .parameter "adn"

    .prologue
    .line 204
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/internal/telephony/AdnRecord;->stringCompareNullEqualsEmpty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/internal/telephony/AdnRecord;->stringCompareNullEqualsEmpty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->additionalNumber:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/internal/telephony/AdnRecord;->additionalNumber:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/internal/telephony/AdnRecord;->stringCompareNullEqualsEmpty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    iget-object v1, p1, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLegal(I)Z
    .locals 2
    .parameter "adnRecordSize"

    .prologue
    const/4 v0, 0x0

    .line 887
    invoke-direct {p0}, Lcom/android/internal/telephony/AdnRecord;->isNumberLegal()Z

    move-result v1

    if-nez v1, :cond_1

    .line 899
    :cond_0
    :goto_0
    return v0

    .line 890
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/AdnRecord;->isAdditionalNumberLegal()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 893
    invoke-direct {p0}, Lcom/android/internal/telephony/AdnRecord;->isEmailsLegal()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 896
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/AdnRecord;->isAlphaTagLegal(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 899
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public parseAdditionalNumber([B)V
    .locals 4
    .parameter "record"

    .prologue
    .line 439
    if-nez p1, :cond_1

    .line 466
    :cond_0
    :goto_0
    return-void

    .line 442
    :cond_1
    :try_start_0
    array-length v2, p1

    const/16 v3, 0xf

    if-eq v2, v3, :cond_2

    array-length v2, p1

    const/16 v3, 0x11

    if-ne v2, v3, :cond_0

    .line 446
    :cond_2
    const/4 v2, 0x0

    aget-byte v2, p1, v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 450
    const/4 v2, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v0, v2, 0xff

    .line 452
    .local v0, anumberLength:I
    const/16 v2, 0xa

    if-le v0, v2, :cond_3

    .line 454
    const-string v2, ""

    iput-object v2, p0, Lcom/android/internal/telephony/AdnRecord;->additionalNumber:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 463
    .end local v0           #anumberLength:I
    :catch_0
    move-exception v1

    .line 464
    .local v1, ex:Ljava/lang/RuntimeException;
    const-string v2, "GSM"

    const-string v3, "Error parsing AdnRecord ext record"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 458
    .end local v1           #ex:Ljava/lang/RuntimeException;
    .restart local v0       #anumberLength:I
    :cond_3
    const/4 v2, 0x2

    :try_start_1
    invoke-static {p1, v2, v0}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDToString([BII)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/AdnRecord;->additionalNumber:Ljava/lang/String;

    .line 461
    const/16 v2, 0xe

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    iput v2, p0, Lcom/android/internal/telephony/AdnRecord;->extRecordForAdditionalNumber:I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public setEfId(I)V
    .locals 0
    .parameter "efid"

    .prologue
    .line 760
    iput p1, p0, Lcom/android/internal/telephony/AdnRecord;->efid:I

    .line 761
    return-void
.end method

.method public setEmails([Ljava/lang/String;)V
    .locals 0
    .parameter "emails"

    .prologue
    .line 162
    iput-object p1, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    .line 163
    return-void
.end method

.method public setRecordId(I)V
    .locals 0
    .parameter "adnRecordId"

    .prologue
    .line 752
    iput p1, p0, Lcom/android/internal/telephony/AdnRecord;->recordNumber:I

    .line 753
    return-void
.end method

.method public setTempInt(I)V
    .locals 0
    .parameter "tmp"

    .prologue
    .line 374
    iput p1, p0, Lcom/android/internal/telephony/AdnRecord;->tmp:I

    .line 375
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ADN Record \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public truncAdditionalNumber(I)V
    .locals 2
    .parameter "len"

    .prologue
    .line 425
    if-lez p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->additionalNumber:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->additionalNumber:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 426
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->additionalNumber:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->additionalNumber:Ljava/lang/String;

    .line 428
    :cond_0
    return-void
.end method

.method public truncNumber(I)V
    .locals 2
    .parameter "len"

    .prologue
    .line 419
    if-lez p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 420
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    .line 422
    :cond_0
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 217
    iget v0, p0, Lcom/android/internal/telephony/AdnRecord;->efid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 218
    iget v0, p0, Lcom/android/internal/telephony/AdnRecord;->recordNumber:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 219
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 220
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 221
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 222
    return-void
.end method
