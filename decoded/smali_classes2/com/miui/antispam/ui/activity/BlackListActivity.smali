.class public Lcom/miui/antispam/ui/activity/BlackListActivity;
.super Lcom/miui/antispam/ui/activity/BaseListActivity;
.source "SourceFile"


# static fields
.field private static final t:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/miui/antispam/ui/activity/BlackListActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/antispam/ui/activity/BlackListActivity;->t:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/antispam/ui/activity/BaseListActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public m0()Ll2/d;
    .locals 2

    new-instance v0, Ll2/d;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Ll2/d;-><init>(Landroid/content/Context;Z)V

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/miui/antispam/ui/activity/BaseListActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/antispam/ui/activity/BaseListActivity;->m:Z

    iget-object p1, p0, Lcom/miui/antispam/ui/activity/BaseListActivity;->a:Lcom/miui/antispam/ui/view/RecyclerViewExt;

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/BaseListActivity;->b:Ll2/d;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$h;)V

    iget-object p1, p0, Lcom/miui/antispam/ui/activity/BaseListActivity;->f:Landroid/widget/CheckBox;

    const v0, 0x7f1217d3

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p0, Lcom/miui/antispam/ui/activity/BaseListActivity;->g:Landroid/widget/CheckBox;

    const v0, 0x7f1217d5

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportLoaderManager()Landroidx/loader/app/a;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p0}, Landroidx/loader/app/a;->e(ILandroid/os/Bundle;Landroidx/loader/app/a$a;)Lq0/c;

    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Lq0/c;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Lq0/c<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lm2/a;->p()Z

    move-result p1

    const-string p2, "1"

    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz p1, :cond_0

    invoke-static {}, Lm2/a;->o()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/String;

    aput-object p2, p1, v0

    iget p2, p0, Lcom/miui/antispam/ui/activity/BaseListActivity;->l:I

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v1

    const-string p2, "type = ? AND sim_id = ? AND sync_dirty <> ? AND state != ?"

    goto :goto_0

    :cond_0
    new-array p1, v1, [Ljava/lang/String;

    aput-object p2, p1, v0

    iget p2, p0, Lcom/miui/antispam/ui/activity/BaseListActivity;->l:I

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v2

    const-string p2, "type = ? AND sim_id = ? AND sync_dirty <> ? "

    :goto_0
    move-object v5, p1

    move-object v4, p2

    new-instance p1, Lq0/b;

    sget-object v2, Lmiui/provider/ExtraTelephony$Phonelist;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lq0/b;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method
