.class Lcom/miui/antispam/ui/activity/BaseListActivity$f;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/antispam/ui/activity/BaseListActivity;->i0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:Lmiuix/appcompat/app/ProgressDialog;

.field c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ll2/d$c;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic d:Lcom/miui/antispam/ui/activity/BaseListActivity;


# direct methods
.method constructor <init>(Lcom/miui/antispam/ui/activity/BaseListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antispam/ui/activity/BaseListActivity$f;->d:Lcom/miui/antispam/ui/activity/BaseListActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/miui/antispam/ui/activity/BaseListActivity$f;->a:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/miui/antispam/ui/activity/BaseListActivity$f;->c:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 8

    iget-object p1, p0, Lcom/miui/antispam/ui/activity/BaseListActivity$f;->c:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ll2/d$c;

    iget v2, v0, Ll2/d$c;->b:I

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-eq v2, v3, :cond_1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/miui/antispam/ui/activity/BaseListActivity$f;->d:Lcom/miui/antispam/ui/activity/BaseListActivity;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lmiui/provider/ExtraTelephony$Phonelist;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v5, v0, Ll2/d$c;->a:J

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v2, v0, v1, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_2

    :cond_1
    :goto_1
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v5, "sync_dirty"

    invoke-virtual {v2, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v3, p0, Lcom/miui/antispam/ui/activity/BaseListActivity$f;->d:Lcom/miui/antispam/ui/activity/BaseListActivity;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v5, Lmiui/provider/ExtraTelephony$Phonelist;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v6, v0, Ll2/d$c;->a:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v3, v0, v2, v1, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :goto_2
    new-array v0, v4, [Ljava/lang/Integer;

    const/4 v1, 0x0

    iget v2, p0, Lcom/miui/antispam/ui/activity/BaseListActivity$f;->a:I

    add-int/2addr v2, v4

    iput v2, p0, Lcom/miui/antispam/ui/activity/BaseListActivity$f;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method protected b(Ljava/lang/Void;)V
    .locals 0

    iget-object p1, p0, Lcom/miui/antispam/ui/activity/BaseListActivity$f;->b:Lmiuix/appcompat/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/antispam/ui/activity/BaseListActivity$f;->d:Lcom/miui/antispam/ui/activity/BaseListActivity;

    invoke-virtual {p1}, Lmiuix/appcompat/app/AppCompatActivity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/miui/antispam/ui/activity/BaseListActivity$f;->d:Lcom/miui/antispam/ui/activity/BaseListActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    move-result p1

    if-nez p1, :cond_0

    :try_start_0
    iget-object p1, p0, Lcom/miui/antispam/ui/activity/BaseListActivity$f;->b:Lmiuix/appcompat/app/ProgressDialog;

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->dismissWithoutAnimation()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method protected varargs c([Ljava/lang/Integer;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/BaseListActivity$f;->b:Lmiuix/appcompat/app/ProgressDialog;

    const/4 v1, 0x0

    aget-object p1, p1, v1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/ProgressDialog;->setProgress(I)V

    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/antispam/ui/activity/BaseListActivity$f;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/antispam/ui/activity/BaseListActivity$f;->b(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 6

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/BaseListActivity$f;->d:Lcom/miui/antispam/ui/activity/BaseListActivity;

    iget-object v0, v0, Lcom/miui/antispam/ui/activity/BaseListActivity;->b:Ll2/d;

    invoke-virtual {v0}, Lcom/miui/antispam/ui/view/a;->q()Landroid/util/SparseBooleanArray;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-virtual {v0, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/miui/antispam/ui/activity/BaseListActivity$f;->c:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/miui/antispam/ui/activity/BaseListActivity$f;->d:Lcom/miui/antispam/ui/activity/BaseListActivity;

    iget-object v4, v4, Lcom/miui/antispam/ui/activity/BaseListActivity;->b:Ll2/d;

    invoke-virtual {v0, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ll2/d;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ll2/d$c;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Lmiuix/appcompat/app/ProgressDialog;

    iget-object v2, p0, Lcom/miui/antispam/ui/activity/BaseListActivity$f;->d:Lcom/miui/antispam/ui/activity/BaseListActivity;

    invoke-direct {v0, v2}, Lmiuix/appcompat/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/antispam/ui/activity/BaseListActivity$f;->b:Lmiuix/appcompat/app/ProgressDialog;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lmiuix/appcompat/app/ProgressDialog;->setProgressStyle(I)V

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/BaseListActivity$f;->b:Lmiuix/appcompat/app/ProgressDialog;

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/BaseListActivity$f;->b:Lmiuix/appcompat/app/ProgressDialog;

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/BaseListActivity$f;->b:Lmiuix/appcompat/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/ProgressDialog;->setProgressNumberFormat(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/BaseListActivity$f;->b:Lmiuix/appcompat/app/ProgressDialog;

    iget-object v1, p0, Lcom/miui/antispam/ui/activity/BaseListActivity$f;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/ProgressDialog;->setMax(I)V

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/BaseListActivity$f;->b:Lmiuix/appcompat/app/ProgressDialog;

    iget-object v1, p0, Lcom/miui/antispam/ui/activity/BaseListActivity$f;->d:Lcom/miui/antispam/ui/activity/BaseListActivity;

    iget-boolean v1, v1, Lcom/miui/antispam/ui/activity/BaseListActivity;->m:Z

    if-eqz v1, :cond_2

    const v1, 0x7f1206b6

    goto :goto_1

    :cond_2
    const v1, 0x7f1206ba

    :goto_1
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/e;->setTitle(I)V

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/BaseListActivity$f;->b:Lmiuix/appcompat/app/ProgressDialog;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->show()V

    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/miui/antispam/ui/activity/BaseListActivity$f;->c([Ljava/lang/Integer;)V

    return-void
.end method
