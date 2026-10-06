.class Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity$g;->a:Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity$g;->a:Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;

    invoke-virtual {v0}, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;->isSearchMode()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity$g;->a:Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;

    invoke-static {v0}, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;->r0(Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity$g;->a:Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;

    invoke-static {p1}, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;->r0(Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;->H0(Ljava/util/List;)V

    iget-object p1, p0, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity$g;->a:Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;

    invoke-static {p1}, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;->r0(Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;->w0(Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;Ljava/util/List;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity$g;->a:Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;

    invoke-static {v0, p1}, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;->k0(Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
