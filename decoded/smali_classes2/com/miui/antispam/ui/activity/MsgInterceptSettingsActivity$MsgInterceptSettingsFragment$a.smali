.class Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment$a;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/util/Pair<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment;


# direct methods
.method constructor <init>(Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment$a;->a:Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p1, p0, Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment$a;->a:Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment;

    invoke-static {p1}, Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment;->e0(Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment$a;->a:Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment;

    invoke-static {v0}, Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment;->f0(Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment;)I

    move-result v0

    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Lm2/f;->q(Landroid/content/Context;II)I

    move-result p1

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment$a;->a:Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment;

    invoke-static {v0}, Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment;->e0(Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment$a;->a:Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment;

    invoke-static {v1}, Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment;->f0(Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment;)I

    move-result v1

    const/4 v2, 0x4

    invoke-static {v0, v2, v1}, Lm2/f;->q(Landroid/content/Context;II)I

    move-result v0

    new-instance v1, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v1, p1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method

.method protected b(Landroid/util/Pair;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment$a;->a:Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment;

    invoke-static {v0}, Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment;->g0(Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment;)Lmiuix/preference/TextPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment$a;->a:Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment;

    invoke-static {v1}, Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment;->e0(Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const v5, 0x7f100131

    invoke-virtual {v1, v5, v2, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiuix/preference/TextPreference;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment$a;->a:Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment;

    invoke-static {v0}, Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment;->h0(Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment;)Lmiuix/preference/TextPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment$a;->a:Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment;

    invoke-static {v1}, Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment;->e0(Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    aput-object p1, v3, v6

    invoke-virtual {v1, v5, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lmiuix/preference/TextPreference;->setText(Ljava/lang/String;)V

    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment$a;->a([Ljava/lang/Void;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/util/Pair;

    invoke-virtual {p0, p1}, Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment$a;->b(Landroid/util/Pair;)V

    return-void
.end method
