.class final Lde/i$n;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "n"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lde/i;


# direct methods
.method private constructor <init>(Lde/i;)V
    .locals 0

    iput-object p1, p0, Lde/i$n;->a:Lde/i;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lde/i;Lde/i$c;)V
    .locals 0

    invoke-direct {p0, p1}, Lde/i$n;-><init>(Lde/i;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Landroid/os/Bundle;
    .locals 6

    invoke-static {}, Lgd/c;->q()J

    move-result-wide v0

    invoke-static {}, Lgd/c;->s()J

    move-result-wide v2

    invoke-static {}, Lgd/c;->r()I

    move-result p1

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v5, "lastChargedTime"

    invoke-virtual {v4, v5, v0, v1}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "drainedTime"

    invoke-virtual {v4, v0, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "drainedPercent"

    invoke-virtual {v4, v0, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-object v4
.end method

.method protected b(Landroid/os/Bundle;)V
    .locals 8

    iget-object v0, p0, Lde/i$n;->a:Lde/i;

    invoke-static {v0}, Lde/i;->w(Lde/i;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e016d

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b03c5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v3, p0, Lde/i$n;->a:Lde/i;

    invoke-static {v3}, Lde/i;->w(Lde/i;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v3, v4, p1}, Lde/i;->l(Lde/i;Landroid/content/Context;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p1

    iget-object v3, p0, Lde/i$n;->a:Lde/i;

    invoke-static {v3}, Lde/i;->w(Lde/i;)Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    const v7, 0x7f12037b

    invoke-virtual {v4, v7, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, p1}, Lde/i;->m(Lde/i;Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance p1, Lmiuix/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lde/i$n;->a:Lde/i;

    invoke-static {v1}, Lde/i;->w(Lde/i;)Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f130455

    invoke-direct {p1, v1, v3}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p1, v5}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v1, 0x7f120f75

    invoke-virtual {p1, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f12069c

    invoke-virtual {p1, v0, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lde/i$n$a;

    invoke-direct {v0, p0}, Lde/i$n$a;-><init>(Lde/i$n;)V

    const v1, 0x7f1206a3

    invoke-virtual {p1, v1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    iget-object v0, p0, Lde/i$n;->a:Lde/i;

    invoke-static {v0}, Lde/i;->n(Lde/i;)V

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->show()V

    iget-object v0, p0, Lde/i$n;->a:Lde/i;

    invoke-static {v0, p1}, Lde/i;->o(Lde/i;Lmiuix/appcompat/app/AlertDialog;)Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lde/i$n;->a([Ljava/lang/Void;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Lde/i$n;->b(Landroid/os/Bundle;)V

    return-void
.end method
