.class Lcom/miui/powercenter/bootshutdown/RepeatPreference$c;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/powercenter/bootshutdown/RepeatPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "[",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/powercenter/bootshutdown/RepeatPreference;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/miui/powercenter/bootshutdown/RepeatPreference;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/powercenter/bootshutdown/RepeatPreference$c;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)[Ljava/lang/String;
    .locals 5

    iget-object p1, p0, Lcom/miui/powercenter/bootshutdown/RepeatPreference$c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/powercenter/bootshutdown/RepeatPreference;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f030000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f120ca7

    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lme/i;->c(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    const v1, 0x7f120ca6

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x2

    aget-object v4, v0, v3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v3

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f030001

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method protected b([Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/miui/powercenter/bootshutdown/RepeatPreference$c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/powercenter/bootshutdown/RepeatPreference;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {v0}, Lcom/miui/powercenter/bootshutdown/RepeatPreference;->d(Lcom/miui/powercenter/bootshutdown/RepeatPreference;)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    if-eqz p1, :cond_6

    invoke-virtual {v0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-boolean v2, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v2, :cond_2

    const v2, 0x7f030002

    goto :goto_0

    :cond_2
    const v2, 0x7f030003

    :goto_0
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    invoke-virtual {v0}, Lcom/miui/powercenter/bootshutdown/RepeatPreference;->j()I

    move-result v2

    const/4 v3, 0x0

    :goto_1
    array-length v4, v1

    const/4 v5, -0x1

    if-ge v3, v4, :cond_4

    aget v4, v1, v3

    if-ne v2, v4, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    move v3, v5

    :goto_2
    invoke-static {v0}, Lcom/miui/powercenter/bootshutdown/RepeatPreference;->f(Lcom/miui/powercenter/bootshutdown/RepeatPreference;)Lcom/miui/powercenter/bootshutdown/a;

    move-result-object v2

    invoke-static {v0}, Lcom/miui/powercenter/bootshutdown/RepeatPreference;->e(Lcom/miui/powercenter/bootshutdown/RepeatPreference;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/miui/powercenter/bootshutdown/a;->g(Landroid/view/View;)V

    invoke-static {v0}, Lcom/miui/powercenter/bootshutdown/RepeatPreference;->f(Lcom/miui/powercenter/bootshutdown/RepeatPreference;)Lcom/miui/powercenter/bootshutdown/a;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/miui/powercenter/bootshutdown/a;->h([Ljava/lang/String;)V

    if-eq v3, v5, :cond_5

    invoke-static {v0}, Lcom/miui/powercenter/bootshutdown/RepeatPreference;->f(Lcom/miui/powercenter/bootshutdown/RepeatPreference;)Lcom/miui/powercenter/bootshutdown/a;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/miui/powercenter/bootshutdown/a;->j(I)V

    :cond_5
    invoke-static {v0}, Lcom/miui/powercenter/bootshutdown/RepeatPreference;->f(Lcom/miui/powercenter/bootshutdown/RepeatPreference;)Lcom/miui/powercenter/bootshutdown/a;

    move-result-object p1

    new-instance v2, Lcom/miui/powercenter/bootshutdown/RepeatPreference$c$a;

    invoke-direct {v2, p0, v1, v0}, Lcom/miui/powercenter/bootshutdown/RepeatPreference$c$a;-><init>(Lcom/miui/powercenter/bootshutdown/RepeatPreference$c;[ILcom/miui/powercenter/bootshutdown/RepeatPreference;)V

    invoke-virtual {p1, v2}, Lcom/miui/powercenter/bootshutdown/a;->i(Lcom/miui/powercenter/bootshutdown/a$e;)V

    invoke-static {v0}, Lcom/miui/powercenter/bootshutdown/RepeatPreference;->f(Lcom/miui/powercenter/bootshutdown/RepeatPreference;)Lcom/miui/powercenter/bootshutdown/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/powercenter/bootshutdown/a;->k()V

    :cond_6
    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/powercenter/bootshutdown/RepeatPreference$c;->a([Ljava/lang/Void;)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/miui/powercenter/bootshutdown/RepeatPreference$c;->b([Ljava/lang/String;)V

    return-void
.end method
