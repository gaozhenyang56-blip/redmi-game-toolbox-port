.class Lcom/miui/appcompatibility/AppExcepitonTipsActivity$c;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/appcompatibility/AppExcepitonTipsActivity;->g0(Lmiuix/appcompat/app/AlertDialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/appcompatibility/AppExcepitonTipsActivity;


# direct methods
.method constructor <init>(Lcom/miui/appcompatibility/AppExcepitonTipsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/appcompatibility/AppExcepitonTipsActivity$c;->a:Lcom/miui/appcompatibility/AppExcepitonTipsActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 0

    iget-object p1, p0, Lcom/miui/appcompatibility/AppExcepitonTipsActivity$c;->a:Lcom/miui/appcompatibility/AppExcepitonTipsActivity;

    invoke-static {p1}, Lcom/miui/appcompatibility/AppExcepitonTipsActivity;->i0(Lcom/miui/appcompatibility/AppExcepitonTipsActivity;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected b(Ljava/lang/Boolean;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/miui/appcompatibility/AppExcepitonTipsActivity$c;->a:Lcom/miui/appcompatibility/AppExcepitonTipsActivity;

    invoke-static {p1}, Lcom/miui/appcompatibility/AppExcepitonTipsActivity;->j0(Lcom/miui/appcompatibility/AppExcepitonTipsActivity;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.miui.appcompatibility.LaunchDialog.launcher"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/appcompatibility/AppExcepitonTipsActivity$c;->a:Lcom/miui/appcompatibility/AppExcepitonTipsActivity;

    invoke-static {p1}, Lcom/miui/appcompatibility/AppExcepitonTipsActivity;->m0(Lcom/miui/appcompatibility/AppExcepitonTipsActivity;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {p1, v0}, Lcom/miui/appcompatibility/AppExcepitonTipsActivity;->l0(Lcom/miui/appcompatibility/AppExcepitonTipsActivity;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/miui/appcompatibility/AppExcepitonTipsActivity$c;->a:Lcom/miui/appcompatibility/AppExcepitonTipsActivity;

    invoke-static {p1}, Lcom/miui/appcompatibility/AppExcepitonTipsActivity;->j0(Lcom/miui/appcompatibility/AppExcepitonTipsActivity;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.miui.appcompatibility.LaunchDialog.appstore"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/appcompatibility/AppExcepitonTipsActivity$c;->a:Lcom/miui/appcompatibility/AppExcepitonTipsActivity;

    invoke-static {p1}, Lcom/miui/appcompatibility/AppExcepitonTipsActivity;->n0(Lcom/miui/appcompatibility/AppExcepitonTipsActivity;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    :goto_1
    iget-object p1, p0, Lcom/miui/appcompatibility/AppExcepitonTipsActivity$c;->a:Lcom/miui/appcompatibility/AppExcepitonTipsActivity;

    invoke-static {p1}, Lcom/miui/appcompatibility/AppExcepitonTipsActivity;->p0(Lcom/miui/appcompatibility/AppExcepitonTipsActivity;)Landroid/widget/TextView;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/miui/appcompatibility/AppExcepitonTipsActivity$c;->a:Lcom/miui/appcompatibility/AppExcepitonTipsActivity;

    invoke-static {v1}, Lcom/miui/appcompatibility/AppExcepitonTipsActivity;->o0(Lcom/miui/appcompatibility/AppExcepitonTipsActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/appcompatibility/AppExcepitonTipsActivity$c;->a:Lcom/miui/appcompatibility/AppExcepitonTipsActivity;

    invoke-static {v1}, Lcom/miui/appcompatibility/AppExcepitonTipsActivity;->k0(Lcom/miui/appcompatibility/AppExcepitonTipsActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/appcompatibility/AppExcepitonTipsActivity$c;->a([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/miui/appcompatibility/AppExcepitonTipsActivity$c;->b(Ljava/lang/Boolean;)V

    return-void
.end method
