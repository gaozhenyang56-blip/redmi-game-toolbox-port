.class Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;


# direct methods
.method constructor <init>(Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings$a;->a:Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 5

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings$a;->a:Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;

    invoke-static {v0}, Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;->d0(Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;)Lgc/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings$a;->a:Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;

    invoke-static {v0}, Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;->d0(Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;)Lgc/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_0
    iget-object v0, p0, Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings$a;->a:Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;

    invoke-static {v0}, Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;->f0(Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings$a;->a:Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;

    invoke-static {v0}, Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;->m0(Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;)Lcom/miui/permcenter/privacyblur/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/permcenter/privacyblur/a;->clear()V

    iget-object v0, p0, Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings$a;->a:Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;

    new-instance v2, Lgc/a;

    iget-object v3, p0, Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings$a;->a:Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;

    invoke-static {v3}, Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;->n0(Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;)Lcom/miui/permcenter/privacyblur/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/permcenter/privacyblur/a;->l()Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings$a;->a:Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;

    invoke-static {v4}, Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;->o0(Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;)Lbc/a$a;

    move-result-object v4

    invoke-direct {v2, v3, p1, v4}, Lgc/a;-><init>(Ljava/util/List;Ljava/lang/String;Lbc/a$a;)V

    invoke-static {v0, v2}, Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;->e0(Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;Lgc/a;)Lgc/a;

    iget-object p1, p0, Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings$a;->a:Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;

    invoke-static {p1}, Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;->d0(Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;)Lgc/a;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Void;

    invoke-virtual {p1, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    iget-object p1, p0, Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings$a;->a:Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;

    invoke-static {p1}, Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;->p0(Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
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
