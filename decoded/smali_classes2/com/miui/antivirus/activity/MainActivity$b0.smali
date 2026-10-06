.class Lcom/miui/antivirus/activity/MainActivity$b0;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/antivirus/activity/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b0"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List<",
        "Lo2/b$b;",
        ">;>;"
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/antivirus/activity/MainActivity;",
            ">;"
        }
    .end annotation
.end field

.field private c:I


# direct methods
.method public constructor <init>(Lcom/miui/antivirus/activity/MainActivity;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antivirus/activity/MainActivity$b0;->a:Landroid/content/Context;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/antivirus/activity/MainActivity$b0;->b:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List<",
            "Lo2/b$b;",
            ">;"
        }
    .end annotation

    iget-object p1, p0, Lcom/miui/antivirus/activity/MainActivity$b0;->a:Landroid/content/Context;

    invoke-static {p1}, Lo2/b;->g(Landroid/content/Context;)Lo2/b;

    move-result-object p1

    invoke-virtual {p1}, Lo2/b;->f()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected b(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo2/b$b;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/antivirus/activity/MainActivity$b0;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/antivirus/activity/MainActivity;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo2/b$b;

    iget-object v1, v1, Lo2/b$b;->a:Ljava/lang/String;

    const-string v4, "Mi"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lw2/t;->F()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v3}, Lo2/h;->V(Z)V

    invoke-static {v3}, Lo2/h;->D(Z)V

    invoke-static {v0}, Lcom/miui/antivirus/activity/MainActivity;->j0(Lcom/miui/antivirus/activity/MainActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/antivirus/activity/MainActivity$b0;->a:Landroid/content/Context;

    const v4, 0x7f1213f4

    new-array v5, v2, [Ljava/lang/Object;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo2/b$b;

    iget-object p1, p1, Lo2/b$b;->a:Ljava/lang/String;

    aput-object p1, v5, v3

    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v3}, Lo2/h;->A(Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/miui/antivirus/activity/MainActivity$b0;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v2}, Lw2/t;->N(Landroid/content/ContentResolver;Z)V

    :cond_0
    invoke-static {v0}, Lcom/miui/antivirus/activity/MainActivity;->g0(Lcom/miui/antivirus/activity/MainActivity;)V

    return-void

    :cond_1
    invoke-static {v0}, Lcom/miui/antivirus/activity/MainActivity;->j0(Lcom/miui/antivirus/activity/MainActivity;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v0, v0, p1}, Lcom/miui/antivirus/activity/MainActivity;->k0(Lcom/miui/antivirus/activity/MainActivity;Lcom/miui/antivirus/activity/MainActivity;Ljava/util/List;)V

    iget-object p1, p0, Lcom/miui/antivirus/activity/MainActivity$b0;->a:Landroid/content/Context;

    iget v0, p0, Lcom/miui/antivirus/activity/MainActivity$b0;->c:I

    add-int/2addr v0, v2

    invoke-static {p1, v0}, Lo2/c;->k(Landroid/content/Context;I)V

    iget-object p1, p0, Lcom/miui/antivirus/activity/MainActivity$b0;->a:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lo2/c;->l(Landroid/content/Context;J)V

    invoke-static {v3}, Lo2/h;->D(Z)V

    goto :goto_0

    :cond_2
    invoke-static {v0, p1}, Lcom/miui/antivirus/activity/MainActivity;->l0(Lcom/miui/antivirus/activity/MainActivity;Ljava/util/List;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public c(I)V
    .locals 0

    iput p1, p0, Lcom/miui/antivirus/activity/MainActivity$b0;->c:I

    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/antivirus/activity/MainActivity$b0;->a([Ljava/lang/Void;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/miui/antivirus/activity/MainActivity$b0;->b(Ljava/util/List;)V

    return-void
.end method
