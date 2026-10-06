.class Lcom/miui/antispam/ui/activity/AddAntiSpamActivity$c;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/antispam/ui/activity/AddAntiSpamActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
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

.field private b:Lcom/miui/antispam/ui/activity/AddAntiSpamActivity$e;

.field private c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/antispam/ui/activity/AddAntiSpamActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(I[Ljava/lang/String;[IIILcom/miui/antispam/ui/activity/AddAntiSpamActivity;)V
    .locals 2

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/antispam/ui/activity/AddAntiSpamActivity$c;->a:I

    new-instance v0, Lcom/miui/antispam/ui/activity/AddAntiSpamActivity$e;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/antispam/ui/activity/AddAntiSpamActivity$e;-><init>(Lcom/miui/antispam/ui/activity/AddAntiSpamActivity$a;)V

    iput-object v0, p0, Lcom/miui/antispam/ui/activity/AddAntiSpamActivity$c;->b:Lcom/miui/antispam/ui/activity/AddAntiSpamActivity$e;

    iput p1, v0, Lcom/miui/antispam/ui/activity/AddAntiSpamActivity$e;->a:I

    iput-object p2, v0, Lcom/miui/antispam/ui/activity/AddAntiSpamActivity$e;->b:[Ljava/lang/String;

    iput-object p3, v0, Lcom/miui/antispam/ui/activity/AddAntiSpamActivity$e;->c:[I

    iput p4, v0, Lcom/miui/antispam/ui/activity/AddAntiSpamActivity$e;->d:I

    iput p5, v0, Lcom/miui/antispam/ui/activity/AddAntiSpamActivity$e;->e:I

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p6}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/miui/antispam/ui/activity/AddAntiSpamActivity$c;->c:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 8

    iget-object p1, p0, Lcom/miui/antispam/ui/activity/AddAntiSpamActivity$c;->b:Lcom/miui/antispam/ui/activity/AddAntiSpamActivity$e;

    iget p1, p1, Lcom/miui/antispam/ui/activity/AddAntiSpamActivity$e;->a:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    sget p1, Lb2/a$c;->a:I

    goto :goto_0

    :cond_0
    sget p1, Lb2/a$c;->c:I

    goto :goto_0

    :cond_1
    sget p1, Lb2/a$c;->b:I

    :goto_0
    const/4 v1, 0x0

    move v2, v1

    :goto_1
    iget-object v3, p0, Lcom/miui/antispam/ui/activity/AddAntiSpamActivity$c;->b:Lcom/miui/antispam/ui/activity/AddAntiSpamActivity$e;

    iget-object v3, v3, Lcom/miui/antispam/ui/activity/AddAntiSpamActivity$e;->b:[Ljava/lang/String;

    array-length v3, v3

    const/4 v4, 0x0

    if-ge v2, v3, :cond_5

    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_2

    return-object v4

    :cond_2
    iget-object v3, p0, Lcom/miui/antispam/ui/activity/AddAntiSpamActivity$c;->b:Lcom/miui/antispam/ui/activity/AddAntiSpamActivity$e;

    iget-object v5, v3, Lcom/miui/antispam/ui/activity/AddAntiSpamActivity$e;->b:[Ljava/lang/String;

    aget-object v5, v5, v2

    iget-object v6, v3, Lcom/miui/antispam/ui/activity/AddAntiSpamActivity$e;->c:[I

    if-nez v6, :cond_3

    const/4 v6, -0x1

    goto :goto_2

    :cond_3
    aget v6, v6, v2

    :goto_2
    iget v7, v3, Lcom/miui/antispam/ui/activity/AddAntiSpamActivity$e;->d:I

    iget v3, v3, Lcom/miui/antispam/ui/activity/AddAntiSpamActivity$e;->e:I

    invoke-static {v5, v6, p1, v7, v3}, Lcom/miui/antispam/ui/activity/AddAntiSpamActivity;->k0(Ljava/lang/String;IIII)V

    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_4

    return-object v4

    :cond_4
    new-array v3, v0, [Ljava/lang/Integer;

    iget v4, p0, Lcom/miui/antispam/ui/activity/AddAntiSpamActivity$c;->a:I

    add-int/2addr v4, v0

    iput v4, p0, Lcom/miui/antispam/ui/activity/AddAntiSpamActivity$c;->a:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-virtual {p0, v3}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    return-object v4
.end method

.method protected b(Ljava/lang/Void;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/miui/antispam/ui/activity/AddAntiSpamActivity$c;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/antispam/ui/activity/AddAntiSpamActivity;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lcom/miui/antispam/ui/activity/AddAntiSpamActivity;->l0(Lcom/miui/antispam/ui/activity/AddAntiSpamActivity;)V

    return-void
.end method

.method protected varargs c([Ljava/lang/Integer;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/AddAntiSpamActivity$c;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/antispam/ui/activity/AddAntiSpamActivity;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    aget-object p1, p1, v1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lcom/miui/antispam/ui/activity/AddAntiSpamActivity;->f0(Lcom/miui/antispam/ui/activity/AddAntiSpamActivity;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/antispam/ui/activity/AddAntiSpamActivity$c;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/antispam/ui/activity/AddAntiSpamActivity$c;->b(Ljava/lang/Void;)V

    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/miui/antispam/ui/activity/AddAntiSpamActivity$c;->c([Ljava/lang/Integer;)V

    return-void
.end method
