.class Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$n;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "n"
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
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;

.field private d:I


# direct methods
.method public constructor <init>(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$n;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$n;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$n;->c:Ljava/lang/String;

    iput p3, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$n;->d:I

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 3

    invoke-static {}, Lmc/c;->k()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$n;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$n;->c:Ljava/lang/String;

    iget v2, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$n;->d:I

    invoke-static {p1, v1, v2, v0}, Lmc/c;->r(Landroid/content/Context;Ljava/lang/String;IZ)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected b(Ljava/lang/Boolean;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$n;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {v0}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->U0(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;)Lmiuix/preference/TextPreference;

    move-result-object p1

    new-instance v1, Lg3/e;

    invoke-direct {v1, v0}, Lg3/e;-><init>(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;)V

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    invoke-static {v0}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->U0(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;)Lmiuix/preference/TextPreference;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->H1(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;)Landroidx/preference/PreferenceCategory;

    move-result-object p1

    invoke-static {v0}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->U0(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;)Lmiuix/preference/TextPreference;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :goto_0
    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$n;->a([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$n;->b(Ljava/lang/Boolean;)V

    return-void
.end method
