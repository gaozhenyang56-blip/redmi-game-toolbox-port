.class Lcom/miui/gamebooster/ui/WelcomActivity$b;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gamebooster/ui/WelcomActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/miui/gamebooster/ui/WelcomActivity$b;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 1

    invoke-static {}, Lm6/a;->b()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/miui/gamebooster/ui/WelcomActivity$b;->a:Landroid/content/Context;

    invoke-static {p1}, Lm6/a;->e(Landroid/content/Context;)Lm6/a;

    move-result-object p1

    invoke-virtual {p1}, Lm6/a;->t()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/gamebooster/ui/WelcomActivity$b;->a:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-static {p1, v0}, La8/v1;->d(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected b(Ljava/lang/Boolean;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/gamebooster/ui/WelcomActivity$b;->a:Landroid/content/Context;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1, v0}, La8/w1;->d(Landroid/content/Context;Ljava/lang/Boolean;)V

    iget-object p1, p0, Lcom/miui/gamebooster/ui/WelcomActivity$b;->a:Landroid/content/Context;

    invoke-static {p1}, Lm6/a;->e(Landroid/content/Context;)Lm6/a;

    const/4 p1, 0x1

    invoke-static {p1}, Lm6/a;->c0(Z)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/gamebooster/ui/WelcomActivity$b;->a([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/miui/gamebooster/ui/WelcomActivity$b;->b(Ljava/lang/Boolean;)V

    return-void
.end method
