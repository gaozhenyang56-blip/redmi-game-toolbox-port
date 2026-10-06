.class Lcom/miui/gamebooster/ui/QuickReplySettingsActivity$d;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gamebooster/ui/QuickReplySettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/gamebooster/ui/QuickReplySettingsActivity;",
            ">;"
        }
    .end annotation
.end field

.field c:Ls5/c;


# direct methods
.method public constructor <init>(Lcom/miui/gamebooster/ui/QuickReplySettingsActivity;Ls5/c;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/ui/QuickReplySettingsActivity$d;->a:Landroid/content/Context;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/gamebooster/ui/QuickReplySettingsActivity$d;->b:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/miui/gamebooster/ui/QuickReplySettingsActivity$d;->c:Ls5/c;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2

    iget-object p1, p0, Lcom/miui/gamebooster/ui/QuickReplySettingsActivity$d;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/gamebooster/ui/QuickReplySettingsActivity;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AppCompatActivity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/miui/gamebooster/ui/QuickReplySettingsActivity$d;->c:Ls5/c;

    invoke-virtual {p1}, Ls5/c;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/gamebooster/ui/QuickReplySettingsActivity$d;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/miui/gamebooster/ui/QuickReplySettingsActivity$d;->c:Ls5/c;

    invoke-virtual {v0}, Ls5/c;->e()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/ui/QuickReplySettingsActivity$d;->c:Ls5/c;

    invoke-virtual {v1}, Ls5/c;->g()I

    move-result v1

    invoke-static {p1, v0, v1}, Lm7/a;->f(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/gamebooster/ui/QuickReplySettingsActivity$d;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/miui/gamebooster/ui/QuickReplySettingsActivity$d;->c:Ls5/c;

    invoke-virtual {v0}, Ls5/c;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lm7/a;->b(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/gamebooster/ui/QuickReplySettingsActivity$d;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method
