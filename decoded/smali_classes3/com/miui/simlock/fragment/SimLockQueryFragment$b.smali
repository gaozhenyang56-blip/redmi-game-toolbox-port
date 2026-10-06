.class Lcom/miui/simlock/fragment/SimLockQueryFragment$b;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/simlock/fragment/SimLockQueryFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field final synthetic b:Lcom/miui/simlock/fragment/SimLockQueryFragment;


# direct methods
.method private constructor <init>(Lcom/miui/simlock/fragment/SimLockQueryFragment;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/simlock/fragment/SimLockQueryFragment$b;->b:Lcom/miui/simlock/fragment/SimLockQueryFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/miui/simlock/fragment/SimLockQueryFragment$b;->a:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/simlock/fragment/SimLockQueryFragment;Ljava/lang/String;Lcom/miui/simlock/fragment/SimLockQueryFragment$a;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/simlock/fragment/SimLockQueryFragment$b;-><init>(Lcom/miui/simlock/fragment/SimLockQueryFragment;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 3

    iget-object p1, p0, Lcom/miui/simlock/fragment/SimLockQueryFragment$b;->b:Lcom/miui/simlock/fragment/SimLockQueryFragment;

    iget-object v0, p1, Lcom/miui/simlock/fragment/SimLockBaseFragment;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/miui/simlock/fragment/SimLockQueryFragment;->f0(Lcom/miui/simlock/fragment/SimLockQueryFragment;)I

    move-result p1

    iget-object v1, p0, Lcom/miui/simlock/fragment/SimLockQueryFragment$b;->b:Lcom/miui/simlock/fragment/SimLockQueryFragment;

    invoke-static {v1}, Lcom/miui/simlock/fragment/SimLockQueryFragment;->g0(Lcom/miui/simlock/fragment/SimLockQueryFragment;)Lmiuix/preference/TextPreference;

    move-result-object v1

    invoke-virtual {v1}, Lmiuix/preference/TextPreference;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/simlock/fragment/SimLockQueryFragment$b;->a:Ljava/lang/String;

    invoke-static {v0, p1, v1, v2}, Lcom/miui/simlock/c;->c(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected b(Ljava/lang/Integer;)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x0

    const v1, 0x7fffffff

    if-ne p1, v1, :cond_0

    iget-object p1, p0, Lcom/miui/simlock/fragment/SimLockQueryFragment$b;->b:Lcom/miui/simlock/fragment/SimLockQueryFragment;

    iget-object v1, p1, Lcom/miui/simlock/fragment/SimLockBaseFragment;->a:Lmiui/telephony/SubscriptionManager;

    invoke-static {p1}, Lcom/miui/simlock/fragment/SimLockQueryFragment;->h0(Lcom/miui/simlock/fragment/SimLockQueryFragment;)I

    move-result p1

    invoke-virtual {v1, p1}, Lmiui/telephony/SubscriptionManager;->getSubscriptionIdForSlot(I)I

    move-result p1

    iget-object v1, p0, Lcom/miui/simlock/fragment/SimLockQueryFragment$b;->b:Lcom/miui/simlock/fragment/SimLockQueryFragment;

    iget-object v2, v1, Lcom/miui/simlock/fragment/SimLockBaseFragment;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/simlock/fragment/SimLockQueryFragment;->i0(Lcom/miui/simlock/fragment/SimLockQueryFragment;)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xc

    invoke-static {v2, v1, p1, v0, v3}, Lcom/miui/simlock/c;->q(Landroid/content/Context;Ljava/lang/String;IZI)V

    iget-object p1, p0, Lcom/miui/simlock/fragment/SimLockQueryFragment$b;->b:Lcom/miui/simlock/fragment/SimLockQueryFragment;

    invoke-static {p1}, Lcom/miui/simlock/fragment/SimLockQueryFragment;->g0(Lcom/miui/simlock/fragment/SimLockQueryFragment;)Lmiuix/preference/TextPreference;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/simlock/fragment/SimLockQueryFragment$b;->b:Lcom/miui/simlock/fragment/SimLockQueryFragment;

    invoke-static {v0}, Lcom/miui/simlock/fragment/SimLockQueryFragment;->i0(Lcom/miui/simlock/fragment/SimLockQueryFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmiuix/preference/TextPreference;->setText(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/simlock/fragment/SimLockQueryFragment$b;->b:Lcom/miui/simlock/fragment/SimLockQueryFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/simlock/fragment/SimLockQueryFragment$b;->b:Lcom/miui/simlock/fragment/SimLockQueryFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/miui/simlock/fragment/SimLockQueryFragment$b;->b:Lcom/miui/simlock/fragment/SimLockQueryFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f121698

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/simlock/fragment/SimLockQueryFragment$b;->a([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/miui/simlock/fragment/SimLockQueryFragment$b;->b(Ljava/lang/Integer;)V

    return-void
.end method
