.class Lcom/meizu/preference/MzPreferenceActivity$1;
.super Ljava/lang/Object;
.source "MzPreferenceActivity.java"

# interfaces
.implements Lcom/meizu/widget/PreferenceFrame$OnScrollingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/preference/MzPreferenceActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/preference/MzPreferenceActivity;


# direct methods
.method constructor <init>(Lcom/meizu/preference/MzPreferenceActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 135
    iput-object p1, p0, Lcom/meizu/preference/MzPreferenceActivity$1;->this$0:Lcom/meizu/preference/MzPreferenceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolling(I)V
    .locals 2
    .parameter "scrollX"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/meizu/preference/MzPreferenceActivity$1;->this$0:Lcom/meizu/preference/MzPreferenceActivity;

    #getter for: Lcom/meizu/preference/MzPreferenceActivity;->mUpdateHeader:Landroid/preference/PreferenceActivity$Header;
    invoke-static {v0}, Lcom/meizu/preference/MzPreferenceActivity;->access$000(Lcom/meizu/preference/MzPreferenceActivity;)Landroid/preference/PreferenceActivity$Header;

    move-result-object v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 140
    iget-object v0, p0, Lcom/meizu/preference/MzPreferenceActivity$1;->this$0:Lcom/meizu/preference/MzPreferenceActivity;

    iget-object v1, p0, Lcom/meizu/preference/MzPreferenceActivity$1;->this$0:Lcom/meizu/preference/MzPreferenceActivity;

    #getter for: Lcom/meizu/preference/MzPreferenceActivity;->mUpdateHeader:Landroid/preference/PreferenceActivity$Header;
    invoke-static {v1}, Lcom/meizu/preference/MzPreferenceActivity;->access$000(Lcom/meizu/preference/MzPreferenceActivity;)Landroid/preference/PreferenceActivity$Header;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/preference/MzPreferenceActivity;->switchToHeader(Landroid/preference/PreferenceActivity$Header;)V

    .line 142
    :cond_0
    return-void
.end method
