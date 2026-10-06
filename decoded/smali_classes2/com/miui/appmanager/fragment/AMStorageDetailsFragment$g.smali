.class Lcom/miui/appmanager/fragment/AMStorageDetailsFragment$g;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "g"
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private final b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment$g;->a:Landroid/content/Context;

    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment$g;->b:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget-object v0, p0, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment$g;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;

    if-eqz v0, :cond_7

    iget-object v1, p0, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment$g;->a:Landroid/content/Context;

    if-nez v1, :cond_0

    goto/16 :goto_1

    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_5

    const/4 v3, 0x2

    const/4 v4, 0x3

    if-eq v1, v3, :cond_1

    if-eq v1, v4, :cond_1

    goto/16 :goto_1

    :cond_1
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v2, :cond_4

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x19

    if-le p1, v3, :cond_3

    const-wide/16 v5, 0x0

    if-ne v1, v4, :cond_2

    invoke-static {v0, v5, v6}, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;->v0(Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;J)J

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;->g0(Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;)J

    move-result-wide v3

    invoke-static {v0, v3, v4}, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;->w0(Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;J)J

    :goto_0
    invoke-static {v0, v5, v6}, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;->h0(Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;J)J

    invoke-static {v0}, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;->u0(Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;)J

    move-result-wide v3

    invoke-static {v0}, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;->e0(Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;)J

    move-result-wide v5

    add-long/2addr v3, v5

    invoke-static {v0, v3, v4}, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;->j0(Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;J)J

    invoke-static {v0}, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;->k0(Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;)Lcom/miui/appmanager/fragment/AMStorageDetailsFragment$g;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_1

    :cond_3
    invoke-static {v0}, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;->t0(Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;)V

    goto/16 :goto_1

    :cond_4
    if-ne v1, v4, :cond_7

    invoke-static {v0}, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;->r0(Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;)Landroid/view/MenuItem;

    move-result-object p1

    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_1

    :cond_5
    invoke-static {v0}, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;->y0(Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    if-nez p1, :cond_6

    return-void

    :cond_6
    invoke-static {v0}, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;->n0(Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;)Lmiuix/preference/TextPreference;

    move-result-object p1

    iget-object v1, p0, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment$g;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;->i0(Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lsm/a;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lmiuix/preference/TextPreference;->setText(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;->o0(Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;)Lmiuix/preference/TextPreference;

    move-result-object p1

    iget-object v1, p0, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment$g;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;->e0(Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lsm/a;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lmiuix/preference/TextPreference;->setText(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;->p0(Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;)Lmiuix/preference/TextPreference;

    move-result-object p1

    iget-object v1, p0, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment$g;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;->u0(Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lsm/a;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lmiuix/preference/TextPreference;->setText(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;->q0(Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;)Lmiuix/preference/TextPreference;

    move-result-object p1

    iget-object v1, p0, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment$g;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;->g0(Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lsm/a;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lmiuix/preference/TextPreference;->setText(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;->r0(Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;)Landroid/view/MenuItem;

    move-result-object v2

    invoke-static {v0}, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;->i0(Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;)J

    move-result-wide v3

    invoke-static {v0}, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;->u0(Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;)J

    move-result-wide v5

    invoke-static {v0}, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;->g0(Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;)J

    move-result-wide v7

    invoke-static {v0}, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;->x0(Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;)Z

    move-result v9

    invoke-static {v0}, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;->y0(Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget-object v10, p1, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    invoke-static/range {v2 .. v10}, Lcom/miui/appmanager/AppManageUtils;->H0(Landroid/view/MenuItem;JJJZLjava/lang/String;)V

    invoke-static {v0}, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;->r0(Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {v0}, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;->m0(Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;->s0(Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;)I

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/miui/appmanager/AppManageUtils;->f(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-static {v0}, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;->r0(Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;)Landroid/view/MenuItem;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_7
    :goto_1
    return-void
.end method
