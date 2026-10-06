.class public Lf7/b$a;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf7/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lf7/b$a;->a:Landroid/content/Context;

    iput-object p2, p0, Lf7/b$a;->b:Ljava/lang/String;

    iput p3, p0, Lf7/b$a;->c:I

    return-void
.end method

.method static synthetic a(Lf7/b$a;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lf7/b$a;->a:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method protected varargs b([Ljava/lang/Void;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p1, p0, Lf7/b$a;->a:Landroid/content/Context;

    invoke-static {p1}, Lf7/b;->e(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lf7/b$a;->b:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lf7/b$a;->a:Landroid/content/Context;

    iget-object v0, p0, Lf7/b$a;->b:Ljava/lang/String;

    iget v1, p0, Lf7/b$a;->c:I

    invoke-static {p1, v0, v1}, Lm7/a;->f(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_0
    iget-object p1, p0, Lf7/b$a;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/miui/gamebooster/ui/QuickReplySettingsActivity;->n0(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected c(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lf7/b$a$a;

    invoke-direct {v0, p0, p1}, Lf7/b$a$a;-><init>(Lf7/b$a;Ljava/util/List;)V

    iget-object p1, p0, Lf7/b$a;->a:Landroid/content/Context;

    invoke-static {p1}, Lf7/a;->b(Landroid/content/Context;)Lf7/a;

    move-result-object p1

    invoke-virtual {p1, v0}, Lf7/a;->a(Lo4/a$a;)V

    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lf7/b$a;->b([Ljava/lang/Void;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lf7/b$a;->c(Ljava/util/List;)V

    return-void
.end method
